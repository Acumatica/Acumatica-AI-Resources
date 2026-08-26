# Configuring Production Cost Drivers: Implementation Activity {#_c1604cdc-a0d1-4df7-82e0-97c53bafd053 .task}

In the following implementation activity, you will learn how to create tools, machines, overhead entities, and labor codes, which are production cost drivers—that is, they determine the cost of the final products.

## Story { .section}

Suppose that SweetLife Fruits &amp; Jams has decided to assemble customized juicers according to customers' needs. For accurate calculating of the cost of the juicer, the material costs, machine costs, tool costs, labor costs, and overhead costs must be considered. In the assembly process, such tools as a screwdriver and a hammer are used. For producing small plastic parts, the injection molding machine is used. Two workers are involved in the juicer assembly. The administrative costs, payroll costs, and floor setup costs must be included in the cost of the juicers as well.

As an implementation manager, you need to create records for a machine, tools, overhead, and labor codes so that these costs are included in the cost of the juicers. The costs for the components used in juicers have been specified when the stock items for these components were created in the system, so you will not specify these costs in this activity.

## Configuration Overview { .section}

The following entities, which you will use in this activity, have been predefined in the *U100* dataset:

-   On the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, the following GL accounts:
    -   *51000, Accrued COGS - Direct Labor Costs*
    -   *51050, Accrued COGS - Fixed Overhead Costs*
    -   *51060, Accrued COGS - Fixed Machine Costs*
    -   *51070, Accrued COGS - Fixed Tool Costs*
    -   *51100, Accrued COGS - Indirect Labor Costs*
    -   *51150, Accrued COGS - Variable Overhead Costs*
-   On the [Work Calendar](../UserGuide/CS_20_90_00.md) \(CS209000\) form, the *MAIN* work calendar

## Process Overview { .section}

In this activity, you will do the following:

1.  On the [Labor Codes](../UserGuide/AM_20_65_00.md) \(AM206500\) form, create labor codes for direct and indirect labor costs
2.  On the [Overhead](../UserGuide/AM_20_25_00.md) \(AM202500\) form, create overhead entities for administrative costs, payroll costs, and the floor setup costs
3.  On the [Tools](../UserGuide/AM_20_55_00.md) \(AM205500\) form, create tools for a screwdriver and hammer
4.  On the [Machines](../UserGuide/AM_20_45_00.md) \(AM204500\) form, create a record for the injection molding machine

## System Preparation { .section}

Before you start creating the needed entities in the system, do the following:

1.  As a prerequisite to the current activity, complete [System Preparation for Manufacturing Implementation: Implementation Activity](config_MFG_General_Settings_Implem_Activity.md) so that the needed settings have been made in a company with the *U100* dataset preloaded.
2.  Sign in to this company \(in which the prerequisite activity has been performed\) as a system administrator with the *gibbs* username and *123* password.

## Step 1: Creating Labor Codes { .section}

To create labor codes for direct and indirect labor expenses, do the following:

1.  Open the [Labor Codes](../UserGuide/AM_20_65_00.md) \(AM206500\) form.
2.  On the form toolbar, click **Add Row**.
3.  In the added row, specify the following values in the columns:
    -   **Type**: *Direct*
    -   **Labor Code**: `DIRLAB`
    -   **Description**: `Direct labor`
    -   **Labor Account**: *51000*
4.  Add another row for a labor code with indirect labor costs, and specify the following values in the columns of the row:
    -   **Type**: *Indirect*
    -   **Labor Code**: `INDIRLAB`
    -   **Description**: `Indirect labor`
    -   **Labor Account**: *51100*
    -   **Overhead Account**: *51150*
5.  On the form toolbar, click **Save**.

## Step 2: Creating Overhead Entities { .section}

To create overhead entities for administrative costs, payroll costs, and floor setup costs, do the following:

1.  Open the [Overhead](../UserGuide/AM_20_25_00.md) \(AM202500\) form.
2.  On the form toolbar, click **Add Row**.
3.  For the administrative overhead, specify the following settings in the columns of the added row:
    -   **Overhead ID**: `ADMIN`
    -   **Description**: `Administrative overhead`
    -   **Type**: *Fixed*
    -   **Cost Rate**: `15.0000`
    -   **Account**: *51050*
4.  Add another row for the floor setup overhead costs, and specify the following settings in the columns of the added row:
    -   **Overhead ID**: `FLOOR`
    -   **Description**: `Floor setup overhead`
    -   **Type**: *Variable by Quantity Completed*
    -   **Cost Rate**: `0.0500`
    -   **Account**: *51150*
5.  Add one more row for the payroll overhead costs, and specify the following settings in the columns of the added row:
    -   **Overhead ID**: `PAYROLL`
    -   **Description**: `Payroll overhead`
    -   **Type**: *Variable by Labor Cost*
    -   **Cost Rate**: `0.3000`
    -   **Account**: *51150*
6.  On the form toolbar, click **Save**.

## Step 3: Creating Tools { .section}

To create tools for the screwdriver and hammer that will be used in the juicer assembly process, do the following:

1.  On the [Tools](../UserGuide/AM_20_55_00.md) \(AM205500\) form, add a new record.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  For the screwdriver tool, in the Summary area, specify the following settings:
    -   **Tool ID**: `SCREWDRIVER`
    -   **Description**: `Electric screwdriver`
    -   **Active**: Selected
3.  In the **Cost** section, specify the following settings:
    -   **Unit Cost**: `0.2000`
    -   **Total Cost**: `200.0000`
4.  In the **Account Settings** section, select *51070* in the **Account** box.
5.  On the form toolbar, click **Save**.
6.  On the form toolbar, click **Add New Record**.
7.  In the Summary area, specify the following settings for the hammer tool:
    -   **Tool ID**: `HAMMER`
    -   **Description**: `Hammer`
    -   **Active**: Selected
8.  In the **Cost** section, specify the following settings:
    -   **Unit Cost**: `0.0200`
    -   **Total Cost**: `25.0000`
9.  In the **Account Settings** section, select *51070* in the **Account** box.
10. On the form toolbar, click **Save**.

## Step 4: Creating a Machine { .section}

You will create a record for the injection molding machine with the standard cost of $25 per hour and 100% efficiency. The machine will work during the standard working hours. Do the following:

1.  On the [Machines](../UserGuide/AM_20_45_00.md) \(AM204500\) form, add a new record.
2.  In the Summary area, specify the following settings:
    -   **Machine ID**: `INJMOLD`
    -   **Active**: Selected
    -   **Down**: Cleared
    -   **Description**: `Injection molding machine`
3.  In the **General** section, specify the following settings:
    -   **Standard Cost**: `25.0000`
    -   **Calendar ID**: *MAIN*
    -   **Efficiency**: `1.000000`
    -   **Account**: *51060*
4.  On the form toolbar, click **Save**.

You have created records for the labor codes, tools, overhead entities, and machines, and now you can create work centers.

**Parent topic:**[Configuring Production Cost Drivers](../ImplementationGuide/config_MFG_Production_Cost_Drivers_Mapref.md)

