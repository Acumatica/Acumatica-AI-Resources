# Allocating the Purchase Price Variance {#_f386321e-8a5a-4901-b95a-c02f37d929ce .concept}

The purchase price variance \(PPV\) amount is the difference between an item's actual unit cost on a purchase receipt \(calculated as the item extended cost divided by its quantity\) and its actual unit cost on a bill \(calculated as the extended cost divided by the quantity on the bill\) multiplied by the quantity of the item on the bill.

**Attention:** In Acumatica ERP, on purchase orders, purchase receipts, inventory receipts, and bills, the purchase prices of items are referred to as *costs*.

The difference may occur for various reasons, such as exchange rate fluctuations or unplanned changes in the vendor price or delivery costs. Different businesses may use different approaches when accounting for the purchase price variance amounts. This topic describes the options available in Acumatica ERP for the allocation of the purchase price variance amounts for stock items.

## PPV Calculation { .section}

Generally, actual vendor prices and discounts change frequently, so when you enter a purchase receipt on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form and specify an item by its inventory ID, the exact vendor price and applicable discounts are not known. Even if the unit cost appears automatically in the **Unit Cost** column, you can manually enter only the item quantity and the extended cost \(which may include the vendor's current promotional price and discount for the specified quantity not yet configured in the system\); the extended cost will not be recalculated based on the unit cost. For the PPV calculation, the system will use the actual unit cost \(calculated as the extended amount per unit\), not the unit cost that is available in the system and was inserted automatically.

When you enter a related bill by using the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you know the prices and any additional costs, and you can reflect them on the bill. On release of a bill that is linked to the purchase receipt, the system calculates the purchase price variance amount for each line item as follows:

-   Calculates the unit's actual cost on the purchase receipt as the extended cost on the purchase receipt divided by the quantity
-   Calculates the unit's actual cost on the bill as the extended cost on the bill divided by the quantity on the bill
-   Subtracts the unit's actual cost on the bill from the unit's actual cost on the receipt
-   Multiplies the difference by the quantity on the bill

For example, suppose that the following documents \(a purchase receipt and the AP bill linked to the receipt\) were entered into the system.

|Item|Quantity|Extended Cost|
|----|--------|-------------|
|New Item 1|20|4500|
|New Item 2|30|9000|

|Item|Quantity|Extended Cost|
|----|--------|-------------|
|New Item 1|10|2000|
|New Item 2|30|9900|

The PPV amounts are calculated as follows:

|Item|Quantity|PPV|
|----|--------|---|
|New Item 1|10|250|
|New Item2|30|–900|

If the PPV appears, its amount is included in a GL transaction, which is generated on release of an AP bill. The quantity in the transaction line with the PPV is always *0*.

The ways the calculated PPV amounts can be allocated depend on the item valuation method and the selected allocation mode, as described in the following sections.

## PPV Allocation for Exchange Rate Changes { .section}

By default, in a purchase receipt, the system inserts the currency rate that is current on the purchase receipt date. If needed, you can override the default currency rate if all of the following are true:

-   The *Multicurrency Accounting* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   The **Allow Changing Currency Rate on Receipt** check box is selected on the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form.
-   The **Enable Rate Override** check box is selected on the [Vendors](AP_30_30_00.md) \(AP303000\) form for the vendor specified in the purchase receipt.

The system will use the new exchange rate for calculating the unit cost of the items in the inventory receipt that it creates on release of the current purchase receipt.

On release of an AP bill that is linked to this purchase receipt, the system calculates the purchase price variance amount for each line item as follows:

-   Calculates the unit's actual cost on the purchase receipt based on the exchange rate of the purchase receipt
-   Calculates the unit's actual cost on the bill based on the exchange rate of the bill
-   Subtracts the unit's actual cost on the bill from the unit's actual cost on the receipt
-   Multiplies the difference by the quantity on the bill

## PPV Allocation for Items with Standard Costs { .section}

For stock items with *Standard* assigned as the cost valuation method on the [Stock Items](IN_20_25_00.md) \(IN202500\) form, any PPV amounts are allocated to the Purchase Price Variance account defined by the posting class of the item. For more information, see [Item Costs and Valuation Methods: Standard Method](Item_Costs_Valuation_Methods_Standard.md).

## PPV Allocation Modes for Items with Other Valuation Methods { .section}

In Acumatica ERP, you can select how you want to process the purchase price variance amounts for stock items with the following valuation methods: *Average*, *FIFO*, or *Specific*. On the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form, you can select one of the following modes of PPV allocation:

-   *Inventory Account*: To record the variance to the inventory accounts to update the item costs. If you select this mode, you also need to select the reason code \(in the adjacent box\) that will provide the expense accounts and subaccounts used for the allocation of the PPV amounts.
-   *Purchase Price Variance Account*: To record any variance amounts to the purchase price variance accounts to be further processed as additional expenses.

The modes of PPV allocation are discussed in detail in the sections below.

## The Inventory Account Mode of PPV Allocation { .section}

If *Inventory Account* is selected as the mode of PPV allocation, on release of a bill, an inventory adjustment for the PPV amounts is generated automatically. You can view the reference number of the adjustment in the **PPV Ref. Nbr.** column on the **Document Details** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

Consider a few scenarios that may occur with a received stock item \(with no lot or serial numbers\) when the bill is released:

-   If no units of the item have been issued from a warehouse since the item was received, this adjustment debits the inventory account of the item for the positive variance amount and credits the PO Accrual account \(or credits the inventory account for the negative amount and debits the PO Accrual account for the same amount\). See [Purchase Price Variance Allocation: Example 1](PO__con_PPV_Scenario1.md).
-   If all the units of the item have been issued from a warehouse before the bill has been created and an adjustment has been generated, this adjustment debits the variance amount to the expense account associated with the reason code.
-   If some \(but not all\) of the units of the item have been issued from the warehouse, the adjustment distributes the variance amount proportionally between the quantity of units issued and the quantity of units still in the warehouse, and allocates the respective amounts to the expense account \(associated with the reason code\) and to the inventory account. For details, see [Purchase Price Variance Allocation: Example 2](PO__con_PPV_Scenario2.md).

    **Note:** If multiple bills are created for partial quantities of items from a receipt and certain quantities of the items \(from that receipt\) have been issued from the warehouse, the PPV amounts on each adjustment generated for a partial bill are allocated between the inventory accounts and the expense accounts in the same proportion in which the original quantities from the receipt are distributed between the quantities issued and the quantities still in stock.


**Note:** If a PPV adjustment would result in negative balance of the inventory account, the adjustment amount is posted to the expense account.

On reversal of a bill linked to a purchase receipt, a PPV adjustment can be created depending on the amount difference between the purchase receipt and the bill. The new adjustment does not have a link to the original adjustment. The original adjustment remains in the system. The amount of the new adjustment depends on the amount difference between the purchase receipt and the debit adjustment.

## The Purchase Price Variance Account Mode of PPV Allocation { .section}

If *Purchase Price Variance Account* is selected as the mode of PPV allocation, on release of a bill, the entire PPV amount is recorded to the Purchase Price Variance account defined by the posting class of the item.

-   **[Purchase Price Variance Allocation: Example 1](../UserGuide/PO__con_PPV_Scenario1.md)**  

-   **[Purchase Price Variance Allocation: Example 2](../UserGuide/PO__con_PPV_Scenario2.md)**  


