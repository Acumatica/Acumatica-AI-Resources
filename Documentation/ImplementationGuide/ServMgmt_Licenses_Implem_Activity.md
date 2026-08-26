# License: To Create a License and Assign It to a Staff Member {#_e1be7842-89e5-40af-bc9a-545dc5f4e295 .task}

Each license is associated with a specific employee. In this implementation activity, you will learn how to create a license record in the system and specify the staff member who owns the license in the record's settings.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that SweetLife Service and Equipment Sales Center tracks the licenses its employees have. The company also provides services that can be performed only by staff members with licenses. In Acumatica ERP, each license and its settings should be entered, including the employee who owns this license.

Acting as an administrative user, you will create a license record in the system, and assign it to an employee who has the license.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, which you'll use to complete this lesson, the following setup has been configured. These settings ensure that the environment is ready for performing the activity:

-   The minimum system configuration, which is described in [Company with Branches that Do Not Require Balancing: General Information](config_Company_with_Branches_No_Balancing_GeneralInfo.md), has been performed.
-   The *SWEETLIFE* company has been created on the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form. This company has multiple branches created on the [Branches](../UserGuide/CS_10_20_00.md#) \(CS102000\) form, including *SWEETEQUIP \(Service and Equipment Sales Center\)*.
-   On the [Service Management Preferences](../UserGuide/FS_10_01_00.md) \(FS100100\) form, the minimum settings have been specified, including specifying the numbering sequences and work calendar, for the service management functionality to be used.
-   On the [Services](../UserGuide/FS_40_08_00.md) \(FS400800\) form, the *DELIVERY* service has been created.
-   On the [Employees](../UserGuide/EP_20_30_00.md) \(EP203000\) form, the *EP00000045 \(Luke Cole\)* employee has been created, and has been defined as a service management staff member. That is, the **Staff Member in Service Management** check box has been selected on the **General** tab for the employee.

## Process Overview { .section}

On the [Licenses](../UserGuide/FS_20_10_00.md) \(FS201000\) form, you will add license settings, including the staff member who has the license. Then on the [Employees](../UserGuide/EP_20_30_00.md) \(EP203000\) form, you will confirm that the license has been defined for the employee.

## System Preparation { .section}

Before you start this activity, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded; you should sign in as a system administrator by using the *gibbs* username and the *123* password.
2.  On the Company and Branch Selection menu in the top pane of the Acumatica ERP screen, select the *Service and Equipment Sales Center* branch.
3.  Make sure that the *Service Management* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form.
4.  Make sure that the following prerequisite activity has been completed: [License: To Create a License Type and Assign It to a Service](ServMgmt_License_Types_Implem_Activity.md) activity.

## Step: Creating a License { .section}

To create a license, do the following:

1.  On the [Licenses](../UserGuide/FS_20_10_00.md) \(FS201000\) form, add a new record.
2.  In the Summary area, specify the following settings:
    -   **License Type**: *DRIVER*
    -   **Description**: *Driver’s License* \(added by default\)
    -   **Staff Member**: *EP00000045 - Luke Cole*
    -   **Issue Date**: `01/01/2020`
    -   **Expiration Date**: `01/01/2030`
3.  On the form toolbar, click **Save**.
4.  In the Licenses \(FS4020PL\) list of records, make sure that the license you have created is displayed.
5.  Open the [Employees](../UserGuide/EP_20_30_00.md) \(EP203000\) form.
6.  In the **Employee ID** box, select *EP00000045*.
7.  On the **Licenses** tab, confirm that you see the license that you added for the employee.

    On this tab, you can add other licenses for the employee.


**Parent topic:**[Licenses](../ImplementationGuide/ServMgmt_License_Mapref.md)

