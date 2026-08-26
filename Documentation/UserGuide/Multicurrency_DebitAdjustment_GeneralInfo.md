# Debit Adjustments in Foreign Currencies: General Information {#_d7c141a7-5625-4528-a045-9480c22a9d05 .concept}

In Acumatica ERP, once an AP document has been released, it cannot be edited or deleted; to correct it, you can issue an adjustment. Debit adjustments decrease the accounts payable balance of a vendor.

## Learning Objectives {#section_vgy_3jv_vxb .section}

In this chapter, you will learn how to do the following:

-   Create a debit adjustment in a foreign currency
-   Apply a payment and the debit adjustment to a bill in a foreign currency

## Applicable Scenarios {#section_xgy_3jv_vxb .section}

You create a debit adjustment in a foreign currency in the following cases:

-   You need to adjust the balance of a released multicurrency bill.
-   You need to decrease the amount your company owes to a vendor.

## Processing of a Debit Adjustment {#section_zgy_3jv_vxb .section}

You can enter a debit adjustment by using the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. The summary of a debit adjustment includes information about the vendor, the vendor location, and the currency used for the transaction.

Generally, a debit adjustment is not linked to a bill or another document to which the debit adjustment is related. In the Summary area of the form, you may include the reference number of the original document \(bill or prepayment\) in the description of the adjustment and the reference number of the related vendor document in the **Vendor Reference** box.

Released debit adjustments appear on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form and can be applied against credit adjustments and bills.

## Application of RGOL Amounts to Bills {#section_dhy_3jv_vxb .section}

A realized gain or loss \(RGOL\) is calculated when a debit adjustment in a foreign currency is applied to an AP document. The system compares the exchange rate of the document to the exchange rate on the date of settlement and calculates the realized gain or loss. When a debit adjustment is applied to a document, the RGOL amount is processed by the system as follows:

-   If the calculated RGOL amount is negative, meaning that the application of the payment produces a gain, the realized gain account associated with the bill currency is credited in the amount of `(–1) * RGOL`.
-   If the calculated RGOL amount is positive, meaning that the application of the payment produces a loss, the realized loss account associated with the bill currency is debited in the amount of the calculated RGOL.

**Parent topic:**[Applying Debit Adjustments in Foreign Currencies to Bills](../UserGuide/Multicurrency_DebitAdjustment_Mapref.md)

