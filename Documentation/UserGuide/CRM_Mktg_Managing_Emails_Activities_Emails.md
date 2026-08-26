# Emails and Activities: Emails {#_631a7d8b-15bb-4882-baa3-ca72fb930ddb .concept}

In Acumatica ERP, you can communicate with your company's prospects, customers, vendors, and employees by using emails, which you can quickly and easily create in several different ways:

-   While you are working with a record on the data entry form. The entity might be a lead, contact, business account, or other record, including those related to customer relationship management \(CRM\).
-   In the process of working with a task or planning an event.
-   You can create the email directly on the [Email Activity](CR_30_60_15.md) \(CR306015\) form.

You can also delete any of the created emails if you no longer need them.

This topic provides more details about the flexible ways to create emails, configure mailing settings, and delete emails in Acumatica ERP.

## Configuration of Mailing Settings {#section_ddd_33k_c5b .section}

Acumatica ERP gives you the ability to specify default settings, including the email address of the sender and the notification templates to be used in CRM. You can configure the default mailing settings as follows:

1.  On the [Email Preferences](SM_20_40_01.md) \(SM204001\) form, you can specify the system-wide email settings, including the default system email account that is used for sending and receiving emails.
2.  On the **Mailing &amp; Printing** tab of the [Customer Management Preferences](CR_10_10_00.md) \(CR101000\) form, all mailings that may be used in CRM are listed, including the following predefined mailings, and you can modify their default settings:
    -   *CRQUOTE*: A mailing used to print and email project quotes
    -   *CRQUOTE MULTIPLE*: A mailing used to send multiple quotes in one email
3.  On the **Mailing &amp; Printing** tab of the [Business Account Classes](CR_20_80_00.md) \(CR208000\) form, all mailings that may be used for customers of the class are listed. On this form, you can select and modify only a mailing that is listed on the [Customer Management Preferences](CR_10_10_00.md) form.
4.  On the **Mailing &amp; Printing** tab of the [Business Accounts](CR_30_30_00.md) \(CR303000\) form, all mailings that may be used for the selected customer or prospective customer are listed. On this form, you can add a mailing to the **Mailings** table only if it is listed on the [Business Account Classes](CR_20_80_00.md) form for the business account class or on the [Customer Management Preferences](CR_10_10_00.md) form; you can modify the default settings of this mailing, if needed.

    The system automatically selects the **Overridden** check box in the **Mailings** table for the mailing in the following cases:

    -   If the settings of the selected mailing have been modified as compared with the default settings of the mailing defined on the [Business Account Classes](CR_20_80_00.md) form for the class of the business account
    -   If you add a mailing for the business account class and the same mailing has already been added to the business account of this class

For each mailing listed on the forms mentioned above, the following settings may be specified:

-   The email address from which the email will be sent; if none is specified, the system will use the default system email account
-   The notification template based on which the email body will be generated
-   The report that will be attached to the email and the format of the attachment
-   The list of recipients

## Order of Applying Mailings { .section}

If you attempt to send a document to a business account by email, the system checks for the presence of mailings for this type of document in the following order and applies the first one it finds:

1.  A branch-specific mailing that is specified in the business account settings
2.  A mailing without a branch selected that is specified in the business account settings
3.  A branch-specific mailing that is specified in the business account class settings
4.  A mailing without a branch selected that is specified in the business account class settings

If no mailing for this type of document is found, the system does not send the document by email and shows an error message.

## Creation of Emails from a Data Entry Form { .section}

In Acumatica ERP, you can create an email associated with an entity by clicking **Create Email** on the table toolbar of the **Activities** tab of some data entry forms, such as [Business Accounts](CR_30_30_00.md) \(CR303000\) or [Leads](CR_30_10_00.md) \(CR301000\) form.

On other data entry forms, such as [Invoices and Memos](AR_30_10_00.md) \(AR301000\) or [Sales Orders](SO_30_10_00.md) \(SO301000\), you can click **Activities** on the title bar. In the **Task &amp; Activities** dialog box, which opens, you can click **Add Email** to create an email.

## Emails Created from a Data Entry Form { .section}

When you initiate the creation of an email, as described above, the [Email Activity](CR_30_60_15.md) \(CR306015\) form opens in a pop-up window. On the form, you can create an email and either send the email to the recipient or save the email without sending it \(for example, if you need to review and modify the email and send it later\).

If you send the email, the system does one of the following:

-   If on the [Email Preferences](SM_20_40_01.md) \(SM204001\) form, the **Send User Emails Immediately** check box is selected, sends the email at once and assigns it the *Processed* status.
-   Assigns it the *Pending Processing* status and adds it to the outgoing mail on the [Send and Receive Email](SM_50_70_10.md) \(SM507010\) form. On this form, it can be sent manually. If a schedule has been configured in the system, the email will be sent automatically the next time this schedule is executed.

If you send an email that you created from a data entry form, the system returns you to the form you added the activity from and adds a row with the *Email* to the **Activities** tab of the form. If you receive an email in response to your outgoing email, the system lists this email with the *Email Response* type on the **Activities** tab of this form.

If you save an email that you created from a data entry form and close the [Email Activity](CR_30_60_15.md) form, you can later open the email from the **Activities** tab of the data entry form, make any needed modifications to the email, and send it.

To open an email on the **Activities** tab, you click the link in the **Summary** column of the appropriate row, which opens the email on the [Email Activity](CR_30_60_15.md) form in a pop-up window. Similarly, you can click the link in this column of any row to view the details of the listed activity on the form used to create it, which varies depending on the activity type.

In the **Related Entity** box of the [Email Activity](CR_30_60_15.md) form, the system inserts the entity that is associated with the email if a user has created the email while viewing the entity on its data entry form. If the user changes the related entity of the email, the summary information about the email will be added to the **Activities** tab of the form for the new entity. The email will no longer be associated with the entity that was previously selected in this box.

## Creation of an Email for a Task or Event { .section}

While working with a task or event, you can create an email on the [Email Activity](CR_30_60_15.md) \(CR306015\) form by clicking **Create Email** on the table toolbar of the **Activities** tab of the [Task](CR_30_60_20.md) \(CR306020\) or [Event](CR_30_60_30.md) \(CR306030\) form. In this case, the system inserts a link to the task or event in the **Parent Activity** box of the [Email Activity](CR_30_60_15.md) form for the email. Also, if the task or event was associated with a CRM entity \(such as a lead or an opportunity\), the system associates the email with the related entity of the task or event.

## Creation of a Response Email { .section}

You can create an outgoing email in response to an incoming email by clicking **Reply**, **Reply All**, or **Forward** on the form toolbar of the [Email Activity](CR_30_60_15.md) \(CR306015\) form. In this case, the system inserts the link to the incoming email in the **In Response To** box of the response email. If the incoming email has a parent activity \(an event or task\), the system inserts the link to this activity in the **Parent Activity** box of the [Email Activity](CR_30_60_15.md) form for the response email.

## Creation of an Email Activity from a Workspace { .section}

Most companies have workspaces that contain links related to tasks, events, and emails. In an out-of-the-box system, the **Time and Expenses** workspace contains these links, including a *New Email Activity* link. You can click this workspace link to create an email directly on the [Email Activity](CR_30_60_15.md) \(CR306015\) form.

You can work with the emails that have been created on the [Email Activity](CR_30_60_15.md) form by using the following lists of records, which are provided in the out-of-the-box system:

-   *Incoming \(CO4090PL\)*
-   *Draft \(CO4091PL\)*
-   *Sent \(CO4098PL\)*
-   *All Emails \(CO409070\)*
-   *Outgoing \(CO4092PL\)*
-   *Deleted \(CO4099PL\)*
-   *Archived \(CO4093PL\)*

## Creation of an Email from a Template { .section}

You can create an email from scratch or save time by using a prepared email template from the [Email Templates](SM_20_40_03.md) \(SM204003\) form.

To select an email template, you click **Select Template** on the form toolbar of the [Email Activity](CR_30_60_15.md) \(CR306015\) form. You can also select where to insert the template's information within the email body and the **Subject**, **To**, **CC**, and **BCC** boxes.

To personalize emails, you can insert the recipient’s data into the text of the email by using placeholders. For details, see [Email Templates](EM__con_Notification_Templates.md).

## Copying of Lead-Related Emails to Related Entities { .section}

If you have created emails or activities to communicate with a lead and then you create a contact or business account for the lead or convert the lead to an opportunity, the system copies all the emails \(and other activities\) listed on the **Activities** tab of the [Leads](CR_30_10_00.md) \(CR301000\) form to the same tab of the [Contacts](CR_30_20_00.md) \(CR302000\), [Business Accounts](CR_30_30_00.md) \(CR303000\), or [Opportunities](CR_30_40_00.md) \(CR304000\) form, respectively. Thus, the system preserves the history of emails and other activities created for the lead and copies this history to the entities associated with the lead.

**Attention:** Emails that you create on the [Contacts](CR_30_20_00.md), [Business Accounts](CR_30_30_00.md), and [Opportunities](CR_30_40_00.md) forms are associated with only the entity \(contact, business account, or opportunity\) for which they have been created.

## Deleting Emails { .section}

If you no longer need an existing email, you can delete it by opening the email on the [Email Activity](CR_30_60_15.md) \(CR306015\) form and clicking **Delete** twice on the form toolbar. The first click will assign the *Deleted* status to the email. Clicking **Delete** again will permanently remove the email from the system. You can also delete the email this way from the *All Emails \(CO409070\)* list of records, except that you first click the row of the email.

**Parent topic:**[Managing Emails and Activities](../UserGuide/CRM_Mktg_Managing_Emails_Activities_Mapref.md)

