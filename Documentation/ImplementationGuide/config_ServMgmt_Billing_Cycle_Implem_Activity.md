# Billing Cycles: To Create a Billing Cycle and Assign It to a Customer {#_0ed58d9d-fd6a-4ded-b6b8-3d57f1dd71a1 .task}

In this activity, you will learn how to create a billing cycle in the system and assign this billing cycle to the customer.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that SweetLife Service and Equipment Sales Center is starting to provide a juicer cleaning service. The *FRBUN - Cafe French Bun* customer is going to request this service on a regular basis. The SweetLife Service and Equipment Sales Center wants to bill the customer immediately after each appointment is performed.

Acting as an administrative user Kimberly Gibbs, you'll create a billing cycle that generates a separate billing document for each appointment. Each billing document will include the details of the corresponding appointment. You’ll then assign this billing cycle to the customer.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, which you'll use to complete this lesson, the following setup has been configured. These settings ensure that the environment is ready for performing the activity:

-   The minimum system configuration, which is described in [Company with Branches that Do Not Require Balancing: General Information](config_Company_with_Branches_No_Balancing_GeneralInfo.md), has been performed.
-   The *SWEETLIFE* company has been created on the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form. This company has multiple branches created on the [Branches](../UserGuide/CS_10_20_00.md#) \(CS102000\) form, including *SWEETEQUIP \(Service and Equipment Sales Center\)*.
-   On the [Service Management Preferences](../UserGuide/FS_10_01_00.md) \(FS100100\) form, the minimum settings have been specified, including specifying the numbering sequences and work calendar, for the service management functionality to be used.
-   On the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form, the *FRBUN - Cafe French Bun* customer has been created.
-   On the [Service Management Preferences](../UserGuide/FS_10_01_00.md) \(FS100100\) form, the **Manage Multiple Billing Options per Customer** check box is cleared.

## Process Overview { .section}

On the [Billing Cycles](../UserGuide/FS_20_60_00.md) \(FS206000\) form, you will create a new billing cycle, *APP2APP*. Then on the **Billing** tab of the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form, you will assign the billing cycle that you have created to the *FRBUN - Cafe French Bun* customer.

## System Preparation { .section}

Before you start this activity, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded; you should sign in as a system administrator by using the *gibbs* username and the *123* password.
2.  Make sure that the *Service Management* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form.
3.  On the Company and Branch Selection menu in the top pane of the Acumatica ERP interface, select the *Service and Equipment Sales Center* branch.

## Step 1: Creating a Billing Cycle { .section}

To create a billing cycle, do the following:

1.  On the [Billing Cycles](../UserGuide/FS_20_60_00.md) \(FS206000\) form, add a new record.
2.  In the **Billing Cycle ID** box, enter `APP2APP`. This will serve as the identifier of this billing cycle in the system.
3.  In the **Description** box, enter `Billing by Appointments, Grouping by Appointments`.
4.  Under **Run Billing For**, leave **Appointments** selected.
5.  Under **Group Billing Documents By**, select **Appointments**.
6.  Leave the **Bill Only Completed or Closed Service Orders** check box cleared.
7.  On the form toolbar, click **Save**.

You’ve created the billing cycle. Now you can assign it to a customer to define how the customer will be billed for services.

## Step 2: Assigning the Billing Cycle to a Customer { .section}

To assign a billing cycle to a customer, do the following:

1.  On the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form, open the *FRBUN - Cafe French Bun* customer.
2.  On the **Billing** tab, in the **Billing Cycle** box \(**Service Management** section\), select *APP2APP*.
3.  On the form toolbar, click **Save**.

The billing cycle has been assigned to the customer and will be used for generating billing documents for the customer’s appointments.

**Parent topic:**[Billing Cycles](../ImplementationGuide/ServMgmt_Billing_Cycles_Mapref.md)

