# Sale of Matrix Items: Import of Orders with Matrix Items {#_c931ebdb-be12-432e-9d37-825427d24668 .concept}

Acumatica ERP Retail Edition provides you with the ability to sell matrix items created in Acumatica ERP in a Shopify store.

## Learning Objectives { .section}

In this chapter, you will learn how sales orders containing matrix items \(also referred to as product variants in Shopify\) are imported to Acumatica ERP from a Shopify store and how these items appear in imported sales orders.

## Applicable Scenarios { .section}

You import a sales order with matrix items if you offer products with variants in your Shopify store and a customer places an order that contains at least one variant.

## Import of Orders with Matrix Items { .section}

Sales orders containing matrix items are imported from a Shopify store to Acumatica ERP the same way as any other sales orders placed in the Shopify store are. In imported sales orders, on the **Details** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, a line is created for each product variant added to the sales order in the Shopify store. The **Inventory ID** column shows the identifier of a particular matrix item \(that is, the identifier of the stock or non-stock item\) and not the identifier of the template item that was used to generate the matrix item and that was synchronized with the Shopify store.

**Parent topic:**[Selling Matrix Items in a Shopify Store](../UserGuide/Commerce_SP_Selling_Matrix_Items_Mapref.md)

