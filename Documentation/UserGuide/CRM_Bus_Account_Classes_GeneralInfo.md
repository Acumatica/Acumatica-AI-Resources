# Business Account Classes: General Information {#_a0eebf38-ee6e-418d-9a71-4639ceb3f7be .concept}

In Acumatica ERP, you can group business accounts into classes based on specific characteristics. Business account classes help you quickly and effectively manage your marketing and sales processes. These include the creation of business accounts, the creation of opportunities and customers, and the preparation of financial reports.

This topic provides information about business account classes.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create a business account class
-   Select the business account class that the system will use by default for each new business account

## Applicable Scenarios { .section}

You may want to learn how to create business account classes in scenarios that include the following:

-   You need to give users the ability to group business accounts that represent companies of the same industry, such as banks, supermarkets, or pharmacies.
-   You need to give users the ability to group business accounts that represent companies of the same business sector, such as manufacturers, merchandisers, or service providers.
-   You need to set up the system to automatically assign new business accounts to the appropriate owners.

## Defining of Business Account Classes { .section}

In Acumatica ERP, a business account class is a way to group business accounts that share at least one common characteristic. Business account classes make the creation of business accounts faster and more accurate by providing default settings for new business accounts.

You can collect additional information about the business accounts in each class by defining a set of attributes for the class. An attribute is a configurable UI element for tracking a characteristic of each business account that’s important to your company but isn’t already on the [Business Accounts](CR_30_30_00.md) \(CR303000\) form. For more details, see [Attributes](CS__con_Attributes.md).

**Tip:** If you specify a value for an attribute of a business account and then extend this business account as a customer or vendor account, the specified attribute value isn’t copied to the customer or vendor unless the selected customer or vendor class has the same attribute. If it does and an attribute value has been specified for the business account, the system copies the value of the attribute to the customer or vendor. The attributes of the business account \(and their values, if specified\) are preserved on the [Business Accounts](CR_30_30_00.md) form. If the customer or vendor class has attributes specified, these attributes are listed for the customer or vendor. Thus, the sets of attributes for a business account and for the customer or vendor to which the business account has been extended can be different, depending on the settings of each class.

You define each business account class on the [Business Account Classes](CR_20_80_00.md) \(CR208000\) form and specify settings such as these:

-   The way the system determines the default owner of a business account of the class. If the default owner is determined through an assignment map, you can also specify the map.
-   The default email account for sending emails to business accounts of the class.
-   The currency that can be inserted in a new business account of the class.
-   The mailing settings that are used for sending electronic versions of documents \(by email\) to companies represented by business accounts and to employees of your company who oversee operations with business accounts of the class. For details, see [Mailings for Customers: General Information](Finance_PredefinedMailings_Customers_GeneralInfo.md).

If your company no longer needs a particular business account class, you can remove it from the system only if no existing business accounts have that class specified.

## How the Class Affects Contact Creation { .section}

When you create a business account on the [Business Accounts](CR_30_30_00.md) \(CR303000\) form and select a business account class, the system inserts the business account’s default values based on the class settings. \(You can override these default settings.\)

If attributes have been defined for the selected business account class, they appear on the **Attributes** tab as additional elements. Depending on how they were defined for the class, they may be required or optional.

If you change the business account class of an existing business account, the system updates the business account’s default settings based on the new class. If the new class includes any of the same attributes as the previous one did, the system preserves their values. All other attributes from the previous class are removed.

If one business account class is used more frequently than the others, you can specify it as the default business account class on the **General** tab of the [Customer Management Preferences](CR_10_10_00.md) \(CR101000\) form. Then on creation of a business account on the [Business Accounts](CR_30_30_00.md) form, the system inserts this default class, as well as the associated default settings. This class can be changed.

**Tip:** You can create a business account by using a dialog box on the [Leads](CR_30_10_00.md) \(CR301000\), [Contacts](CR_30_20_00.md) \(CR302000\), or [Opportunities](CR_30_40_00.md) \(CR304000\) form. In this case, the system may insert a different business account class than the default one. If a business account class is specified on the [Lead Classes](CR_20_70_00.md) \(CR207000\), [Contact Classes](CR_20_50_00.md) \(CR205000\), or [Opportunity Classes](CR_20_90_00.md) \(CR209000\) form for the source class, the system inserts the specified business account class.

**Parent topic:**[Defining Business Account Classes](../UserGuide/CRM_Bus_Account_Classes_Mapref.md)

