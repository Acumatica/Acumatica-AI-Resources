# Selling Matrix Items: Import of Orders with Matrix Items {#_e2402fa1-d76a-4a54-8818-cc7d7ef8737e .concept}

Acumatica ERP Retail Edition provides you with the ability to sell matrix items created in Acumatica ERP in a BigCommerce store.

## Learning Objectives { .section}

In this chapter, you will learn how sales orders containing matrix items \(also referred to as product variants in BigCommerce\) are imported to Acumatica ERP from a BigCommerce store and how these items appear in imported sales orders.

## Applicable Scenarios { .section}

You import a sales order with matrix items if you offer products with variants in your BigCommerce store and a customer places an order that contains at least one variant.

Sales orders containing matrix items are imported from a BigCommerce store to Acumatica ERP the same way as any other sales orders placed in the BigCommerce store are. In imported sales orders, on the **Details** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, a line is created for each product variant added to the sales order in the BigCommerce store. The **Inventory ID** column shows the identifier of a particular matrix item \(that is, the identifier of the stock or non-stock item\) and not the identifier of the template item that was used to generate the matrix item and that was synchronized with the BigCommerce store.

**Parent topic:**[Selling Matrix Items in a BigCommerce Store](../UserGuide/Commerce_BC_Selling_Matrix_Items_Mapref.md)

