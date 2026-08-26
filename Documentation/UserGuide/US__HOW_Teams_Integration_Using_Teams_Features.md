# To Use Teams Integration {#_f2710ca4-73fe-4859-85a5-51b8d03273c6 .task}

After all the settings required for Teams integration have been configured, you can start communication through Teams from Acumatica ERP forms. The following sections describe in general terms how you can send a message in Teams, start a call, schedule a Teams meeting, share a record, upload files that have been shared with you in Teams, or send messages to a Teams channel.

## Before You Proceed { .section}

Before you begin, make sure you have configured the required settings, as described in [To Configure Acumatica ERP for Teams Integration](US__HOW_Teams_Integration_Configuring_Teams_Features.md).

## To Communicate with a Teams User { .section}

To start communication with a Teams user from Acumatica ERP, you perform the following general actions:

1.  You open a form on which the Teams icons are displayed \(see [Integration with Microsoft Teams](US_con_Teams_Integration.md) for the list of forms\).
2.  You locate the box with the contact, owner, or name of the Teams user that you want to communicate with, and click the Teams icon to the right of the box.
3.  In the **Teams Contact** dialog box, which is opened, you click any of the following buttons, depending on the action that you want to perform:

    -   **Open Contact Chat**: To send a message to the Teams user
    -   **Open Contact Call**: To start a call with the Teams user
    -   **Open Contact Meeting**: To schedule a meeting with the Teams user
    When you click any of these buttons, the system opens the appropriate Teams page or Teams dialog box.


## To Share a Record with a Teams Channel or a Member { .section}

You can share with a Teams channel or a Teams member any records created on data entry forms. To share a record, you perform the following general actions:

1.  On this form, you open the record you want to share.
2.  Depending on whether the form has an **Activities** tab, do one of the following:
    -   On the **Activities** tab, you click **Create Activity** &gt; **Create Teams**.
    -   If the form does not have the **Activities** tab, you click **Activities** on the form title bar. In the **Tasks &amp; Activities** dialog box, which is opened, you click **Add Activity** &gt; **Teams**
3.  On the [Teams Activity](CR_30_60_40.md) \(CR306040\) form, which opens, you select the Teams channel \(in the **Channel** box\) or the Teams member \(in the **Member** box\) with which you want to share the record. You then enter the message text on the **Message** tab.

    **Tip:** If you want to share a record in a channel and with a particular member of that channel, you can specify values in both the **Channel** and **Member** boxes.

4.  On the form toolbar, you click **Send**.

    The system sends the message, and a message with the link to the record appears in the specified Teams channel, or in the chat with the specified Teams user.


## To Import Files Shared in Teams { .section}

To import to Acumatica ERP files that have been shared with you in Teams, you perform the following general actions:

1.  You open the form to which you want to import the files.
2.  On the form title bar, you click **Files**.
3.  In the **Files** dialog box, which is opened, you click **Upload From Teams**.

    The **Upload From Teams** dialog box opens, which contains the files that have been shared with you in Teams.

4.  In the dialog box, you select the check boxes in the rows with the files you want to add, and click **Upload &amp; Close**.
5.  In the **Files** dialog box, to which you return, you click **Upload**.

    The system uploads to the form the files that you have specified.


## To Configure the Sending of Automatic Messages to a Teams Channel { .section}

To configure a message that the system should send to a Teams channel, you perform the following general actions:

1.  On the [Teams Notifications](SM_20_40_06.md) \(SM204006\) form, you click **Add New Record** on the form toolbar.
2.  In the Summary area, you fill in the **Screen**, **Description**, and **Subject** boxes.
3.  In the **Channel** box, you select the Teams channel to which you want to send messages.
4.  On the **Message** tab, you type the message that will be sent to the channel.
5.  You save your changes.
6.  On the table toolbar of the **Send by Events** tab, which appears on the form, you click **Create Business Event**.

    **Tip:** Alternatively, you can click **Add Row** and select an existing business event.

7.  In the **Create Business Event** dialog box, which is opened, you specify the name of the business event, and click **OK**.
8.  On the [Business Events](SM_30_20_50.md) \(SM302050\) form, which is opened, you specify values in the **Event ID**, **Screen Name**, **Type**, **Raise Event**, and **Description** boxes, and specify triggering conditions on the **Trigger Conditions** tab.
9.  On the **Subscribers** tab, you add as a subscriber the Teams notification that you have created.
10. You save your changes.

**Parent topic:**[Integrating Acumatica ERP with Microsoft Teams](../UserGuide/US_mng_Teams_Integration.md)

