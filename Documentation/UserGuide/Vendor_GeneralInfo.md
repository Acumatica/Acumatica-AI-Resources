# Vendors: General Information {#_34b5a8f9-85fa-4a79-b68a-ae02e611b76f .concept}

Acumatica ERP provides you with different tools that ease the process of entering vendor data and help you to organize this data in reports. You use the [Vendors](AP_30_30_00.md) \(AP303000\) form to create vendors in Acumatica ERP.

## Learning Objectives {#section_rmg_njv_vxb .section}

In this chapter, you will do the following:

-   Create a new vendor based on the default vendor class
-   Review the default settings that the system has inserted from the vendor class

## Applicable Scenarios {#section_umg_njv_vxb .section}

You add vendor accounts in the following cases:

-   When you initially configure Acumatica ERP and enter the vendor base into the system
-   When you need to create an account for a new vendor of the company

## Entities Needed for Vendor Account Setup {#section_wmg_njv_vxb .section}

Before you start setting up vendor accounts in Acumatica ERP, you need to configure the entities that will ease the processes of vendor account creation and maintenance.

The needed entities in Acumatica ERP may include the following:

-   Vendor classes \(required\): You should ensure that at least one vendor class has been set up on the [Vendor Classes](AP_20_10_00.md) \(AP201000\) form. Vendor classes provide default values for individual vendor accounts, so users can create vendor accounts more easily. Besides the class ID, which is the required setting of a vendor class, it can contain additional elements such as the description, credit terms, currency, rate type, country, tax zone, and specific general ledger accounts. You can also enter a default cash account and payment method for the class. For details, see [Accounts Payable: To Create a Vendor Class](../ImplementationGuide/config_Basic_Company_Implem_Activity_Vendor_Classes.md).
-   Vendor identifiers \(optional\): You should make sure that the segmented key used as a template for identifiers of vendor accounts suits your needs, and adjust the *BIZACCT* segmented key \(or the *VENDOR* segmented key\) on the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form if needed. For details, see [Managing Segmented Keys](SM__con_Managing_Segmented_Keys.md).
-   General ledger accounts \(required\): On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, you need to create the general ledger accounts to be used to record purchases and cash discounts, unless you plan to use the accounts that already exist. You will need to select these accounts when you create vendor accounts. For details, see [To Add an Account to the Chart of Accounts](GL__HOW_To_Add_an_Account_to_the_Chart_of_Accounts.md)
-   Payment methods \(required\): You need to ensure that at least one payment method to be used for payments to vendors has been defined on the [Payment Methods](CA_20_40_00.md) \(CA204000\) form. For details, see [Managing Payment Methods](CA__MNG_PaymentMethods.md).
-   Credit terms: You should ensure that each needed set of credit terms that will define the due dates of documents has been set up on the [Credit Terms](CS_20_65_00.md) \(CS206500\) form. When you set up vendor classes, you can assign the appropriate credit terms to classes, which in turn will cause the credit terms to be assigned by default to all new vendors of this class. For details, see [Setup of Credit Terms](AR__con_Credit_Terms.md).
-   Mailings \(optional\): You can set up multiple mailings to notify vendors about their balances, bills, purchase orders, and other information you want to send to vendors on a regular basis. For details, see [Mailings for Vendors: General Information](Finance_PredefinedMailings_Vendors_GeneralInfo.md).
-   Vendor price lists \(optional\): You can set up vendor price lists on the [Vendor Prices](AP_20_20_00.md) \(AP202000\) form to maintain item prices that are specific for vendors, so that you can later use promotional prices and volume-based offers when planning your purchases. For details, see [Vendor Prices: General Information](Prices_Vendor_Prices_GeneralInfo.md).
-   Vendor discounts \(optional\): On the [Vendor Discounts](AP_20_50_00.md) \(AP205000\) form, you can set up and maintain vendor discounts based on information received from each vendor. For details, see [Configuring Vendor Discounts](Prices_Vendor_Discounts.md).
-   Tax zones \(optional\): On the [Tax Zones](TX_20_60_00.md) \(TX206000\) form, you can set up various tax zones that combine a group of taxes for a particular location, which you assign to vendors and which are used by the system for calculation of taxes when you enter vendor documents. For details, see [Tax Zones and Categories: General Information](../ImplementationGuide/TaxZones_and_Categories_GeneralInfo.md).
-   Duplicate Validation \(optional\): On the [Duplicate Validation](CR_10_30_00.md) \(CR103000\) form, you can set up duplicate validation rules for the *Account to Account* record pair. The system uses these rules to check new vendor records for duplicates across customers, vendors, and business accounts. For details, see [Record Validation for Duplicates: General Information](CRM_Mktg_Validating_Recs_Duplicates_GeneralInfo.md).

**Parent topic:**[Creating a Vendor](../UserGuide/Vendor_Mapref.md)

