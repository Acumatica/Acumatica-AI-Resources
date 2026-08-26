# Printing Sales Documents {#_d120e8df-8292-49b7-b85a-4c7bfe4858e8 .concept}

During the processing of orders, you may need to print copies of the processed documents. The printer the system uses for printing documents, must be configured, as described in [Configuring Printers](../ImplementationGuide/Config_Printers_DeviceHub_Mapref.md). The following sections describe which printable sales orders you can prepare in Acumatica ERP.

## Printing Sales Orders { .section}

You can print a sales order by clicking the **Print Sales Order** command on the More menu of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form. This action opens the [Sales Order](SO_64_10_10.md) \(SO641010\) report form with a printable version of the order.

## Printing Blanket Sales Orders { .section}

You can print a blanket sales order by clicking the **Print Blanket Sales Order** command on the More menu of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form. This command opens the [Blanket Sales Order](SO_64_10_40.md) \(SO641040\) report with a printable version of the order.

## Printing Quotes { .section}

You can print a quote by clicking the **Print Quote** command on the More menu of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form. This action opens the [Quote](SO_64_10_00.md) \(SO641000\) report form with a printable version of the quote.

## Printing Pick Lists { .section}

A pick list is a document that is printed for a warehouse worker. It contains the lines from the shipment with quantities, lot or serial numbers of items, and warehouse locations from which the items have to be collected; a pick list does not contain information about prices. The pick list is prepared based on item availability information and the pick priorities of warehouse locations. If the highest priority location has insufficient stock of any of the requested items, the system will search for another location with some quantity available for shipping to fill the remainder. On a pick list, items are ordered based on location, pick priority, and expiration dates of items.

With Acumatica ERP, you can print a pick list for a particular shipment with the *On Hold* or *Open* status by clicking **Print Pick List** on the form toolbar of the [Shipments](SO_30_20_00.md) \(SO302000\) form. For a step-by-step procedure on how to print a pick list for a particular shipment, see [To Print a Pick List for a Shipment](SO__How_Print_Pick_List.md).

If you need to print pick lists for multiple shipments, you can select the *Print Pick List* action on the [Process Shipments](SO_50_30_00.md) \(SO503000\) form and process all the shipments on the list or only the selected shipments. For a step-by-step procedure on how to mass-print pick lists for multiple shipments, see [To Print Pick Lists for Multiple Shipments](SO__How_Print_PickLists.md).

**Note:** If a pick list was once printed for a shipment, the shipment will be listed on the [Process Shipments](SO_50_30_00.md) form for this processing only if the **Show Printed** check box is selected—this helps avoid double packing for the same shipment.

## Printing Shipment Confirmations { .section}

You can print a shipment confirmation for a particular shipment by clicking **Print Shipment Confirmation** on the More menu of the [Shipments](SO_30_20_00.md) \(SO302000\) form. This action opens the [Shipment Confirmation](SO_64_20_00.md) \(SO642000\) report form with a printable version of the shipment confirmation. For a step-by-step procedure on how to print a shipment confirmation, see [To Print a Shipment Confirmation](SO__How_PrintShConfirm.md).

For multiple shipments, you can print shipment confirmations by using the *Print Shipment Confirmation* action on the [Process Shipments](SO_50_30_00.md) \(SO503000\) form. For a step-by-step procedure on how to mass-print shipment confirmations, see [To Print Shipment Confirmations for Multiple Shipments](SO__How_Print_Confirmations.md).

## Printing Sales Orders Invoices { .section}

You can print a Sales Orders invoice by clicking **Print Invoice** on the More menu of the [Invoices](SO_30_30_00.md) \(SO303000\) form. This action opens the [Invoice &amp; Memo](SO_64_30_00.md) \(SO643000\) report form with a printable version of the sales invoice.

You can mass-print multiple invoices by using the *Print Invoices* action on the [Process Invoices and Memos](SO_50_50_00.md) \(SO505000\) form.

-   **[To Print an Order or Quote](../UserGuide/SO__How_Print_Order.md)**  

-   **[To Print a Pick List for a Shipment](../UserGuide/SO__How_Print_Pick_List.md)**  

-   **[To Print Pick Lists for Multiple Shipments](../UserGuide/SO__How_Print_PickLists.md)**  

-   **[To Print a Shipment Confirmation](../UserGuide/SO__How_PrintShConfirm.md)**  

-   **[To Print Shipment Confirmations for Multiple Shipments](../UserGuide/SO__How_Print_Confirmations.md)**  

-   **[To Print a Sales Orders Invoice or Memo](../UserGuide/SO__How_Print_Invoice.md)**  


**Parent topic:**[Managing Sales Documents](../UserGuide/SO__MNG_Managing_Documents.md)

