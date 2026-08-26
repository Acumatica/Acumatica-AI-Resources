# General Recommendations and Limitations of Data Import {#_f177d5e4-e915-42f2-b01b-f2c4ab05f831 .concept}

In this topic, you will find general recommendations for data import, including its limitations.

## General Recommendations for Importing Accounts and Subaccounts { .section}

When you import accounts and subaccounts to Acumatica ERP, consider the following general recommendations:

-   In your new Acumatica ERP implementation, the chart of accounts may differ from the chart of accounts in the legacy application from which you are going to import the data. When the company switches to newer software, the length of the account identifier is usually extended to include more characters; in many cases, several zeros are added in the middle of or at the end of the account identifier. In such a simple case, consider inserting these additional characters during the import process by using a formula.
-   In Acumatica ERP, subaccount identifiers are segmented, but the separator characters are not part of the subaccount identifier as it is saved in the database. If subaccount identifiers in the external file have segments separated by a character, use a formula such as the following to remove this character from the external data during import.

    ```
    replace([Sales Subaccount],'-','')
    ```

-   If you import subaccounts from your subsidiary or parent company, consider the differences in their segment structures. You may need to add a segment when you're importing from a subsidiary or remove a segment when you're importing from a parent company.

## General Recommendations for Importing Vendor and Customer Data { .section}

Here are some general recommendations for importing vendor and customer data to Acumatica ERP:

-   In Acumatica ERP, vendor and customer IDs may be segmented. You can create a formula to insert any missing segments into the imported IDs.
-   If the external file contains fields with vendor or customer data that is not tracked in Acumatica ERP in built-in fields, you can create and use attributes to store this vendor or customer data in Acumatica ERP. Attributes are created for vendor or customer classes, and then can be entered and tracked for individual vendors and customers. For details, see [Managing Attributes and User-Defined Fields](CS__con_Attributes_and_User_Defined_Fields.md#).
-   If customer and vendor records have numerical IDs in the source and you want to retain these IDs in the new implementation, perform the following steps:
    -   On the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form, configure the *VENDOR* and *CUSTOMER* segmented keys as alphanumeric one-segment keys.
    -   Import the records with their IDs unchanged.
    -   On the [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form, assign appropriate numbering sequences to the *VENDOR* and *CUSTOMER* segmented keys with the appropriately adjusted last-used numbers \(equal to the largest number used in the imported data for vendors and customers, respectively\) to assign numeric IDs to new customers and vendors.

When an Acumatica ERP user creates a new vendor or customer account in the standard way, by filling out the [Vendors](AP_30_30_00.md) \(AP303000\) or [Customers](AR_30_30_00.md) \(AR303000\) form, some fields are populated automatically with values provided by the default vendor or customer class or the vendor or customer class the user has selected instead.

To use the functionality of classes while you are importing vendor or customer data, before import, analyze the source data and create as many classes as there are groups of customers or vendors in the source \(or source file\) that would need accounts, subaccounts, and other common information you can specify among the class settings. When you create classes, take one of the following approaches:

-   If one group of settings can fit all customers or vendors, use just one default class. To use default values from the default vendor or customer class, you don't even need to do anything specific, such as mapping the **Vendor Class** field or **Customer Class** field to any data.
-   To use default values from a particular class, in the **Field or Action** box of the [Import Scenarios](SM_20_60_25.md) \(SM206025\) form, you can assign the class to the **Vendor Class** field \(when you are importing vendor records\) or to the **Customer Class** field \(when you are importing customer records\) directly as a literal or assign a class conditionally, by using appropriate formulas that are based on customer or vendor properties. Filling in the class ID field requires a commit to the database and a form refresh.

## General Recommendations for Importing Documents and Batches { .section}

When you're importing batches, Accounts Payable documents, or Accounts Receivable documents, consider the following recommendations regarding the mapping:

-   **Batch or Document IDs**: By default, Acumatica ERP automatically generates identifiers for General Ledger batches and Accounts Payable and Accounts Receivable documents. For example, when importing batches to the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, even if you map the **Batch Number** field to an external field holding batch IDs, when the record is saved, the original batch ID will be overwritten by an automatically generated ID. If you plan to update the imported batches later, you will not be able to recognize the imported records by their new IDs. To make updating of the imported records possible, you need to save the original ID to another field to be able to recognize the previously imported records. You can use the **Description** field for this purpose. As an alternative to this approach, you can configure manual numbering of batches or documents on the [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form, import them with their IDs defined in the source, and then configure the system to use auto-numbering again.
-   **Batch Control Totals**: When importing batches to the [Journal Transactions](GL_30_10_00.md) form, if you are mapping the **Control Total** field, take into account whether the **Validate Batch Control Totals on Entry** check box is selected on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form. If it is selected and you map the **Control Total** field to the source field, during data import until all batch entries are imported, the system will display the error, indicating that the control total does not match the credit total or debit total. In this case, on the [Import Scenarios](SM_20_60_25.md) form, select the **Ignore Error** check box for the row that maps the **Control Total** field to force the system to ignore such errors during the import process.
-   **Document Amounts**: When importing documents to the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) or the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, if you are mapping the **Amount** field, take into account whether the **Validate Document Totals on Entry** check box is selected on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) or [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form. If it is selected and you map the **Amount** field to the source field, during data import until all document details are imported, the system will display the error, indicating that the document is out of balance. In this case, on the [Import Scenarios](SM_20_60_25.md) form, select the **Ignore Error** check box for the row that maps the **Amount** field to force the system to ignore such errors during the import process.

-   **Mapping Statuses**: The possible batch and document statuses in the source may be different from those in Acumatica ERP. To manage this discrepancy, you might want to exclude the **Status** field of the applicable form from mapping. In this case, the imported batch or document will get one of the following statuses:
    -   *On Hold*, if the **Hold Batches on Entry** check box is selected on the [General Ledger Preferences](GL_10_20_00.md) form or the **Hold Documents on Entry** selected is selected on the [Accounts Receivable Preferences](AR_10_10_00.md) or [Accounts Payable Preferences](AP_10_10_00.md) form
    -   *Open*, if the **Hold Batches on Entry** or **Hold Documents on Entry** check box is not selected on the appropriate form

## General Recommendations for Importing Attributes { .section}

Attributes in Acumatica ERP make it possible for users to specify additional properties \(those not already defined on the applicable Acumatica ERP form\) of entities, such as stock items, leads, opportunities, customers. The list of attributes is specified for an entity class, so that entities assigned to different classes may have different sets of attributes. To import data with attributes, you have to create a scenario for each class if the applicable classes have different sets of attributes. In the mapping of the scenario created to import entities of a particular class on the [Import Scenarios](SM_20_60_25.md) \(SM206025\) form, you should specify the name of the attribute as the source field for the **Attribute** target field and the value of this attribute as the source field for the **Value** target field.

## General Recommendations for Importing Project Budgets { .section}

For the [Project Budget](PM_30_90_00.md) \(PM309000\) form, the system allows to import records by the project budget compound key, which is the project identifier, project task identifier, inventory identifier, and account group identifier. After records are imported to the [Project Budget](PM_30_90_00.md) form, to restructure budget records according to the revenue budget level of projects, you should run the validation process on the [Recalculate Project Balances](PM_50_40_00.md) \(PM504000\) form.

## Limitations of Data Import { .section}

By using import scenarios, you can perform the same commands on the form as you do during manual input, with the following exceptions:

-   For the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, `<Action: Auto Apply>` \(which corresponds to the **Auto-Apply** button on the **Applications** tab\) does not work because Acumatica ERP does not load applications during data import.
-   The system does not validate the values specified for the attributes, such as the values of attributes with *Combo* control type. To verify a value of an attribute, you can define a validation formula in the scenario mapping. For details on formulas, see [The Use of Formulas](IS__con_Formulas_in_Mapping.md).

**Parent topic:**[Configuring Scenario Mapping](../UserGuide/IS__mng_Scenario_Mapping.md)

