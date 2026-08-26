# Managing Emails {#_27039565-c5d2-45da-b23a-453ae56b5d10 .concept}

Acumatica ERP provides email management functionality to employees involved in customer relationship management \(CRM\) activities, such as working with leads and contacts, organizing campaigns, and handling cases.

In Acumatica ERP, users can use their preferred email programs for communication with customer contacts and leads, and use their personal email accounts if these email addresses are registered with the system.

For every user involved in CRM or case processing, you should specify the user's personal email account on the [Employees](EP_20_30_00.md) \(EP203000\) form, the [Users](SM_20_10_10.md) \(SM201010\) form, or both forms. If incoming mail processing is activated for a system email account, before the system forwards incoming emails to a specific employee, it checks whether the employee has an email address specified on the [Employees](EP_20_30_00.md) form; if there is no such address, the system uses the email address specified on the [Users](SM_20_10_10.md) form.

On the [User Profile](SM_20_30_10.md) \(SM203010\) form, the user can create a signature, which will be inserted at the end of each email this user sends. The **Email Settings** tab provides a text box and a toolbar with tools to format the text of the signature.

On the forms used for creating emails, personal email addresses are available for selection \(that is, they appear on the **From** list\) to only their owners.

Acumatica ERP tracks the history of email exchanges—that is, the system stores all emails along with links to the related entities \(such as contacts or cases\). This history is used for the automatic processing of incoming emails. For more information, see [Email Exchange History](EM__con_Email_Exchange_History.md).

Users can use templates for their emails or set up automatic notifications based on specific templates. For details, see [Email Templates](EM__con_Notification_Templates.md).

For each system email account, you can manually initiate the processes of sending and receiving mail, or you can set up an automatic schedule for these processes. You can suspend sending and receiving emails for all system email accounts at once. Also, you can enable an email processing log of all attempts to process or receive an email through IMAP or POP3. For more information, see [Mail Sending and Receipt](EM__con_Sending_and_Receiving_Emails.md).

To prevent the system from slowing down because of a large number of emails, both incoming and outgoing, accumulated over a long time, you can archive processed emails. For details, see [Email Archiving](EM__con_Email_Archiving.md).

## In This Chapter { .section}

-   [Email Exchange History](EM__con_Email_Exchange_History.md)
-   [Email Templates](EM__con_Notification_Templates.md)
-   [Mail Sending and Receipt](EM__con_Sending_and_Receiving_Emails.md)
-   [Email Archiving](EM__con_Email_Archiving.md)

-   **[Email Exchange History](../UserGuide/EM__con_Email_Exchange_History.md)**  

-   **[Email Templates](../UserGuide/EM__con_Notification_Templates.md)**  

-   **[Mail Sending and Receipt](../UserGuide/EM__con_Sending_and_Receiving_Emails.md)**  

-   **[Email Archiving](../UserGuide/EM__con_Email_Archiving.md)**  


