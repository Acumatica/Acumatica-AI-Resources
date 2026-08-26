# System-Wide Security Auditing: General Information {#_28476e3a-7a5a-43a9-b76a-7a93b5ba758a .concept}

Acumatica ERP can monitor and record events triggered by a user or the system with the security auditing functionality. The system can monitor different types of events, and you set up the time period for which the audit trail—which is a series of records of activities in Acumatica ERP—must be kept.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Enable the auditing of specific user and system activities
-   Review the audit trails related to selected system events

## Applicable Scenarios { .section}

You use system-wide security auditing in the following cases:

-   Your company must comply with auditing regulations and needs to implement the corresponding auditing procedures.
-   Your company wants to ensure accountability and the ability to track user actions in the system.

## Enabling of Auditing { .section}

On the [Security Preferences](SM_20_10_60.md) \(SM201060\) form, under the **Audit** section of the Summary area, you can select the types of user and system events the system will monitor. Also, you can specify the time period for which the audit trail must be kept by specifying the number of months in the **Audit History Retention Period \(Months\)** box.

## Auditing of User Activities { .section}

On the [Security Preferences](SM_20_10_60.md) \(SM201060\) form, under the **Audit** section of the Summary area, you select the following check boxes to turn on the auditing of system events related to the corresponding user activities:

-   **Login**: The system records every successful sign-in of a user.
-   **Login Failed**: The system records every unsuccessful sign-in attempt of a user.
-   **Logout**: The system records every sign-out of a user.
-   **Screen Accessed**: The system records information about a user's access of an Acumatica ERP form.

    **Attention:** The event is logged only once for each form during a user session \(when the user first opens the form\).

-   **Session Expired**: The system records every expiration of a user's session.
-   **License Exceeded**: The system records every forced user sign-out due to the maximum number of users \(as specified in your company’s license\) being exceeded.

## Auditing of Email Processing { .section}

On the [Security Preferences](SM_20_10_60.md) \(SM201060\) form, under the **Audit** section of the Summary area, you select the following check boxes to turn on the auditing of the corresponding system events related to email processing:

-   **Send Email Success**: The system records every successful sending of an email from the system email account.
-   **Send Email Error**: The system records every failed sending of an email from the system email account.

## Auditing of Data Access { .section}

On the [Security Preferences](SM_20_10_60.md) \(SM201060\) form, under the **Audit** section of the Summary area, you select the following check boxes to turn on the auditing of the corresponding system events related to data access:

-   **OData Refresh**: The system records the access of Acumatica ERP data through a generic inquiry that has been exposed by using the OData protocol. For more information on support for OData in Acumatica ERP, see [Accessing the Exposed Inquiry Results Through OData](GI_Access_to_Exposed_Inquiry_Through_OData_Mapref.md).
-   **Customization Published**: The system records every publication of a customization. For more information, see the Acumatica ERP Customization Guide.

## Reviewing Audit Trails { .section}

You use the [Access History](../Shared/../UserGuide/SM_20_10_45.md) \(SM201045\) form to view the audit trails. The audit trail for each event type shows the time when the event took place, the user who performed the operation, the IP address from which the user signed in to the system, and other settings, depending on the event type. You can narrow the range of the listed events by user, date range, and operation type.

**Parent topic:**[Managing System-Wide Security Auditing](../UserGuide/SA_System_Wide_Security_Auditing_Mapref.md)

