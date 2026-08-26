# Appointment Creation: To Create an Appointment with Staff on the Appointments Form {#_999302fe-de96-4616-aaf9-d1eb2f8d1902 .task}

The following activity will walk you through the process of creating an appointment without creating a service order first. You will assign a staff member to the appointment based on the needed skills.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the GoodFood One Restaurant previously ordered a juicer from the SweetLife Service and Equipment Sales Center with a production rate of 1.5 liters per minute. Now this customer needs installation services for the juicer. The service manager \(Maia Davis\) and the customer have agreed that the service will be delivered on February 4, 2026, at 9:00 AM.

Acting as the service manager, you need to create an appointment in the system and assign a staff member who has the needed skill for performing the service.

## Configuration Overview { .section}

In the *U100* dataset, which you'll use to complete this lesson, the following setup has been configured. These settings ensure that the environment is ready for performing the activity:

-   The minimum system configuration, which is described in [Company with Branches that Do Not Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_No_Balancing_GeneralInfo.md), has been performed.
-   The *SWEETLIFE* company has been created on the [Companies](CS_10_15_00.md) \(CS101500\) form. This company has multiple branches created on the [Branches](CS_10_20_00.md#) \(CS102000\) form, including *SWEETEQUIP \(Service and Equipment Sales Center\)*.
-   On the [Service Management Preferences](FS_10_01_00.md) \(FS100100\) form, the minimum settings have been specified, including specifying the numbering sequences and work calendar, for the service management functionality to be used.
-   On the [Users](SM_20_10_10.md) \(SM201010\) form, the *davis* and *smith* user accounts have been created. The *EP00000040 - Maia Davis* employee has been associated with the *davis* user account; that is, *Maia Davis* has been selected in the **Linked Entity** box of the Summary area of the form. The *EP00000043 - Edward Smith* employee has been associated with the *smith* user account; that is, *Edward Smith* has been selected in the **Linked Entity** box of the Summary area of the form.
-   On the [Branch Locations](FS_20_25_00.md#) \(FS202500\) form, the *WEST BRIGHTON* branch location of the *SWEETEQUIP* \(*Service and Equipment Sales Center*\) branch has been created.
-   On the [User Profile](SM_20_30_10.md#) \(SM203010\) form, for the *davis* user, *WEST BRIGHTON* has been specified as the default branch location.
-   On the [Service Order Types](FS_20_23_00.md#) \(FS202300\) form, the *INST* service order type has been defined.
-   On the [Billing Cycles](FS_20_60_00.md#) \(FS206000\) form, the following settings have been specified for the *AP AP* billing cycle:
    -   **Run Billing For**: **Appointments**
    -   **Group Billing Documents By**: **Appointments**
-   On the [Customers](AR_30_30_00.md#) \(AR303000\) form, the *GOODFOOD \(GoodFood One Restaurant\)* customer has been defined, and the *AP AP* billing cycle has been selected in the **Service Management** section of the **Billing** tab.
-   On the [Skills](FS_20_06_00.md#) \(FS200600\) form, the *INSTALLING* skill has been created.
-   On the [Non-Stock Items](IN_20_20_00.md#) \(IN202000\) form, the *INSTALL* service \(that is, non-stock item of the *Service* type\) has been created. On the **Price/Cost** tab, the *Flat Rate* billing rule has been specified. For this service, *INSTALLING* has been listed on the **Service Skills** tab \(so the assigned staff member must have this skill\).
-   On the [Employees](EP_20_30_00.md#) \(EP203000\) form, *EP00000043 \(Edward Smith\)* has been defined. For this employee, on the **General** tab \(**Employee Settings** section\), the **Staff Member in Service Management** check box has been selected. Also, the *INSTALLING* skill has been added for this employee on the **Skills** tab.

## Process Overview { .section}

On the [Appointments](FS_30_02_00.md#) \(FS300200\) form, you will create an appointment for which no service order exists; on the **Details** tab of the form, you will add an installation service to the appointment by using the **Inventory Lookup** dialog box. You will then assign a staff member to the appointment by using the **Add Staff** dialog box on the **Staff** tab of the form.

## System Preparation { .section}

Before you start this activity, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded; you should sign in as a service manager by using the *davis* username and the *123* password.
2.  In the Date box in the upper-right corner of the Acumatica ERP screen, specify the business date *1/30/2026*. For simplicity, you will use this business date to create and process all documents in this activity.
3.  After signing in, make sure that the *Service Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md#) \(CS100000\) form.

## Step 1: Creating an Appointment { .section}

To create an appointment, do the following:

1.  On the [Appointments](FS_30_02_00.md#) \(FS300200\) form, add a new record.
2.  In the Summary area, specify the following settings for the new appointment:
    -   **Service Order Type**: *INST*
    -   **Customer**: *GOODFOOD - GoodFood One Restaurant*
3.  In the **Description** box, type `Juicer installation`.
4.  On the **Settings** tab \(**Scheduled Date and Time** section\), specify the date and time of the appointment. In the **Scheduled Start Date** group of boxes, specify *2/4/2026* *9:00 AM*.
5.  On the form toolbar, click **Save**.

Because you have neither created this appointment from a service order nor selected any service order for the appointment, when you saved the appointment, the system created a new service order automatically and inserted its reference number in the **Service Order Nbr.** box.

## Step 2: Adding a Service to the Appointment { .section}

To add a service to the appointment, do the following:

1.  While you are still viewing the appointment on the [Appointments](FS_30_02_00.md#) \(FS300200\) form, on the table toolbar of the **Details** tab, click **Add Items**.

    The **Inventory Lookup** dialog box is opened.

2.  In the **Line Type** box of the Selection area, select *Service*.

    Now the dialog box lists only services of the *Service* type.

3.  In the table, select the unlabeled check box in the row of the *INSTALL* service, and click **Add &amp; Close**.
4.  On the form toolbar, click **Save**.

## Step 3: Assigning a Staff Member with the Required Skills to an Appointment { .section}

To assign an appointment to a staff member who has the required skill, do the following:

1.  While you are still viewing the appointment on the [Appointments](FS_30_02_00.md#) \(FS300200\) form, on the table toolbar of the **Staff** tab, click **Add Staff**.

    The **Add Staff** dialog box opens. On the **Skills** tab, the *INSTALLING* skill is selected because it is associated with the *INSTALL* service on the [Non-Stock Items](IN_20_20_00.md#) \(IN202000\) form. This skill is preferred for performing the service for the appointment.

    Similarly, on the **Licenses** tab, the check box is selected for the license type required for staff members who perform the service.

    In the **Staff** section, only staff members who match the selected skills and license types are displayed.

2.  Select the check box for *Edward Smith*.
3.  At the bottom of the dialog box, click **Add**.
4.  On the form toolbar, click **Save**.

On the **Staff** tab, notice that *EP00000043 \(Edward Smith\)* is now assigned to the appointment.

**Parent topic:**[Creating Appointments](../UserGuide/ServMgmt_Processing_Appointments_Mapref.md)

