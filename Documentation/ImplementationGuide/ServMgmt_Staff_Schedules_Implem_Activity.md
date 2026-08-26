# Staff Schedules: To Create a Schedule Rule and Generate the Work Schedule {#_01d8043a-0539-41a1-87b3-f73ea43d6ad3 .task}

In this implementation activity, you’ll create a schedule rule for a staff member and generate their work schedule.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose an employee of the SweetLife Service and Equipment Sales Center works Monday through Friday, from 9:00 AM to 6:00 PM. As an administrative user, you need to create a schedule rule that defines this employee’s working hours so their schedule can be generated in the system and displayed on the schedule boards.

## Configuration Overview { .section}

In the *U100* dataset, which you'll use to complete this lesson, the following setup has been configured. These settings ensure that the environment is ready for performing the activity:

-   The minimum system configuration, which is described in [Company with Branches that Do Not Require Balancing: General Information](config_Company_with_Branches_No_Balancing_GeneralInfo.md), has been performed.
-   The *SWEETLIFE* company has been created on the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form. This company has multiple branches created on the [Branches](../UserGuide/CS_10_20_00.md#) \(CS102000\) form, including *SWEETEQUIP \(Service and Equipment Sales Center\)*.
-   On the [Service Management Preferences](../UserGuide/FS_10_01_00.md) \(FS100100\) form, the minimum settings have been specified, including specifying the numbering sequences and work calendar, for the service management functionality to be used.
-   On the [Branch Locations](../UserGuide/FS_20_25_00.md#) \(FS202500\) form, the *WEST BRIGHTON* branch location of the *SWEETEQUIP* \(*Service and Equipment Sales Center*\) branch has been defined.
-   On the [Users](../UserGuide/SM_20_10_10.md) \(SM201010\) form, the *frank* user account has been created. The *EP00000042 \(Chase Frank\)* employee has been associated with the user account. That is, the employee name has been selected in the **Linked Entity** box.
-   On the [Employees](../UserGuide/EP_20_30_00.md#) \(EP203000\) form, *EP00000042 \(Chase Frank\)* has been defined. On the **General** tab \(**Employee Settings** section\), the **Staff Member in Service Management** check box has been selected, so you can assign this employee to perform services.

## Process Overview { .section}

On the [Staff Schedule Rules](../UserGuide/FS_20_20_01.md) \(FS202001\) form, you will create a work schedule rule. Once the rule is generated, you will generate the work schedule on the [Generate Staff Schedules](../UserGuide/FS_50_04_00.md) \(FS500400\) form.

## System Preparation { .section}

Before you start this activity, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded; you should sign in as a system administrator by using the *gibbs* username and the *123* password.
2.  Make sure that the *Service Management* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form.
3.  On the Company and Branch Selection menu in the top pane of the Acumatica ERP screen, select the *Service and Equipment Sales Center* branch.
4.  In the Date box in the upper-right corner of the Acumatica ERP screen, specify the business date *1/1/2026*. In this activity, you will create a work schedule rule on this business date.

## Step 1: Creating a Schedule Rule { .section}

To create a work schedule rule for the *EP00000042 - Chase Frank* employee, do the following:

1.  Open the [Staff Schedule Rules](../UserGuide/FS_20_20_01.md) \(FS202001\) form, and click **Add New Record**.
2.  In the **Staff Member** box of the Summary area, select *EP00000042 - Chase Frank*.
3.  In the **Branch** box, notice that *SWEETEQUIP - Service and Equipment Sales Center* is selected.
4.  In the **Branch Location** box, select *WEST BRIGHTON - Office in West Brighton*.
5.  In the **Description** box, enter `Working hours`.
6.  In the **Start Date** box \(**Scheduling Time** section\), leave the business date, which was inserted by default \(*1/1/2026*\).
7.  In the **Start Time** box, specify *9:00 AM*.
8.  In the **End Time** box, specify *6:00 PM*.
9.  For the **Schedule Type**, keep **Availability** selected. This option defines the days and times when the staff member is available to work.
10. In the **Recurrence** section, specify settings as shown below::
    -   **Frequency**: *Weekly*
    -   **Every**: **1** week
    -   **Day of Week**:
        -   **Monday**, **Tuesday**, **Wednesday**, **Thursday**, **Friday**: Selected
        -   **Sunday**, **Saturday**: Cleared
11. On the form toolbar, click **Save**.
12. In the warning dialog box, click **OK**.

    The schedule rule for *EP00000042 - Chase Frank* has been created. However, it has not been processed yet and it does not affect the working schedule. The rule will come into effect only after you apply it to the system by generating the staff working schedule.


## Step 2: Generating the Staff Schedule { .section}

**Tip:** The staff schedule rules you create in the system aren’t applied automatically—you must generate the work schedule explicitly. You’ll need to generate it again if you later change an employee’s working hours, add a new rule to reflect planned time off, or hire a new staff member.

To generate the work schedule, do the following:

1.  While you are still viewing the [Staff Schedule Rules](../UserGuide/FS_20_20_01.md) \(FS202001\) form with the schedule rule that you have just created, on the form toolbar, click **Generate Staff Schedules**.

    The [Generate Staff Schedules](../UserGuide/FS_50_04_00.md) \(FS500400\) form opens.

2.  In the **Employee Name** box, ensure that *EP00000042 - Chase Frank* is selected.
3.  In the **Generate Up To** box, ensure that the date that is one year from the current business date is specified.
4.  On the **Schedules** tab, select the unlabeled check box in the row with *Chase Frank* specified in the **Employee Name** column.
5.  On the form toolbar, click **Process**.

    The system opens the **Processing** dialog box, where you can view the processing status. When the process completes successfully, click **Processed**. The table of processed records appears in the window, and the work schedule is generated. You can then close the dialog box.


Once the schedule is generated, you can assign the staff member to service orders and appointments.

**Parent topic:**[Staff Schedules](../ImplementationGuide/ServMgmt_Staff_Schedules_Mapref.md)

