# Project Mailing Configuration: General Information {#_93df034d-c8f4-4b33-ab7d-972886bfd64d .concept}

Your organization's policies might require users to print documents of specific types, either for internal needs or for sending them by postal mail to customers or vendors that prefer not to receive the documents through email. In Acumatica ERP, you can define mailing settings to send particular documents to customers and vendors by email. The following sections describe the use of mailings for sending and printing project-related documents.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Define mailing settings for project quotes
-   Define mailing settings for pro forma invoices
-   Define mailing settings for accounts receivable invoices

## Applicable Scenarios { .section}

You define mailing settings to print documents as well as automatically send documents of a specific type by email.

## Mailing Configuration {#section_ot2_1g3_4mb .section}

The functionality you use to print and send documents of a specific type by email is referred to as a *mailing*. Acumatica ERP provides predefined mailings that you can configure for printing and sending different types of documents to customers and vendors. The system generates emails for active mailings when a user clicks a command or button that initiates email generation.

The body of the email can be configured as one of the following:

-   An Acumatica ERP report, such as a pro forma invoice, accounts receivable invoice or project quote. Reports define how to arrange the information available in documents of specific types for emailing or printing. On the **Mailing &amp; Printing** tab of the [Projects Preferences](../UserGuide/PM_10_10_00.md) \(PM101000\) form, where you specify the settings of each mailing, you select the format for report-based documents: *HTML*, *Excel*, or *PDF*. If you select *PDF*, the document will be sent as an email attachment.
-   Text—personalized at the moment the email is generated—based on a notification \(email\) template. Placeholders used in the template will be replaced with information from the vendor or customer record. For example, template-based emails can be used to notify customer contacts about expiration of their credit cards. When the system generates these emails for multiple customers, placeholders are replaced by the particular customer's information, such as card type, partial card number, and expiration date.

## Order of Applying Mailings { .section}

If a user clicks a command or button to send a document to a customer or vendor by email, the system verifies the presence of mailings for this type of document in the following order and applies the first one it finds:

1.  A branch-specific mailing that is specified in the project settings
2.  A mailing without a branch selected that is specified in the project settings
3.  A branch-specific mailing that is specified in the project template settings \(if the project has been created based on a template\)
4.  A mailing without a branch selected that is specified in the project template settings \(if the project has been created based on a template\)

If no mailing for this type of document is found, the system does not send the document by email and shows an error message.

**Parent topic:**[Project Mailings](../ImplementationGuide/config_Project_Mailings_Mapref.md)

