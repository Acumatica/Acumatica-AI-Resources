# Bills with Withholding Tax: General Information {#_0b06eeee-1686-4f9e-a8aa-fed2e8b731d4 .concept}

A withholding tax can be applied to specific vendors. The system calculates the withholding tax by extracting its amount from the document amount. It records tax amounts to the GL account specified for the particular tax on the **GL Accounts** tab of the [Taxes](TX_20_50_00.md) \(TX205000\) form as shown in the tables below.

**Attention:** The system creates the tax-related journal entries on release of a payment.

At the end of the reporting period, you must remit the tax amounts to the appropriate tax agency \(if it is required by the laws of your country\).

If you need to process a debit adjustment for a bill that is subject to withholding tax, you create and release a debit adjustment with the tax and apply it to the bill as follows:

1.  On the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form, you open the debit adjustment.
2.  On the **Documents to Apply** tab, you select the bill for application and make sure that the Withholding tax amount is $0.
3.  You release the application.

## Learning Objectives {#section_znm_fjv_vxb .section}

In this chapter, you will learn how to do the following:

-   Create an AP bill with a withholding tax applied
-   Pay the AP bill
-   Prepare a new revision of the tax report

## Applicable Scenarios {#section_b4m_fjv_vxb .section}

You process document with withholding taxes in the following cases:

-   Your company should withhold certain amounts from bills of specific vendors, report the amounts, and pay them directly to the tax agency.
-   Your company needs to report a withholding tax \(for example, on the 1099 tax form in the United States\), to the tax authorities on behalf on contractors and self-employed people. In this case, the tax is not actually withheld; it’s only reported. In other countries, such a tax is not only reported but also paid to the tax agencies.

**Parent topic:**[Processing AP Bills with Withholding Taxes](../UserGuide/Taxes_Processing_Bills_with_Withholding_Taxes_Mapref.md)

