# Contract Template Creation: Contract Templates {#_84d93542-d2b5-438d-adf8-cf48a4451aaf .concept}

A contract template provides the billing, refund, and renewal settings to be copied to a contract for which this template is selected. A contract template must be specified for each contract and defines the settings for all contracts that are based on the template.

## Creation of a Contract Template {#section_nwy_kvq_g5b .section}

You define each contract template on the [Contract Templates](CT_20_20_00.md) \(CT202000\) form and specify all of the needed settings for contracts that use the template. These settings include the contract duration, the default grace period to be used for contracts, the settings related to refunded fees for unused services, and the contract type, which determines whether it can be renewed at the end of its duration, expires at that time, or is unlimited.

You can also specify billing settings, such as the billing period and the starting point of the billing schedule \(which can be contract setup or activation\). You can also specify the formulas the system uses to generate the invoice and line descriptions, as described in the *Use of Formulas to Generate Descriptions* section of this topic.

On the **Details** tab of the [Contract Templates](CT_20_20_00.md) form, the contract template may contain a list of the contract items to be included in a contract for which the template is selected. Contract items need to be created on the [Contract Items](CT_20_10_00.md) \(CT201000\) form before they are listed in the contract template. When you are creating a contract and you select the contract template it is based on, the list of contract items is copied to the contract. You can modify the list of items in the contract, change the quantity and description of any contract item, add new contract items, and remove contract items from the list if in the selected contract template, the **Enable Template Item Override** check box on the [Contract Templates](CT_20_20_00.md) form is selected.

## Use of Formulas to Generate Descriptions {#section_owy_kvq_g5b .section}

In Acumatica ERP, users can customize the descriptions of invoices and invoice lines for invoices created during contract billing by specifying the formulas that the system uses to generate these descriptions. These formulas can be defined in the **Invoice Description** box and **Line Description** box of the **Summary** tab of the [Contract Templates](CT_20_20_00.md) \(CT202000\) form.

The default formulas in a contract, which are provided by the applicable template, can be overridden on the [Customer Contracts](CT_30_10_00.md) \(CT301000\) form if the **Enable Overriding Formulas in Contracts** check box has been selected for the template on the [Contract Templates](CT_20_20_00.md) form. For more information about the entities and values available when you define the description formula, see [Contract Templates](CT_20_20_00.md).

**Parent topic:**[Creating Contract Templates](../UserGuide/Contracts_Configuring_Contract_Templates_Mapref.md)

