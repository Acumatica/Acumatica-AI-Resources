# Estimating: General Information {#_e46c2522-10c1-471f-b353-b13c0272b55f .concept}

The estimating functionality of Acumatica ERP provides the ability to create quick or detailed manufacturing estimates for improved estimate accuracy and turnaround times. An estimate is created for a single inventory or non-inventory item. You build an estimate from bills of materials, production orders, or other estimates to accurately calculate costs and prices for new or existing parts using material costs, work center rates, overheads, and other cost data. Alternatively, you can start by entering just summary cost data and later on add the details.

Estimating is designed to supplement and enhance the customer management processes from opportunity, through quoting, to sales order. It also supplements engineering from design, through building a prototype, and final conversion to a standard product with a bill of material.

The estimating functionality is available only when the *Estimating* feature in the *Manufacturing* group of features is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Scenarios { .section}

1.  A direct estimate, which is not linked to a quote, sales order, or opportunity
2.  An estimate created from a quote or sales order
3.  An estimate created from an opportunity

## Features { .section}

-   Estimate data is tracked through revisions.
-   Estimate detail can be created by copying an existing estimate revision, bill of material, or production order.
-   Estimates can be printed.
-   Notes and files can be attached to an estimate.
-   Estimates can be entered directly or created from an opportunity, quote, or sales order.
-   Non-inventory items can be converted to stock or non-stock items.
-   Margin or selling price can be altered in a convenient way.
-   Various levels and combination of estimate details provides you with ability of quick or detailed entry.
-   Estimates can be converted to standard sales order lines.
-   A bill of material can be created from an estimate.
-   A production order can be created from an estimate or sales order line converted from an estimate.
-   Estimates are not multilevel; that is, one estimate cannot be referenced by another estimate.
-   Estimates may include multiple quantity-based price breaks. For details, see [Estimating: Price Breaks](MFG_Estimating_PriceBreaks.md).

## Cost Levels and Calculations { .section}

Estimate costs can be defined at the following levels: detail, operation, and estimate. The costs for an estimate always update the parent level totals. This includes any changes on the estimate or the estimate operation pages. The concept for calculating the cost types is the same as currently calculated for production planned costs on a production order with an exception that labor is broken out into fixed and variable. The extended information about the estimate cost levels is the following:

-   Detail
    -   The lowest level of detail, which is represented by the **Material**, **Tools**, and **Overhead** tabs of the [Estimate Operation](AM_30_40_00.md) \(AM304000\) form.
    -   When you modify the cost at these levels, the system rolls up the costs to the cost of the parent operation.
    -   The detail level cannot exist without an operation level because details are linked to an operation.
-   Operation
    -   The middle level of an estimate.
    -   All detail-level costs roll up to the estimate level unless the **Override** check box is selected for a specific cost type.
    -   When a cost type has the **Override** check box selected, any value can be entered. No updates will automatically calculate the value that has been overridden.
    -   Operations define the labor and machine costs related to the run rates and work center/machine costs.
    -   The operation level cannot exist without an estimate level because operations are linked to an estimate.
-   Estimate
    -   The summary and highest level of an estimate.
    -   All operation-level costs roll up to the estimate level unless the **Override** check box is selected for a specific cost type.
    -   When a cost type has the **Override** check box selected, any value can be entered. No updates will automatically calculate the value that has been overridden.

The summarized order of calculating costs for estimates or estimate operations is the following:

1.  For each operation, fixed labor, variable labor, machine, material, tools, and overhead are rolled up and update the operation cost type field if not set to override.
2.  Sum each operation cost type and update the estimate cost type fields if not set to override.
3.  Sum all cost types to show total cost.
4.  Divide total cost by order quantity to set the unit cost field.
5.  If unit price override is selected: calculate margin percent.
6.  If unit price override is cleared: calculate unit price.
7.  If the estimate is referenced on a sales order or opportunity and the estimate reference is not completed or canceled, then the source order must also have its pricing recalculated using the reference graph.

**Parent topic:**[Estimating](../UserGuide/MFG_Estimating_Mapref.md)

