# Estimating: Implementation Checklist {#_c8efc92d-d4dd-4e19-bf6a-a18b37b45af3 .concept}

The estimating functionality uses master data from the bills of material forms for estimating labor, overhead, tooling, and machine costs. Therefore you need to define this elements and create the necessary work centers before operation details.

## Estimating Configuration Check List { .section}

|No.|Task|Description|
|:---:|----|-----------|
|1|Enable the estimating feature|On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, make sure that the *Estimating* feature is enabled under the *Manufacturing Suite* group of features.|
|2|Create the required estimate classes|Use the [Estimate Classes](AM_20_60_00.md) \(AM206000\) form to define them. You must specify a class when you build an estimate.|
|3|Define the numbering sequence for the estimation ID|Create a numbering sequence for estimate IDs on the [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form and specify the sequence on the [Estimate Preferences](AM_10_30_00.md) \(AM103000\) form.|
|4|Define work centers|Use the [Work Centers](AM_20_70_00.md) \(AM207000\) form to define the areas where work will be performed. Normally these are areas of a warehouse intended to be used in the production processing such as assembly, cutting, painting, and testing. These can also be used to track outside processing. These track standard labor rates \(optional\), overheads \(optional\) and machines \(optional\). You cannot add an estimate operation details on the [Estimate Operation](AM_30_40_00.md) \(AM304000\) form unless you define a work center.|
|5|Complete the estimate setup|Use the [Estimate Preferences](AM_10_30_00.md) \(AM103000\) form. This must be completed before you can use the estimating functionality.|
|6|Optionally create notification templates|Estimates use [Employees](EP_20_30_00.md) \(EP203000\) records to indicate the Owner and/or Engineer of an estimate. You can use business events functionality to track changes of estimates. For details, see [Using Business Events](SA_Using_Business_Events_Mapref.md).|
|7|Determine if estimates will be used on customer management forms|On the [Customer Management Preferences](CR_10_10_00.md) \(CR101000\) form, select the **Allow Estimating** check box.|
|8|Determine if estimates will be used in sales orders|On the [Order Types](SO_20_10_00.md) \(SO201000\) form, select the **Allow Estimating** check box. Typically, estimates are used for orders with the *Quote* type because they may contain non-inventory items.|

**Parent topic:**[Estimating](../UserGuide/MFG_Estimating_Mapref.md)

