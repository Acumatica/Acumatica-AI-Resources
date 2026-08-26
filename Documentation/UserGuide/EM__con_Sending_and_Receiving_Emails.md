# Mail Sending and Receipt {#_3483a048-8f2d-46d3-ba33-448a63b88aac .concept}

System email accounts for outgoing mail are used mainly to send mass emails for campaigns or mailing lists, or for automatic replies to incoming mail. When users involved with CRM activities create a mass email by using the [Mass Emails](CR_30_80_00.md) \(CR308000\) form, they can select in the **From** box the system email account to which they have access \(for details, see [Managing Emails and Activities](CRM_Mktg_Managing_Emails_Activities_Mapref.md)\). When a user clicks **Send** on the form toolbar, the SMTP server associated with the selected system email account generates each message of the mass email in accordance with the specified template and replaces placeholders in the email properties and the message body with the data of one of the recipients on the list, until the complete mailing list is processed. However, no emails are actually sent as a result of this process.

To initiate the sending of outgoing emails, use the [Send and Receive Email](SM_50_70_10.md) \(SM507010\) form. To send the emails selectively, use the [Emails Pending Processing](SM_50_70_00.md) \(SM507000\) form.

Once the system accounts are configured, you can use the [Send and Receive Email](SM_50_70_10.md) \(SM507010\) form to initiate the receipt of incoming emails and schedule the operations of sending and receiving mail. To process selected incoming and outgoing emails, use the [Emails Pending Processing](SM_50_70_00.md) \(SM507000\) form.

**Attention:** For email accounts of the *Email Service Plug-In* type or those with no server specified in the **Incoming Mail Server** box on the **Service** tab of the [Email Accounts](SM_20_40_02.md) \(SM204002\) form, the *Receive All* action is not applicable, and the *Send/Receive All* action functions as *Send All*.

To allow the system to automatically resend outgoing emails whose processing has failed, you can use the **Automatic Resend Attempts** setting on the [Email Preferences](SM_20_40_01.md) \(SM204001\) form. This setting defines the number of times that the scheduled processing is allowed to fail for an email before the email's status changes from *Pending Processing* to *Failed*. However, the system ignores this setting if a critical error \(that is, an error whose code starts with 5, such as 550\) occurs on the mail server or if you run the processing manually.

**Tip:** You can suspend the operations of sending and receiving emails for all system email accounts at once by selecting the **Suspend Email Processing** check box on the [Email Preferences](SM_20_40_01.md) form. The system will process only emails related to the users' security in this case. You may need to do this if you have troubles with your mail servers and need to suspend all operations on these servers to diagnose the problem.

By using the options in the **Email Processing Logging** box in the Summary area of the [Email Preferences](SM_20_40_01.md) form, you can enable an email processing log of all attempts to process or receive an email through IMAP or POP3, whether successful or not. You can view all log entries associated with email processing by using the [Email Processing Log](SM_40_41_00.md) \(SM404100\) form.

If an error occurs during any stage of email processing, the system skips the affected email, ensuring uninterrupted reception of subsequent emails. A diagnostic message about the error is also recorded in the system event log on the **System Events** tab of the [System Monitor](SM_20_15_30.md) \(SM201530\) form if the *Email* option is selected in the **Source** box. Events of the following levels \(that is, with these values in the **Level** column\) may be listed in the table on this tab:

-   *Information*: The system generates a record of this level if the *Enabled for Failed Emails* or *Enabled for All Emails* option is selected in the **Email Processing Logging** box on the [Email Preferences](SM_20_40_01.md) form, and no errors occur during the reception of emails. The record includes the number of successfully received email messages for the specific email account.
-   *Error*: The system generates a record of this level if the *Enabled for Failed Emails* option is selected in the **Email Processing Logging** box on the [Email Preferences](SM_20_40_01.md) form, and the reception of emails results in errors. The record includes the number of errors that occurred during the reception of emails and the number of successfully received email messages for the specific email account.

-   **[To Create a Send and Receive Email Schedule](../UserGuide/EM__HOW_To_Create_a_Send_and_Receive_Schedule.md)**  


**Parent topic:**[Managing Emails](../UserGuide/EP__con_Email_Management.md)

