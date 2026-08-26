# Customers: Configuration Prerequisites {#_768aad0d-f619-4783-acfb-c98ed2f08e77 .concept}

Before you start setting up customer accounts in Acumatica ERP, you need to configure the entities that will ease the processes of customer account creation and maintenance. As you configure these entities, you should use the information that you gathered when you planned customer accounts.

In this topic, you will find the list of Acumatica ERP entities you need to configure to ease the processes of customer account creation and maintenance. Some of these entities are required, while others are optional, as indicated in the list.

## Settings Required to Be Configured {#section_d2l_4jv_vxb .section}

The needed entities in Acumatica ERP may include the following:

-   Customer identifiers \(optional\): You should make sure that the segmented key used as a template for identifiers of customer accounts suits your needs, and adjust the *BIZACCT* segmented key \(or the *CUSTOMER* key\) if needed. For details, see [Business Account Identifiers](CS__con_Business_Accounts_Identifiers.md).
-   General Ledger accounts \(required\): You need to create the General Ledger accounts and subaccounts \(if applicable\) to be used to record sales and cash discounts, unless you plan to use accounts and subaccounts that already exist. You will need to select these already-defined accounts when you create customer accounts. For details, see [To Add an Account to the Chart of Accounts](GL__HOW_To_Add_an_Account_to_the_Chart_of_Accounts.md).
-   Statement cycle \(required\): You need to set up at least one statement cycle that will be assigned to a customer class \(and therefore to all customers that are assigned to this class\). For details, see [Customer Statements: General Information](Finance_Preparing_Customer_Statements_GeneralInfo.md).
-   Payment methods \(required\): You need to define at least one payment method to be used for customer payments. For details, see [Managing Payment Methods](CA__MNG_PaymentMethods.md).
-   Credit terms \(optional\): You should set up each needed set of credit terms that will define the due dates of documents. When you set up customer classes, you can assign the appropriate credit terms to classes, which in turn will cause the credit terms to be assigned by default to all new customers of this class. For details, see [Setup of Credit Terms](AR__con_Credit_Terms.md).
-   Overdue charges \(optional\): You can set up overdue charges, which define additional charges that customers will incur for open documents that are past due and assign the charges to a customer class \(which causes them to be assigned by default to all new customers of this class\). For details, see [Overdue Charges: General Information](Finance_Overdue_Charges_GeneralInfo.md).
-   Mailings \(optional\): You can set up multiple mailings to notify customers about their balances, invoices, sales orders, and other information you want to send to customers on a regular basis. For details, see [Mailings for Customers: General Information](Finance_PredefinedMailings_Customers_GeneralInfo.md).

**Parent topic:**[Creating a Customer](../UserGuide/Customer_Mapref.md)

