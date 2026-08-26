# Emails and Activities: Events {#_a8264a9f-15b6-4234-9689-0d8ad9e837f0 .concept}

In Acumatica ERP, an event is a record on the [Event](CR_30_60_30.md) \(CR306030\) form that represents a scheduled occurrence, such as an appointment or conference call, that is typically attended by multiple people. You can create an event by clicking **Create Event** on the **Activities** tab of such forms as [Leads](CR_30_10_00.md) \(CR301000\), [Contacts](CR_30_20_00.md) \(CR302000\), or [Business Accounts](CR_30_30_00.md) \(CR303000\). The event will be associated with the entity selected on the form.

An event has a start date and time and an end date and time. You can create an event and invite leads, contacts, employees, and persons whose data has not been entered in the system. Also, you can receive email notifications about events created by other users.

## Form Layout for an Event Owner { .section}

For the owner of the event selected on the [Event](CR_30_60_30.md) \(CR306030\) form, the form toolbar has the **Complete** and **Cancel** buttons, and the More menu has the equivalent commands. In the Summary area, the event owner can enter and change the summary settings of the event, such as date, time, priority, and location.

The owner can also select the time zone in which the start time and end time of the event are being specified. This can be the time zone relevant to the owner or the time zone of most event attendees.

By default, the system inserts the event creator's name in the **Owner** box. If the event creator selects another employee in the **Owner** box, the creator sees the form layout that is viewed by a potential attendee. \(For details, see the following section.\)

In the **Related Entity** box of the **Details** tab, the entity that is associated with the event is shown if the owner has created the event from the data entry form of the entity. For example, if a user was viewing a lead on the [Leads](CR_30_10_00.md) \(CR301000\) form and created the event from that form, this lead will be specified in the box by default. \(The user would also be the default owner of the event.\) On the [Leads](CR_30_10_00.md) form, the system adds the summary information about the event in a row of the **Activities** tab. If the owner changes the related entity of the event, the summary information about the event will be added to the **Activities** tab of the form for the new entity. The event will no longer be associated with the entity that was previously selected in this box.

On the **Attendees** tab, the event owner can list potential attendees. In the **Contact** column, the owner can select a potential attendee among the leads, contacts, and employees defined in the system. The event's owner can also add a potential attendee whose data has not been added to the system by leaving the **Contact** column empty and manually specifying the person's email address in the **Email** column. For the owner, the **Invite** and **Invite All** buttons appear on the table toolbar. The owner can click the buttons to cause the system to send notification emails to a potential attendee or all listed potential attendees. In the **Invitation** column, the status of each potential attendee's invitation is shown. The event owner can define any of the listed attendees as optional by selecting the **Optional** check box.

On the **Activities** tab, the event owner can create any emails and activities that are related to the event. For each email or activity, the system adds a row to the table with the summary information about this event or activity. The table also lists all the activities that have been created for the event, including invitations sent to potential attendees. The event owner can delete any row in the table.

## Form Layout for a Potential Attendee of an Event { .section}

For a potential attendee of the event selected on the [Event](CR_30_60_30.md) \(CR306030\) form, the form toolbar has the **Accept** and **Decline** buttons, and the More menu has the equivalent commands.

In the Summary area, on the **Details** and **Attendees** tabs, all of the UI elements are unavailable for editing.

## Actions That Cause the Sending of Event-Related Notification Emails { .section}

If an event owner has added potential attendees to an event on the **Attendees** tab of the [Event](../Shared/../UserGuide/CR_30_60_30.md) \(CR306030\) form, the system sends notification emails to the email addresses of the potential attendees based on the actions of the event owner as follows:

-   An event invitation to all potential attendees while the event is being saved for the first time: When an event's owner clicks **Save** on the form toolbar, the **Confirmation** dialog box is displayed with the following text: *At least one potential attendee has been selected. The invitations will be sent to all selected potential attendees.* If the event's owner clicks **Confirm**, the system sends the event invitations to all potential attendees, and the invitation status for all added potential attendees in the **Invitation** column changes from *Not invited* to *Invited*. The system also sends the invitations to all potential attendees with the *Not invited* invitation status if the event's owner clicks **Invite All** on the table toolbar of the **Attendees** tab and clicks **Confirm** in the **Confirmation** dialog box, which displayed the following text: *The invitations will be sent to only the potential attendees who have not been invited.*
-   An event invitation to all potential attendees or to only newly added attendees: If a new potential attendee has been added to the previously saved event and the event's owner clicks **Save** on the form toolbar, the **Confirmation** dialog box is displayed with the following text: *At least one potential attendee has been selected. The invitations will be sent to all selected potential attendees*. If the event's owner clicks **Confirm**, the system sends the invitations either to all potential attendees with the *Not invited* invitation status or to only newly added attendees.
-   An event invitation to selected attendee: If the event's owner has added any attendees to the **Attendees** tab and wants to send the invitation to one of them, the event's owner can select the row with the attendee and clicks **Invite**. The system sends the invitation to only the selected attendee.
-   A notification to all potential attendees if the event has been rescheduled: If the event's owner changed the time, date, or both time and date of the event and clicks **Save** on the form toolbar, the **Confirmation** dialog box is displayed with the following text: *The invited potential attendees will be notified about the new start time of the event*. If the event's owner clicks **Confirm**, the system sends the invitations to all potential attendees of the event. The invitation status for all previously invited attendees is changed to *Rescheduled*. If a potential attendee has not been invited, then the system sends the invitation for the first time, and the invitation status of this attendee is changed to *Invited*.
-   A notification to all potential attendees if the event has been canceled: If the event's owner cancels the event after the invitations to all potential attendees have been sent, the **Confirmation** dialog box is displayed with the following text: *The invitations that have already been sent will be canceled*. If the event's owner clicks **Confirm**, the system sends the notifications that event has been canceled to all potential attendees and deletes the event.
-   A notification about the cancellation of the event to a particular potential attendee: The system sends this notification if the event's owner deletes the invited potential attendee on the **Attendees** tab, saves the changes, the start time of the event is not later than the event's end time and date, and the attendee's invitation status is *Invited*, *Accepted*, or *Rescheduled*.

## Maintenance Settings that Affect Events { .section}

On the [Event Setup](EP_20_40_70.md) \(EP204070\) form, a system administrator can configure the way the system sends automatic notification emails to potential attendees of an event when the event's owner performs particular actions on the [Event](CR_30_60_30.md) \(CR306030\) form.

The system can be configured to use the simple notification emails that are built into the functionality of the [Event](CR_30_60_30.md) form. Alternatively, the administrator can create notification templates and specify on the [Event Setup](EP_20_40_70.md) form which template is used for each scenario: inviting potential attendees, rescheduling an event, and canceling an event. The notification templates provide the ability to use placeholders to personalize the emails the system generates.

By using the [Event and Task Categories](EP_20_40_40.md) \(EP204040\) form, a system administrator can add, view, edit, and delete the categories to be used for events and tasks, including optionally specifying the color of highlighting to be used for each category. The event categories may help users prioritize the events. On the Events \(EP4041PL\) form, if highlighting has been defined for the category of a listed event, it is shown in the **Category** column.

For details about event setup, see [Managing Events](AI__con_Event_Monitoring.md) and [Notifications About Events](EP__con_Notifications_About_Events.md).

**Parent topic:**[Managing Emails and Activities](../UserGuide/CRM_Mktg_Managing_Emails_Activities_Mapref.md)

