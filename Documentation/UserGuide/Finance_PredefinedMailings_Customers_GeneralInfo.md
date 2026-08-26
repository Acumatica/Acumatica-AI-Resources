# Mailings for Customers: General Information {#_ddb6d4cc-9b9a-43fc-b4b5-fc63829c9dac .concept}

Efficient processing of electronic documents can help organizations reduce costs and optimize investments, so they can stay competitive in today's dynamically changing economy. In Acumatica ERP, for each customer, you can specify how your organization sends documents to the business: electronically or through postal mail \(on paper\).

For businesses that want to receive electronic documents, you can easily set up the sending of documents, such as invoices and customer statements by email. You can configure the system to simultaneously send emails to employees of your organization who oversee operations with particular customers.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Set up a mailing for a customer class
-   Set up a mailing for a particular customer

## Applicable Scenarios { .section}

You set up mailings for customers in the following cases:

-   You want to inform your customers of new invoices, their balance, and the expiration of a credit card.
-   You want to set up mass processing and send documents to multiple customers.

## Mailings Overview { .section}

You can send the customer any of the following types of correspondence:

-   *Report-based*: You can use AR reports to send invoices, memos, statements, and dunning letters by using the **Send** action on a report form. For an Acumatica ERP report, you can control the look and feel in addition to the reporting functions. You can use the default look and feel of the report or customize the report by using the Acumatica Report Designer. You can provide settings specifying who will receive the report-based email and which format should be used, as well as possibly a specific template to be used as the email body \(for email personalization\). For details on modifying reports, see the [Acumatica Report Designer Guide](ReportDesigner_Main.md).
-   *Form-related*: You can send an email regarding a specific invoice or memo by using the **Send Email** command on the form that displays the document. These emails will be listed under the **Activity** menu on the form title bar. For details on managing your activities, see [Managing Emails and Activities](CRM_Mktg_Managing_Emails_Activities_Mapref.md).
-   *Mailings*: For each customer, you can configure a number of mailings. The mailing body is based on a notification template that may contain placeholders and can be modified easily. You can assign a report that will generate a document to be sent as a mailing attachment. A customer's mailing settings are used for mass processing documents and for emailing a particular invoice or memo. Template-based emails can be used, for example, to notify customer contacts about expiration of their credit cards. When the system generates such emails for multiple customers, it replaces placeholders with the particular customer's information, such as card type, partial card number, and expiration date. For details on mailings, see [Mailings for Customers: Available Mailings](Finance_PredefinedMailings_Customers_List_of_Mailings.md).

By default, the actual sending of the emails is not performed right away. Emails sent by all the mentioned ways are gathered in a queue on the [Emails Pending Processing](SM_50_70_00.md) \(SM507000\) form and can be sent from there. For details on email management, see [Managing Emails](EP__con_Email_Management.md).

## Mailing Components {#section_tvs_4jv_vxb .section}

A mailing is made up of the following:

-   *Identifier*: The mailing identifier—**Mailing ID**—is used to configure actions in a mailing workflow. Acumatica ERP provides a default mailing workflow for predefined mailings. For details on managing workflows, see [Getting Started with Workflow API: General Information](../DeveloperGuide/WorkflowAPI_Overview.md) and [Workflow UI Guide](../DeveloperGuide/WorkflowUI_Guide.md).
-   *Body*: A notification template can be assigned to any mailing to serve as the email body. The body consists of text that can be personalized while the email is generated with the help of placeholders used in the template. These placeholders are replaced with information from the customer record. You can modify a notification template to comply with your company policies. For details on managing notification templates, see [Email Templates](EM__con_Notification_Templates.md).
-   *Attachment*: For a mailing, you can select a report that will generate a document to be sent as an attachment. A report holds data from the system constructed in the required format. Acumatica ERP provides default reports to generate invoices, memos, statements and dunning letters. A report may also provide text for the mailing body. You can select the attachment format from the list of supported formats. For details on modifying reports, see [Acumatica Report Designer Guide](ReportDesigner_Main.md).

    **Attention:**

    -   You need to specify either a notification template or a report for a mailing. If a notification template is not specified, the text for the email body is taken from the report settings.
    -   You can attach multiple reports in the same format or different formats to one mailing. For details, see [Getting Started with Workflow API: General Information](../DeveloperGuide/WorkflowAPI_Overview.md) and [Workflow UI Guide](../DeveloperGuide/WorkflowUI_Guide.md).
    -   If the email body contains no specific text and the HTML format is selected in the email settings of the report, the report is inserted in the email body in the HTML format instead of being attached to the email.

## Mailing Workflow {#section_wvs_4jv_vxb .section}

The mailing workflow consists of the following steps:

1.  *Mailing configuration*: You can set up mailings for a group of customers by using [Customer Classes](AR_20_10_00.md) \(AR201000\) form or for a specific customer, by using the [Customers](AR_30_30_00.md) \(AR303000\) form. You can configure the list of mailings and recipients, as well as notification template and attachment settings. Customer class provides the default settings for the included customers, but these default settings can be overridden to make the mailing configuration more specific. Mailings modified for specific customer \(on the [Customers](AR_30_30_00.md) form\) are marked as overridden \(the **Overridden** check box is selected\). If you change mailings configuration in a customer class, these changes affect mailings of all customers of this class, except those that were modified specifically for a customer \(overridden\).
2.  *Mailing mass processing configuration*: You can control whether invoices and statements are available for mass emailing. For details, see [Mailings for Customers: Mass Processing](Finance_PredefinedMailings_Customers_MassProcessing.md).
3.  *Document preparation and preview*: Generally, you prepare the email and the attached document, if any, and then preview them on the [Emails Pending Processing](SM_50_70_00.md) form. If mass-emailing is being done, the preparation of statements may be a time-consuming process; thus, mass preparation and preview of statements are separated.
4.  *Email sending*: By default, the system doesn't perform the actual sending of the emails right away. Prepared emails are gathered in the queue shown on the [Emails Pending Processing](SM_50_70_00.md) form; use this form when you're ready to actually send them. For details on email management, see [Managing Emails](EP__con_Email_Management.md).

    **Attention:** This is the default email workflow; consult your system administrator to find out whether it has been modified.


## Order of Applying Mailings { .section}

If you attempt to send a document to a customer, the system checks for the presence of mailings for this type of document in the following order and applies the first one it finds:

1.  A branch-specific mailing that is specified for the customer on the [Customers](AR_30_30_00.md) \(AR303000\) form
2.  A mailing without a branch selected that is specified for the customer on the [Customers](AR_30_30_00.md) form
3.  A branch-specific mailing that is specified for the customer class on the [Customer Classes](AR_20_10_00.md) \(AR201000\) form
4.  A mailing without a branch selected that is specified for the customer class on the [Customer Classes](AR_20_10_00.md) form

If the system does not find a mailing for this type of document, it shows an error and does not send the document by email.

## Email Options {#section_iwg_njv_vxb .section}

In Acumatica ERP, mailings are implemented with the functionality of workflow actions. The system generates emails for active mailings when the user clicks the command or button that initiates email generation.

The body of the email can be configured as one of the following:

-   Text—personalized at the moment the email is generated—based on a notification \(email\) template. Placeholders used in the template will be replaced with information from the customer record. For example, template-based emails can be used to notify customer contacts about expiration of their credit cards. When the system generates such emails for multiple customers, placeholders are replaced by the particular customer's information: card type, partial card number, expiration date, and so forth.
-   An Acumatica ERP report, such as a report to generate a printable customer statement, invoice, or sales order. On the form where you set up a mailing—[Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) or [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\)—you can select the format for report-based documents: *Text*, *HTML*, *Excel*, or *PDF*. If a recipient has preferences about the document format, the documents will be sent in the recipient's preferred format. If you select *PDF*, the document will be sent as an email attachment.

    **Tip:** Optionally, you can customize each report used in the mailings by using the Acumatica Report Designer. You can provide settings specifying who will receive the report-based email and which format should be used, as well as possibly a specific template to be used as the email body \(for email personalization\). If these custom settings are added to the report, they will be used instead of the similar settings on the **Mailing &amp; Printing** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form. For details on modifying reports, see the [Acumatica Report Designer Guide](ReportDesigner_Main.md).

    Additionally, you can attach multiple reports in the same or different formats to one mailing. For details, see [Getting Started with Workflow API: General Information](../DeveloperGuide/WorkflowAPI_Overview.md) and [Workflow UI Guide](../DeveloperGuide/WorkflowUI_Guide.md).


## Use of Mailings for Printing Documents {#section_owg_njv_vxb .section}

Your organization's policies might require users to print documents of specific types, either for internal use or for sending them by postal mail to customers that prefer not to receive the documents through email.

You can also use mailings for printing documents of particular types. Users print documents based on the default reports provided for these types of documents or custom reports developed with the help of the Acumatica Report Designer.

If you plan to use the *INVOICE* mailing for printing invoices, consider whether you should make printing a required action. To require it, select the **Require Invoice/Memo Printing Before Release** check box on the **General** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form. For particular customer classes and particular customers, specify that invoices of these customers should be printed by selecting the **Print Invoices** check box on the **General** tab of the [Customer Classes](AR_20_10_00.md) \(AR201000\) form or the [Customers](AR_30_30_00.md) \(AR303000\) form, respectively.

If you plan to use the *STATEMENT* or *STATEMENTMC* mailing for printing statements for customers of specific classes, select the **Print Statements** check box on the **General** tab of the [Customer Classes](AR_20_10_00.md) form for the customer classes.

If you want to avoid printing a specific document, you should to the following:

-   For customer statements, select the *Mark as Do not Print* option in the **Actions** box on the [Print Statements](AR_50_35_00.md) \(AR503500\) form
-   For AR invoices, select the **Don't Print** check box on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form

**Parent topic:**[Configuring Predefined Mailings for Customers](../UserGuide/Finance_PredefinedMailings_for_Customers_Mapref.md)

