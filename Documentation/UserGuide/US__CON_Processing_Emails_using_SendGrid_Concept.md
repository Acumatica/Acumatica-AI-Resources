# Mail Processing by Using SendGrid

After a SendGrid connection has been configured and assigned to an email account, you can use SendGrid to process email: sending and tracking messages, scheduling deliveries, and importing SendGrid designs into your email templates.

## Sending and Tracking an Email

To get started, you create a new email on the [Email Activity](CR_30_60_15.md) \(CR306015\) form and select an email account that uses a SendGrid connection in the **From** box. The **SendGrid** section appears on the **Details** tab of the form.


In this section, you can edit the list of SendGrid email categories and override the default tracking settings. Additionally, by selecting the **Bypass Suppression Checks** check box, you can send the email even if an address is included in the **Suppressions** list of SendGrid. This list can include addresses associated with unsubscribes, spam reports, bounces, blocks, or invalid addresses.

After the email has been sent, you can review the tracking results in the SendGrid portal. If the SendGrid connection is configured on the [SendGrid Connections](SG_20_50_00.md) \(SG205000\) form to receive tracking results, you can review the results for a particular email on the **Tracking** tab of the [Email Activity](CR_30_60_15.md) form.

## Tracking Activities for an Email Account

To track activities related to a specific email account that uses a SendGrid connection, you can use the side panel of the [Email Accounts](SM_20_40_02.md) \(SM204002\) form. While viewing the email account, click the **Summary** icon on the side panel to view the *Summary* dashboard that shows the following numbers of emails:

-   **Emails Pending Processing**
-   **Emails Failed**
-   **Emails Created**

If you click the **Account Emails** icon on the side panel, you can view email processing and delivery details on the *Email Tracking* inquiry form.

## Scheduling an Email Delivery

If you need to schedule an email for later delivery from an email account that uses a SendGrid connection, click **Send At** on the More menu of the [Email Activity](CR_30_60_15.md) \(CR306015\) form. In the **Send At** dialog box, specify the delivery date and time.


The system sends the data to SendGrid for processing, and upon receiving a confirmation, it changes the email's status to *Scheduled* and displays the scheduled date and time in the **Send At** box on the **Details** tab.

For an email activity with the *Scheduled* status, the **Cancel Sending** command is available on the More menu of the form. If you cancel the sending of a scheduled email, the system clears the value of the **Send At** box and changes the email's status to *Draft*.

## Importing SendGrid Designs

To make the import of SendGrid designs possible, you enable the *SendGrid Integration* and *Import of SendGrid Designs \(Experimental\)* features on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. This causes the **Import SendGrid Design** button to be displayed on the toolbar of the [Email Templates](SM_20_40_03.md) \(SM204003\) form for an email template.

When you select an email account that uses an active SendGrid connection in the **From** box of this form, the **Import SendGrid Design** button becomes available.


You click **Import SendGrid Design**, and the system opens the **Import SendGrid Design** dialog box, where you select a design from the list of available designs created in SendGrid.

Then you click **Import** in the dialog box, and the system replaces the content in the **Subject** box of the Summary area and on the **Message** tab of the form. You can then edit the imported content.

**Parent topic:**[Integrating Acumatica ERP with SendGrid](../UserGuide/US_MNG_Integrating_with_SendGrid.md)

