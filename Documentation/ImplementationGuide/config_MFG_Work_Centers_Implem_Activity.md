# Configuring Work Centers: Implementation Activity {#_a1eac3a5-bc97-4753-92ba-5fb8bcba85d1 .task}

In the following implementation activity, you will learn how to create a work calendar, shifts, and work centers.

## Story { .section}

Suppose that SweetLife Fruits &amp; Jams has decided to assemble customized juicers according to customers' needs. Assembly will take place in the Workhouse warehouse of the Service and Equipment Sales Center branch, in a specific work center. Two workers and a manager will be involved in the assembly process, and no machines will be used in this work center. Administrative and payroll overhead costs must be included in the production costs for this work center. Normally, workers will work in the standard shift, but sometimes overtime work will be required, and usually one worker is involved in overtime work. Standard working hours are from Monday to Friday, 10:00 AM to 6:00 PM. Overtime work is from Monday to Friday, 6:00 PM to 9:00 PM.

In a separate work center, an injection molding machine has been installed, which will be used for producing small plastic parts required for juicers. The machine will be used during the standard schedule. One worker will operate the machine during the working hours.

As an implementation manager, you need to create a work calendar for overtime \(a work calendar already exists for standard working hours\), shifts for standard working hours and for overtime, and work centers for juicer assembly and for the injection molding machine.

## Configuration Overview { .section}

The following entities, which you will use in this activity, have been predefined in the *U100* dataset:

-   On the [Warehouses](../UserGuide/IN_20_40_00.md) \(IN204000\) form, the *WORKHOUSE* warehouse
-   On the [Work Calendar](../UserGuide/CS_20_90_00.md) \(CS209000\) form, the *MAIN* work calendar, which is used for standard working hours

## Process Overview { .section}

In this activity, you will do the following:

1.  On the [Work Calendar](../UserGuide/CS_20_90_00.md) \(CS209000\) form, create a work calendar for overtime work
2.  On the [Shifts](../UserGuide/AM_20_50_00.md) \(AM205000\) form, create shifts for standard working hours and for overtime work
3.  On the [Work Centers](../UserGuide/AM_20_70_00.md) \(AM207000\) form, create work centers for juicer assembly and for the injection molding machine

## System Preparation { .section}

Before you start performing the activity, do the following:

1.  As a prerequisite to the current activity, complete [Configuring Production Cost Drivers: Implementation Activity](config_MFG_Production_Cost_Drivers_Implem_Activity.md) so that the needed machine, overhead entities, and labor codes have been created in a company with the *U100* dataset preloaded.
2.  Sign in to this company \(that is, the company in which the prerequisite activity has been performed\) as a system administrator with the *gibbs* username and *123* password.

## Step 1: Creating a Work Calendar { .section}

To create a work calendar for overtime, do the following:

1.  On the [Work Calendar](../UserGuide/CS_20_90_00.md) \(CS209000\) form, add a new record.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  In the **Calendar ID** box of the Summary area, type `OVERTIME`.
3.  In the **Description** box, type `Calendar for overtime`.
4.  In the **Time Zone** box, select *\(GMT -05:00\) Eastern Time \(US &amp; Canada\)*.
5.  On the **Calendar** tab, do the following:
    1.  Notice that the check boxes are selected for **Monday**, **Tuesday**, **Wednesday**, **Thursday**, and **Friday** in the **Day of Week** column.
    2.  In the **Start Time** box for each of the selected days of week, select *6:00 PM*.
    3.  In the **End Time** box for each of the selected days of week, select *9:00 PM*.
6.  On the form toolbar, click **Save**.

You have created a work calendar for overtime, which you will use in the work center settings along with the shift for overtime work.

## Step 2: Creating Shifts { .section}

You will create a shift for standard working time and a shift for overtime work. Do the following:

1.  Open the [Shifts](../UserGuide/AM_20_50_00.md) \(AM205000\) form.
2.  On the form toolbar, click **Add Row** to add a shift for standard working time.
3.  In the columns of the added row, specify the following settings:
    -   **Shift**: `0001`
    -   **Description**: `Monday - Friday`
    -   **Diff Type**: *Amount*
    -   **Shift Diff**: `0`
    -   **Crew Size**: `2`
4.  On the form toolbar, click **Save**.
5.  On the form toolbar, click **Add Row** to add a shift for overtime.
6.  In the columns of the added row, specify the following settings:
    -   **Shift**: `0002`
    -   **Description**: `Overtime`
    -   **Diff Type**: *Rate*
    -   **Shift Diff**: `1.5`
    -   **Crew Size**: `1`
7.  On the form toolbar, click **Save**.

You have created shifts for standard working time and for overtime, and now you can create the needed work centers.

## Step 3: Creating a Work Center for Juicer Assembly { .section}

To create a work center where the assembly of juicers will be performed, do the following:

1.  On the [Work Centers](../UserGuide/AM_20_70_00.md) \(AM207000\) form, add a new record.
2.  In the Summary area, specify the following settings:
    -   **Work Center**: `WCR10`
    -   **Active**: Selected
    -   **Description**: `Work center for assembly of juicers`
    -   **Warehouse**: *WORKHOUSE*
3.  On the **General** tab, specify the following settings:
    -   **Standard Cost**: *20*
    -   **Basis for Capacity**: *Crew Size*
    -   **Allow Clock Entry for Multiple Production Orders**: Cleared
    -   **Scrap Action Default:** *No Action*
    -   **Backflush Materials**: Cleared
    -   **Backflush Labor**: Cleared
    -   **Control Point**: Cleared
    -   **Outside Process**: Cleared
4.  On the **Shifts** tab, do the following:
    1.  Notice that the row for the *0001* shift has been added. \(The row for the first shift is always added automatically because the work center must have at least one shift.\)
    2.  In this row, specify the following:
        -   **Crew Size**: `2`
        -   **Efficiency**: `1`
        -   **Calendar ID**: *MAIN*
        -   **Labor Code**: *DIRLAB*

            You created this labor code in [Configuring Production Cost Drivers: Implementation Activity](config_MFG_Production_Cost_Drivers_Implem_Activity.md).

    3.  Make sure that the **Diff Type** column contains *Amount* and the **Shift Diff** column contains *0.0000*. These values have been copied from the shift settings on the [Shifts](../UserGuide/AM_20_50_00.md) \(AM205000\) form.
    4.  On the table toolbar, click **Add Row**.
    5.  In this row, specify the following:
        -   **Shift**: *0002*
        -   **Crew Size**: `1`
        -   **Efficiency**: `1`
        -   **Calendar ID**: *OVERTIME*
        -   **Labor Code**: *DIRLAB*
    6.  On the form toolbar, click **Save**.
    7.  Notice that the **Diff Type** column contains *Rate* and the **Shift Diff** column contains *1.5000*. These values have been copied from the shift settings on the [Shifts](../UserGuide/AM_20_50_00.md) form.
5.  On the **Overhead** tab, do the following:
    1.  On the table toolbar, click **Add Row**.
    2.  In the **Overhead ID** column, select *ADMIN* to add the administrative overhead to the production cost.

        You created this overhead entity in [Configuring Production Cost Drivers: Implementation Activity](config_MFG_Production_Cost_Drivers_Implem_Activity.md).

    3.  In the **Factor** column, type `1`.
    4.  On the table toolbar, click **Add Row**.
    5.  In the **Overhead ID** column, select *PAYROLL* to add the payroll overhead to the production cost.

        You created this overhead entity in [Configuring Production Cost Drivers: Implementation Activity](config_MFG_Production_Cost_Drivers_Implem_Activity.md).

    6.  In the **Factor** column, type `1`.
6.  On the form toolbar, click **Save**.

You have created the work center that will be involved in the process of juicer assembly.

## Step 4: Creating a Work Center for a Machine { .section}

While remaining on the [Work Centers](../UserGuide/AM_20_70_00.md) \(AM207000\) form, you will create a work center for the injection molding machine. Do the following:

1.  On the form toolbar, click **Add New Record**.
2.  In the Summary area, specify the following settings:
    -   **Work Center**: `WCR20`
    -   **Active**: Selected
    -   **Description**: `Work center for the injection molding machine`
    -   **Warehouse**: *WORKHOUSE*
3.  On the **General** tab, specify the following settings:
    -   **Standard Cost**: *15*
    -   **Basis for Capacity**: *Machines*
    -   **Allow Clock Entry for Multiple Production Orders**: Cleared
    -   **Scrap Action Default:** *No Action*
    -   **Backflush Materials**: Selected
    -   **Backflush Labor**: Selected
    -   **Control Point**: Cleared
    -   **Outside Process**: Cleared
4.  On the **Shifts** tab, do the following:
    1.  Make sure that the row for the *0001* shift has been added.
    2.  In this row, specify the following:
        -   **Crew Size**: `1`
        -   **Efficiency**: `1`
        -   **Calendar ID**: *MAIN*
        -   **Labor Code**: *DIRLAB*
    3.  Make sure that the **Diff Type** column contains *Amount* and the **Shift Diff** column contains *0.0000*. These values have been copied from the shift settings on the [Shifts](../UserGuide/AM_20_50_00.md) \(AM205000\) form.
5.  On the **Overhead** tab, do the following:
    1.  On the table toolbar, click **Add Row**.
    2.  In the **Overhead ID** column, select *FLOOR* to add the floor setup cost to the production cost.

        You created this overhead entity in [Configuring Production Cost Drivers: Implementation Activity](config_MFG_Production_Cost_Drivers_Implem_Activity.md).

    3.  In the **Factor** column, type `1`.
6.  On the **Machines** tab, do the following:
    1.  On the table toolbar, click **Add Row**.
    2.  In the **Machine ID** column, select *INJMOLD*.

        You created this machine in [Configuring Production Cost Drivers: Implementation Activity](config_MFG_Production_Cost_Drivers_Implem_Activity.md).

    3.  Notice that the **Standard Cost** column contains *25.0000* and the **Machine Account** column contains *51060*. These values have been copied from the **Standard Cost** and **Account** boxes on the [Machines](../UserGuide/AM_20_45_00.md) \(AM204500\) form.
7.  On the form toolbar, click **Save**.

You have created a work center for the injection molding machine.

**Parent topic:**[Configuring Work Centers](../ImplementationGuide/config_MFG_Work_Centers_Mapref.md)

