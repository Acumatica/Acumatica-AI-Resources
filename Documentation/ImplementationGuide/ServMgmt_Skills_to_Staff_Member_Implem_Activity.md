# Skills: To Assign a Skill to a Staff Member {#_232d3785-b2c1-4612-b9f7-d9bd3bf01cf7 .task}

In the following implementation activity, you will learn how to assign a skill or skill to employees.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that SweetLife Service and Equipment Sales Center provides multiple services, making staff assignment to appointments more complex. Each service requires specific staff skills, and the manager wants to ensure the right person is assigned to each service. As the administrative user, you will add the necessary skills to staff members. As a result, the scheduler will be able to assign appointments to staff whose skills match those required by the included services.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, which you'll use to complete this lesson, the following setup has been configured. These settings ensure that the environment is ready for performing the activity:

-   The minimum system configuration is performed as described in [Company Without Branches: General Information](config_Basic_Company_GeneralInfo.md).
-   The minimum configuration of the service management functionality is performed as described in [Basic Service Management Configuration: Implementation Activity](config_ServMgmt_with_Inventory_Implem_Activity.md).
-   On the [Employees](../UserGuide/EP_20_30_00.md) \(EP203000\) form, the *EP00000042 - Chase Frank*, *EP00000044 - Ricardo Martinez* and *EP00000045 - Luke Cole* employees have been created, and have been defined as a service management staff members, that is the **Staff Member in Service Management** check box has been selected on the **General** tab for each employee.
-   On the [Skills](../UserGuide/FS_20_06_00.md) \(FS200600\) form, the *TRAINING*, *REPAIRING* and *DRIVING* skills have been created.

## Process Overview { .section}

On the [Employees](../UserGuide/EP_20_30_00.md) \(EP203000\) form, you will select an employee, and on the **Skills** tab of the form, you will add a skill to each selected employee.

## System Preparation { .section}

Before you start this activity, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded; you should sign in as a system administrator by using the *gibbs* username and the *123* password.
2.  On the Company and Branch Selection menu in the top pane of the Acumatica ERP screen, select the Service and Equipment Sales Center branch.
3.  Make sure that the *Service Management* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form.

## Step: Assigning a Skill to a Staff Member { .section}

You can assign skills to staff members of the *Employee* type. To assign a skill to a staff member, do the following:

1.  Open the [Employees](../UserGuide/EP_20_30_00.md) \(EP203000\) form.
2.  In the **Employee ID** box of the Summary area, select *EP00000041 - Mason Randall*.
3.  On the **Skills** tab, click **Add Row**, and in the new row, select *TRAINING*.
4.  On the form toolbar, click **Save**.

**Parent topic:**[Skills](../ImplementationGuide/ServMgmt_Skills_Mapref.md)

