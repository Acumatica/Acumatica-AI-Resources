# Customers: General Information {#_f38972e8-a206-4279-8681-b9e2743759c0 .concept}

In Acumatica ERP, each customer account stores all customer-related information you need to conduct business with your company’s customers. This information includes addresses, locations, contacts, and payment methods, as well as financial, billing, delivery, and mailing settings. Acumatica ERP provides you with different tools that ease the process of entering customer data and help you to organize this data on reports.

## Learning Objectives {#section_rbl_4jv_vxb .section}

In this chapter, you will do the following:

-   Create a new customer based on the default customer class
-   Review the default settings that the system has inserted from the customer class

## Applicable Scenarios {#section_ubl_4jv_vxb .section}

You add customer accounts in the following cases:

-   When you initially configure Acumatica ERP and enter the customer base into the system
-   When you need to create an account for a new customer of the company

## Entities Needed for Customer Account Setup {#section_wbl_4jv_vxb .section}

Before you start setting up customer accounts in Acumatica ERP, you need to configure the entities that will ease the processes of customer account creation and maintenance.

The needed entities in Acumatica ERP may include the following:

-   Customer classes \(required\): You should ensure that at least one customer class has been set up on the [Customer Classes](AR_20_10_00.md) \(AR201000\) form. Customer classes provide default values for individual customer accounts, so users can create customer accounts more easily. Besides the class ID and description, which are the required settings of a customer class, it can contain additional elements, such as general settings, delivery elements, credit verification settings, financial settings, print and email details, general ledger accounts, and mailings. For details, see [Accounts Receivable: Customer Classes](../ImplementationGuide/config_Basic_Company_Customer_Classes.md).
-   Customer identifiers \(optional\): You should make sure that the segmented key used as a template for identifiers of customer accounts suits your needs, and adjust the *BIZACCT* segmented key \(or the *CUSTOMER* key\) on the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form if needed.
-   General ledger accounts \(required\): On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, you need to create the general ledger accounts to be used to record sales and cash discounts, unless you plan to use the accounts that already exist. You will need to select these already-defined accounts when you create customer accounts. For details, see [To Add an Account to the Chart of Accounts](GL__HOW_To_Add_an_Account_to_the_Chart_of_Accounts.md).
-   Statement cycle \(required\): You need to ensure that at least one statement cycle has been set up on the [Statement Cycles](AR_20_28_00.md) \(AR202800\) form, which will be assigned to a customer class \(and therefore to all customers that are assigned to this class\). For details, see [Customers: Implementation Activity](Customer_Implem_Activity.md).
-   Payment methods \(required\): You need to ensure that at least one payment method to be used for customer payments has been defined on the [Payment Methods](CA_20_40_00.md) \(CA204000\) form. For details, see [Managing Payment Methods](CA__MNG_PaymentMethods.md).
-   Credit terms: You should ensure that each needed set of credit terms that will define the due dates of documents has been set up on the [Credit Terms](CS_20_65_00.md) \(CS206500\) form. When you set up customer classes, you can assign the appropriate credit terms to classes, which in turn will cause the credit terms to be assigned by default to all new customers of this class. For details, see [Setup of Credit Terms](AR__con_Credit_Terms.md).
-   Overdue charges \(optional\): You can set up overdue charges on the [Overdue Charges](AR_20_45_00.md) \(AR204500\) form, which define additional charges that customers will incur for open documents that are past due and assign the charges to a customer class \(which causes them to be assigned by default to all new customers of this class\). For details, see [Overdue Charges: General Information](Finance_Overdue_Charges_GeneralInfo.md).
-   Mailings \(optional\): You can set up multiple mailings to notify customers about their balances, invoices, sales orders, and other information you want to send to customers on a regular basis. For details, see [Mailings for Customers: General Information](Finance_PredefinedMailings_Customers_GeneralInfo.md).
-   Duplicate Validation \(optional\): On the [Duplicate Validation](CR_10_30_00.md) \(CR103000\) form, you can set up duplicate validation rules for the *Account to Account* record pair. The system uses these rules to check new customer records for duplicates across customers, vendors, and business accounts. For details, see [Record Validation for Duplicates: General Information](CRM_Mktg_Validating_Recs_Duplicates_GeneralInfo.md).

**Parent topic:**[Creating a Customer](../UserGuide/Customer_Mapref.md)

