# Skills: To Create a Skill {#_411d5c09-d2cf-43d0-ae8b-5c1967f365ba .task}

In this implementation activity, you will learn how to create a skill.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the SweetLife Service and Equipment Sales Center provides multiple services, each requiring specific staff skills. The manager must assign qualified staff members to perform these services. As the administrative user, you will create the skills required for the company’s services. As a result, the scheduler will be able to assign appointments to staff members whose skills match the services included.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, which you'll use to complete this lesson, the following setup has been configured. These settings ensure that the environment is ready for performing the activity:

-   The minimum system configuration is performed as described in [Company Without Branches: General Information](config_Basic_Company_GeneralInfo.md).
-   The minimum configuration of the service management functionality is performed as described in [Basic Service Management Configuration: Implementation Activity](config_ServMgmt_with_Inventory_Implem_Activity.md).

## Process Overview { .section}

On the [Skills](../UserGuide/FS_20_06_00.md) \(FS200600\), you will add skill records to the system.

## System Preparation {#section_r42_4gy_1hc .section}

Before you start this activity, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded; you should sign in as a system administrator by using the *gibbs* username and the *123* password.
2.  On the Company and Branch Selection menu in the top pane of the Acumatica ERP screen, select the Service and Equipment Sales Center branch.
3.  Make sure that the *Service Management* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form.

## Step: Creating Skills { .section}

To create a skill, do the following:

1.  Open the [Skills](../UserGuide/FS_20_06_00.md) \(FS200600\) form.
2.  On the table toolbar, click **Add Row**.
3.  In the **Skill ID** column of the row that was added, enter the identifier of the skill: `COOKING`.
4.  In the **Description** column, enter `Culinary Skills`.
5.  On the form toolbar, click **Save**.
6.  As you did in Instructions 2–5, create a skill with the following settings, and save your changes:
    -   **Skill ID**: `TRANSLATING`
    -   **Description**: `English to Spanish Translator`

**Parent topic:**[Skills](../ImplementationGuide/ServMgmt_Skills_Mapref.md)

