# Skills: To Assign a Skill to a Service {#_4498b8a4-00e7-4451-9514-d3d4ee657178 .task}

In this implementation activity, you will learn how to assign skills to a service.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the SweetLife Service and Equipment Sales Center has begun offering a cleaning service that is billed by the hour. The staff member performing this service must have strong skills in operating and cleaning juicers, so the manager needs to assign the right person for the job. As the administrative user, you will assign the *Cleaning* skill to the cleaning service. As a result, the scheduler will be able to assign staff members whose skills match the services included in the appointment.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, which you'll use to complete this lesson, the following setup has been configured. These settings ensure that the environment is ready for performing the activity:

-   The minimum system configuration is performed as described in [Company Without Branches: General Information](config_Basic_Company_GeneralInfo.md).
-   The minimum configuration of the service management functionality is performed as described in [Basic Service Management Configuration: Implementation Activity](config_ServMgmt_with_Inventory_Implem_Activity.md).
-   On the [Services](../UserGuide/FS_40_08_00.md) \(FS400800\) form, the *CLEANING* service has been created.
-   On the [Skills](../UserGuide/FS_20_06_00.md) \(FS200600\) form, the *CLEANING* skill has been created.

## Process Overview { .section}

On the [Services](../UserGuide/FS_40_08_00.md) \(FS400800\) form, you click the service name link, and the system opens the [Non-Stock Items](../UserGuide/IN_20_20_00.md) \(IN202000\) form, which displays the non-stock item of the *Service* type. On this form, you assign the skill to the service.

## System Preparation {#section_v3m_ngy_1hc .section}

Before you start this activity, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded; you should sign in as a system administrator by using the *gibbs* username and the *123* password.
2.  On the Company and Branch Selection menu in the top pane of the Acumatica ERP screen, select the Service and Equipment Sales Center branch.
3.  Make sure that the *Service Management* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form.

## Step: Assigning a Skill to a Service { .section}

To assign a skill to a service, do the following:

1.  On the [Services](../UserGuide/FS_40_08_00.md) \(FS400800\) form, click *CLEANING* in the **Inventory ID** column.

    This opens the [Non-Stock Items](../UserGuide/IN_20_20_00.md) \(IN202000\) form, which displays the *CLEANING* non-stock item of the *Service* type.

2.  On the **Service Skills** tab, click **Add Row**.
3.  In the **Skill ID** column of the new row, select *CLEANING - Juicer cleaning skills*.
4.  On the form toolbar, click **Save**.

Now the *CLEANING - Juicer cleaning skills* skill is assigned to the *CLEANING* service.

When you attempt to assign staff members to this service, the validation \(described in [Skills: General Information](ServMgmt_Skills_GeneralInfo.md)\) is performed, and the system suggests the employees who have the skill to deliver this service.

**Parent topic:**[Skills](../ImplementationGuide/ServMgmt_Skills_Mapref.md)

