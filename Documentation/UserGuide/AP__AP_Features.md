# Overview of Accounts Payable Processes {#_dfde2a50-ac79-4cd0-81cb-dfc49df2b41f .concept}

By using the accounts payable subledger, you can maintain complete, structured information about an unlimited number of vendors. You can enter vendor documents, bills, and adjustments, as well as track earlier payment discounts, apply payments to bills, and print checks. The primary features of the accounts payable subledger are described briefly below and extensively in other topics in this section.

## Migration of Accounts Payable Documents {#section_u3g_njv_vxb .section}

In Acumatica ERP, you can enter fully or partially settled Accounts Payable documents into the system without affecting the General Ledger. To do it, you have to activate migration mode. For details on activating migration mode and adding documents, see [Migrating Documents to Acumatica ERP](AR__con_Migration_Process_Overview.md).

## Multicurrency Support {#section_w3g_njv_vxb .section}

If you have activated the multicurrency support in Acumatica ERP, you can assign a default foreign currency to each vendor account. The currency and its rate may be overridden on individual transactions if the settings of the vendor account allow currency overriding. The system automatically computes realized gains or losses upon payment of vendor bills in foreign currencies. Outstanding foreign currency bills can be revalued in the base currency as often as needed.

## Vendor Defaults and Overrides {#section_y3g_njv_vxb .section}

You can establish vendor classes that provide default values for creating other vendors. If you set up a default vendor class that holds settings common to most vendors, vendors can be created more quickly. You can also divide vendors into classes based on the types of goods or services you purchase from them. You can create one vendor class for tax agencies and another for 1099 vendors. On document entry, a user specifies a vendor, and most of the elements are populated with the vendor's default values. This makes input of documents much easier and saves time. For more details, see [Vendors: Vendor Defaults and Overrides](AP__CON_VendorClasses.md) and [Vendors: Vendor Locations](AP__CON_Vendor_Locations.md).

You can control which users can see which vendors on the forms by using restriction groups. You can specify a default restriction group for a vendor class, and the system will automatically include all newly added vendors in this group. For more information, see [Vendors: Security Configuration](AP__con_Vendors_Security.md).

## Flexible Workflow Options {#section_bjg_njv_vxb .section}

In Acumatica ERP, you can configure the document processing workflow to match your organization's payment and approval processes. You can use multiple options that control processing and choose from multiple processing forms. When users create and save documents, the documents can either be ready for release or placed on hold. You can configure approval to be required for bills before they can be paid. Also, you can set up the documents to be automatically posted on release, or you can make posting them a separate operation that requires additional rights.

## Multiple Document Types {#section_djg_njv_vxb .section}

The Accounts Payable module supports the following types of Accounts Payable documents: *Bills*, *Debit adjustments*,*Credit adjustments*, and *Prepayments*. It also supports these types of payment documents: *Checks*, *Debit adjustments*, *Vendor refunds*, *Prepayments*, and *Voided Checks*. For more information on how documents of different types are processed in the system, see the following topics:

-   [Processing AP Bills](Finance_ProcessingAPBills_Mapref.md)
-   [Processing Debit and Credit Adjustments](Finance_Processing_Debit_and_Credit_Mapref.md)
-   [Paying AP Bills](Finance_PayingAPBills_Mapref.md)
-   [Applying Payments to Particular Lines of AP Documents](Finance_AP_Payments_for_Particular_Lines_Mapref.md)
-   [Processing Prepayments for a Bill](Finance_ProcessingPrepayments_Mapref.md)
-   [Cash Purchases: General Information](Finance_CashPurchases_GeneralInfo.md)

## Rounding of Bill Totals {#section_fjg_njv_vxb .section}

If the *Invoice Rounding* feature is activated in your system, which provides rounding of document amounts, you can set up the rules and the precision to be used to automatically round the amounts of the bills that you enter or generate in the system. Notice that the rounding rules and the rounding precision that you specify for bills are the same for all currencies. For more information, see the following topics:

-   [Rounding of AP Document Amounts: General Information](Finance_AP_Doc_Amount_Rounding_GeneralInfo.md)
-   [Rounding of AP Document Amounts: Process Activity](Finance_AP_Doc_Amount_Rounding_Activity.md)

## Expense Reclassification {#section_hjg_njv_vxb .section}

If expense reclassification is performed as a separate stage of document processing in your organization, you can configure support for expense reclassification for bills and cash purchases. For more information, see [Reclassification of Expenses: General Information](Finance_Reclassification_of_Expenses_General_Info.md).

## Configurable Approval of Bills {#section_jjg_njv_vxb .section}

By using Acumatica ERP, you can configure approval to match the approval procedures used in your company. You can set up automatic preapproval of all bills and allow access to the [Prepare Payments](AP_50_30_00.md) \(AP503000\) form only to employees who are authorized to approve bills and create payments. Alternatively, you can configure the system in such way that the bills can be approved only by using the [Approve Bills for Payment](AP_50_20_00.md) \(AP502000\) form. For details, see [Bill Approval for Payment](AP__con_Bill_Approval_for_Payment.md).

## Support for Recurring Bills {#section_ljg_njv_vxb .section}

If you frequently have to create vendor bills that contain the same information, you can assign such bills to a schedule, so that the system will generate the documents at the frequency you specify: once per financial period, on a specified day of each calendar month, on a specified day each week \(or a user-specified number of weeks\), or on a user-specified number of days \(such as daily or every other day\). For more details, see [Recurring AP Documents: General Information](Finance_Creating_Recurring_APDocuments_GeneralInfo.md).

## ACH Payment Support {#section_njg_njv_vxb .section}

In Acumatica ERP, you can pay to vendors through the ACH network in the United States. To set up ACH payments, assign a previously configured payment method to appropriate vendors; then, payments to be made by this method can be grouped into batches and exported to a file for further processing within the ACH payment system. For more details, see [Processing ACH Payments](AP__con_ACH_Payment_Support.md).

## Accounts Payable Inquiries {#section_pjg_njv_vxb .section}

Inquiries of the Accounts Payable module \(located in the Explore node of the Work Area tab of the module\) present vendors' account information in a variety of ways. You can view the total outstanding balances for a vendor or vendors by a period and by a currency by using the [Vendor Summary](AP_40_10_00.md) \(AP401000\) inquiry form. You can view all documents that are past due for a specific vendor, as well as the cash discount amounts taken or lost, on the [Vendor Details](AP_40_20_00.md) \(AP402000\) inquiry form. You can use extensive drill-down capabilities to quickly find any specific detail.

## Support for United States 1099-MISC Form {#section_rjg_njv_vxb .section}

In Acumatica ERP, you can track 1099-MISC payments paid to contractors set as 1099 vendors, to ease the process of filling out these forms. For more details, see [Filing Out the 1099 Forms](AP__MNG_1099_Filing.md).

## Accounts Payable Security Options {#section_tjg_njv_vxb .section}

Acumatica ERP implements a role-based, task-oriented approach to security. Users belong to roles, which are given appropriate rights to access only the resources the users need to perform their routine tasks. To restrict user access to some vendor accounts, you can include the vendor accounts and users authorized to work with them in restriction groups, which restrict other users' access to these sensitive vendor accounts. For more details, see [Vendors: Security Configuration](AP__con_Vendors_Security.md).

## Sending Documents Electronically {#section_vjg_njv_vxb .section}

With Acumatica ERP, you can define mailing settings for customers and vendors to send documents to them electronically, by email. \(You can continue to print documents for sending documents via postal services to customers and vendors who do not want to receive documents electronically.\) Also, you can configure sending such emails to employees who work with specific vendors or customers. For more information, see [Mailings for Vendors: General Information](Finance_PredefinedMailings_Vendors_GeneralInfo.md).

## Audit Trail {#section_xjg_njv_vxb .section}

Acumatica ERP generates unique document IDs in accordance with the numbering sequences you have assigned. These IDs, coupled with the vendors' document reference numbers, prevent duplicate entries and provide an easy-to-follow audit trail. Reports provide information about the users who created and updated the documents.

## Other Features and Options {#section_zjg_njv_vxb .section}

Depending on the chosen settings, you can perform various tasks related to vendor accounts, bills, and payments:

-   Store any number of additional locations and contacts for each vendor
-   Attach scanned images or electronic versions of vendor documents to bills, adjustments, and prepayments or to lines of the documents
-   Define three aging periods for outstanding bills
-   Pay each vendor's bills by printing one check or separate checks
-   Process bills with retainage
-   Process bills between company branches that require or do not require balancing
-   Process payments for a shared vendor
-   Automatically calculate realized and unrealized gains and losses on foreign currency transactions
-   Process prepayments and multiple installments
-   Apply payments to particular bill lines
-   Void checks and payments
-   Track available and missed discounts
-   Perform period-end procedures in the accounts payable subledger separately from the general ledger

