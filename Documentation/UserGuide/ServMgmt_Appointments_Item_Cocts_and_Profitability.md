# Tracking Item Costs {#_e99f795f-981d-4d05-9b4a-92693dbb2081 .concept}

In Acumatica ERP, you can monitor the costs and profitability of stock and non-stock items sold in appointments. This information helps with planning, budgeting, forecasting, and performance reporting. You can also review the total cost and profitability of each appointment.

## Tracking Stock Item Costs and Profitability { .section}

You can view the cost and profitability of a particular stock item that is sold during an appointment on the **Profitability** tab of the [Appointments](FS_30_02_00.md) \(FS300200\) form. When you add a line item of the *Inventory Item* type to the **Details** tab of the form, on the **Profitability** tab, the line item is also added with the average cost—that is, the cost specified in the **Average Cost** box of the [Stock Items](IN_20_25_00.md) \(IN202500\) form for the item—inserted into the **Unit Cost** column.

If the stock item was part of a purchase order, and the unit cost was overwritten in the **Unit Cost** column on the [Service Orders](FS_30_01_00.md) \(FS300100\) form in the related service order, this cost is inserted into the **Unit Cost** column on the **Profitability** tab.

When this stock item is removed from inventory \(that is, when the related issue is released\), the system updates this column with the cost specified in the **Unit Cost** column on the **Details** tab of the [Issues](IN_30_20_00.md) \(IN302000\) form in the related issue.

## Tracking Service and Non-Stock Item Costs and Profitability { .section}

You can view the cost and profitability of a particular service or non-stock item that is sold during the appointment on the **Profitability** tab of the [Appointments](FS_30_02_00.md) \(FS300200\) form. When you add a line item of the *Service* type for which the unit cost is not zero—that is, the cost specified in the **Current Cost** box of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form for the service is nonzero—to the **Details** tab of the [Appointments](FS_30_02_00.md) form, on the **Profitability** tab, the line item is also added with the current cost in the **Unit Cost** column.

When you add a line item of the *Non-Stock Item* type to the **Details** tab of the form, on the **Profitability** tab, the line item is also added with the current cost in the **Unit Cost** column.

If this service or non-stock item was part of a purchase order and the unit cost was overwritten in the related service order, this overwritten cost is inserted in the **Unit Cost** column on the **Profitability** tab.

## Tracking the Appointment's Total Cost and Profitability { .section}

In the Summary area of the [Appointments](FS_30_02_00.md) \(FS300200\) form, you can view the total cost of items included in an appointment in the **Cost Total** box. The value in this box is calculated as the sum of values in the **Cost Total** column on the **Profitability** tab.

In the Summary area, you can also view the total profitability \(expressed as a percent\) of the selected appointment in the **Profit \(%\)** box. The system calculates the value in this box by using the following formula.

```
 ((Appointment Total – Cost Total) / Cost Total) * 100
```

For example, if the **Appointment Total** is $2000 and the **Cost Total** is $1500, then the total profitability of the appointment is 33.33%.

**Parent topic:**[Tracking Costs in Service Documents](../UserGuide/ServMgmt_Tracking_Costs_in_ServDocuments_mapref.md)

