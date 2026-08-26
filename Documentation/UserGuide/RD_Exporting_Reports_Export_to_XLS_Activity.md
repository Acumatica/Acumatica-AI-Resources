# Report Export: To Export a Report as an XLS file {#_ef467451-6733-42b7-82e1-51688e4dd792 .task}

In the following activity, you will learn how to export a report to an XLS file.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are a technical specialist in your company who is working on simple customizations. A sales manager of your company has requested the [Vendor Summary](AP_65_50_00.md) \(AP655000\) report in XLS format. The sales manager plans to process the data further in Excel. You plan to use a copy of the report; after checking its settings, you will run the report and export it.

## Process Overview { .section}

In the Report Designer, you will open the `AP6550C4.RPX` report, which is a copy of the [Vendor Summary](AP_65_50_00.md) \(AP655000\) report. You will make sure that the report is simple and can be exported without additional settings being specified. Then in Acumatica ERP, you will run the report and export it as an XLS file.

## System Preparation { .section}

Before you perform the steps of this activity, make sure that the following tasks have been performed:

1.  You have installed the Acumatica Report Designer, as described in [Report Designer: To Install the Acumatica Report Designer](../Shared/../UserGuide/RD_Getting_Started_Installing_RD_Activity.md).
2.  You have installed an Acumatica ERP instance with the *U100* dataset, or a system administrator has performed this task for you.
3.  You have signed in to Acumatica ERP as the system administrator by using the *gibbs* username and the *123* password.

    **Tip:** The *gibbs* user is assigned the *Administrator* role and the *Report Designer* role. Thus, this user has sufficient access rights to manage system configuration and to preview, save, and publish reports.


Also, to prepare for use the file that is intended for this activity, do the following:

1.  Download the `AP6550C4.rpx` file.
2.  Open the downloaded file in the Report Designer.
3.  On the Report Designer menu bar, select **File** &gt; **Save To Server**, which opens the **Save Report on Server** dialog box.
4.  In the dialog box, specify the connection string and sign-in credentials of your Acumatica ERP instance, type `AP6550C4` as the report name, and click **OK**.

    The report is saved on the server.


## Step 1: Checking the Export Setting { .section}

To check the report's export setting, do the following:

1.  In the Report Designer, make sure that the *AP6550C4* report \(which you have saved to the server\) is open.
2.  In the top left corner of the Design pane of Report Designer, click the ![](Images/Defining_the_Data_Groups_for_a_Report_Using_FiltersReportSelectionIcon.PNG) icon to select the report, and set the **Layout** &gt; **Excel Mode** property to *Auto*.
3.  On the Report Designer window toolbar, click **Save**.

## Step 2: Exporting the Report as an XSL File { .section}

To export the report, do the following:

1.  In Acumatica ERP, open the S150 Vendor Summary \(AP6550C4\) report form by searching for its identifier.

    **Tip:** This report, which you have modified in this activity, has been published in the *U100* dataset. That is, it has been added to the [Site Map](SM_20_05_20.md) \(SM200520\) form, and you can access it in Acumatica ERP.

2.  On the report form toolbar, click **Run Report**.

    The report is displayed.

3.  On the report toolbar, click **Export** &gt; **Excel**.

    The XLS file, whose name consists of the name of the report \(*Vendor Summary*\) and the current date, is uploaded to the default folder on your computer.

4.  Open the XLS file to view the result of the export in Excel \(see the following screenshot\).

![](Images/RD_exported_report.png "The exported Vendor Summary (AP6550C4) report opened in Excel")

**Parent topic:**[Exporting Reports](../UserGuide/RD_Exporting_Reports_Mapref.md)

