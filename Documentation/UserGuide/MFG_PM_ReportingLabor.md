# Production Processing: Labor Reporting {#_223a203b-ac0f-4e7e-af0a-15aa21930776 .concept}

Labor is a component of product cost, both when rolling up the planned costs for bills of material and production orders and when recording the actual times or backflushing the standard times. Recording the actual time spent on production operations and comparing them to the planned costs is part of manufacturing performance reporting. Every production order tracks the variances between planned and actual costs and reports are provided in the module. Even if all or some labor is backflushed you could possibly create a custom inquiry or report to compare the actual labor costs to the *earned* or standard costs.

There are two methods to report labor hours and their resultant cost against production orders:

1.  Direct entry by employees using their cost rates or work center standard rates.
2.  Backflushing labor by reporting quantities completed at an operation.

Both methods can be used concurrently. For example, employees will only report labor against milestone operations and the prior secondary operations will be backflushed for labor. Additionally, non-direct labor, labor not attributed to a production order, can be reported to capture their cost in the GL.

Integration with employee time activities \(for details, see [Employee Time Entry: Time Activities](TimeExpenses_Entering_Employee_Time_Time_Activities.md)\) is supported by using the [Create Labor Time Activities](AM_51_30_00.md) \(AM503000\) form if the *Time Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Operations in Bills of Material { .section}

The setup and run time elements for each operation are used to calculate the planned labor cost of a bill of material and production order. Both are extended by the work center standard rate per hour. Setup time cannot be reported; it is only posted when the operation is backflushed.

## Reporting Actual Hours { .section}

The [Labor](AM_30_10_00.md) \(AM301000\) form is used to record hours against production operations as well as the quantity completed, and optionally scrap, at an operation of a production order. This same form is used to record indirect labor.

Additionally, production employees can clock in and out for production orders by using the [Clock Entry](AM_31_50_00.md) \(AM315000\) form or on the corresponding screen of the Acumatica mobile app. In this case, the system calculates labor hours automatically. On the [Clock Entry](AM_31_50_00.md) form, scrap recording is not supported. Production employees can use the [Multiple Production Clock Entry](AM_31_60_00.md) \(AM316000\) form for recording scrap with the *No Action* of *Write-Off* scrap action. Scrapped items that will be quarantined \(that is, with the *Quarantined* scrap action\) can be recorded only by using the [Labor](AM_30_10_00.md) or [Move](AM_30_20_00.md) \(AM302000\) form.

## Recording Indirect Labor { .section}

Then, the employees create a labor transaction and add a line with the *Indirect* labor type to the transaction on the [Labor](AM_30_10_00.md) \(AM301000\) form. The system applies the cost of the indirect labor to the production order for which the labor transaction is recorded.

## Accounting for Labor Costs { .section}

The WIP account for the production order is debited and the labor account for the labor code is credited. When a quantity completed is reported on the [Labor](AM_30_10_00.md) \(AM301000\) form, any labor overheads are calculated and debit WIP and credit their respective overhead accounts. You should consider the impact of posting to these accounts, as well as the other cost elements recorded by production management transaction, on your GL. Most companies record their actual factory expenses, such as wages and benefits, equipment costs, production supplies, and utilities to the GL.

If both the actuals and the production order transactions are reported you may be posting the same costs twice. You should consider setting up the manufacturing accounts as accrual accounts and debit these accounts to zero when you post your actual costs.

**Parent topic:**[Producing Items](../UserGuide/MFG_Production_Order_Processing_Mapref.md)

