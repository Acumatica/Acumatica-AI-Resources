# To Fetch Calculated Data from a Non-Scalar Source \(in RowSelecting\) {#_5ac28730-f0bc-490d-b6ae-c7bcac636753 .task}

The following activity will walk you through the process of fetching calculated data from a non-scalar source by using the RowSelecting event handler.

## Story { .section}

Suppose that you need to fetch the values for the **Number of Assigned Work Orders** column, which is displayed on the Assign Work Orders \(RS501000\) form. \(You have developed this form for the Smart Fix company.\) You need to write a fluent BQL query that fetches the number of assigned work orders from the `RSSVEmployeeWorkOrderQty` DAC for the employee selected in the `AssignTo` field of the `RSSVWorkOrder` DAC.

## Process Overview { .section}

To fetch the needed values, you'll use the RowSelecting event handler. In the event handler, you'll retrieve the number of assigned work orders for the employee selected in the `AssignTo` field of the `RSSVWorkOrder` DAC.

## System Preparation { .section}

Before you begin defining the logic for fetching data from a non-scalar source, perform the following prerequisite activities:

1.  [Test Instance for Customization: To Deploy an Instance with a Custom Form that Implements a Workflow](CodeCustomization_PrepareInstance_Activity_DeployInstanceT240.md)
2.  [Processing Operations: To Implement a Processing Operation by Using a Delegate](CodeCustomization_ProcessingOperations_Activity_CreateWithoutFilter_withDelegate.md)

## Step 1: Extending the RSSVWorkOrder DAC { .section}

Add the new field to the `RSSVWorkOrder` DAC as follows:

1.  Define the `NbrOfAssignedOrders` field, as the following code shows.

    ```language-csharp
            #region NbrOfAssignedOrders
            [PXInt]
            [PXUIField(DisplayName = "Number of Assigned Work Orders")]
            public virtual int? NbrOfAssignedOrders { get; set; }
            public abstract class nbrOfAssignedOrders :
                PX.Data.BQL.BqlInt.Field<nbrOfAssignedOrders>
            { }
            #endregion
    ```

2.  Build the project.

## Step 2: Fetching Values for the NbrOfAssignedOrders Field { .section}

Modify the `RSSVAssignProcess` graph as follows:

1.  In the `RSSVAssignProcess.cs` file, add the `PX.Data.BQL` `using` directive.
2.  In the graph, define the following RowSelecting event handler.

    ```
            protected virtual void _(Events.RowSelecting<RSSVWorkOrder> e)
            {
                using (new PXConnectionScope())
                {
                    if (e.Row == null) return;
                        RSSVEmployeeWorkOrderQty employeeNbrOfOrders =
                            SelectFrom<RSSVEmployeeWorkOrderQty>.
                            Where<RSSVEmployeeWorkOrderQty.userID.IsEqual<@P.AsInt>>.
                            View.Select(this, e.Row.AssignTo);
    
                    if (employeeNbrOfOrders != null)
                    {
                        e.Row.NbrOfAssignedOrders = 
                          employeeNbrOfOrders.NbrOfAssignedOrders.GetValueOrDefault();
                    }
                    else
                    {
                        e.Row.NbrOfAssignedOrders = 0;
                    }
    
                }
            }
    ```

3.  Build the project.

**Parent topic:**[Working with Events](../StudioDeveloperGuide/BL__mng_Working_With_Events.md)

