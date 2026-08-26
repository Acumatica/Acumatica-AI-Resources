# Route Executions with Item Delivery: To Process Pickup and Delivery Route Services {#_7e0316de-47ef-4ea0-b738-9bbda560e3fd .task}

This activity will walk you through the process of creating a route execution with an appointment for regular delivery services.

## Story {#section_c4y_fpg_ldc .section}

Suppose that the HM's Bakery &amp; Cafe customer has requested a service of the delivery of 10 juicer containers each Wednesday. Acting as a service manager of the SweetLife Service and Equipment Sales Center, you will create a route execution with a route appointment that you will schedule for the delivery of juicer accessories. For the appointment, you will select the *SUPP JUIACC - Delivery of juicer accessories* service and specify that you are transferring 10 *CONTAINER* units.

## Process Overview { .section}

On the [Route Document Details](FS_30_40_00.md) \(FS304000\) form, you will create a route execution for the delivery of stock items. Then you will add an appointment to the route execution and will process this appointment.

## System Preparation {#section_izr_vjb_ldc .section}

Before you begin performing the steps of this lesson, do the following:

1.  On the Acumatica ERP website, sign in to a company with the *U100* dataset preloaded. You should sign in as a service manager by using the *davis* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, set the business date to *1/30/2026*. For simplicity, in this activity, you will create and process all documents in the system on this business date.
3.  To perform this activity, make sure that you have performed the following prerequisite activity: [Route Executions with Item Delivery: To Create Pickup and Delivery Route Services](RouteMgmt_Creating_Pickup_and_Delivery_Route_Services_Process_Activity.md).

## Step 1: Creating the Route Execution {#section_g5v_rkb_ldc .section}

To create a route execution for the delivery of juicer accessories, do the following:

1.  On the [Route Document Details](FS_30_40_00.md) \(FS304000\) form, on the form toolbar, click **Add New Record**.
2.  Specify the following settings in the Summary area:
    -   **Route**: *R-ROUTE*
    -   **Scheduled Start Date**: The next Wednesday after the current business date \(*2/05/2026*\)
    -   **Driver**: *EP00000045 \(Luke Cole\)*
    -   **Vehicle**: *FSE00016 \(White Ford\)*
3.  On the form toolbar, click **Save**.

    The route execution document has been created.


## Step 2: Adding an Appointment to the Route Execution {#section_xw4_skb_ldc .section}

To add an appointment to route execution, do the following:

1.  While you are still viewing the route execution that you have created on [Route Document Details](FS_30_40_00.md) \(FS304000\) form, on the table toolbar of the **Appointments** tab, click **Add**.
2.  In the dialog box that opens, select *ROUT* and click **Proceed**.

    This opens the [Appointments](FS_30_02_00.md) \(FS300200\) form, where you can add appointment settings for the first appointment in the route execution.

3.  In the Summary area, specify the following settings for the new appointment:
    -   **Customer**: *HMBAKERY - HM's Bakery &amp; Cafe*
    -   **Description**: `Juicer accessories delivery`
4.  On the form toolbar, click **Save**.
5.  On the table toolbar of the **Details** tab, click **Add Row**, and in the **Inventory ID** column, select *SUPP JUIACC* to add this service.
6.  On the form toolbar, click **Save**.
7.  On the **Details** tab, click **Add Row** again, and do the following:

    -   In the **Line Type** column, select *Pickup/Delivery Item*.
    -   In the **Inventory ID** column, select *CONTAINER*.

        **Tip:** In this column, you can select only those stock items that you have specified for the selected route service on the **Pickup/Delivery Item** tab of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.

    -   In the **Estimated Quantity** column, type `10`.
    -   Save your changes.
    Notice that the **Invoice Total** in the Summary area displays the total amount due for the delivery service and the items to be delivered.

8.  Close the pop-up window with the [Appointments](FS_30_02_00.md) form, and return to the [Route Document Details](FS_30_40_00.md) form.

## Step 3: Attending the Appointment {#section_wdn_tkb_ldc .section}

For the purposes of this step, assume that you are now acting as Luke Cole performing the route execution and arriving at the appointment. \(You do not need to sign out and sign in again, however.\) Do the following:

1.  While you are still viewing the [Route Document Details](FS_30_40_00.md) \(FS304000\) form, in the upper-right corner of the top pane of the Acumatica ERP screen, set the business date to the next Wednesday \(after the current business date\).
2.  On the More menu, click **Start** to start the route execution.
3.  On the **Appointments** tab, click the link of the appointment reference number to open the appointment on the [Appointments](FS_30_02_00.md) form.
4.  On the form toolbar, click **Start** to start the appointment.

    Assume that the service has been provided.

5.  On the **Settings** tab, in the **Actual Date and Time** section, set the values in the **Actual Start Date** and **Actual End Date** boxes to be the same as the values in the **Scheduled Date and Time** section. Select the **Finished** check box.
6.  On the form toolbar, click **Complete**.
7.  Close the pop-up window with the [Appointments](FS_30_02_00.md) form.
8.  On the [Route Document Details](FS_30_40_00.md) form, specify the route's actual start and end date and time to be the same as the appointment's scheduled date and time.
9.  On the More menu, click **Complete**.

**Tip:** To reflect the movement of the items, an accountant should update the inventory details and generate the inventory documents manually. If the items have been delivered to the customer from the warehouse, inventory issues should be generated. If items have been picked up from the customer and delivered to the warehouse, inventory receipts should be generated. This process is outside of the scope of this course.

**Parent topic:**[Route Executions with Item Delivery](../UserGuide/RouteMgmt_Route_Executions_with_Item_Delivery_mapref.md)

