# Staff Members: Implementation Activity {#_0377f1c1-8523-491b-b80d-4eb3267a95d3 .task}

Only staff members can be assigned to appointments. To be able to use particular employees on service management forms, you have to define these employees as staff members.

**Tip:** You can also define vendors as staff members when certain services are performed by external providers rather than by your company’s employees. In such cases, the vendor delivers the service on behalf of your company.

In this activity, you will learn how to define an employee as a staff member by updating their settings. After the change, the employee will be available for selection on service management forms.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the SweetLife Service and Equipment Sales Center needs to define a new employee as a staff member, so that it can be assigned to appointments in Acumatica ERP.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, which you'll use to complete this lesson, the following setup has been configured. These settings ensure that the environment is ready for performing the activity:

-   The minimum system configuration is performed as described in [Company Without Branches: General Information](config_Basic_Company_GeneralInfo.md).
-   The minimum configuration of the service management functionality is performed as described in [Basic Service Management Configuration: Implementation Activity](config_ServMgmt_with_Inventory_Implem_Activity.md).
-   On the [Users](../UserGuide/SM_20_10_10.md) \(SM201010\) form, the *myers* user account has been created, and the *EP00000041 \(Mason Randall\)* employee has been associated with the user account. That is, the employee name has been selected in the **Linked Entity** box.
-   On the [Employees](../UserGuide/EP_20_30_00.md#) \(EP203000\) form, *EP00000041 - Mason Randall* has been defined.

## Process Overview { .section}

On the [Employees](../UserGuide/EP_20_30_00.md) \(EP203000\) form, you will define an employee who will perform services in your company as a service management staff member.

**Tip:** You can go directly to this form, as described in the step below, or open the [Staff](../UserGuide/FS_20_55_00.md) \(FS205500\) form, click **Add Employee** on the table toolbar, and then perform Instructions 2–4 of the step below.

## System Preparation {#section_mnm_pgy_1hc .section}

Before you start this activity, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded; you should sign in as a system administrator by using the *gibbs* username and the *123* password.
2.  On the Company and Branch Selection menu in the top pane of the Acumatica ERP screen, select the Service and Equipment Sales Center branch.
3.  Make sure that the *Service Management* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form.

## Step: Defining Employee as a Staff Member { .section}

To define the *EP00000041 - Mason Randall* employee as a staff member who can perform services, do the following:

1.  On the [Employees](../UserGuide/EP_20_30_00.md) \(EP203000\) form, open the *EP00000041 - Mason Randall* employee.
2.  On the **General** tab \(**Additional Settings** section\), select the **Staff Member in Service Management** check box.
3.  On the form toolbar, click **Save**.
4.  On the [Staff](../UserGuide/FS_20_55_00.md) \(FS205500\) form, view the list of staff members who can provide services for the SweetLife Fruits &amp; Jams company, and make sure the list includes the employee whose settings you have modified.

**Parent topic:**[Staff Members](../ImplementationGuide/ServMgmt_Staff_Member_Mapref.md)

