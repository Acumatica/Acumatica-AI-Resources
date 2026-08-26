# Mailings for Vendors: General Information {#_0fd8a79c-980f-4914-a70a-9aaab87364e7 .concept}

Efficient processing of electronic documents can help organizations reduce costs and optimize investments, so they can stay competitive in today's dynamically changing economy. In Acumatica ERP, for each particular vendor, you can specify how your organization sends documents to the vendor's business: electronically or through postal mail \(on paper\).

For businesses that want to receive electronic documents, you can easily set up the sending of documents by email, such as sending purchase orders to vendors. You can configure the system to simultaneously send emails to employees of your organization who oversee operations with particular vendors.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Set up a mailing for a vendor class
-   Set up a mailing for a particular vendor

## Applicable Scenarios { .section}

You set up mailings for vendors in the following cases:

-   You want to facilitate the process of setting up the sending of electronic purchase orders to vendors by using the mailing settings of vendor classes as the default settings for vendors of the respective classes. If vendors of the class are shared among multiple branches of your company, you can set up the mailing of orders differently for different branches. Also, you can configure emails to be sent to authorized employees of your company branches about orders of particular vendor classes.
-   You want to set up the of sending specific documents by email to particular vendors and employees who work with these vendors.

## Mailings Available for Vendors {#section_gwg_njv_vxb .section}

Acumatica ERP provides the following predefined mailings for vendors on the **Mailing &amp; Printing** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form. For details on configuring these mailings for vendors, see [Mailings for Vendors: To Set Up a Mailing for a Vendor Class](Finance_PredefinedMailings_Vendors_Activity1.md) and [Mailings for Vendors: To Set Up a Mailing for a Vendor](Finance_PredefinedMailings_Vendors_Activity2.md).

|Mailing|Purpose|Usage|
|-------|-------|-----|
|*PURCHASE ORDER*|To send purchase orders to vendors electronically|To generate an email for a particular purchase order, use the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form. To generate emails for multiple purchase orders, use the [Print/Email Purchase Orders](PO_50_30_00.md) \(PO503000\) form.|
|*RQPROPOSAL*|To send proposal requests to vendors when a requisition is created|To generate an email for a particular proposal request, use the [Requisitions](RQ_30_20_00.md) \(RQ302000\) form.|
|*T4A SLIP*|To send individual T4A slips to vendors by email|This mailing appears on the form if the *Canadian Localization* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. For more details, see [Emailing T4A Slips](AP__CON_Emailing_T4ASlips.md).|

## Order of Applying Mailings { .section}

If you attempt to send a document to a vendor by email, the system checks for the presence of mailings for this type of document in the following order and applies the first one it finds:

1.  A branch-specific mailing that is specified for the vendor on the [Vendors](AP_30_30_00.md) \(AP303000\) form in the vendor settings
2.  A mailing without a branch selected that is specified for the vendor on the [Vendors](AP_30_30_00.md) form
3.  A branch-specific mailing that is specified for the vendor class on the [Vendor Classes](AP_20_10_00.md) \(AP201000\) form
4.  A mailing without a branch selected that is specified for the vendor class on the [Vendor Classes](AP_20_10_00.md) form

If the system does not find a mailing for this type of document, it shows an error and does not send the document by email.

## Email Options {#section_iwg_njv_vxb .section}

In Acumatica ERP, mailings are implemented with the functionality of workflow actions. The system generates emails for active mailings when a user clicks the button that initiates email generation.

The body of the email can be configured as one of the following:

-   Text—personalized at the moment the email is generated—based on a notification \(email\) template. Placeholders used in the template will be replaced with information from the vendor record.

-   An Acumatica ERP report, such as the report to generate a printable purchase order. On the form where you set up a mailing—[Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) or [Purchase Requisitions Preferences](RQ_10_10_00.md) \(RQ101000\)—you can select the format for report-based documents: *Text*, *HTML*, *Excel*, or *PDF*. If a recipient has preferences about the document format, the documents will be sent in the recipient's preferred format. If you select *PDF*, the document will be sent as an email attachment.

    **Tip:**

    If needed, you can customize each report used in the mailings by using the Acumatica Report Designer. You can provide settings specifying who will receive the report-based email and which format should be used, as well as possibly a specific template to be used as the email body \(for email personalization\). If these custom settings are added to the report, they will be used instead of the similar settings on the **Mailing &amp; Printing** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form. For details on modifying reports, see the [Acumatica Report Designer Guide](ReportDesigner_Main.md).

    Additionally, you can attach multiple reports in the same or different formats to one mailing. For details, see [Getting Started with Workflow API: General Information](../DeveloperGuide/WorkflowAPI_Overview.md) and [Workflow UI Guide](../DeveloperGuide/WorkflowUI_Guide.md).


## Use of Mailings for Printing Documents {#section_owg_njv_vxb .section}

Your organization's policies might require users to print documents of specific types, either for internal use or for sending them by postal mail to vendors that prefer not to receive the documents through email.

You can also use mailings for printing documents of particular types. Users print documents based on the default reports provided for these types of documents or custom reports developed with the help of the Acumatica Report Designer.

If you want to avoid printing a specific purchase order, you should select the **Do Not Print** check box on the **Other** tab of the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form.

**Parent topic:**[Configuring Predefined Mailings for Vendors](../UserGuide/Finance_PredefinedMailings_for_Vendors_Mapref.md)

