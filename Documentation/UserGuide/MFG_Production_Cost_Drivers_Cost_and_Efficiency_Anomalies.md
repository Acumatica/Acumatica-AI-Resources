# Production Cost Drivers: Cost and Efficiency Anomalies

**Attention:** This functionality is available only if the *Detection of Numeric Anomalies in Generic Inquiries* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

In Acumatica ERP, you can use generic inquiries combined with AI-powered anomaly detection to highlight potential anomalies early—before they become costly problems.

These generic inquiries help you monitor:

-   Material costs
-   Labor time
-   Production totals
-   Employee efficiency

For information about the configuration and use of anomaly detection, see [Detecting Anomalies in Generic Inquiries](GI_DetectAnomalies_Mapref.md).

## Generic Inquiries

Acumatica ERP contains the following generic inquiries specifically designed to use anomaly detection in manufacturing:

-   *Production Total Variance \(AM0018ML\)*: Get a complete picture of cost variances per production order, so you can review exceptions before period-end and correct discrepancies quickly.
-   *Production Labor Variance \(AM0024ML\)*: Identify discrepancies in labor time and cost to catch inaccurate reporting or outdated BOM estimates.
-   *Production Material Variance \(AM0025ML\)*: Analyze material cost deviations between planned and actual values for WIP and completed production orders—broken down by operation.
-   *Production Employee Efficiency \(AM0030ML\)*: Compare actual performance across employees doing the same operations, enabling fair evaluation and targeted coaching without over-adjusting BOM labor times.

Each inquiry:

-   Works with *In Process*, *Completed*, *Locked*, and *Closed* production orders
-   Includes only operations with completed quantities

## Recommended Settings

By default, anomaly detection is not enabled for these generic inquiries. In the out-of-the-box product, they appear with the **Detect Anomalies** check box cleared on the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form. This is because the system currently supports anomaly detection for no more than 10 generic inquiries at a time.

We recommend the following settings for the **Field for Analysis** box and the **Data Field** column of the table in the **Grouping** section on the **Anomaly Detection** tab of the [Generic Inquiry](SM_20_80_00.md) form. These settings are populated by default when the **Detect Anomalies** check box is selected for the corresponding generic inquiry.

<table id="_6da6fe90-876d-4f06-8dd2-312da90f0be0"><thead><tr><th>

Field for Analysis

</th><th>

Grouping

</th></tr></thead><tbody><tr><td colspan="2">

For the *Production Total Variance \(AM0018ML\)* generic inquiry:

</td></tr><tr><td>

*Total Operation Variance \(%\)*

</td><td>

`BOM ID`

 `BOM Revision`

 `Operation ID`

</td></tr><tr><td colspan="2">

For the *Production Labor Variance \(AM0024ML\)* generic inquiry:

</td></tr><tr><td>

*Labor Cost Variance \(%\)*

</td><td>

`BOM ID`

 `BOM Revision`

 `Operation ID`

</td></tr><tr><td colspan="2">

For the *Production Material Variance \(AM0025ML\)* generic inquiry:

</td></tr><tr><td>

*Material Cost Variance \(%\)*

</td><td>

`BOM ID`

 `BOM Revision`

 `Operation ID`

</td></tr><tr><td colspan="2">

For the *Production Employee Efficiency \(AM0030ML\)* generic inquiry:

</td></tr><tr><td>

*Efficiency \(%\)*

</td><td>

`Order Type`

 `BOM ID`

 `BOM Revision`

 `Operation ID`

</td></tr></tbody>
</table>

**Parent topic:**[Managing Production Cost Drivers](../UserGuide/MFG_Production_Cost_Drivers_Mapref.md)

