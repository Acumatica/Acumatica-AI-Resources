# Time Tracking Configuration: To Track Time with Time Activities {#_f6496b77-a38d-44a9-bdd0-dcfcec899d8e .task}

In the following implementation activity, you will learn how to configure the system for tracking time in projects by using time activities.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story {#section_b3m_2q2_dmb .section}

Suppose that you, as an administrative user of SweetLife Fruits &amp; Jams company, are configuring accounting for projects. The manager of the company has decided to track employee time spent on each project and bill the customer based on employee time spent on work related to the customer's project. The employees should report their working time on a daily basis by using time activities.

You must configure the system for using time activities for time tracking.

## System Preparation { .section}

To prepare to perform the instructions of the activity, launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded; you should sign in as system administrator by using the *gibbs* username and the *123* password.

## Step: Configuring Time Reporting for Time Activities {#section_nby_scf_dmb .section}

Do the following to make sure the minimum required configuration has been performed in the system for time reporting by using time activities:

1.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, make sure that the *Time Management* feature is enabled.
2.  On the [Earning Types](../UserGuide/EP_10_20_00.md) \(EP102000\) form, review the *RG* earning type. Make sure that the **Billable** check box is selected for the earning type.

    **Attention:** If the *Payroll* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) form, earning types are defined on the [Earning Type Codes](../UserGuide/PR_10_20_00.md) \(PR102000\) form.

3.  On the [Activity Types](../UserGuide/CR_10_20_00.md) \(CR102000\) form, make sure the **Track Time and Costs** check box is selected for the *Work Item* activity type, which you will use for logging time spent by projects.

**Parent topic:**[Employee Time Tracking](../ImplementationGuide/config_Project_Time_Tracking_Mapref.md)

