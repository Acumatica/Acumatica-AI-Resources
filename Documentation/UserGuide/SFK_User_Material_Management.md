# Shop Floor Kiosk: Material Management

## Understanding Material Handling in the Kiosk

The Shop Floor Kiosk provides material visibility directly on the **Production Reporting** page. When you open an operation, you can review the materials required for that operation before you begin work. This helps you confirm that the correct components are available and staged at the work center.

Material handling behavior depends on how the production order operation is configured in Acumatica ERP:

-   Backflushed materials are issued automatically when production quantities are reported.
-   Non-backflushed materials require manual material issuance.

The kiosk supports both production environments where materials are issued automatically and environments where operators are expected to review and issue materials manually.

You access material information from the **Materials** tab of the **Production Reporting** page.

The **Materials** tab displays information such as:

-   Inventory ID and material description
-   Unit of measure \(UOM\)
-   Total required quantity
-   Total issued quantity
-   Remaining quantity
-   Available inventory quantity

Depending on system configuration, you may also see:

-   Lot or serial numbers
-   Warehouse and location information
-   Byproducts associated with the operation

## Viewing Required Materials

To review materials required for an operation:

1.  Open the **Production Reporting** page for the operation.
2.  Select the **Materials** tab.
3.  Review the list of required materials.

The kiosk displays all material requirements associated with the selected operation. You can use this information to:

-   Verify that materials are available before starting work
-   Physically pull and stage inventory
-   Confirm remaining material quantities
-   Identify materials that require manual issuance

If both backflushed and non-backflushed materials exist for the operation, you can filter the list to focus only on materials that require manual issue processing.

For each material, the kiosk may display:

-   Required quantity
-   Remaining quantity to issue
-   Available quantity for issue
-   Quantity currently on hand

You can also initiate material issue processing directly from the **Materials** tab.

## Backflushing

Some operations use backflushing instead of manual material issuance. In these operations, the system automatically issues materials when you report completed quantities.

With backflushing:

-   You do not manually issue materials through the kiosk.
-   Material transactions are generated automatically by the system.
-   The issued quantity is calculated from the reported production quantity and the production order configuration.

Backflushing reduces manual data entry and simplifies reporting on the shop floor.

Depending on item configuration, the system can also support:

-   Lot-tracked materials
-   Serial-tracked materials

You can still use the **Materials** tab to review required materials before production begins, even when material issuance is fully automated.

When manual material issuance is used, you can issue required materials directly from the **Materials** tab of the **Production Reporting** page.

## Issuing Materials for an Operation

For each material available for issue, the **Qty. to Issue** column shows the quantity to be processed. You can keep this quantity or change it to issue a partial amount.

To issue materials:

1.  On the **Materials** tab, select one or more materials.
2.  Click **Issue** on the table toolbar.
3.  In the **Issue Material** dialog box, review and update the material details as needed.
4.  Click **Issue** to process the current material and close the dialog box, or click **Issue and Go to Next** to process the current material and continue with the next selected material.

If an operation requires many materials, you can click **Quickly Issue All**. The kiosk processes eligible materials that do not require additional information and opens the **Issue Material** dialog box for materials that require you to select a warehouse location, lot number, serial number, or other details.

Backflushed materials and materials that cannot be issued because of their item, material, or production order status are not available for selection.

The **Issue Material** dialog box displays the selected item, its unit of measure, the remaining required quantity, and the total quantity to be issued.

In the table, you can specify the following information, as applicable:

-   **Warehouse**
-   **Location**
-   **Lot Nbr.** or **Serial Nbr.**
-   **Qty. to Issue**
-   **UOM**

If the full quantity is not available in one location, you can add rows and distribute the material issue among multiple locations. For a lot-tracked item, you can similarly distribute the quantity among multiple lots. For a serial-tracked item, each selected serial number is shown on a separate row.

If automatic lot or serial numbering is configured, you can specify a starting number and click **Generate** to add the required lot or serial numbers. You can then review and adjust the generated rows before processing the issue.

## Selecting Materials by Lot or Serial Attributes

When several available lots or serial numbers exist for a material, you can search for inventory that has particular attribute values.

For an applicable material, the **Issue Material** dialog box displays one of the following buttons:

-   **Search and Add Lots** for a lot-tracked item
-   **Search and Add Serials** for a serial-tracked item

These buttons are available for positive material issues of non-byproduct items whose lot or serial class uses the *When Received* assignment method. When one of these buttons is available, the **Add Material** button is hidden.

Click **Search and Add Lots** or **Search and Add Serials** to open the selection dialog box. You can search the available inventory by:

-   Lot or serial number
-   Manufacturer lot or serial number
-   Any displayed lot or serial attribute value

The table also displays the warehouse, location, quantity on hand, quantity available for issue, and active attribute values for each lot or serial number. You can compare these details and select the inventory that meets the requirements of the operation.

After you add the selected inventory, the **Issue Material** dialog box continues to display the recorded attribute values in read-only columns.

## Returning Unused Materials

If less material is consumed than expected, you can return the unused quantity to inventory from the **Materials** tab. Enter a negative quantity for the material, and use the **Issue Material** dialog box to select the applicable location and previously issued lot or serial number.

You cannot return more of a lot or serial number than was previously issued to the production order.

## Receiving Byproducts

When an operation produces a reusable byproduct, you can also receive it into inventory by following the same steps that you use to return unused materials. Enter a negative quantity for the byproduct and specify the warehouse, location, and applicable lot or serial information.

## Issuing Materials Not Listed for the Operation

The materials required during production do not always match the original production order. You can click **Issue Additional Material** on the **Materials** tab to process an item that is not already listed for the selected operation.

The **Issue Additional Material** button is available only if *Warn* or *Allow* is selected in the **Issue Material Not On Order** box on the [Production Order Types](AM_20_11_00.md) \(AM201100\) form in the ERP.

The **Issue Material** dialog box opens with the **Inventory ID** and **UOM** boxes available for selection. You can:

-   Select a stock or non-stock item that is not already listed for the operation.
-   Use the item’s base unit of measure or select another configured unit of measure.
-   Specify the quantity to issue.
-   Select the applicable warehouse and location.
-   Distribute the quantity among multiple locations, lots, or serial numbers.

You can process only one additional item at a time.

You can use the same procedure to receive an additional byproduct that was not included in the original production order operation. Enter a negative quantity for the byproduct.

When the material transaction batch is created in the *Balanced* state, the additional item is added to the **Materials** table. You can therefore see the issued item without waiting for the background release of the batch to finish.

## Processing Material Transactions

When you click **Issue** or **Issue and Go to Next** in the **Issue Material** dialog box, the kiosk creates a material transaction batch in the *Balanced* state. The transaction appears on the [Materials](AM_30_00_00.md) \(AM300000\) form in the ERP. The batch is then submitted for release in the background, so you can continue production reporting in the kiosk without waiting for the release to finish.

Before creating the transaction, the kiosk applies the applicable material and inventory validations. If information is missing or the selected inventory cannot be issued, the kiosk displays a warning or error so that you can correct the issue or continue with another material.

If a batch is created but cannot be released, it remains in the *Balanced* state for supervisor review.

## Lot and Serial Attribute Limitations

The following limitations apply to lot and serial attributes in the Shop Floor Kiosk:

-   Attribute entry is not supported for lot or serial classes whose **Assignment Method** is *On Issue*.
-   Lot or serial attributes cannot be entered for byproduct receipts.
-   Attribute values are not displayed when previously issued materials are returned to inventory.
-   Attributes that use the *Selector* control type are not supported.
-   **Search and Add Lots** and **Search and Add Serials** are not available for material returns or byproduct receipts.

**Parent topic:**[Shop Floor Kiosk](../UserGuide/MFG_SFK_Mapref.md)

