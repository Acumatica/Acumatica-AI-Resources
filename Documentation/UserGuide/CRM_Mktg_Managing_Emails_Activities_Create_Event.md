# Emails and Activities: To Create an Event {#_3b77010b-7dc2-4b97-9ef3-5c4bcf41f461 .task}

The following activity will demonstrate how to create an event.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are David Chubb, a sales manager of the SweetLife Fruits &amp; Jams company.You have sent the company's price list to Donna Coleman, a buyer at Yummy Supplies supermarket. Donna has studied the price list and would like to discuss the company's offer on juicers. You want to invite your colleague Jeffrey Vega, who maintains juicers at SweetLife, to the call. Also, Donna wants to invite her colleague, Jim Berry, who maintains juicers at Yummy Supplies. Jim's email address is *jim.berry@yummysupplies.example.com*, and his contact information has not been added to Acumatica ERP yet. You need to schedule a conference call and invite Donna, Jeffrey, and Jim to the call.

Because you work in New York, your time zone is Eastern Time, which is Greenwich Mean Time \(GMT\) minus five hours.

A day before the call, Donna informs you that she will be on a business trip in Phoenix, and you need to adjust the time zone and choose the time that fits Donna's time zone, which is Arizona, Greenwich Mean Time minus seven hours.

## Configuration Overview { .section}

In the *U100* dataset, for the purposes of this activity, the following tasks have been performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Customer Management* feature has been enabled: This feature provides the customer relationship management \(CRM\) functionality, including lead and customer tracking, as well as the handling of sales opportunities, contacts, marketing lists, and campaigns.
-   On the [Event Setup](EP_20_40_70.md) \(EP204070\) form, the system-wide settings have been specified to prepare the system to send automatic notifications by using the built-in notification capabilities.
-   On the [Employees](EP_20_30_00.md) \(EP203000\) form, the following employees have been created:
    -   *David Chubb*
    -   *Jeffrey Vega*
-   On the [Leads](CR_30_10_00.md) \(CR301000\) form, the *Donna Coleman* lead has been created.

## Process Overview { .section}

In this activity, you will create, reschedule, and then cancel an event on the **Activities** tab of the [Leads](CR_30_10_00.md) \(CR301000\) form.

## System Preparation { .section}

Before you start creating an event, you should do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded.
2.  Sign in to the system as sales manager David Chubb by using the following credentials:
    -   **Username**: *chubb*
    -   **Password**: *123*
3.  Make sure that on the Company and Branch Selection menu, in the top pane of the Acumatica ERP screen, the *SweetLife Head Office and Wholesale Center* branch is selected.
4.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to *11/27/2026*. If a different date is displayed, click the Business Date menu button and select *11/27/2026*. For simplicity, in this process activity, you will create and process all documents in the system on this business date.

## Step 1: Creating an Event { .section}

To create an event, do the following:

1.  Open the *Donna Coleman* lead record on the [Leads](CR_30_10_00.md) \(CR301000\) form.

    **Tip:** To search for a record in a list of records, you can enter a keyword or phrase in the Search box of the table toolbar. The system will find all the records that match your search criteria and display these records in the table.

2.  Open the **Activities** tab.
3.  On the table toolbar, click **Create Event**. The [Event](CR_30_60_30.md) \(CR306030\) form opens in a pop-up window so that you can create an event that is related to the lead you were viewing.
4.  In the Summary area, specify the following settings:

    -   **Summary**: `Juicers for Yummy Supplies`
    -   **Start Date**: *11/30/2026* at *12:00 PM*
    -   **End Date**: *11/30/2026* at *1:00 PM*
    Notice that in the **Owner** box, *David Chubb* is inserted.

5.  On the **Description** tab, in the text area, type the message to be associated with the event, such as the following: `Let's discuss your questions about the juicers that SweetLife can offer for sale.`
6.  On the **Details** tab, in the **Category** box, specify *Green*. Notice that in the **Related Entity** box, *Donna Coleman* is inserted.
7.  On the form toolbar, click **Save**.

You have created the event. On the **Attendees** tab, notice that a row with your contact information has been added. \(A row is always added for the event's owner.\) In the **Invitation** column, the status of the invitation is *Accepted* because the owner is assumed to be attending the event. In the next step, you will invite potential attendees to the event.

## Step 2: Adding Potential Attendees to the Event { .section}

To add potential attendees and invite them to the event, do the following:

1.  While you are still viewing the *Juicers for Yummy Supplies* event on the [Event](CR_30_60_30.md) \(CR306030\) form, add Donna Coleman on the **Attendees** tab as follows:
    1.  On the table toolbar, click **Add Row**. The system adds a new row to the table.
    2.  In the **Contact** column, select *Donna Coleman*. Notice that the system has inserted Donna's email address in the **Email** column. Also notice that in the **Invitation** column, the status of the invitation is *Not Invited* because you have not yet sent the invitation to the event.
2.  Add Jeffrey Vega, who is an employee, as follows:
    1.  On the table toolbar, click **Add Row**.
    2.  In the **Contact** box, select *Jeffrey Vega*.
3.  Add Jim Berry, whose data has not been added to the system yet, as follows:
    1.  On the table toolbar, click **Add Row**.
    2.  In the **Email** column, type `jim.berry@yummysupplies.example.com`.
    3.  In the **Comment** column, type `Donna's colleague, a technician from Yummy Supplies`.
4.  On the table toolbar, click **Invite All**.
5.  In the **Confirmation** dialog box, which opens, click **Confirm**. The system closes the dialog box, saves your changes, and sends emails to notify the potential attendees about the event.

    Notice that for the three rows that have email addressees of the potential attendees, the status of the invitation has changed to *Invited*.

6.  On the **Activities** tab, notice that rows have been added with the summary information about the notification emails that have been sent to the potential attendees.

    You have invited the potential attendees to the event.

7.  Close the [Event](CR_30_60_30.md) form.
8.  Sign out of the system.

## Step 3: Accepting the Event { .section}

To accept the invitation to the event as a SweetLife's technician Jeffrey Vega, do the following:

1.  Sign in to the system by using the *vega* username and the *123* password.
2.  Open the **All Records** filter on the Events \(EP4041PL\) form.
3.  In the row with the *Juicers for Yummy Supplies* event, notice that in the **Owner** column, *David Chubb* has been inserted, meaning that he is the event's organizer. In the **Category** column, notice that *Green* has been inserted.

    **Tip:** Organizations can use these informational categories as they deem appropriate to help users prioritize events. For SweetLife, the *Green* category and highlighting in green means that the event is a usual planned work activity. The categories that can be used for events are defined on the [Event and Task Categories](EP_20_40_40.md) \(EP204040\) form. The *Green* is one of the predefined categories, but others can be added to the form and selected for events.

4.  In the **Summary** column, click the *Juicers for Yummy Supplies* link to open the event on the [Event](CR_30_60_30.md) \(CR306030\) form. Notice that when you are viewing an event as a potential attendee, you cannot edit the event settings.
5.  On the **Attendees** tab, view the potential attendees of the event. In the **Invitation** column, the status of the invitation is *Invited* because an invitation has been sent, but Jeffrey Vega has not yet accepted the invitation.
6.  On the form toolbar, click **Accept**. Notice that the status of the invitation has changed to *Accepted*.
7.  Sign out of the system.

## Step 4: Rescheduling the Event { .section}

Suppose that Donna Coleman informed you that she will be on a business trip to Phoenix, Arizona, at the time of the event. Her time zone is now Greenwich Mean Time minus seven hours. You want to select Donna's time zone for the event.

To select a new time zone for the *Juicers for Yummy Supplies* event and change the event's time, do the following:

1.  Sign in to the system by using the *chubb* username and the *123* password.
2.  Open the **All Records** filter of the Events \(EP4041PL\) form.
3.  Select the row that has *Juicers for Yummy Supplies* in the **Summary** column.
4.  In the side panel, click **Event**. The event opens in the side panel on the [Event](CR_30_60_30.md) \(CR306030\) form.
5.  In the Summary area, in the **Time Zone** box, select *\(GMT-07:00\) Arizona*. Notice that in the **Start Date** box, *12:00 PM* remains, and in the **End Date** box, *1:00 PM* remains. However, the actual start and end times of the event have been changed, because they are the same times in a different time zone.
6.  On the form toolbar, click **Save**.
7.  In the **Confirmation** dialog box, which opens, click **Confirm**. The system closes the dialog box and sends the potential attendees rescheduling emails, which notify them about the new time of the event.
8.  Close the side panel with the [Event](CR_30_60_30.md) form opened.
9.  On the form toolbar of the Events \(EP4041PL\) form, click **Refresh**. Notice that in the **Start Time** column for the event, the time has changed to *2:00 PM* and in the **End Time** column, the time has changed to *3:00 PM*. The times on this form are shown in the default time zone for the user as specified on the [User Profile](SM_20_30_10.md) \(SM203010\) form or, if no time zone is specified for the user, the default time zone of the system as specified on the [Site Preferences](SM_20_05_05.md) \(SM200505\) form. Because no default time zone is specified for David Chubb, the time is shown in the system time zone, which is Greenwich Mean Time minus five hours.

You have rescheduled the event and notified the potential attendees about the new time of the event.

## Step 5: Canceling the Event { .section}

Suppose that Donna Coleman cannot participate in the conference call because of a change in her travel plans and would like you to cancel the event. Donna will come to SweetLife's office early next week, but the exact date is not defined yet.

To cancel the *Juicers for Yummy Supplies* event, do the following:

1.  In the Filter List menu of the Events \(EP4041PL\) form, click **All Records**.
2.  In the list or records, click the *Juicers for Yummy Supplies* link in the **Summary** column to open the event on the [Event](CR_30_60_30.md) \(CR306030\) form.
3.  On the form toolbar, click **Cancel**.
4.  In the **Confirmation** dialog box, which opens, click **Confirm**. The system closes the dialog box and sends emails to notify the potential attendees about the cancellation of the event.
5.  On the **Activities** tab, notice that rows have been added with the summary information about the emails that notify the potential attendees about the cancellation of the event.
6.  On the **Attendees** tab, in the **Invitation** column, notice that the status of the invitations to potential attendees has changed to *Canceled* because you have canceled the event.

**Parent topic:**[Managing Emails and Activities](../UserGuide/CRM_Mktg_Managing_Emails_Activities_Mapref.md)

