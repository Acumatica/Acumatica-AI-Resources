# Project Quotes: Related Items in Project Quotes

You can use related items in project quotes to improve customer satisfaction while increasing project revenue. *Related items* are additional items connected to a stock or non-stock item in a way that supports, complements, replaces, or enhances the originally selected item. They help you ensure that all required project components are included or provide alternatives if the selected item is unavailable.

## How Related Items Are Set Up

The related items functionality is available if the following setup steps have been performed in your system:

-   The *Related Items* and *Project Quotes* features are enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   Related items are defined on the **Related Items** tab of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) or [Stock Items](IN_20_25_00.md) \(IN202500\) form. For the related item to be suggested, the relation must be active \(the **Active** check box is selected\) and effective \(the effective date range includes the current date\).
-   Cross-sell suggestions have been turned on for the applicable business accounts and customers, as described in the next section.

## Turning On Related Item Suggestions

To turn on related item suggestions for any business account and display these suggestions in its project quotes, select the **Suggest Related Items** check box on the **Shipping** tab of the [Business Accounts](CR_30_30_00.md) \(CR303000\) form.

For business accounts that have been extended to be customers, you can also manage this setting on the [Customers](AR_30_30_00.md) \(AR303000\) form. The state of the **Suggest Related Items** check box is synchronized on these forms for a business account and the associated customer.

## Types of Related Items You Can Add

With related item suggestions configured, when you select an inventory item on the **Estimation** tab of the [Project Quotes](PM_30_45_00.md) \(CR304500\) form, you’ll see related item suggestions. An originally selected item may have related items of the following types:

-   *Cross-Sell*: This item can be added along with the original item to support project requirements or improve the project outcome. For example, you can specify installation services as a cross-sell item for industrial equipment.
-   *Up-Sell*: This item can be used instead of the original item to provide enhanced functionality or higher performance for the project. For example, you can specify a higher-capacity backup power unit as an up-sell item for a standard model.
-   *Substitute*: This item can be used instead of the original item if the original item is unavailable or should be replaced in the project estimate. For example, you can specify an equivalent cable from another manufacturer as a substitute item for the original cable.
-   *Other*: This item is related to the original item in another way. For example, you can specify a maintenance agreement as an other related item for industrial equipment.

## Interpreting the Related Item Button

You add inventory items to a project quote on the **Estimation** tab of the [Project Quotes](PM_30_45_00.md) \(CR304500\) form. For each added item, a button appears in the **Related Items** column if at least one active and effective related item has been defined for the original item.

The button has one of the following icons, depending on the types of related items defined for the original item and whether they’re required:

**Tip:** A related item is required if the **Required** check box is selected for it on the **Related Items** tab of the [Non-Stock Items](IN_20_20_00.md) or [Stock Items](IN_20_25_00.md) form.


If the **Show Only Available Items** check box is selected on the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form, only related items available in warehouses are suggested. However, this restriction doesn't apply if the item has at least one required substitute item. In that case, substitution is required regardless of item availability.

## Reviewing and Adding Related Items

When you click a button in the **Related Items** column on the [Project Quotes](PM_30_45_00.md) \(CR304500\) form, the **Add Related Items** dialog box opens. In this dialog box, you can:

-   Review related items’ settings
-   Specify the quantity for each related item that you select
-   Add the selected related item or items to the project quote

**Important:**

Each time you use this dialog box to select related items, you can:

-   Select **only one item** of the *Substitute* or *Up-Sell* type
-   Select **multiple items** of the *Cross-Sell* or *Other* type
-   Select an item or multiple items of **only one type**

To add selected items to the record, click **Add and Close**. The system does the following, depending on the related item type:

-   For a *Substitute* or *Up-Sell* item:
    -   Replaces the original item with the selected related item if the quantity you specify for the related item is the same as or greater than the quantity of the original item. If you’ve selected the **Keep Original Price** check box for a *Substitute* item, the system applies the original price to the selected item.
    -   Adds the related item after the original item if the quantity you specify for the related item is less than the quantity of the original item.
-   For *Cross-Sell* or *Other* items: Adds one or more related items after the original item.

## Related Information

For more details about related items, see [Related Items in Sales Orders: General Information](OrderMgmt_Sales_of_Related_Items_GeneralInfo.md) and [Opportunity Management: Related Items in Opportunities and Sales Quotes](CRM_Sales_Managing_Opportunities_Related_Items.md).

**Parent topic:**[Processing Project Quotes](../UserGuide/Projects_Project_Quotes_Mapref.md)

