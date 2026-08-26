# Generating an Excel from Code {#_97675b8a-7918-47a1-a337-dcaef719927e .task}

The following activity will walk you through the process of generating an Excel file using Acumatica Framework.

## Story { .section}

On the Sales Orders \(SO301000\) form, suppose that you need to generate an Excel file with the list of lines of the current sales order \(from the **Details** tab of the Sales Orders form\) when a user clicks a button, and download the generated file or send it in an email.

## Learning Objectives { .section}

In this activity, you will learn how to do the following:

-   Generate an Excel file
-   Initiate downloading of a file
-   Create an email and attach a file to an email based on a notification template

## Process Overview { .section}

In the graph extension for the Sales Orders form, you will use the `PX.Export.Excel.Core.Package` class to generate an `Excel` file. You will implement an action in which you will either call a method which downloads the file, or send it as an email attachment. For the user to be able to download the file, you will use the PXRedirectToFileException redirection exception. To attach the file to an email, you will use a notification template and `TemplateNotificationGenerator`.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Prepare an Acumatica ERP instance with the T100 dataset.
2.  Create a customization project.
3.  Create an extension library and open it in Visual Studio \(optional\).

## Step 1: Create a Graph Extension { .section}

To be able to customize logic on the Sales Orders form, you first need to create a graph extension for the graph which determines logic on the Sales Orders form by doing the following:

1.  Open the Sales Orders form.
2.  Open the Element Inspector and click the Summary area of the form.

    In the Inspect Element dialog box, note the name of the graph in the business logic box: `SalesOrderEntry`.

3.  In the Customization Project Editor or in your extension library, create an extension of the `SalesOrderEntry` graph as the following code shows.

    ```
    namespace GenerateExcel
    {
        public class SOOrderEntryExcelExt : PXGraphExtension<SOOrderEntry>
        {
        }
    }
    ```


## Step 2: Learn the Name of the View with Sales Order Lines { .section}

To learn the name of the view from which to save the data to the Excel file, do the following:

1.  Open the Sales Orders \(SO301000\) form.
2.  Open the Element Inspector and click the table on the **Details** tab.

    In the Inspect Element dialog box, note the name of the view: `Transactions`.


## Step 3: Implement a Method That Downloads a File { .section}

In this step, you will implement a private method that will download the Excel file provided in the method parameter.

An Excel file can be stored in an instance of the PX.Export.Excel.Core.Package class. In order to download the file, you need to convert it into a memory stream, add it to an instance of the PX.SM.FileInfo class, and throw the PXRedirectToFileException with the instance of the PX.SM.FileInfo class.

Do the following:

1.  In the `SOOrderEntryExcelExt` class, add the following method.

    ```
    private void ExportFile(PX.Export.Excel.Core.Package excel)
    {
        using (MemoryStream stream = new MemoryStream())
        {
            excel.Write(stream);
            string path = String.Format("SO-{0}-Transaction Info.xlsx", 
                                        Base.Document.Current.OrderNbr);
            var info = new PX.SM.FileInfo(path, null, stream.ToArray());
            throw new PXRedirectToFileException(info, true);
        }
    }
    ```

    In the code above, you create a memory stream where you write the contents of the Excel file provided in the parameter. Then you create an instance of the PX.SM.FileInfo class which store the file name and file contents. To initiate the download, you throw the PXRedirectToFileException exception.

    **Note:** If you get an error that the Excel namespace does not exist, add the reference to the `PX.Export.dll` manually to your project.


## Step 4: Implement a Method Which Sends an Email Attachment { .section}

In this step, you will implement a method which sends an Excel file in an email attachment.

In order to create an email, first you need to create a notification template. Then, you can create an email based on this notification template using the PX.Objects.EP.TemplateNotificationGenerator class. After that, you write the contents of the Excel file to a stream and add it as an attachment to the email. To send an email, you call the Send method of the PX.Objects.EP.TemplateNotificationGenerator class.

Do the following:

1.  On the [Email Templates](../UserGuide/SM_20_40_03.md) \(SM204003\) form, create a notification template with the following data:

    -   **Description**: `SOExcelNotification`
    -   **Screen**: *SO301000*
    -   **From**: *admin*
    -   **To**:`((Document.ContactID.EMail));`

        The value above means the email is sent to the contact specified for the sales order.

        **Note:** When you send the email, make sure the `ContactID` field of the sales order is not empty. Otherwise, the email cannot be sent.

    This template will be used to generate an email.

2.  In the `SOOrderEntryExcelExt` class, add the following method.

    ```
    //Email generated Excel as an attachment
    private void SendEmail(PX.Export.Excel.Core.Package excel)
    {
        bool sent = false;
    
        //Select the notification template created in the previous instruction
        Notification rowNotification = PXSelect<Notification,
             Where<Notification.name,
               Equal<Required<Notification.name>>>>
            .Select(Base, "SOExcelNotification");
    
        if (rowNotification == null)
            throw new PXException("Notification Template for is not specified.");
    
        //Create an email
        var sender = PX.Objects.EP.TemplateNotificationGenerator.Create(
          Base.Document.Current, rowNotification.NotificationID.Value);
        // You can adjust settings from the notification template here
        // such as email address and mail account ID
        
        //Attach Excel
        using (MemoryStream stream = new MemoryStream())
        {
            excel.Write(stream);
            string path = String.Format("SO-{0}-Transaction Info.xlsx", 
              Base.Document.Current.OrderNbr);
            sender.AddAttachment(path, stream.ToArray());
        }
        // Initiate sending of the email
        sent |= sender.Send().Any();
    }
    ```

    In the code above, first you have selected the email template for the Sales Orders form. Then you create an email by calling the Create method of the PX.Objects.EP.TemplateNotificationGenerator class. After that, you write the contents of the provided Excel file to a stream and add it as an attachment to the email. You send the email by calling the Send method.


## Step 5: Implement an Action which Generates the Excel File { .section}

In this step, you will implement an action which either initiates downloading of a generated Excel file or sends it in an email.

To generate an email, you will create an instance of the PX.Export.Excel.Core.Package class. You can add sheets and sheet headers to the file.

Do the following:

1.  In the `SOOrderEntryExcelExt` class, add the following action.

    ```
    public PXAction<SOOrder> ExportToExcelAndSendEmailAttachment;
    [PXUIField(DisplayName = "Export To Excel", MapViewRights = PXCacheRights.Select, 
        MapEnableRights = PXCacheRights.Update)]
    [PXButton]
    protected virtual void exportToExcelAndSendEmailAttachment()
    {
          //Check that the record is not empty and is saved to the database
    	if (Base.Document.Current == null ||
    		Base.Document.Cache.GetStatus(Base.Document.Current) 
                   == PXEntryStatus.Inserted) return;
    
    	var excel = new PX.Export.Excel.Core.Package();
    	var sheet = excel.Workbook.Sheets[1];
    
    	//Add Header
    	sheet.Add(1, 1, "Line #");
    	sheet.Add(1, 2, "Transaction Description");
    	sheet.Add(1, 3, "Ordered Quantity");
    
    	//Add Data
    	var index = 2;
    	foreach (PXResult<SOLine> lineItem in Base.Transactions.Select())
    	{
    		SOLine dataRow = (SOLine)lineItem;
    		sheet.Add(index, 1, Convert.ToString(dataRow.LineNbr));
    		sheet.Add(index, 2, dataRow.TranDesc);
    		sheet.Add(index, 3, Convert.ToString(dataRow.OrderQty));
    		index++;
    	}
    	sheet.SetColumnWidth(1, 20);
    	sheet.SetColumnWidth(2, 45);
    	sheet.SetColumnWidth(3, 35);
    
    	ExportFile(excel);
    	//SendEmail(excel);
    }
    ```

    In the code above, you define the **Export To Excel** action. In the action method, first you check that the current record has been saved to the database \(PXEntryStatus.Inserted\). Then you create an excel file with a single sheet, and define a header line in this sheet. Later, you fill in the sheet with data from the `Transactions` view of the base class, that is, lines of the current sales order. In the end, you call either the `ExportFile` method to export the Excel file, or the `SendEmail` method to send the generated file by email.

2.  Save your changes.

## Step 6: Test the Action { .section}

To test the implemented action, do the following:

1.  If you used an extension library, rebuild your project and update the DLL file in your customization project. If you used the Code Editor, publish your customization project.
2.  In Acumatica ERP, on the Sales Orders form, open a record.
3.  On the Sales Orders form, click **Export To Excel**.

    The browser downloads the file.

4.  Return to your code, comment the `ExportFile` method and uncomment the `SendEmail` method. Rebuild your library or publish the customization project.
5.  On the form toolbar, click the **Export To Excel** button.

    The systems adds the email to the queue and send it according to the schedule on the [Send and Receive Email](../UserGuide/SM_50_70_10.md) \(SM507010\) form. You can view the email on the Outgoing Email tab of the [All Emails](../UserGuide/CO_40_90_70.md) \(CO409070\) form.


## Examples in Acumatica ERP Source Code { .section}

The following table lists Acumatica ERP forms where creation of an email is implemented.

|Form|Location in Source Code|
|----|-----------------------|
|[Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\)|The PX.Obejcts.SO.SOOrderEntry graph|

**Parent topic:**[Use Cases](../CustomizationPlatform/CG_Example_UseCases.md)

