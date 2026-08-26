# Filtering Parameters: Filtered Data on a Processing Form {#_66439686-9572-45ca-bb10-ce1e86fc935d .concept}

To display the filtered data in the table on a processing form, you need to define the processing data view, which selects data narrowed by the selection criteria, which is defined with filtering parameters.

In the processing data view, you have to use one of the following types:

-   SelectFrom&lt;Table&gt;.\[…\].ProcessingView.FilteredBy&lt;FilterTable&gt;, which uses the fluent BQL style of data queries
-   PXFilteredProcessing or PXFilteredProcessingJoin type, which uses the traditional BQL style of data queries, and specify the filter DAC in the second type parameter

To select data, you should specify filtering conditions in the Where clause of the data view type. To pass the current filter values to the query, you specify the filter DAC fields within the Current parameter. You have to define the data view that retrieves filtered records for the UI after the definition of PXFilter data view because the data view that retrieves filtered records uses the Current values of the PXFilter data view.

In the following code example, the `Filter` data view provides the `TimeWithoutAction`, `Priority`, and `ServiceID` filtering parameters. The `WorkOrders` data view selects the repair work orders that meet the criteria specified by the filtering parameters.

```
// The filter data view
public PXFilter<RSSVWorkOrderToAssignFilter> Filter;
    
// The processing data view
public SelectFrom<RSSVWorkOrder>.
            Where<RSSVWorkOrder.status.IsEqual<
                RSSVWorkOrderEntry_Workflow.States.readyForAssignment>.
                And<RSSVWorkOrder.timeWithoutAction.IsGreaterEqual<
                    RSSVWorkOrderToAssignFilter.timeWithoutAction.
                        FromCurrent>.
                And<RSSVWorkOrder.priority.IsEqual<
                    RSSVWorkOrderToAssignFilter.priority.FromCurrent>.
                    Or<RSSVWorkOrderToAssignFilter.priority.FromCurrent.
                        IsNull>>.
                And<RSSVWorkOrder.serviceID.IsEqual<
                    RSSVWorkOrderToAssignFilter.serviceID.FromCurrent>.
                    Or<RSSVWorkOrderToAssignFilter.serviceID.FromCurrent.
                        IsNull>>>>.
           OrderBy<RSSVWorkOrder.timeWithoutAction.Desc,
               RSSVWorkOrder.priority.Desc>.
           ProcessingView.
           FilteredBy<RSSVWorkOrderToAssignFilter> WorkOrders;
```

**Parent topic:**[Adding Filtering Parameters to a Form](../DeveloperGuide/UIDev_FilteringParameters_Mapref.md)

