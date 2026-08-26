# Configuration of Scrap, Waste, and By-Products in Production: General Information {#_b29b7509-9952-4c7d-8b70-1d2d4270148d .concept}

Acumatica ERP Manufacturing Edition provides you with the ability to account for the cost of scrap, waste, or by-products in production costs. The following sections describe the configuration of item production with scrap, waste, or by-products being accounted for.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Set up the costs of material waste to be applied to production orders
-   Set up scrap to be recorded in production-related transactions
-   Set up by-products to be included in production orders
-   Create reason codes for scrap

## Applicable Scenarios { .section}

You configure the production process to track scrap, waste, or by-products in the following cases:

-   By-products are an output of some production operations in your organization, and you would like to exclude costs of by-products from production costs.
-   Scrap is an output of some production operations, and you would like shop-floor employees to enter the quantities of scrapped items when they enter the quantities of produced items.
-   Waste is significant for some production operations, and you would like to include waste costs in production costs.

## Differences Between Scrap, Waste, and By-Products { .section}

In addition to produced items, production may include such output as scrap, waste, or by-products.

A produced item is considered to be *scrap* if it does not meet the item's specifications or quality requirements. The item may be reworked to meet specifications, sold as-is at a discounted price, used as a material in producing another item, or discarded. You configure scrap processing in the system depending on the way your organization treats scrap. For more information, see the *Scrap Configuration Steps* section below.

*Waste* is a loss of materials used in the production process. You may specify the percentage of the material to be wasted and adjust the material cost included in a production order. The organization does not consider wasted material as having value, although your organization may recover some costs if it recycles waste, such as metal filings, wood chips, or plastics. For details, see the next section.

A *by-product* is a secondary product that is also a production output but is minor in quantity or value in comparison to the quantity or value of the primary product. Your organization may treat by-products as waste, use them in another production process, or sell them. For more information, see [Configuration of Scrap, Waste, and By-Products in Production: By-Products](config_MFG_Scrap_ByProducts.md).

## Material Waste Setup { .section}

If waste of particular materials is a usual output of the production of items, you may include waste costs in the costs of a production order. To do this, on the [Bill of Material](../UserGuide/AM_20_80_00.md) \(AM208000\) form for the bill of material to be used for the production order, you specify the waste percentage in the **Scrap Factor** column of the material row on the **Materials** tab for an operation that contains this material.

You can also specify or change a scrap factor for a material in a particular production order in the **Scrap Factor** column of the **Materials** tab for the appropriate material row of the operation on the [Production Order Details](../UserGuide/AM_20_90_00.md) \(AM209000\) form.

## Scrap Configuration Steps { .section}

To configure scrap in production, you do the following:

1.  You decide if you would like to apply scrap costs to production order costs, post scrap costs to a specific GL account, or store scrapped items in a warehouse. Based on this decision, you select a scrap action. For more information, see the next section.
2.  If you need to post scrap costs to a specific GL account or store scrap in a warehouse, you create at least one reason code on the [Reason Codes](../UserGuide/CS_21_10_00.md) \(CS211000\) form. Shop-floor employees will specify this reason code when entering the scrap quantity for operations of a production order. For details on the configuration of a reason code, see the *Reason Code for Scrap* section below.
3.  If scrapped items will be stored in a warehouse, you specify the warehouse and warehouse location to be used by default in all new production orders. For details, see [Configuration of Scrap, Waste, and By-Products in Production: Scrap Quarantine](config_MFG_Scrap_Storage.md).
4.  You decide whether the quantity of scrapped items must be included in the quantity of completed items. For more information, see the *Completion of Production Orders with Scrapped Items* section below.

## Scrap Actions { .section}

A scrap action determines the workflow that is used for the processing of scrapped items. When you configure tracking of scrap in the system, you specify the scrap action for each work center in the **Scrap Action Default** box of the **General** tab on the [Work Centers](../UserGuide/AM_20_70_00.md) \(AM207000\) form. Then you can change this value when you add operations to a bill of material in the **Scrap Action** column of the Operations table on the [Bill of Material](../UserGuide/AM_20_80_00.md) \(AM208000\) form.

Depending on the way the scrapped items should be tracked, you can select any of the following options as the scrap action to be used:

-   *No Action*: Scrap costs are not posted on a specific GL account; users also do not need to record the movement of scrapped items to a specific warehouse or warehouse location.
-   *Write-Off*: The system will reduce the balance of the Work in Process GL account by the scrap costs and post these costs to a separate GL account, which is specified in the reason code that a shop-floor employee selects in a row with the scrapped quantity of a labor transaction on the [Labor](../UserGuide/AM_30_10_00.md) \(AM301000\) form or a move transaction on the [Move](../UserGuide/AM_30_20_00.md) \(AM302000\) form. With this action, the system does not record the movement of the scrapped items to a specific warehouse or warehouse location.
-   *Quarantine*: The system will do the following:
    -   Reduce the balance of the Work in Process GL account by the scrap costs and post these costs to a separate GL account, which is specified in the reason code that a shop-floor employee selects in a row with the scrapped quantity of a labor transaction on the [Labor](../UserGuide/AM_30_10_00.md) form or a move transaction on the [Move](../UserGuide/AM_30_20_00.md) form.
    -   Record the movement of scrapped items to the specific warehouse or warehouse location that is specified as a scrap source. For details, see [Configuration of Scrap, Waste, and By-Products in Production: Scrap Quarantine](config_MFG_Scrap_Storage.md).

When a production manager creates a production order on the [Production Order Maintenance](../UserGuide/AM_20_15_00.md) \(AM201500\) form, the system populates scrap actions with the values specified for the bill of material this production order is based on. The manager can then change the scrap action for the needed operations of the production order in the **Scrap Action** column of the Operations table on the [Production Order Details](../UserGuide/AM_20_90_00.md) \(AM209000\) form.

## Reason Code for Scrap { .section}

You need to create a reason code if you would like the system to post scrap costs to a specific GL account—that is, when scrap is recorded for operations with a scrap action of *Write-Off* or *Quarantine*. To configure a reason code for scrap, you do the following:

1.  On the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, you create a GL account of the *Expense* type to which the system will post scrap costs.
2.  On the [Reason Codes](../UserGuide/CS_21_10_00.md) \(CS211000\) form, you create at least one reason code with the usage of *Production* and specify the GL account in its settings.

With the reason code set up in the system, when a user records scrap for an operation in a labor transaction on the [Labor](../UserGuide/AM_30_10_00.md) \(AM301000\) form or a move transaction on the [Move](../UserGuide/AM_30_20_00.md) \(AM302000\) form, the user will be prompted to specify the appropriate reason code along with the quantity of scrapped items if an operation has a scrap action of *Write-Off* or *Quarantine*.

## Completion of Production Orders with Scrapped Items { .section}

If your organization does not consider a production order to be completed until the full quantity of items to be produced is recorded for the operation, you clear the **Include Scrap in Completions** check box on the [Production Preferences](../UserGuide/AM_10_20_00.md) \(AM102000\) form. This may be needed in a make-to-order production environment where items are produced by customers' requests and where the production department must produce the requested quantity of items with a single production order linked to a sales order.

If a production process in your organization permits scrapped items to be included in the quantity of completed items, you select the **Include Scrap in Completions** check box. With this check box selected, the system calculates the sum of the completed quantity and the scrapped quantity for each operation of a production order and changes the operation status to *Completed* on the [Production Order Details](../UserGuide/AM_20_90_00.md) \(AM209000\) form if this sum is equal to the item quantity to be produced. The status of the entire production order is changed to *Completed* when all operations of the order are completed.

For example, suppose that in your organization make-to-stock production is established, where items are produced and sold later. In this case, a production order can be completed even if not all items have the required quality. The rest of the items can be included in the next production order.

**Parent topic:**[Implementing Production with Scrap, Waste, and By-Products](../ImplementationGuide/config_MFG_Scrap_Mapref.md)

