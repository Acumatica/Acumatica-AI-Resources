# Customers: Customer Account Planning {#_662bbeea-96c7-46e9-9709-2fcd952e1422 .concept}

Before you begin preparing to set up customer accounts in Acumatica ERP, you need to gather information and make decisions that you will use when setting up customer accounts and their supporting entities.

In this topic, you will read about the steps you have to perform with regard to customer account setup.

## Customer Account Planning Steps {#section_xcl_4jv_vxb .section}

You need to perform the following planning steps regarding your relations with customers:

-   Decide whether you need to expand your chart of accounts with the accounts you will use to record your operations with customers. For details, see [Chart of Accounts](GL__CON_Chart_of_Accounts.md).
-   Consider your actual and potential customers, and single out the characteristics you can use to group customers, such as the types of goods or services they buy, their currency, and their payment methods. By using these characteristics, plan customer classes that will be used to provide default values for new customer accounts, so that users can create customer accounts more easily. Also, look at the common characteristics of all the planned classes so that you can plan the default customer class, which will be defined first and used to set up the other customer classes. For details, see [Customers: Customer Class Settings](AR__CON_CustomerClasses.md).
-   Consider your actual and potential customers with regard to the hierarchy of their companies and decide whether you need to build parent-child relations between accounts. These relations can help you meet the accounting and auditing requirements of your company when you work with companies that have subsidiaries. For details, see [Managing Parent-Child Relationships](Finance_Parent-Child_Relationship_Mapref.md).

    **Attention:** The functionality is available if the *Parent-Child Customer Relationship* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

-   Plan the structure of identifiers to be used for customer accounts, if this was not done during system implementation. In Acumatica ERP, the identifier of the customer account is defined by the *BIZACCT* segmented key, whose structure is defined during system implementation. You can also configure the *CUSTOMER* segmented key \(which is based on the *BIZACCT* key\) if you want to make the structure of customer identifiers a bit different from the structure of identifiers for vendor and employee accounts. For more information, see [Business Account Identifiers](CS__con_Business_Accounts_Identifiers.md).
-   Collect information about the ways your customers pay for services, and consider whether you are going to use Acumatica ERP for payment processing. You will use this information to plan the payment methods and cash accounts to be used to process payments from customers. For details, see [Managing Payment Methods](CA__MNG_PaymentMethods.md).
-   Examine the credit management policies used by your company—for example, the credit terms applied to the documents that are due, the overdue charges for customers who are consistently paying too late, the types of statements, and the frequency of providing customers with information about their balances. By using this information, you can plan the implementation of company credit policy in Acumatica ERP, which is described in [Managing Credit Policy](AR__MNG_CreditPolicy.md).
-   Collect information about the customer locations and applicable taxes. You will use this information to plan the tax zones and taxes the system will apply to customer purchases. For details, see [Tax Zones and Categories: General Information](../ImplementationGuide/TaxZones_and_Categories_GeneralInfo.md).
-   Plan how your organization will send documents to customers: electronically or through postal mail. In the latter case, printing of the documents should be required before they can be released. You can define these settings for a group of customers by customer class and then adjust settings individually for each customer account.
-   Consider how you want to inform customers about their balances, past-due documents, or expired bank cards. You will use this information when you plan the mailings used to regularly notify customers. For details, see [Mailings for Customers: General Information](Finance_PredefinedMailings_Customers_GeneralInfo.md).
-   If subaccounts are activated in your system, you should plan the rule for selecting the appropriate subaccount or for combining it from multiple involved subaccounts, by using the combined subaccount functionality provided by Acumatica ERP. For details on this functionality, see [Combined Subaccounts: General Information](../ImplementationGuide/config_Combined_Subaccounts_GeneralInfo.md).

**Parent topic:**[Creating a Customer](../UserGuide/Customer_Mapref.md)

