# AP Documents with VAT: General Information {#_11b47dc4-aed3-4925-8002-72aafe3410c7 .concept}

If a value-added tax with the *Input* group type has been configured on the [Taxes](TX_20_50_00.md) \(TX205000\) form, the system automatically calculates VATs, if they apply to the vendor's tax zone and an item's tax category, for the following documents and document types on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\):

-   *Bill*
-   *Credit Adj.*
-   *Debit Adj.*
-   *Prepayment*

## Learning Objectives {#section_r4l_fjv_vxb .section}

In this chapter, you will learn how to do the following:

-   Create and release an AP bill with a VAT applied
-   Create and process a debit adjustment with a VAT applied

## Applicable Scenarios {#section_t4l_fjv_vxb .section}

You create an AP bill with at least one VAT applied to record a purchase subject to VAT. You create a debit adjustment with a VAT applied if you received a taxable credit memo from your vendor and you need to decrease the vendor's balance and the amount of taxes claimable from the tax agency.

## Calculation of Taxes on Purchases {#section_exq_qkb_3rb .section}

The system calculates taxes based on the following details specified in the document:

-   The vendor
-   The inventory IDs
-   The total price of the inventory items
-   The document date

The system calculates the tax and taxable amounts by using the settings of each tax that corresponds to both the tax category of the specified inventory ID and the tax zone of the selected vendor. The system calculates the tax and taxable amounts for each line of the document or for the total document amount, depending on the settings of the applied tax \(for details, see [Value-Added Taxes: To Create a General VAT and Exempt VAT](../ImplementationGuide/Taxes_Configuring_VAT_Impem_Activity_General_VAT.md)\). The system inserts the VAT amount in the **Tax Total** box in the Summary area of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

After you release the document, the system creates the corresponding GL transaction and records these amounts to the appropriate GL accounts.

**Parent topic:**[Processing AP Documents with Value-Added Taxes](../UserGuide/Taxes_Processing_APDocs_with_VAT_Mapref.md)

