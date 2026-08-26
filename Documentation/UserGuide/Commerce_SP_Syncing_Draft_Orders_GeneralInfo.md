# Draft Order Synchronization: General Information {#_31141ba2-dcba-abcd-be95-c98e17dc8e4e .concept}

Draft orders in Shopify let you apply custom discounts, special shipping rates, and flexible invoice options—making them perfect for custom requests or complex sales scenarios. You can sync draft orders placed in the Shopify store to Acumatica ERP for further processing.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Configure the synchronization of draft orders between Acumatica ERP and the Shopify store
-   Work with draft orders imported as sales quotes in Acumatica ERP
-   Finalize a sales quote by converting it to a sales order and completing the quote in the process

## Applicable Scenarios { .section}

You set up the synchronization of draft orders if you want to keep your quote data accurate across platforms and track draft orders within Acumatica ERP.

## Configuring the Synchronization { .section}

To set up the synchronization of Shopify draft orders as sales quotes, you update the store's settings on the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form:

1.  On the **Entities** tab, activate the *Sales Quote* entity.
2.  On the same tab, select the sync direction for the *Sales Quote* entity that fits your workflow:
    -   *Import*: Create and maintain draft orders in Shopify and import them as sales quotes to Acumatica ERP
    -   *Export*: Create and maintain sales quotes in Acumatica ERP and export them to Shopify as draft orders
    -   *Bidirectional*: Synchronize sales quotes in both directions to keep data consistent across both systems
3.  In the **Sales Quote Orders** section on the **Orders** tab, specify the following settings:
    -   **Quote Order Type for Import**: The order type to be used to create sales quotes when draft orders are imported from Shopify. You can select an order type that has the *Quote* automation behavior and the *Issue* operation specified on the **Template** tab of the [Order Types](SO_20_10_00.md) \(SO201000\) form.
    -   **Quote Order Type for Export**. The order types to be used to export sales quotes created in Acumatica ERP as draft orders to Shopify. You can select multiple order types that have the *Quote* automation behavior and the *Issue* operation specified.

        **Tip:** Even if no order type for export is specified, the system can still export sales quotes of the type defined for import.

    -   **Earliest Quote Order Date**: The earliest date for sales quotes to be synced. The system will import draft orders from Shopify or export sales quotes from Acumatica ERP that were created on or after this date.

## Importing Sales Quotes { .section}

To import draft orders from Shopify, prepare and process the data for the *Sales Quote* entity by using the [Prepare Data](BC_50_10_00.md) \(BC501000\) and [Process Data](BC_50_15_00.md) \(BC501500\) forms. The system imports draft orders that:

-   Are not yet completed
-   Were created on or after the date specified in the **Earliest Quote Order Date** box on the **Orders** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form

For each imported draft order, the system creates a sales quote on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form. It has the type specified in the **Quote Order Type for Import** box on the **Orders** tab of the [Shopify Stores](BC_20_10_10.md) form.

## Exporting Sales Quotes { .section}

To export sales quotes to Shopify, prepare and process the data for the *Sales Quote* entity by using the [Prepare Data](BC_50_10_00.md) \(BC501000\) and [Process Data](BC_50_15_00.md) \(BC501500\) forms. The system exports sales quotes that:

-   Have the order type specified for quote export \(or import\) in the store's settings.
-   Aren't completed, canceled, or on hold
-   Were created on or after the earliest quote order date specified in the store's settings.

For each exported sales quote, the system creates a draft order in the Shopify store. The connector doesn't synchronize canceled or completed sales quotes. When synchronizing a quote that was already exported and then completed or canceled, the connector assigns the *Canceled* or *Completed* tag to the corresponding draft order in Shopify.

## Working with Imported Sales Quotes { .section}

You can edit an imported sales quote on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form and continue updating the corresponding draft order in the Shopify store. Changes made in both systems can be synchronized if bidirectional synchronization is used.

**Important:** If you aren't using bidirectional synchronization, we recommend updating sales quotes only in the primary system—Shopify for import and Acumatica ERP for export.

To finalize a sales quote—that is, to convert it to a sales order and complete the quote in the process—you choose one of the following two workflows.

## Finalizing Sales Quotes in Acumatica ERP { .section}

To finalize a sales quote in Acumatica ERP, you do the following:

1.  Create a sales order by copying the sales quote on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form.

    By default, the new sales order is assigned the type specified in the **Order Types for Export** box on the **Orders** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form. When you create the sales order, the sales quote is assigned the *Completed* status in Acumatica ERP.

2.  Sync the sales quote in Acumatica ERP.

    The draft order in Shopify remains open but is marked with the *Completed* tag. You can filter these orders by tag. Also, you can manually delete the order from Shopify, if necessary. When you delete the order, the sync record in Acumatica ERP is assigned the *Deleted* status and excluded from future syncs.

3.  Export the created sales order to the Shopify store.

## Finalizing Sales Quotes in Shopify { .section}

To finalize a sales quote in Shopify, you do the following:

1.  Create an order directly from the draft order in your Shopify store, which causes the draft order to get the *Completed* status there.
2.  Sync the sales quote in Acumatica ERP.

    The sales quote remains open, but a notification appears below the title bar on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, indicating that the draft order has been completed.

    You'll no longer be able to copy this sales quote in Acumatica ERP to create a sales order.


**Parent topic:**[Synchronizing Draft Orders](../UserGuide/Commerce_SP_Syncing_Draft_Orders_Mapref.md)

