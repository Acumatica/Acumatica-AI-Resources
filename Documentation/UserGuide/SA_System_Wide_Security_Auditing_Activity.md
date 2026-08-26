# System-Wide Security Auditing: Process Activity {#_b1669d17-c8b4-4d74-bb9e-7e5f3c47ccb3 .task}

The following activity will walk you through the process of specifying system-wide security auditing to meet your needs.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that in addition to the auditing of user activities that is configured by default, the management of your company would like to track the publication of customizations and forced user sign-outs because of the maximum number of users \(as specified in the license\) being exceeded.

## Process Overview { .section}

To configure system-wide security auditing, you will use the settings on the [Security Preferences](SM_20_10_60.md) \(SM201060\) form. Then you will review audit trails on the [Access History](SM_20_10_45.md) \(SM201045\) form.

## System Preparation { .section}

Before you start configuring security auditing, sign in to a company with the *U100* dataset preloaded. You should sign in as a system administrator with the *gibbs* username and *123* password.

## Step 1: Turning On the System-Wide Security Auditing for Events { .section}

To specify your preferences for the auditing of system and user events, do the following:

1.  Open the [Security Preferences](SM_20_10_60.md) \(SM201060\) form.
2.  In the **Audit** section, review the check boxes that are selected by default, which are the following:
    -   **Login**
    -   **Login Failed**
    -   **Logout**
    -   **Screen Accessed**
    -   **Session Expired**
    -   **Send Email Success**
    -   **Send Email Error**
3.  In the same section, select the following check boxes \(if the check boxes are selected, keep their state as is\):
    -   **Customization Published**
    -   **License Exceeded**
4.  On the form toolbar, click **Save**.

## Step 2: Viewing Audit Trails { .section}

To view audit trails for system events, do the following:

1.  Open the [Access History](SM_20_10_45.md) \(SM201045\) form.
2.  In the **Operation** box of the Selection area, select *Access Screen*. The system displays the list of events registered for this operation.
3.  In the **Operation** box, select each of the other available options in succession, and review the list of events.

    **Tip:** You can also filter the events by a user account by selecting a user in the **Username** box and by a date range by selecting dates in the **From** and **To** boxes.


**Parent topic:**[Managing System-Wide Security Auditing](../UserGuide/SA_System_Wide_Security_Auditing_Mapref.md)

