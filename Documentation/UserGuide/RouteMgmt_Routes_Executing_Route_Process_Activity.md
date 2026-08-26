# Route Executions: Executing a Route {#_47095313-ea86-4a48-89d6-ea81b86e1f14 .task}

In this activity, you will learn how to process a route execution in Acumatica ERP from starting it through closing it.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the driver of the Sweet Life Equipment company \(Peter Lai\) needs to execute a route on *1/30/2026*. He will start the route execution from the office and then go to each customer location of the route. After all appointments are completed, the driver needs to go back to the office, where he will review the route execution in the system and prepare it for billing. You will perform the needed actions in the system, acting as the driver.

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md#) \(CS100000\) form, the *Service Management* and *Route Management* features have been enabled.
-   On the [Service Management Preferences](FS_10_01_00.md#) \(FS100100\) form, a key has been specified in the **Map API Key** box.
-   On the [Employees](EP_20_30_00.md#) \(EP203000\) form, for *EP00000005 \(Peter Lai\)*, the **Staff Member in Service Management** check box has been selected on the **General Info** tab, and the *DRIVING* skill has been added on the **Skills** tab.
-   On the [Routes](FS_20_37_00.md#) \(FS203700\) form, the *NY2* route has been configured with executions on Tuesdays and Thursdays starting at 9:00 AM. *Peter Lai* has been assigned to this route on the **Employees** tab.

## Process Overview { .section}

To execute a route, you start a route execution on the [Route Document Details](FS_30_40_00.md#) \(FS304000\) form, and then complete each appointment of the route execution on the [Appointments](FS_30_02_00.md#) \(FS300200\) form. You then complete the route execution on the [Route Document Details](FS_30_40_00.md#) form, and close it on the [Close Routes](FS_50_08_00.md#) \(FS500800\) form.

## System Preparation { .section}

To sign in to the system and prepare to perform the instructions of the activity, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded; you should sign in as a driver by using the *lai* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to *1/30/2026*. If a different date is displayed, click the Business Date menu button, and select the *1/30/2026* date from the calendar. For simplicity, in this activity, you will create and process all documents in the system on this business date.

## Step 1: Starting the Route Execution { .section}

To start the route execution, do the following:

1.  Open the [Route Document Worksheets](FS_40_39_00.md#) \(FS403900\) form.
2.  Make sure that in the **To** box, *1/31/2026* is selected.
3.  Click the *FSR00001* link to open the [Route Document Details](FS_30_40_00.md#) \(FS304000\) form.
4.  On the form toolbar, on the More menu \(under **Processing**\), click **Start**.

    Notice that the **Actual Start Time** value is set to the current time.


## Step 2: Completing the Route Execution { .section}

To complete the route execution, do the following:

1.  While you are still viewing the *FSR00001* route execution document on the [Route Document Details](FS_30_40_00.md#) \(FS304000\) form, on the **Appointments** tab, click the first assigned appointment \(*000014-1*\).

    The system brings up the [Appointments](FS_30_02_00.md#) \(FS300200\) form.

2.  On the form toolbar, click **Start**.
3.  On the **Settings** tab, in the **Actual Date and Time** section, specify the actual end time to be 30 minutes more than the actual start time. Select the **Finished** check box.
4.  On the form toolbar, click **Complete**.
5.  Close the [Appointments](FS_30_02_00.md#) form, and return to the [Route Document Details](FS_30_40_00.md#) form.
6.  Refresh the form, and verify that the status of the *000014-1* appointment has changed to *Completed*.
7.  Repeat Instructions 1–6 to complete the *000015-1* appointment.
8.  On the form toolbar of the [Route Document Details](FS_30_40_00.md#) form, on the More menu \(under **Processing**\), click **Complete**.

    The status of the route execution document has changed to *Completed*.


## Step 3: Closing the Route Execution Document { .section}

To close the route execution document, do the following:

1.  Open the [Close Routes](FS_50_08_00.md#) \(FS500800\) form.
2.  In the table of route execution documents, select the unlabeled check box in the line with the *FSR00001* reference number.
3.  On the form toolbar, click **Process**.

    The system opens the **Processing** pop-up window, in which you can see the status of the process.

4.  After the processing has successfully completed, click **Processed**.

    The system displays the processed record in the table. Notice that the route execution status has been changed to *Closed*, reflecting that the document is closed; the document details cannot be edited.

5.  Close the **Processing** pop-up window.

**Parent topic:**[Route Executions](../UserGuide/RouteMgmt_Managing_Route_Executions_Mapref.md)

