# Shop Floor Kiosk: Material Management {#_4773968f-06b7-40c1-9c6c-de22f5028cca .concept}

## Understanding Material Handling in the Kiosk { .section}

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
-   By-products associated with the operation

## Viewing Required Materials { .section}

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

## Backflushing { .section}

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

If your company uses manual material issuance instead of backflushing, additional material issue actions may be available in the kiosk, depending on your implementation and product version.

**Parent topic:**[Shop Floor Kiosk](../UserGuide/MFG_SFK_Mapref.md)

