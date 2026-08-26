# Report Content: To Add QR Codes to a Report {#_23255136-3ee7-4c21-978f-ac1781e76c63 .task}

In the following activity, you will learn how to add QR codes to reports.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are a technical specialist in your company who is working on simple customizations. A sales manager has requested a report that displays the details of a particular invoice or memo, including the QR codes of the included items. You have decided to use the predefined [Invoice/Memo](AR_64_10_00.md) \(AR641000\) report as a base and modify it by adding the QR code of each item.

## Process Overview { .section}

In the Report Designer, you will open the `AR6410C2.RPX` report, which is a copy of the [Invoice/Memo](AR_64_10_00.md) \(AR641000\) report, and add the *PictureBox* element to the report layout. You will specify the properties of this element to display a QR code for each item in the report.

## System Preparation { .section}

Before you perform the steps of this activity, make sure that the following tasks have been performed:

1.  You have installed the Acumatica Report Designer, as described in [Report Designer: To Install the Acumatica Report Designer](../Shared/../UserGuide/RD_Getting_Started_Installing_RD_Activity.md).
2.  You have installed an Acumatica ERP instance with the *U100* dataset, or a system administrator has performed this task for you.
3.  You have signed in to Acumatica ERP as the system administrator by using the *gibbs* username and the *123* password.

    **Tip:** The *gibbs* user is assigned the *Administrator* role and the *Report Designer* role. Thus, this user has sufficient access rights to manage system configuration and to preview, save, and publish reports.


Also, to prepare for use the file that you will need for this activity, do the following:

1.  Download the `AR6410C2.rpx` file.
2.  Open the downloaded file in the Report Designer.
3.  On the Report Designer menu bar, select **File** &gt; **Save To Server**, which opens the **Save Report on Server** dialog box.
4.  In the dialog box, specify the connection string and sign-in credentials of your Acumatica ERP instance, type `AR6410C2` as the report name, and click **OK**.

    The report is saved on the server.


## Step 1: Adding the QR Code of Each Item { .section}

To add the QR code of each item in the *AR6410C2* report, do the following:

1.  In the Report Designer, make sure that the *AR6410C2* report \(which you have saved to the server\) is open.
2.  Select the `detailSection1` section and specify the `3.5cm` value for the **Appearance** &gt; **Height** property to increase the height of the section.
3.  In the Tools pane, drag the *PictureBox* element to the left side of the `detailSection1` section, below the text boxes.
4.  To show the QR code of the item, while the *PictureBox* element is selected, specify the following properties in the **Properties** pane:
    -   **Data** &gt; **Source**: *Barcode*.
    -   **Data** &gt; **BarcodeType**: *QRCode*.

        This value indicates that the image will be a QR code.

    -   **Data** &gt; **Value**: `='http://<URL of Your Instance>/Main?ScreenId=AR301000&InventoryCD='+[ARTran.InventoryID]`

        For example, **Data** &gt; **Value** can be `='http://my-server.acumatica.com/InstanceName/Main?ScreenId=AR301000&InventoryCD='+[ARTran.InventoryID]`. Based on this value, each item will contain the QR code that is linked to the appropriate item. Notice that the link contains the application URL explicitly.

    -   **Behavior** &gt; **QRCodeSettings** &gt; **CodeSize**: `64`.

        The default **CodeSize** of any QR code image is *50*. If the length of the string you have specified as the **Value** is too long, the QR code will disappear from the image preview on the report layout. If the user runs this report, the QR code will be invisible too. The larger the string whose value you have specified for the barcode, the larger the **CodeSize** you should specify to make the image visible.

    -   **Layout** &gt; **Size**: `64px; 64px`.
5.  On the Report Designer window toolbar, click **Save**.

## Step 2: Viewing the Report { .section}

To view the report, do the following:

1.  In Acumatica ERP, open the S150 Invoice/Memo \(AR6410C2\) report form by searching for its identifier.

    **Tip:** This report, which you have modified in this activity, has been published in the *U100* dataset. That is, it has been added to the [Site Map](SM_20_05_20.md) \(SM200520\) form, and you can access it in Acumatica ERP.

2.  On the **Report Parameters** tab, in the **Document Type** box, make sure *Invoice* \(the default value\) is selected.
3.  In the **Reference Number** box, select *000058*.
4.  On the report form toolbar, click **Run Report**.

Make sure that QR code is displayed for each item in the invoice, as shown in the following screenshot.

![](Images/RD_report_with_QR_code.png "The S150 Invoice/Memo (AR6410C2) report with the QR codes of items")

**Parent topic:**[Filling a Report with Content](../UserGuide/RD_Filling_with_Content_Mapref.md)

