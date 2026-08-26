# CacheAttached:To Replace Field Attributes in CacheAttached {#_2bd76d3e-a88e-4615-8a1a-b1632143707c .task}

The following activity will walk you through the process of replacing field attributes in CacheAttached event handlers.

## Story { .section}

The `RSSVWorkOrder` DAC holds the data of the Repair Work Orders \(RS301000\) data entry form. The data of this DAC is also displayed on the Assign Work Orders \(RS501000\) processing form. \(You have developed both of these forms for the Smart Fix company.\) You need to add the following fields to this DAC:

-   `DefaultAssignee`: The employee that has the fewest assigned repair work orders
-   `AssignTo`: The employee the repair work order will be assigned to

On the Assign Work Orders form, you need to calculate the values of these fields by using attributes. You do not need these calculations for the data entry form.

## Process Overview { .section}

In this activity, you'll add attributes that calculate the values of the `DefaultAssignee` and `AssignedTo` fields of the `RSSVWorkOrder` DAC. Because you need these calculations only for the Assign Work Orders \(RS501000\) form, you'll add these attributes by using the CacheAttached event handler.

## System Preparation { .section}

Before you begin replacing field attributes in CacheAttached event handlers, perform the following prerequisite activities:

1.  [Test Instance for Customization: To Deploy an Instance with a Custom Form that Implements a Workflow](CodeCustomization_PrepareInstance_Activity_DeployInstanceT240.md)
2.  [Processing Operations: To Implement a Processing Operation by Using a Delegate](CodeCustomization_ProcessingOperations_Activity_CreateWithoutFilter_withDelegate.md)

## Step 1: Extending the DAC with New Fields { .section}

Add the new fields to the `RSSVWorkOrder` DAC as follows:

1.  In the `RSSVWorkOrder` class, define the `DefaultAssignee` field, as shown in the following code.

    ```
            #region DefaultAssignee
            [PXInt]
            [PXUIField(DisplayName = "Default Assignee")]
            public virtual int? DefaultAssignee { get; set; }
            public abstract class defaultAssignee :
                PX.Data.BQL.BqlInt.Field<defaultAssignee>
            { }
            #endregion
    ```

2.  Define the `AssignTo` field, as shown below.

    ```
            #region AssignTo
            [PXInt]
            [PXUIField(DisplayName = "Assign To")]
            public virtual int? AssignTo { get; set; }
            public abstract class assignTo : PX.Data.BQL.BqlInt.Field<assignTo> { }
            #endregion
    ```

3.  Build the project.

## Step 2: Replacing the Attributes { .section}

In this step, you'll add the attributes to the `RSSVWorkOrder` DAC fields by using the CacheAttached event handlers of these fields in the `RSSVAssignProcess` graph. These attributes will be used for the `RSSVWorkOrder` DAC fields only on the Assign Work Orders \(RS501000\) form. Instead of completely replacing attributes, you'll add the needed attributes to the fields by including the PXMergeAttributes attribute in the list of assigned attributes.

To implement the calculation of field values for the `RSSVAssignProcess` graph, do the following:

1.  In the `RSSVAssignProcess.cs` file, add the `PX.TM` `using` directives.
2.  To add the PXDBScalar attribute to the `DefaultAssignee` field, add the following event handler to the `RSSVAssignProcess` graph.

    ```language-csharp
            [PXMergeAttributes(Method = MergeMethod.Append)]
            [Owner(IsDBField = false, DisplayName = "Default Assignee")]
            [PXDBScalar(typeof(SelectFrom<OwnerAttribute.Owner>.
                LeftJoin<RSSVEmployeeWorkOrderQty>.
                On<OwnerAttribute.Owner.contactID.IsEqual<
                    RSSVEmployeeWorkOrderQty.userID>>.
                Where<OwnerAttribute.Owner.acctCD.IsNotNull>.
                OrderBy<RSSVEmployeeWorkOrderQty.nbrOfAssignedOrders.Asc,
                    RSSVEmployeeWorkOrderQty.lastModifiedDateTime.Asc>.
                SearchFor<OwnerAttribute.Owner.contactID>))]
                    protected virtual void _(
                Events.CacheAttached<RSSVWorkOrder.defaultAssignee> e)
            { }
    ```

    For the system to calculate the value of the `DefaultAssignee` field, you have used the PXDBScalar attribute. The PXDBScalar attribute selects the first record that matches the query specified in the attribute. In the query, you have selected records in ascending order by the number of assigned work orders.

    To display the employee name instead of its ID \(which is an integer\) and display the selector for the column if it is editable, you have assigned the Owner attribute to the `DefaultAssignee` field. Since the `DefaultAssignee` field does not exist in the database, in the Owner attribute, you have specified `IsDBField = false`.

3.  To add the PXUnboundDefault attribute to the `AssignedTo` field, add the following event handler to the `RSSVAssignProcess` graph.

    ```
            [PXMergeAttributes(Method = MergeMethod.Append)]
            [Owner(IsDBField = false, DisplayName = "Assign To")]
            [PXUnboundDefault(typeof(RSSVWorkOrder.assignee.When<
                RSSVWorkOrder.assignee.IsNotNull>.
                Else<RSSVWorkOrder.defaultAssignee>))]
            protected virtual void _(
                Events.CacheAttached<RSSVWorkOrder.assignTo> e)
            { }
    ```

    The system sets the value of the `AssignedTo` field to the employee selected for the work order on the Repair Work Orders \(RS301000\) form \(if the value is not `null`\) or to the default assignee specified in the `DefaultAssignee` field \(if the value selected on the Repair Work Orders form is `null`\). You have defined this behavior by using the PXUnboundDefault attribute.

4.  Build the project.

**Parent topic:**[Replacing Attributes for DAC Fields in CacheAttached](../StudioDeveloperGuide/CodeCustomization_CacheAttached_Mapref.md)

