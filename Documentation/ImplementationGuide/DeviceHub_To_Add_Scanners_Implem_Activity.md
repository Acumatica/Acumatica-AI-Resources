# To Add a Scanner to DeviceHub {#_238c80d3-8232-4828-89af-b6ff87e7ab7f .task}

In the following implementation activity, you will learn how to add a scanner to DeviceHub.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you need to configure a scanner that will be used for scanning documents in your company.

## Process Overview { .section}

On the **Scanners** tab of the DeviceHub **Configuration** window, you will add a new scanner. Then you will sign in to an Acumatica ERP instance and update the list of scanners on the [Scanners](../UserGuide/SM_20_65_40.md) \(SM206540\) form. After that, you will specify the default scanner for your user account on the [User Profile](../UserGuide/SM_20_30_10.md) \(SM203010\) form and scan a document on the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form.

## System Preparation { .section}

Before you start adding scanners to DeviceHub, you should do the following:

-   On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, make sure that the *DeviceHub* feature is enabled.
-   Set the connection between DeviceHub and Acumatica ERP, as described in [DeviceHub: To Set Up the Connection Between DeviceHub and the Acumatica Instance](Devicehub_To_Set_Up_the_Connection_Implem_Activity.md).
-   Configure the methods of retrieving scan jobs, as described in [DeviceHub: To Configure Methods of Retrieving Print and Scan Jobs](DeviceHub_To_Configure_Push_Notifications_Implem_Activity.md).

## Step 1: Adding a Scanner to DeviceHub { .section}

To add a scanner in the DeviceHub application, do the following:

1.  Navigate to **Start** &gt; **Programs** &gt; **Acumatica** &gt; **Acumatica DeviceHub** to view the DeviceHub main window.
2.  Click **File** &gt; **Configure** in the DeviceHub main menu.
3.  On the **General** tab of the **Configuration** window, select the **Enable scanner support** check box.
4.  On the **Scanners** tab, click the **Add** button, and specify the following settings:

    -   **Name**: *DHSCANNER1*.

        **Note:** The scanner identifier can include only digits and uppercase letters.

    -   **Scanner**: One of the scanners detected in the system
    Leave the default values in the remaining boxes.

5.  Click **OK** to close the **Configuration** window.

## Step 2: Updating the List of Scanners in Acumatica ERP { .section}

To update the list of scanners in Acumatica ERP, do the following:

1.  Sign in to the Acumatica ERP instance for which you have configured DeviceHub with the *admin* username.
2.  Open the [Scanners](../UserGuide/SM_20_65_40.md) \(SM206540\) form.
3.  On the form toolbar, click **Update Scanner List** to retrieve the list of scanners from DeviceHub.
4.  On the form toolbar, click **Refresh**.

    **Note:** If the list has not been updated instantly, wait a moment and click **Refresh** again.


## Step 3: Specifying the Default Scanner { .section}

Before you scan a document with DeviceHub, you can specify the scanner that will be used for scanning operations. To specify the default scanner, do the following:

1.  Click the User menu button, and in the User menu, click **My Profile**. The [User Profile](../UserGuide/SM_20_30_10.md) \(SM203010\) form opens.
2.  On the **General Info** tab, select a scanner that you have added to DeviceHub in the **Default Scanner** box.
3.  On the form toolbar, click **Save**.

## Step 4: Scanning a Document { .section}

To scan a document with DeviceHub, do the following:

**Tip:** Before you start the scanning operation, you need to add a paper document to the default paper source specified in the **Paper Source** box on the **Scanners** tab of DeviceHub's **Configuration** window.

1.  On the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form, open the sales order with the *000073* number.
2.  On the form title bar, click **Files**.
3.  In the **Files** dialog box that opens, click **Scan**.
4.  In the **Submit For Scanning** dialog box, which opens, leave the default values, and click **Scan**.

    The system creates a scan job and sends a push notification to DeviceHub. When the processing of the job is complete, the system attaches the scanned file to the document.


## Step 5: Reviewing the List of Scan Jobs { .section}

To review the list of scan jobs, do the following:

1.  Open the [Scan Jobs](../UserGuide/SM_20_65_05.md) \(SM206505\) form.
2.  In the Selection area, make sure that the value in the **Start Date** box is the date when you created the scan job.
3.  Select the **Hide Processed** check box.
4.  Review the only row that appears in the table and make sure that the status is *Processed*.

    This status means that the scan job has been processed successfully.


**Parent topic:**[Configuring Scanners](../ImplementationGuide/Config_Scanners_DeviceHub_Mapref.md)

