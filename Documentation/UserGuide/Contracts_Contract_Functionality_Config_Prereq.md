# Contract Functionality Implementation: Configuration Prerequisites {#_c29c780e-671b-42b5-a8e0-030e6b083f0f .concept}

Before starting to create contracts, you should be sure that the needed feature has been enabled, the needed settings have been specified, and the applicable entities have been created, as described in the following sections.

## Enabling the Needed Feature { .section}

On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Contract Management* feature must be enabled.

## Configuring Project Identifiers { .section}

The *CONTRACT* segmented key on the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form defines the identifier of the contracts. By default, this segmented key specifies that the contract identifier is an alphanumeric string of up to 10 characters. For the key, you can define how many segments it is to have, what values may be used, whether these values should be validated, and whether auto-numbering should be used in one of the segments. You can also divide item identifiers into segments with specific values. For more information on configuring segmented keys, see [Segmented Identifiers](CS__con_Identifier_Segmentation.md).

## Configuring the System { .section}

You need to make sure the following tasks have been performed in Acumatica ERP before you begin to create contracts:

-   On the [Companies](CS_10_15_00.md) \(CS101500\) form, you need to make sure that the companies of the organization have been configured. For more information, see [Company Without Branches: To Configure a Company Without Branches](../ImplementationGuide/config_Basic_Company_Implem_Activity_Enabling_Features.md).
-   On the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, you need to make sure that the account receivable functionality has been configured.
-   On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, the accounts to be used with the accounts receivable functionality have been defined. For more information, see [General Ledger: To Create a Chart of Accounts](../ImplementationGuide/config_Basic_Company_Implem_Activity_COA.md).

## Contract Numbering { .section}

As a part of the preparation for contract creation, you need to develop a strategy for assigning identifiers to contracts. A *segmented key*, which is defined on the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form, defines the structure of identifiers for a certain entity and then serves as a template when a user creates an identifier for a new record of the type. You can either configure the segmented key to be auto-numerated, so that the system will generate the new numbers automatically, or make the segmented key manually numbered, if you want to have some meaningful titles for the contracts.

Contract identifiers are based on the *CONTRACT* segmented key, which inherits its structure from the *PROJECT* segmented key. If you are using the same structure for both segmented keys, and auto-numbering is disabled for them, you will not be able to create contracts with the identifiers that are already used in existing projects or project templates. Also, you cannot use the identifier that is specified as the non-project code on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form as an identifier of a contract.

If both *Contract Management* and *Projects* features are in use in the system, a number of entry forms have a **Project/Contract** element \(box or column\) in which you select the project or contract that is related to a record on the form \(such as an invoice or credit memo\) or a detail line of a record \(such as a line of an expense claim\). In a lookup table that opens for such UI element, and both projects and contracts are listed. If you want to provide the users the ability to distinguish between projects and contracts in these lookup tables, you need to reserve one segment of the key for a value that designates whether the identifier belongs to projects or contracts. You can use one of the following approaches to defining the keys:

-   You configure two segments in the *PROJECT* segmented key: a two-letter segment with two possible character strings \(such as *PR* and *CT*\) to designate the type of identifier, and a 10-character auto-numbered segment to identify the particular project or contract. For the second segment of the *CONTRACT* segmented key, you assign a different numbering sequence than the one used for to maintain the numbers for contracts independently from those of projects. Numbering sequences are created and modified on the [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form.
-   If you decide to define a one-segment structure for the *PROJECT* segmented key with an auto-numbered segment, you can assign different numbering sequences to the *PROJECT* and *CONTRACT* keys. On the [Numbering Sequences](CS_20_10_10.md) form, create the sequence intended for projects with *PR* as a prefix, and define the sequence intended for contracts with the *CT* prefix.

## Defining Entities {#section_tqp_mh3_35b .section}

You need to define the following Acumatica ERP entities before you create contracts:

-   Customer accounts and locations: The customers you will specify in contracts must be created on the [Customers](AR_30_30_00.md) \(AR303000\) form. Also, the needed customer locations must be created on the [Customer Locations](AR_30_30_20.md) \(AR303020\) form, which is available if the *Business Account Locations* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. When you create a contract on the [Customer Contracts](CT_30_10_00.md) \(CT301000\) form and select a customer account, the system fills in the applicable billing settings that have been specified for the customer.
-   Discount: If you want to give any customer a discount for services provided recurrently through the contract, you should create the needed discount code, which determines the discount rate, the application rules, and the non-stock items it is applied to. You will specify this discount code when you create a contract. You create each needed discount code on the [Discount Codes](AR_20_90_00.md) \(AR209000\) form and the discount sequences of each discount code on the [Discounts](AR_20_95_00.md) \(AR209500\) form. For details on creating discounts, see [Customer Discounts: General Information](Prices_Customer_Discounts_GeneralInfo.md).
-   Contract template: A contract is based on a contract template, which provides the default settings of the contract. For each type of contract \(such as a service agreement or support plan\) your company has with its customers, you can create a contract template. Then when you create a contract, you select the appropriate contract template, which causes the default settings of the contract to be filled in. A contract template may also provide a list of products and services that you want to sell. These services and products are represented by contract items, which you create separately.

**Parent topic:**[Implementing the Contract Functionality](../UserGuide/Contracts_Implementing_Contracts_Functionality_Mapref.md)

