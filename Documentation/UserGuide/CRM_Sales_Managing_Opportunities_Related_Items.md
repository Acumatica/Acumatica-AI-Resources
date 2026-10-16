# Opportunity Management: Related Items in Opportunities and Sales Quotes

You can increase sales and better meet customer needs by offering related items in opportunities or sales quotes. *Related items* are additional items connected to a stock or non-stock item in a way that supports, complements, replaces, or enhances the originally selected item in scenarios such as the following:

-   An additional item would improve the customer experience while increasing the amount of the order.
-   The customer may benefit from a higher-quality item.
-   The original item is sold out and should be replaced.

## How Related Items Are Set Up

The related items functionality is available if the following setup steps have been performed in your system:

-   The *Related Items* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   Related items have been defined on the **Related Items** tab of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) or [Stock Items](IN_20_25_00.md) \(IN202500\) form. For the related item to be suggested, the relation must be active \(the **Active** check box is selected\) and effective \(the effective date range includes the current date\).
-   Cross-sell suggestions have been turned on for the applicable business accounts and customers, as described in the next section.

## Turning On Related Item Suggestions

To turn on related item suggestions for any business account and display these suggestions in its opportunities and sales quotes, select the **Suggest Related Items** check box on the **Shipping** tab of the [Business Accounts](CR_30_30_00.md) \(CR303000\) form.

For business accounts that have been extended to be customers, you can also manage this setting on the [Customers](AR_30_30_00.md) \(AR303000\) form. The state of the **Suggest Related Items** check box is synchronized on these forms for a business account and the associated customer.

## Types of Related Items You Can Add

With related item suggestions configured, when you select an item on the **Details** tab of the [Opportunities](CR_30_40_00.md) \(CR304000\) or [Sales Quotes](CR_30_45_00.md) \(CR304500\) form, you’ll see related items that you can suggest to the customer. An originally selected item may have related items of the following types:

-   *Cross-Sell*: This item can be sold along with the original item to increase the value of a sale and better meet customer needs. For example, you can specify apple jam as a cross-sell item for apples.
-   *Up-Sell*: This item can be sold instead of the original item to increase the value of a sale while improving customer satisfaction. For example, you can specify a larger jar of jam as an up-sell item for a smaller jar of jam.
-   *Substitute*: If the original item is out of stock, this item can be sold instead of the original item so that the sale can still occur. For example, you can specify three 32-ounce jars of jam as a substitute item for one 96-ounce jar of jam if the larger jars are out of stock.
-   *Other*: This item is related to the original item in another way.

## Interpreting the Related Item Button

You add inventory items to an opportunity or a sales quote on the **Details** tab of the [Opportunities](CR_30_40_00.md) \(CR304000\) or [Sales Quotes](CR_30_45_00.md) \(CR304500\) form. For each added item, a button appears in the **Related Items** column if at least one active and effective related item has been defined for the original item.

The button has one of the following icons, depending on the types of related items defined for the original item and whether they’re required:

**Tip:** A related item is required if the **Required** check box is selected for it on the **Related Items** tab of the [Non-Stock Items](IN_20_20_00.md) or [Stock Items](IN_20_25_00.md) form.


If the **Show Only Available Items** check box is selected on the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form, only related items available in warehouses are suggested. However, this restriction doesn't apply when the item has a required substitute item. In that case, substitution is required regardless of item availability.

## Reviewing and Adding Related Items

When you click a button in the **Related Items** column of the [Opportunities](CR_30_40_00.md) \(CR304000\) or [Sales Quotes](CR_30_45_00.md) \(CR304500\) form, the **Add Related Items** dialog box opens. In this dialog box, you can:

-   Review related items’ settings
-   Specify the quantity of each related item that you select
-   Add the selected related item or items to the opportunity or sales quote

**Important:**

Each time you use this dialog box to select related items, you can:

-   Select **only one item** of the *Substitute* or *Up-Sell* type
-   Select **multiple items** of the *Cross-Sell* or *Other* type
-   Select an item or multiple items of **only one type**

To add selected related items to the record, click **Add and Close**. The system does the following:

-   For a *Substitute* or *Up-Sell* item:
    -   Replaces the original item with the selected related item if the quantity you specify for the related item is the same as or greater than the quantity of the original item. If you’ve selected the **Keep Original Price** check box for a *Substitute* item, the system applies the original price to the selected item.
    -   Adds the related item after the original item if the quantity you specify for the related item is less than the quantity of the original item.
-   For a *Cross-Sell* or *Other* item: Adds one or more related items after the original item.

## Reviewing the Related Item History

On the [Related Item History](IN_40_16_00.md) \(IN401600\) inquiry form, you can view the following for each listed original item:

-   The final related item that was ultimately sold—that is, it resulted in a released invoice
-   The document in which the final related item addition or substitution occurred

The link to the document is shown in one of the following columns:

-   **Opportunity Nbr.**
-   **Quote Nbr.**
-   **Order Nbr.**
-   **Invoice Nbr.**

To open the document, select the row and then click the corresponding icon in the side panel.

## Related Information

For more details about related items, see [Related Items in Sales Orders: General Information](OrderMgmt_Sales_of_Related_Items_GeneralInfo.md) and [Project Quotes: Related Items in Project Quotes](Projects_Project_Quotes_Related_Items.md).

**Parent topic:**[Managing Opportunities](../UserGuide/CRM_Sales_Managing_Opportunities_Mapref.md)

