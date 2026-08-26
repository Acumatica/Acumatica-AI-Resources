# Notifications About Events {#_c6eba991-03ee-47f9-8518-8bdc6d82d794 .concept}

You can configure Acumatica ERP to send automatic notifications about various events in your company, such as training sessions, work meetings, conference calls, and trade shows.

Acumatica ERP provides built-in capabilities to send simple notification emails for specific situations: inviting potential attendees to an event, rescheduling an event, and canceling an event. Alternatively, you can create your own notification templates for these situations. On the [Event Setup](EP_20_40_70.md) \(EP204070\) form, you specify settings that determine whether the system will use the built-in notification emails or notification emails based on the notification templates that you specify for these situations.

The system uses the configuration settings that you specified for event notifications as an event owner manages an event on the [Event](CR_30_60_30.md) \(CR306030\) form. When the owner performs particular sequences of actions, the system sends email notifications to invite potential attendees, inform them about the event being rescheduled, and tell them if the event has been canceled. For more details about how the actions of an event's owner cause notifications to be sent, see [Emails and Activities: Events](CRM_Mktg_Managing_Emails_Activities_Events.md).

Also, you can configure the system to enable the use of reminders, so that potential attendees will be reminded about the event if the owner has set up these reminders in the settings of the individual event. For details, see the section below.

## Event-Related Settings { .section}

By using the [Event Setup](EP_20_40_70.md) \(EP204070\) form, you can configure the system's handling of automatic notifications about event scheduling, rescheduling, and cancellation. You can configure either simple \(built-in\) notifications or template-based notifications that you tailor to your company's specifications.

On this form, you select the **Simple Notifications** check box to use the notifications that are built into the functionality of the [Event](CR_30_60_30.md) \(CR306030\) form. These notifications cannot be edited or personalized. With the simple notifications, the emails sent to potential attendees consist of the following text followed by the relevant data about the event:

-   For inviting potential attendees: *\[Owner\] invited you to the event.*
-   For rescheduling an event: *The event was rescheduled.*
-   For canceling an event \(or canceling the recipient's invitation to it\): *The event was canceled.*

Alternatively, you can create your own notification templates for these situations on the [Email Templates](SM_20_40_03.md) \(SM204003\) form. A template can include placeholders that are replaced by each addressee's personal data, such as the first and last names and position, when the system generates event notification emails. You then select the appropriate templates in the following boxes of the [Event Setup](EP_20_40_70.md) form:

-   **Invitation Template**: The system will use this template to send email invitations to the persons listed on the **Attendees** tab of the [Event](CR_30_60_30.md) form.
-   **Reschedule Template**: The system will use this template if the event date or time has been changed.
-   **Cancel Invitation Template**: This template is used if the event is canceled or if the invitation to the event is canceled for a particular potential attendee \(for instance, if the event planner sent the invitation to this person in error\).

If you select the **Only iCalendar Card** check box, you can cause the system to export the calendar data of the event to a file in ICS \(iCalendar\) format, attach the file to a notification email, and send the email to the email address of each potential attendee. With the check box selected, the built-in notifications must be used.

If you select the **Add Contact Information** check box, you can cause the system to add the event owner's contact information to a notification email. The contact information includes the owner's first name, last name, phone number, and email address. This check box can be selected only if built-in notifications are used.

For more details about creating events, see [Emails and Activities: Events](CRM_Mktg_Managing_Emails_Activities_Events.md).

## Enabling of Reminders About Events { .section}

While defining an event on the [Event](CR_30_60_30.md) \(CR306030\) form, the event's owner can turn on the generation of reminders about it, specifying the day and time when invited attendees will be reminded about the event \(by the **Automatic Reminder** dialog box popping up\).

Regardless of the settings of individual events, these reminders will be generated only if the use of reminders has been enabled in the system. For specific instructions about how to enable the use of reminders in the system, see [To Enable Reminders](Configuring_reminders.md).

## Actions That Cause the Sending of Event-Related Notification Emails { .section}

If an event owner has added potential attendees to an event on the **Attendees** tab of the [Event](../Shared/../UserGuide/CR_30_60_30.md) \(CR306030\) form, the system sends notification emails to the email addresses of the potential attendees based on the actions of the event owner as follows:

-   An event invitation to all potential attendees while the event is being saved for the first time: When an event's owner clicks **Save** on the form toolbar, the **Confirmation** dialog box is displayed with the following text: *At least one potential attendee has been selected. The invitations will be sent to all selected potential attendees.* If the event's owner clicks **Confirm**, the system sends the event invitations to all potential attendees, and the invitation status for all added potential attendees in the **Invitation** column changes from *Not invited* to *Invited*. The system also sends the invitations to all potential attendees with the *Not invited* invitation status if the event's owner clicks **Invite All** on the table toolbar of the **Attendees** tab and clicks **Confirm** in the **Confirmation** dialog box, which displayed the following text: *The invitations will be sent to only the potential attendees who have not been invited.*
-   An event invitation to all potential attendees or to only newly added attendees: If a new potential attendee has been added to the previously saved event and the event's owner clicks **Save** on the form toolbar, the **Confirmation** dialog box is displayed with the following text: *At least one potential attendee has been selected. The invitations will be sent to all selected potential attendees*. If the event's owner clicks **Confirm**, the system sends the invitations either to all potential attendees with the *Not invited* invitation status or to only newly added attendees.
-   An event invitation to selected attendee: If the event's owner has added any attendees to the **Attendees** tab and wants to send the invitation to one of them, the event's owner can select the row with the attendee and clicks **Invite**. The system sends the invitation to only the selected attendee.
-   A notification to all potential attendees if the event has been rescheduled: If the event's owner changed the time, date, or both time and date of the event and clicks **Save** on the form toolbar, the **Confirmation** dialog box is displayed with the following text: *The invited potential attendees will be notified about the new start time of the event*. If the event's owner clicks **Confirm**, the system sends the invitations to all potential attendees of the event. The invitation status for all previously invited attendees is changed to *Rescheduled*. If a potential attendee has not been invited, then the system sends the invitation for the first time, and the invitation status of this attendee is changed to *Invited*.
-   A notification to all potential attendees if the event has been canceled: If the event's owner cancels the event after the invitations to all potential attendees have been sent, the **Confirmation** dialog box is displayed with the following text: *The invitations that have already been sent will be canceled*. If the event's owner clicks **Confirm**, the system sends the notifications that event has been canceled to all potential attendees and deletes the event.
-   A notification about the cancellation of the event to a particular potential attendee: The system sends this notification if the event's owner deletes the invited potential attendee on the **Attendees** tab, saves the changes, the start time of the event is not later than the event's end time and date, and the attendee's invitation status is *Invited*, *Accepted*, or *Rescheduled*.

**Parent topic:**[Managing Events](../UserGuide/AI__con_Event_Monitoring.md)

