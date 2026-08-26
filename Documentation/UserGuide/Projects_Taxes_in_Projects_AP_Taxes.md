# Taxes in Projects: Project Expenses with Taxes {#_c62f1e90-2bb0-4986-b3a1-8f917fd2e369 .concept}

In accounts payable bills that are related to a particular project, you need to accurately record project expenses associated with taxes in the project budget. The purchases that your company makes for a project may be subject to the following taxes:

-   Sales taxes
-   Use taxes \(when the vendor did not charge a sales tax on the purchase of taxable items\)

The following sections describe which documents are subject to taxes and how the system tracks tax expenses in projects if automatic tax calculation is configured in the system.

## Purchase Documents with Taxes { .section}

Depending on your company's workflow and business needs, you can record purchases of stock items and services for a project by entering and processing the following types of documents:

-   Purchase orders on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form if the *Inventory and Order Management* is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form
-   Subcontracts if the *Construction* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form
-   Accounts payable bills on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form

When you create a project-related document, the system calculates taxes based on the following settings in the document:

-   The document date
-   The vendor tax zone
-   The tax category in the document lines

The system calculates the tax and taxable amounts for each line of the document or for the total document amount, depending on the settings of the applied tax on the [Taxes](TX_20_50_00.md) \(TX205000\) form.

Tax amounts in purchase orders and subcontracts are provided for informational purposes and are not recorded to the general ledger and the project budget. If you create an accounts payable document from a purchase order or subcontract, the system recalculates the applicable taxes in the created accounts payable document based on the vendor's tax zone, tax category, and tax ID that were copied to from the source document.

For more information about processing taxable purchases, see [Purchases with Sales Taxes: General Information](Taxes_Processing_Purchase_withSalesTax_GeneralInfo.md) and [Purchases with Use Taxes: General Information](Taxes_Processing_Purchase_with_Use_Tax_GeneralInfo.md).

## Taxes in Accounts Payable Documents { .section}

On release of an accounts payable document, the system posts transactions to the general ledger. In the lines of these general ledger transactions, it inserts the project and the tax amount of each line posted to the **Tax Expense** account specified for the tax on the **GL Accounts** tab of the [Taxes](TX_20_50_00.md) \(TX205000\) form.

If multiple lines of the bill have the same project budget key—that is, the same combination of project, project task, inventory item, cost code, and account group—the system will create an aggregated general ledger transaction with this project and the total tax expense amount.

Based on the GL transactions that are generated for the bill, the system creates project transactions to reflect the tax expense amounts in the project balance.

**Note:** Use tax and sales tax amounts are posted under the project of the corresponding AP document line if the tax expense account is included in an account group. Otherwise, tax expenses are posted with the non-project code \(which by default is *X*\) and do not appear in the project budget.

**Parent topic:**[Working with Taxes in Projects](../UserGuide/Projects_Taxes_in_Projects_Mapref.md)

