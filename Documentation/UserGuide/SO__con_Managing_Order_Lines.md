# Managing Lines in Sales Documents {#_0a1fe1bc-11c2-4290-9563-0e9e3450a345 .concept}

You may need to reorder document lines in sales orders and invoices—for example, if you need the lines of the printed document to be in a specific order, or if the customer wants you to sort the document lines in some custom order \(for example, by the shipment number and order number to make it easier to review a printable invoice\). Also, you may need to reorder a line or multiple lines in an existing sales order, or add a new line at the beginning of a list or in the middle of it. The following sections describe how you can reorder lines in various sales documents.

## Reordering Lines in Sales Orders and Invoices { .section}

The order number of each document line is shown in the **Line Order** column on the **Details** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form for sales orders, and of the [Invoices](SO_30_30_00.md) \(SO303000\) form for invoices. \(On both forms, these columns are hidden by default, so you should use the **Column Configuration** dialog box to make the columns available before you reorder lines.\) Once you reorder the lines, the system automatically regenerates the order numbers for each document line.

You can select the lines to be reordered in any combinations, such as the following:

-   A single document line \(for example, line 3 or 8\). To select a single line, click it.
-   Multiple non-contiguous lines \(for example, lines 1, 3, and 7\). To select these lines, hold Ctrl while clicking the row selector next to the needed lines.
-   A contiguous group of document lines \(for example, line 5 through line 9\). To select a group of lines, select the first line in the group, and hold Shift while clicking the last line in the group. \(Alternatively, you can click the first line and then press Shift+Down Arrow until all the needed lines are selected.\)
-   A group of some contiguous lines and some non-contiguous lines \(for example, line 5 through line 7, and line 10\). To select a non-contiguous group of lines, hold Ctrl while clicking the row selector next to the needed lines.

All selected document lines are grouped, and thus are moved contiguously, even if you have selected multiple non-contiguous document lines. After you have selected the needed lines, you move them to the new place in the table in one of the following ways:

-   Drag the selected document line or lines to the place where you want to move them. A thin red line between the lines shows where these lines will be inserted. Once you drag the selected lines, the system moves these lines and regenerates the **Line Order** numbers for all the lines in the table.
-   When you need to move document lines between pages, cut the selected document lines and paste them to the new place in the table. To cut the lines, press Ctrl+X, or right-click the table and then click **Cut Row**. Then click the line above which the cut lines should be inserted, and press Ctrl+V; alternatively, you can right-click the table, and then click **Insert Cut Row**.

Once you reorder the document lines, the system automatically regenerates the line number for each document line. These numbers are used for numbering lines in the printable reports, such as the printable sales order shown on the [Sales Orders](SO_30_10_00.md) \(SO641010\) form or the printable invoice shown on the [Invoice &amp; Memo](SO_64_30_00.md) \(SO643010\) form. You can cancel the line reordering by clicking **Cancel** on the form toolbar before you save these changes. You can reorder the lines of a sales order until it has been completed; the lines of an invoice can be reordered until it has been released.

## Resetting the Line Order in Invoices { .section}

The invoice lines that you add by using the **Add Order** dialog box, which opens when you click the **Add Order** button on the table toolbar of the **Details** tab of the [Invoices](SO_30_30_00.md) \(SO303000\) form, are added to the table in the order in which you have added them. If you need to rearrange the lines in the table to sort them by shipment numbers and order numbers, you can click the **Reset Order** button on the table toolbar of the **Details** tab. When you click this button, the system automatically sorts the invoice lines and regenerates **Line Order** numbers for all the lines in the table.

## Inserting New Lines into Sales Orders and Invoices { .section}

You can insert a single line anywhere in the document. To do this, click the line above which the new line should be inserted and then press Shift+Insert, or right-click the needed line and then click **Insert Row**. The system adds a new blank line. When you finish populating the line information and save your changes, the system automatically regenerates the line numbers for all lines in the table.

**Parent topic:**[Managing Sales Documents](../UserGuide/SO__MNG_Managing_Documents.md)

