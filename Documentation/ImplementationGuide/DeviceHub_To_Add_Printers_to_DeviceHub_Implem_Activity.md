# Printers: To Add a Printer to DeviceHub {#_e647fab3-b7cc-437b-a063-5eaaf271bb96 .task}

In the following implementation activity, you will learn how to add printers to DeviceHub.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you need to configure a printer that will be used for print jobs in your company.

## Process Overview { .section}

On the **Printers** tab of the DeviceHub **Configuration** window, you will add a new printer. Then you will sign in to an Acumatica ERP instance and update the list of printers on the [Printers](../UserGuide/SM_20_65_10.md) \(SM206510\) form. After that, you will specify the default printer for your user account on the [User Profile](../UserGuide/SM_20_30_10.md) \(SM203010\) form and print a document on the [Print/Email Orders](../UserGuide/SO_50_20_00.md) \(SO502000\) form.

## System Preparation { .section}

Before you start adding printers to DeviceHub, you should do the following:

-   On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, make sure that the *DeviceHub* feature is enabled.
-   Set the connection between DeviceHub and Acumatica ERP, as described in [DeviceHub: To Set Up the Connection Between DeviceHub and the Acumatica Instance](Devicehub_To_Set_Up_the_Connection_Implem_Activity.md).
-   Configure the methods of retrieving print jobs, as described in [DeviceHub: To Configure Methods of Retrieving Print and Scan Jobs](DeviceHub_To_Configure_Push_Notifications_Implem_Activity.md).

## Step 1: Adding a Printer to DeviceHub { .section}

To add a printer to DeviceHub, do the following:

1.  Navigate to **Start** &gt; **Programs** &gt; **Acumatica** &gt; **Acumatica DeviceHub** to open the DeviceHub main window.
2.  In the main menu, click **File** &gt; **Configure** to open the **Configuration** window.
3.  On the **Printers** tab, click the **Add** button, and specify the following settings:

    -   In the **Name** box, enter *DHPRINTER1*

        **Note:** The printer identifier can include only digits and uppercase letters.

    -   In the **Printer** box, select one of the printers detected in the operating system
    Leave the default values in the remaining boxes.

4.  Click **OK** to close the **Configuration** window.

## Step 2: Updating the List of Printers in Acumatica ERP { .section}

To update the list of printers in Acumatica ERP, do the following:

1.  Sign in to the Acumatica ERP instance for which you have configured DeviceHub with the *admin* username.
2.  Open the [Printers](../UserGuide/SM_20_65_10.md) \(SM206510\) form.
3.  On the form toolbar, click **Update Printer List** to retrieve the list of configured printers from DeviceHub.
4.  On the form toolbar, click **Refresh**.

    **Note:** If the list has not been updated instantly, wait a moment and click **Refresh** again.


## Step 3: Specifying the Default Printer { .section}

Before you can print a document with DeviceHub, you can specify the printer that will be used for printing operations. To specify the default printer, do the following:

1.  Click the User menu button, and in the User menu, click **My Profile**. The [User Profile](../UserGuide/SM_20_30_10.md) \(SM203010\) form opens.
2.  On the **Printing Settings** tab, select a printer that you have added to DeviceHub in the **Default Printer** box.
3.  On the form toolbar, click **Save**.

## Step 4: Printing Documents on a Mass-Processing Form { .section}

To print document on a mass-processing form, do the following:

1.  Open the [Print/Email Orders](../UserGuide/SO_50_20_00.md) \(SO502000\) form.
2.  In the **Action** box, select *Print Sales Order*.
3.  In the Selection area, make sure that the **Print with DeviceHub** check box is selected.
4.  Select the unlabeled check box in the rows with the following order numbers:
    -   *0000070*
    -   *0000071*
5.  Click **Process**.

    The system creates print jobs and sends a push notification to DeviceHub.


## Step 5: Reviewing the List of Print Jobs { .section}

To review the list of print jobs, do the following:

1.  Open the [Print Jobs](../UserGuide/SM_20_65_00.md) \(SM206500\) form.
2.  In the Selection area, select the **Hide Processed** check box.
3.  Review the two rows that appear in the table.
4.  In each row, make sure that the status is *Processed*.

    This status means that the print jobs have been processed successfully and the documents have been printed.

5.  Select the unlabeled check box in the first row.
6.  Click **Reprint** on the form toolbar.

    The system sends a push notification for this document to DeviceHub again.


**Parent topic:**[Configuring Printers](../ImplementationGuide/Config_Printers_DeviceHub_Mapref.md)

