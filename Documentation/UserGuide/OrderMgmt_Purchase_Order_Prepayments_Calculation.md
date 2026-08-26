# Prepayments for Purchase Orders: Calculation of the Prepayment Amount {#_3571e58e-6cb5-41cc-bb53-ef469d74d54c .concept}

In some cases, you need to prepay a percent of the cost of a purchase order before the vendor produces, ships, or delivers the goods to your company. While you are working with the purchase order on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, you can click **Create Prepayment Request** on the More menu. The system opens the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form with a new prepayment request linked to the purchase order, with the lines of the purchase order copied to the **Details** tab and the prepayment amount inserted in each prepayment request line.

To simplify the creation of prepayment requests for purchase orders, you can define a standard percentage of the prepayment amount for the applicable records \(those that correspond to a particular requirement for a prepayment\); these default percentages can be used in the appropriate situations for calculating the prepayment amount in prepayment request lines. You can specify a default prepayment percent for the following records:

-   A particular purchase order: On the **Vendor Info** tab of the [Purchase Orders](PO_30_10_00.md) form, specify this percent in the **Prepayment Percent** box.
-   A stock item purchased by a specific vendor: On the **Vendors** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form, in a row with this vendor selected, specify this percent in the **Prepayment Percent** column.
-   A non-stock item purchased by a specific vendor: On the **Vendors** tab of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, in a row with this vendor selected, specify this percent in the **Prepayment Percent** column.
-   A particular vendor: Specify this percent in the **Prepayment Percent** box on the **Payment** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form.

For each line of the prepayment request, the system calculates the value in the **Prepayment Amount** column by using the value in the **Prepayment Percent** column. The system checks related system settings in the following order and uses the first source value it finds:

1.  If a default prepayment percent is specified in the settings of a purchase order for which the prepayment request is prepared, the system inserts this percentage for the line \(regardless of the applicable vendor and item settings\).
2.  If a default prepayment percent is specified in the settings of the stock item or non-stock item selected in the line, the system inserts this percentage for this line \(regardless of the applicable vendor settings\).
3.  If a default prepayment percent is specified for the vendor selected for this prepayment, the system inserts this percentage for this line.

If a default prepayment percent is not specified for any of these system settings, the system inserts *100* as the default value, which indicates that the full amount of the purchase order line should be inserted in the related line of a prepayment request.

You can manually override the default prepayment percent that the system has inserted into any line to change the prepayment amount on the [Bills and Adjustments](AP_30_10_00.md) form; also, you can delete any of the lines copied from the original purchase order to exclude them from prepayment.

**Parent topic:**[Processing Prepayments for Purchase Orders](../UserGuide/OrderMgmt_Purchase_Order_Prepayments_Mapref.md)

