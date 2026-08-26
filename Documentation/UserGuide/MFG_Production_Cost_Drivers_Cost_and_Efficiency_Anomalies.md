# Production Cost Drivers: Cost and Efficiency Anomalies {#_12d720fd-acc8-4b3f-b266-54324215055b .concept}

**Attention:** This functionality is available only if the *Detection of Numeric Anomalies in Generic Inquiries* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

In Acumatica ERP, you can use generic inquiries combined with AI-powered anomaly detection to highlight potential anomalies early—before they become costly problems.

These generic inquiries help you monitor:

-   Material costs
-   Labor time
-   Production totals
-   Employee efficiency

For information about the configuration and use of anomaly detection, see [Detecting Anomalies in Generic Inquiries](GI_DetectAnomalies_Mapref.md).

## Generic Inquiries { .section}

Acumatica ERP contains the following generic inquiries specifically designed to use anomaly detection in manufacturing:

-   *Production Total Variance \(AM0018ML\)*: Get a complete picture of cost variances per production order, so you can review exceptions before period-end and correct discrepancies quickly.
-   *Production Labor Variance \(AM0024ML\)*: Identify discrepancies in labor time and cost to catch inaccurate reporting or outdated BOM estimates.
-   *Production Material Variance \(AM0025ML\)*: Analyze material cost deviations between planned and actual values for WIP and completed production orders—broken down by operation.
-   *Production Employee Efficiency \(AM0030ML\)*: Compare actual performance across employees doing the same operations, enabling fair evaluation and targeted coaching without over-adjusting BOM labor times.

Each inquiry:

-   Works with *In Process*, *Completed*, *Locked*, and *Closed* production orders
-   Includes only operations with completed quantities

## Recommended Settings { .section}

By default, anomaly detection is not enabled for these generic inquiries. In the out-of-the-box product, they appear with the **Detect Anomalies** check box cleared on the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form. This is because the system currently supports anomaly detection for no more than 10 generic inquiries at a time.

We recommend the following settings for the **Field for Analysis** box and the **Data Field** column of the table in the **Grouping** section on the **Anomaly Detection** tab of the [Generic Inquiry](SM_20_80_00.md) form.

|Field for Analysis|Grouping|
|------------------|--------|
|For the *Production Total Variance \(AM0018ML\)* generic inquiry:|
|*Total Operation Variance \(%\)*|`BOM ID`

 `BOM Revision`

 `Operation ID`

|
|For the *Production Labor Variance \(AM0024ML\)* generic inquiry:|
|*Labor Cost Variance \(%\)*|`BOM ID`

 `BOM Revision`

 `Operation ID`

|
|For the *Production Material Variance \(AM0025ML\)* generic inquiry:|
|*Material Cost Variance \(%\)*|`BOM ID`

 `BOM Revision`

 `Operation ID`

|
|For the *Production Employee Efficiency \(AM0030ML\)* generic inquiry:|
|*Efficiency \(%\)*|`Order Type`

 `BOM ID`

 `BOM Revision`

 `Operation ID`

|

**Parent topic:**[Managing Production Cost Drivers](../UserGuide/MFG_Production_Cost_Drivers_Mapref.md)

