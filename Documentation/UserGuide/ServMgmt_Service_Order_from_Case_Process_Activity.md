# Case-Related Service Orders: Process Activity {#_2c819e5c-a39b-4df3-92c9-b17ac27a3d0d .task}

This activity will walk you through the process of creating a service order from a case. You will go through the service management process while also processing the case, from creation through closing.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

The SweetLife Service and Equipment Sales Center provides support to its customers on equipment that the company sells, and these support services are billed to the customer on a per-case basis. The Thai Food Restaurant customer has requested the replacement of a component in a juicer that the company purchased previously.

Acting as the service manager of the company \(Maia Davis\), you will create a case for which an appointment should be scheduled for the replacement services to be performed. Acting as the respective employees, you will also continue the processing of the related service order through the closing of the case.

## Configuration Overview { .section}

In the *U100* dataset, which you'll use to complete this lesson, the following setup has been configured. These settings ensure that the environment is ready for performing the activity:

-   The minimum system configuration, which is described in [Company with Branches that Do Not Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_No_Balancing_GeneralInfo.md), has been performed.
-   The *SWEETLIFE* company has been created on the [Companies](CS_10_15_00.md) \(CS101500\) form. This company has multiple branches created on the [Branches](CS_10_20_00.md#) \(CS102000\) form, including *SWEETEQUIP \(Service and Equipment Sales Center\)*.
-   On the [Service Management Preferences](FS_10_01_00.md) \(FS100100\) form, the minimum settings have been specified, including specifying the numbering sequences and work calendar, for the service management functionality to be used.
-   On the [Enable/Disable Features](CS_10_00_00.md#) \(CS100000\) form, the following features have been enabled:
    -   *Inventory and Order Management*, which provides support for the sales order functionality
    -   *Case Management* \(under *Customer Management*\), which provides support for the case functionality.
-   On the [Employees](EP_20_30_00.md#) \(EP203000\) form, *EP00000040 \(Maia Davis\)* and *EP00000040 \(Alberto Jimenez\)* have been defined. For *Alberto Jimenez*, the **Staff Member in Service Management** check box has been selected and the *REPAIRING* skill has been added.
-   On the [Users](SM_20_10_10.md) \(SM201010\) form, the *davis* and *jimenez* accounts have been created. For the *davis* user account, in the **Linked Entity** box of the Summary area of the form, the *Maia Davis* employee account has been specified; for the *jimenez* user account, in this box, the *Alberto Jimenez* employee account has been specified.
-   On the [Staff Schedule Rules](FS_20_20_01.md) \(FS202001\) form, a work schedule rule has been defined for the *EP00000004 \(Alberto Jimenez\)* employee, and the work schedule has been generated for this employee on the [Generate Staff Schedules](FS_50_04_00.md) \(FS500400\) form.
-   On the [Branch Locations](FS_20_25_00.md#) \(FS202500\) form, the *WEST BRIGHTON* branch location has been defined.
-   On the [User Profile](SM_20_30_10.md#) \(SM203010\) form, for the *davis* user, the *WEST BRIGHTON* branch location has been specified as the default branch location.
-   On the [Service Order Types](FS_20_23_00.md#) \(FS202300\) form, the *MRO* service order type has been defined to generate SO invoices to bill customers for provided services. That is, *SO Invoices* has been selected in the **Generated Billing Documents** box of the **Billing Settings** section \(**General** tab\). Also, on the **General** tab \(**General Settings** section\), the **Complete Service Order When Its Appointments Are Completed** and **Close Service Order When Its Appointments Are Closed** check boxes are selected.
-   On the [Service Management Preferences](FS_10_01_00.md#) \(FS100100\) form, the basic service management functionality has been configured, including the specification of the numbering sequences and the work calendar. Also, on the **General** tab \(**Default Settings** section\), *MRO* has been selected in the **Default Service Order Type for Cases** box, meaning that when a new service order is created from the [Cases](CR_30_60_00.md) \(CR306000\) form, *MRO* is inserted as its service order type.
-   On the [Customers](AR_30_30_00.md#) \(AR303000\) form, the *TOMYUM \(Thai Food Restaurant\)* customer has been defined.

## Process Overview { .section}

To create a service order along with a case, you will create a new case on the [Cases](CR_30_60_00.md#) \(CR306000\) and a service order for it on the [Service Orders](FS_30_01_00.md#) \(FS300100\) form. You will then add the service to be performed by creating the related task on the [Task](CR_30_60_20.md#) \(CR306020\) form.

## System Preparation {#section_zjw_pvc_hhc .section}

Before you start this activity, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded; you should sign in as a service manager by using the *davis* username and the *123* password.
2.  In the Date box in the upper-right corner of the Acumatica ERP screen, specify the business date *1/30/2026*. For simplicity, you will use this business date to create and process all documents in this activity.
3.  After signing in, make sure that the *Service Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md#) \(CS100000\) form.

## Step 1: Creating a Case { .section}

To create a case, do the following:

1.  Open the [Cases](CR_30_60_00.md#) \(CR306000\) form, and click **Add New Record**.
2.  In the Summary area of this form, specify the following settings:
    -   **Case Class**: *SUPPORT*
    -   **Business Account**: *TOMYUM - Thai Food Restaurant*
    -   **Subject**: `Component Replacement Required`
3.  On the **Details** tab, briefly describe the situation by entering the following: `The component of the juicer has a defect; replacement with a new one is necessary`.
4.  On the form toolbar, click **Save**.

## Step 2: Creating a Service Order from the Case { .section}

To create a service order from the case, do the following:

1.  While you are still viewing the case on the [Cases](CR_30_60_00.md#) \(CR306000\) form, on the More menu \(under **Customer Services**\), click **Create Service Order**.
2.  In the **Create Service Order** dialog box, which opens, make sure that *MRO - Maintenance, repair and operations \(MRO\)* is selected in the **Service Order Type** box, and click **OK**.

    The [Service Orders](FS_30_01_00.md#) \(FS300100\) form opens with the customer details inserted. Note that services have not yet been added to the service order.

3.  In the **Source Info** section of the **Settings** tab, verify that the system has inserted *Case* as the document type and has inserted the reference number of the case from which the service order was created.
4.  On the form toolbar, click **Save**.

## Step 3: Adding Services { .section}

To add services to a service order, do the following:

1.  Return to the case you have created on the [Cases](CR_30_60_00.md#) \(CR306000\) form.
2.  On the **Activities** tab, click **Create Task**.

    The [Task](CR_30_60_20.md#) \(CR306020\) form opens. You must create a task in order to add a service for the case.

3.  In the **Summary** box, type `Replacement of a component`.
4.  On the **Details** tab, in the **Service** box \(**Service Management** section\), select *REPAIR*.
5.  Save your changes and close the form.

    The case now has one task associated with it. The service associated with the task is automatically added to the service order related to the case on the **Details** tab of the [Service Orders](FS_30_01_00.md) \(FS300100\) form.

6.  On the [Cases](CR_30_60_00.md#) form, on the More menu, click **View Service Order** \(**Customer Services** section\). On the **Details** tab of the [Service Orders](FS_30_01_00.md#) form, notice that the **Billable** check box is selected for the line added from the case. You can now proceed to creating an appointment for this service order and assigning the appointment to the employee who is the best fit to deliver the installation service.
7.  Return to the [Cases](CR_30_60_00.md#) form, and on the form toolbar, click **Open**.
8.  In the **Open** dialog box, leave the *In Process* reason and click **OK**.

The dialog box closes and the status of the case changes to *Open*.

## Step 4: Creating an Appointment { .section}

To create an appointment, do the following:

1.  While you are still viewing the case on the [Cases](CR_30_60_00.md#) \(CR306000\) form, on the More menu \(under **Customer Services**\), click **View Service Order**.

    The [Service Orders](FS_30_01_00.md) \(FS300100\) form.

2.  On the form toolbar, click **Create Appointment**. The [Appointments](FS_30_02_00.md#) \(FS300200\) form opens with all service order's details.
3.  On the **Staff** tab, add *Alberto Jimenez*.
4.  On the **Settings** tab, in the **Scheduled Start Date** group of boxes, verify that *1/30/2026* is specified in the first box, and specify 3:00 PM in the second box.
5.  Save the appointment.

An appointment is now created.

## Step 5: Processing the Appointment { .section}

To process the appointment, do the following:

1.  While you are still viewing the [Appointments](FS_30_02_00.md#) \(FS300200\) form, on the form toolbar, click **Start** \(You are acting as the staff member and will continue to do so for the next three instructions.\)
2.  In the **Actual Date and Time** section of the **Settings** tab, specify the actual start and actual end times to be the same as the scheduled times, and select the **Finished** check box.
3.  On the form toolbar, click **Complete**.

The service required to complete the case has been delivered, and you have completed the corresponding appointment. The completion of the appointment caused the service order to also be completed because of the settings of the *MRO* service order type on the [Service Order Types](FS_20_23_00.md#) \(FS202300\) form, as described in the *Configuration Overview* section.

## Step 6: Generating an Invoice for the Appointment { .section}

On behalf of the accountant, you will generate an invoice for the appointment. Do the following:

1.  While you are still viewing the completed appointment on the [Appointments](FS_30_02_00.md#) \(FS300200\) form, on the form toolbar, click **Quick Process**.

    According to the settings of the *MRO* service order type on the **Quick Processing** tab of the [Service Order Types](FS_20_23_00.md#) \(FS202300\) form, by clicking the **Quick Process** button, the system will close the appointment, run the billing process, and generate and release a sales invoice for the appointment.

2.  Once the billing process is finished, an invoice is generated and released. Close the confirmation box in the upper right corner of the form.

## Step 7: Completing the Task and Closing the Case { .section}

Now you can complete the task and close the related case; these actions must be performed manually. Do the following:

1.  On the **Settings** tab of the [Appointments](FS_30_02_00.md#) \(FS300200\) form, click the reference number of the case in the Source Info section.
2.  On the [Cases](CR_30_60_00.md#) \(CR306000\) form, which opens, in the **Summary** column of the **Activities** tab, click the link of the task associated with the case.
3.  On the form toolbar of the [Task](CR_30_60_20.md#) \(CR306020\) form, which opens, click **Complete**.

    Now the task is completed in the system, and you can close the case.

4.  On the form toolbar of the [Cases](CR_30_60_00.md#) form, click **Close**. In the **Close** dialog box, which opens, click **OK**.
5.  The status of the case has been changed to *Closed*.

**Parent topic:**[Creating a Service Order Along with a Case](../UserGuide/ServMgmt_Service_Order_from_Case_Mapref.md)

