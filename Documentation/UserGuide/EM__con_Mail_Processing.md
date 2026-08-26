# Incoming Mail Processing {#_cc8b8172-254f-4dbc-9897-a0493554fe27 .concept}

In Acumatica ERP, all incoming mail that is received by system email accounts is processed in a series of consecutive steps.

The processing of incoming emails consists of the basic processing, which is activated out-of-the-box and cannot be additionally configured, and the advanced processing that can be set up individually for each system email account.

This topic describes the rules that the system follows when processing incoming emails and how you can set up this functionality.

## Basic Processing { .section}

The basic processing consists of the following steps, which are performed by default upon each email received by a system email account:

1.  Based on the received email, the system creates an outgoing email in Acumatica ERP and specifies the sender's name, sender's email address, subject, and description. The email has the *Pending Processing* status and the current date specified as the start date.

    **Tip:** The system also adds tags to outgoing emails automatically if the **Add Tags for the Incoming Processing** check box is selected on the **Incoming Mail Processing** tab of the [Email Accounts](SM_20_40_02.md) \(SM204002\) form.

2.  If the sender is recognized as an employee, the system assigns that employee to be the owner of the outgoing email. \(The system does not verify whether the employee has the *Active* status.\)
3.  The system analyzes any tags attached to the outgoing email and determines whether the email has a parent activity in Acumatica ERP. If such an activity is found, the outgoing email becomes linked to it and also associated with the related entity, contact, business account, owner, and workgroup \(if any\) from the parent activity. \(When assigning the owner, the system does not verify whether the employee has the *Active* status.\)

## Advanced Processing { .section}

Depending on your business, the mail you receive through Acumatica ERP may consist of requests for information, emails related to customer contracts, or emails received from contacts or leads as replies to emails sent during specific marketing campaigns. You can configure incoming mail processing so that based on an incoming email, the system creates a case or a lead and attaches the incoming email to the created entity as a related activity. Also, an incoming email may be attached to an existing lead, contact, or business account that is related to the email exchange. You can activate and configure the processing of incoming mail for each of the system email accounts. You can also specify an email assignment map, which the system will use when it cannot assign incoming emails based on email history. All these options are included in the advanced functionality of incoming mail processing.

You can activate the advanced functionality of incoming mail processing by selecting the required account on the [Email Accounts](SM_20_40_02.md) \(SM204002\) form, and then selecting the **Incoming Mail Processing** check box on the **Incoming Mail Processing** tab.

**Attention:** Before you activate this processing, make sure that email addresses are specified for all employees involved in customer support and CRM activities on either the [Employees](EP_20_30_00.md) \(EP203000\) form or the [Users](SM_20_10_10.md) \(SM201010\) form.

The advanced processing can be divided into two parts: the mandatory part, which is executed whenever the processing of incoming email is activated for the system email account, and the optional part, which you can tailor through the [Email Accounts](SM_20_40_02.md) form to fit your needs.

The mandatory part includes the following steps, if the related entity that is linked to the email is a case with the *Open* or *Pending Customer* status and if the email sender is not the owner of the case:

1.  The status of the case changes to *Open* with the reason set to *Updated*.
2.  A notification about the updated status is sent to the case owner.

    **Tip:** No such notification is sent if the incoming email is a part of internal communication between employees.


The optional part includes the following steps, which you can configure by using the **Incoming Mail Processing** tab of the [Email Accounts](SM_20_40_02.md) form:

-   *Initial processing*: You can configure the system to confirm the receipt of incoming emails by sending replies based on a specific template created through the [Email Templates](SM_20_40_03.md) \(SM204003\) form.
-   *Main processing*: You can select options corresponding to any of the following actions:
    -   Create a new case for each processed email and attach the email to the case as a related activity.
    -   Route the email to the email addresses specified on the [Employees](EP_20_30_00.md) \(EP203000\) form for the owners of the parent activity \(the owner of the outgoing email to which the sender of the incoming email has replied\), related entity \(such as the opportunity, contact, or case\), and associated business account.

        **Attention:** Emails are routed to only those employees that have the **Route Emails** check box selected on the **General Info** tab of the [Employees](EP_20_30_00.md) \(EP203000\) form. Emails are not sent to deleted employees or to employees that have the *Inactive* status.

    -   Attach each processed email to the business account, contact, or lead related to the email exchange.
    -   Create a new lead for each processed email and attach the email to the lead as a related activity.
    -   Reply to unassigned emails by using a specific template created through the [Email Templates](SM_20_40_03.md) form.
-   *Final processing*: You can decide whether the system should remove processed messages and whether it should add available source information to the bottom of each processed email.

## Processing Steps { .section}

Depending on the selected options, the system processes each email as follows \(skipping the step if the corresponding option is not selected or if it is not applicable\):

1.  A receipt confirmation is generated and sent to the email sender.
2.  The email undergoes the basic processing steps.
3.  The system updates the status of the linked case.
4.  The email is routed to the email addresses of the relevant employees.
5.  A new case is created based on the email information.
6.  The email is attached to the contact related to the email exchange.
7.  A notification is sent to the case owner.
8.  An automatic reply is sent if the system has failed to assign the email.
9.  The email is deleted if the specified conditions are met.
10. If the email remains unassigned, the system uses the email assignment map specified on the **Additional Settings** tab of the [Email Accounts](SM_20_40_02.md) form to assign the email.
11. A new lead is created based on the email sender.

**Tip:** Generally, the subjects for outgoing mass emails are system-generated and contain values from particular contact records, cases, and activities that will help later with processing replies to the emails if addressees do not change the email subjects.

## Best Practices { .section}

When processing a corrupted email, the system may encounter a problem and an error may occur. A diagnostic message about the error may be recorded in the system event log on the **System Events** tab of the [System Monitor](SM_20_15_30.md) \(SM201530\) form. \(For more information about diagnosing email processing errors and using the email processing log, see [Mail Sending and Receipt](EM__con_Sending_and_Receiving_Emails.md).\)

To minimize the risk of errors, we recommend that you follow these best practices:

-   Use only secure email accounts with built-in checks for spam, virus, and email integrity.
-   Use an internal email address for incoming emails, ensuring it accepts communications only from within the same domain. For external emails, use a public email account, and have an employee forward legitimate emails to the internal account.

**Parent topic:**[Configuring Email Accounts](../UserGuide/EM__con_Configuring_Email_Accounts.md)

