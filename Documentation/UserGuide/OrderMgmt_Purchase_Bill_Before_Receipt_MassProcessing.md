# Purchases with Billing Before Receipt: Mass Processing of Documents {#_e55d1223-520f-443e-a7c5-44f1e89c3f75 .concept}

The following sections explain how to mass-process purchase orders and related documents, and how the system generates, changes, or works with documents as a result of the mass processing.

## Mass-Releasing Purchase Receipts { .section}

You can release multiple purchase receipts at the same time by using the [Release Purchase Receipts](../Shared/../UserGuide/PO_50_10_00.md) \(PO501000\) form. On this form, you select the unlabeled check boxes in the rows to be processed, and click **Process** on the form toolbar to release the selected documents.

## Printing and Emailing Multiple Purchase Orders { .section}

If needed, you can print or email multiple purchase orders at the same time by using the [Print/Email Purchase Orders](../Shared/../UserGuide/PO_50_30_00.md) \(PO503000\) form. To do this for multiple purchase orders simultaneously, you select the *Print Purchase Order* or *Email Purchase Order* action, select the unlabeled check boxes for the rows to be processed, and click **Process** on the form toolbar to process the selected documents.

## Consolidating Purchase Orders or Lines into a Single Purchase Receipt { .section}

Instead of preparing an individual purchase receipt for each purchase order, you can add multiple purchase orders of one vendor to a single purchase receipt; you can also add individual lines of one purchase order or multiple purchase orders. To do this, you create a new purchase receipt of the *Receipt* type manually on the [Purchase Receipts](../Shared/../UserGuide/PO_30_20_00.md) \(PO302000\) form; you then click **Add PO** on the table toolbar of the **Details** tab and add the lines of multiple purchase orders with the same vendor to the purchase receipt. If you click **Add PO Line** on the table toolbar, you can add purchase receipt lines.

## Consolidating Purchase Receipts or Lines into a Single Bill { .section}

Instead of preparing an individual accounts payable bill for each purchase receipt, you can add multiple purchase receipts of one vendor to a single bill; you can also add individual lines of one purchase receipt or multiple purchase receipts. To do this, you create a new accounts payable bill manually on the [Bills and Adjustments](../Shared/../UserGuide/AP_30_10_00.md) \(AP301000\) form and make sure that the *Tax Settings* option is selected in the **Tax Calculation Mode** box on the **Taxes** tab. The **Tax Calculation Mode** box is only available if the *Net/Gross Entry Mode* feature is enabled on the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\) form. You then click **Add PO Receipt** on the table toolbar of the **Details** tab and add the lines of multiple purchase receipts with the same vendor to the bill. If you click **Add PO Receipt Line** on the table toolbar, you can add purchase receipt lines.

**Parent topic:**[Processing Purchases with Billing Before Receipt](../UserGuide/OrderMgmt_Purchase_Bill_Before_Receipt_Mapref.md)

