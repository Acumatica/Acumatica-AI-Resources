# Managing Lines in Purchase Documents {#_38b85d51-7995-4ad3-a0b6-64ae80ccbe6f .concept}

You may need to reorder document lines in purchase orders and purchase receipts—for example, if you need the lines of the printed document to be in a specific order other than in the document sent by vendor. Also, you may need to add a new line to a purchase order or purchase receipt at the beginning of a list or in the middle of it. The following sections describe how you can reorder lines in various Purchase Orders documents.

## Reordering Lines in Purchase Orders { .section}

The order number of each document line is shown in the **Line Order** column on the **Details** tab of the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form for purchase orders, and of the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form for purchase receipts. \(On both forms, these columns are hidden by default so you should use the **Column Configuration** dialog box to make the columns available before you reorder lines.\)

Once you reorder the lines, the system automatically regenerates the order numbers for each document line. You can reorder lines in a purchase order that is on hold; in a purchase receipt, you can reorder the lines until this receipt has been released. You can select the lines to be reordered in any combinations, such as the following:

-   A single document line \(for example, line 3 or 8\). To select a single line, click it.
-   Multiple non-contiguous lines \(for example, lines 1, 3, and 7\). To select these lines, hold Ctrl while clicking the row selector next to the needed lines.
-   A contiguous group of document lines \(for example, line 5 through line 9\). To select a group of lines, select the first line in the group, and hold Shift while clicking the last line in the group. \(Alternatively, you can click the first line and then press Shift+Down Arrow until all the needed lines are selected.\)
-   A group of some contiguous lines and some non-contiguous lines \(for example, line 5 through line 7, and line 10\). To select a non-contiguous group of lines, hold Ctrl while clicking the row selector next to the needed lines.

All selected lines are grouped and thus are moved contiguously, even if you have selected multiple non-contiguous document lines. After you have selected the needed lines, move them to the new place in the table in one of the following ways:

-   Drag the selected line or lines to the place where you want to move them. A thin red line between the table lines shows where these lines will be inserted. Once you drag the selected lines, the system moves these lines and regenerates the **Line Order** numbers for all the lines in the table.
-   When you need to move purchase order or purchase receipt lines between pages, cut the selected document lines and paste them to the new place in the table. To cut the lines, press Ctrl+X, or right-click the table and then click **Cut Row**. Then click the line the cut lines should be inserted above, and press Ctrl+V; alternatively, you can right-click the table, and then click **Insert Cut Row**.

Once you reorder the lines, the system automatically regenerates the line number for each document line. For purchase receipts, these numbers are used for numbering lines in the printable reports, such as the printable purchase receipt shown on the [Purchase Receipt](PO_64_60_00.md) \(PO646000\) report. You can cancel the line reordering by clicking **Cancel** on the form toolbar before you save these changes.

**Note:** You cannot rearrange lines in the table if custom sorting by any column is applied to the table.

## Inserting Lines into Purchase Orders and Purchase Receipts { .section}

On the [Purchase Orders](PO_30_10_00.md) \(PO301000\) and [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form, you can insert a single line anywhere in the document. To do this, click the line above which the new line should be inserted and then press Shift+Insert, or right-click the needed line and then click **Insert Row**. The system adds a new blank line. When you finish entering the line information and save your changes, the system automatically regenerates the line numbers for all lines in the table.

**Parent topic:**[Managing Purchase Documents](../UserGuide/PO__MNG_Managing_Document.md)

