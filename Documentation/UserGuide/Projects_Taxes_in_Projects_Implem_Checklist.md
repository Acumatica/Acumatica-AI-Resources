# Taxes in Projects: Implementation Checklist {#_7c40758c-f51f-4e98-88b3-d9bcf1793eb6 .concept}

The following sections provide details that you can use to ensure that the system is configured properly for calculating tax in project-related documents, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## General Setting Checklist { .section}

To ensure that the system is configured properly for creating project-related documents with taxes applied automatically, make sure that the criteria listed in the table have been met in the system as described.

|Form|Criteria to Check|
|----|-----------------|
|[Tax Zones](TX_20_60_00.md)\(TX206000\)|All needed tax zones have been defined to include the applicable taxes in the location that corresponds to each tax zone. For details, see [Tax Zones and Categories: To Review Tax Categories and Create a Tax Zone for Sales Taxes](../ImplementationGuide/TaxZones_and_Categories_SalesTax_Implem_Activity.md).

|
|[Tax Categories](TX_20_55_00.md) \(TX205500\)|The needed tax categories have been created for all goods and services \(which are represented as stock items and non-stock items in Acumatica ERP\) that your company buys or sells. For each tax category, you should add all taxes that are applied to the corresponding category of goods and services in all geographical locations where your company conducts business.For details, see [Tax Zones and Categories: To Review Tax Categories and Create a Tax Zone for Sales Taxes](../ImplementationGuide/TaxZones_and_Categories_SalesTax_Implem_Activity.md).

|
|[Vendors](AP_30_30_00.md) \(AP303000\)|The needed vendors should be created in the system. To define which taxes are applied in the location of each vendor, the appropriate tax zone should be assigned to the vendor.|
|[Customers](AR_30_30_00.md) \(AR303000\)|The needed customers should be created in the system. To define which taxes are applied in the location of each customer, the appropriate tax zone should be assigned to the customer.|
|[Stock Items](IN_20_25_00.md) \(IN202500\), [Non-Stock Items](IN_20_20_00.md) \(IN202000\)|For the calculation of tax amounts in the documents in which you specify inventory IDs, stock items \(for goods\) and non-stock items \(for services\) should be created and the appropriate tax category should be assigned to each item.|

## Project-Specific Tax Checklist { .section}

We recommend that before you initially process project-related documents with project-specific tax zones, you make sure the needed settings have been specified, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Projects Preferences](PM_10_10_00.md) \(PM101000\)|The **Calculate Project-Specific Taxes** check box is selected on the **General** tab.|
|[Projects](PM_30_10_00.md) \(PM301000\)|In the **Tax Settings** section of the **Addresses** tab of the form, the following project-specific tax zones have been specified:-   **Cost Tax Zone**: The tax zone to be used in the cost documents \(such as bills, purchase orders, and subcontracts\) related to the project instead of the vendor tax zone
-   **Revenue Tax Zone**: The tax zone to be used in the revenue documents \(such as invoices and sales orders\) related to the project instead of the customer tax zone

|

## Sales Tax Checklist { .section}

To ensure that the system is configured properly for creating project-related documents with a sales tax applied automatically, make sure that the criteria listed in the table have been met in the system as described.

**Tip:** This table lists only project-specific part of configuring the system for application of sales taxes. For a detailed description on configuring sales taxes, see [Sales Taxes](../ImplementationGuide/Taxes_SalesTaxes_Mapref.md).

|Form|Criteria to Check|
|----|-----------------|
|[Chart of Accounts](GL_20_25_00.md) \(GL202500\)|The following GL accounts, which you will use for tax reporting purposes have been added:-   A liability account that will be used for accumulating the tax amounts to be paid to the tax agency in a tax period
-   The Tax Expense account that will be used to record the tax adjustments and expenses for the tax agency
-   The tax rounding gains and losses accounts

|
|[Account Groups](PM_20_10_00.md) \(PM201000\) form|An account group of the *Expense* type has been configured and the Tax Expense account has been mapped to this account group.

 For details, see [Account Groups: To Create an Expense Account Group](Account_Groups_Implem_Activity.md).

|
|[Taxes](TX_20_50_00.md) \(TX205000\)|The sales tax should be created. The settings for the tax include the tax rate, the tax calculation method, the tax validity period \(if any\), and other required parameters. Also, make sure on the **GL Accounts** tab, the **Use Tax Expense Account** check box is selected and the **Tax Expense Account** is specified.

For details, see [Sales Taxes: To Configure a Sales Tax for Use in AP](../ImplementationGuide/SalesTaxes_Implem_Activity_AP.md).

|

## Use Tax Checklist { .section}

To ensure that the system is configured properly for creating project-related documents with a use tax applied automatically, make sure that the criteria listed in the table have been met in the system as described.

**Tip:** This table lists only the project-specific part of configuring the system for application of use taxes. For a detailed description of the process of configuring use taxes, see [Use Tax](../ImplementationGuide/Taxes_Configuring_Use_Tax_Mapref.md).

|Form|Criteria to Check|
|----|-----------------|
|[Chart of Accounts](GL_20_25_00.md) \(GL202500\)|The following GL accounts, which you will use for tax reporting purposes, have been added:-   A liability account that will be used for accumulating the tax amounts to be paid to the tax agency in a tax period
-   The Tax Expense account that will be used to record tax adjustments and expenses for the tax agency
-   The tax rounding gains and losses accounts

|
|[Account Groups](PM_20_10_00.md) \(PM201000\) form|An account group of the *Expense* type has been configured and the Tax Expense account has been mapped to this account group. For details, see [Account Groups: To Create an Expense Account Group](Account_Groups_Implem_Activity.md).|
|[Taxes](TX_20_50_00.md) \(TX205000\)|The use tax to be applied to your documents should be created. The settings for the tax include the tax rate, the tax calculation method, the tax validity period \(if any\), and other required settings. Also, on the **GL Accounts** tab, the **Use Tax Expense Account** check box should be selected and the **Tax Expense Account** should be specified.

For details, see [Use Taxes: Implementation Activity](../ImplementationGuide/Taxes_Configuring_Use_Tax_Activity.md).

|

For a detailed description of configuring sales taxes, see [Sales Taxes](../ImplementationGuide/Taxes_SalesTaxes_Mapref.md).

**Parent topic:**[Working with Taxes in Projects](../UserGuide/Projects_Taxes_in_Projects_Mapref.md)

