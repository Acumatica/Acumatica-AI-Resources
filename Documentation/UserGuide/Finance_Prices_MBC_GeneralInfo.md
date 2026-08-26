# Prices in Base Currencies: General Information {#_6a57b99c-454b-461a-a4a0-a448106058be .concept}

If multiple related companies with multiple base currencies are configured in the same tenant and the companies share the inventory item records, you can perform the following operations:

-   Upload a list of non-stock items with the default prices in a specific currency; this list will be valid for the companies with this base currency
-   Review and edit the default prices in the currency of the current branch
-   Maintain the Manufacturer's Suggested Retail Price \(MSRP\) for the products in different currencies, so that the price in each company's base currency can be used
-   Maintain the standard cost of the non-stock items that are valid for a specific base currency

If the *Multiple Base Currencies* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, item prices and costs are shown in the base currency of the branch to which a user is signed in, with the currency symbol of the base currency shown. This applies to the following settings on the **Price/Cost** tab of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) and [Stock Items](IN_20_25_00.md) \(IN202500\) forms:

-   **MSRP**
-   **Default Price**
-   **Pending Cost**
-   **Current Cost**
-   **Last Cost**

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Update the default price of a non-stock item in a base currency
-   Process an invoice with the non-stock item for which the default price has been defined

## Applicable Scenarios { .section}

You maintain default prices in multiple base currencies if your tenant includes companies that use different base currencies but share the list of non-stock items.

## Rules of Selecting the Applicable Prices { .section}

On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) and [Cash Sales](AR_30_40_00.md) \(AR304000\) forms, the system inserts the applicable price as follows:

-   If the **Always Calculate Price from Base Currency Price** check box is selected on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, the system looks for a sales price of the item in the base currency of the document's originating branch that is effective on the document date \(that is, the document currency\). The system then converts the price to the document currency.
-   If the sales price is not found, the default price in the base currency of the document's originating branch is used if this price has been specified. The system then converts the price to the document currency.

The accrued cost of non-stock items is written off if *Sales* is selected in the **Post Cost to Expenses On** box and *Standard Cost* is selected in the **Cost Based On** box on the **Price/Cost** tab of the [Non-Stock Items](IN_20_20_00.md) form. In the transactions that write off the accrued cost, the standard cost specified in the base currency of the document's originating branch will be used.

On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) and [Cash Purchases](AP_30_40_00.md) \(AP304000\) forms, when the system searches for an applicable price that is effective on the document date, the system will use the standard cost in the base currency of the document's originating branch if this cost has been specified and there is no vendor-specific price for the item.

**Parent topic:**[Maintaining Prices and Costs in Different Base Currencies](../UserGuide/Finance_Prices_MBC_Mapref.md)

