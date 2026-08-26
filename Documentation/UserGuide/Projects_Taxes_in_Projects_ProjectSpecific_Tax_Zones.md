# Taxes in Projects: Project-Specific Tax Zones {#_ddaec080-8640-4762-b911-01832aafef88 .concept}

Calculating taxes based on the address of the project site is particularly useful for construction, engineering, and other project-based industries where projects may span multiple locations with varying tax rates. By using this approach, organizations can accurately account for tax liabilities, maintain transparency in financial transactions, and ensure compliance with tax laws in each project's specific jurisdiction.

This topic explains how you can calculate taxes in project-related documents based on the location of the project site where the work for the project is performed.

## Configuration of Project-Specific Taxes { .section}

The tax jurisdiction used for the calculation of sales taxes, use taxes, or value-added taxes \(VAT or GST\) may depend on the following locations:

-   The location of the vendor or customer from which a document originates
-   The location of the site where the purchased or sold products or services were delivered

For example, a purchasing manager may purchase materials or services for a project from a vendor in a tax zone that differs from the tax zone of the project. In this case, the use tax must be calculated for the purchased materials based on the tax zone of the project.

If the **Calculate Project-Specific Taxes** check box is selected on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form, in the documents related to a project, the system uses the cost tax zone, revenue tax zone, and project address settings that are specified for the project on the **Addresses** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form.

In the **Tax Settings** section of the **Addresses** tab of the [Projects](PM_30_10_00.md) form, you specify project-specific tax zones in the following boxes:

-   In the **Cost Tax Zone** box, you select the tax zone to be used in the cost documents \(such as bills, purchase orders, and subcontracts\) related to the project instead of the vendor tax zone.
-   In the **Revenue Tax Zone** box, you select the tax zone to be used in the revenue documents \(such as invoices and sales orders\) related to the project instead of the customer tax zone.

The project-specific tax zones are used in the following documents:

-   Opportunities and project quotes
-   Pro forma invoices and accounts receivable documents \(invoices, credit memos, debit memos, and cash sales\)
-   Sales orders and sales invoices
-   Purchase orders and subcontracts
-   Accounts payable bills, debit adjustments, and credit adjustments

    **Tip:** If the **Calculate Project-Specific Taxes** check box is selected on the [Projects Preferences](../Shared/../UserGuide/PM_10_10_00.md) \(PM101000\) form, the system does not automatically update the project-specific tax zone in a reclassified bill. If the tax zone and the applicable taxes of a project-related bill require adjusting, you should reverse the bill instead of reclassifying it and create a new bill for another project instead.

-   Expense receipts and expense claims if the **Allow Mixed Tax Settings in Claims** check box is selected on the [Time and Expenses Preferences](EP_10_10_00.md) \(EP101000\) form
-   Service orders and appointments

## Rules of Shipping Address Selection { .section}

If the **Calculate Project-Specific Taxes** check box is selected on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form, the system determines the address in the **Ship-To Address** section of a project-related document by using the following rules:

-   If the project-related document is generated from a parent document, the address settings in the **Ship-To Address** section are copied from the **Ship-To Address** section of the parent document.
-   If the project-related document is entered manually, the system copies the address settings \(including the empty values\) from the **Project Address** section of the [Projects](PM_30_10_00.md) \(PM301000\) form.
-   If the document that is not related to any project is entered manually, the system copies the address settings from the customer location or vendor location.

The system also updates the **Ship-To Address** section in existing documents based on the rules listed above if the location has been changed in the document.

If the **Calculate Project-Specific Taxes** check box is cleared, the system copies the address in the **Ship-To Address** section of a project-related document from the customer location or vendor location.

**Parent topic:**[Working with Taxes in Projects](../UserGuide/Projects_Taxes_in_Projects_Mapref.md)

