# To Specify a Processing Center’s System Item

On the [Processing Centers](CA_20_50_00.md) \(CA205000\) form, you can specify the system item to be used when level 3 data is prepared for document lines without an inventory ID. For these lines, Acumatica ERP uses this system item to provide the commodity code and unit of measure. The product code is generated from the document line description.

## Before You Proceed

Make sure that you have created a non-stock item on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form with the values to be used for level 3 processing. This non-stock item should have the *Inactive* status so that it can't be selected accidentally in document lines.

## To Specify the System Item for Missing Inventory IDs

1.  Open the [Processing Centers](CA_20_50_00.md) \(CA205000\) form.
2.  In the **Proc. Center ID** box, select the processing center to be used for Level 3 data transmission.
3.  Go to the **Preferences** tab.
4.  In the **Missing Inventory ID \(System Item\)** box, select the non-stock item that you have created.
5.  On the form toolbar, click **Save**.

**Parent topic:**[Level 3 Data Transmission During Card Payments](../UserGuide/AR__con_Level3_Data_Transmission.md)

