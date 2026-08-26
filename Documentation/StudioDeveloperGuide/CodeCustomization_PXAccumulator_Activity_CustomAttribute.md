# PXAccumulator:To Implement a Custom Accumulator Attribute {#_14d1bf37-7711-4578-962f-23bf1b771bf7 .task}

The following activity will walk you through the process of implementing a custom accumulator attribute.

## Story {#section_nwp_tpj_kyb .section}

In the Smart Fix company, the number of work orders assigned to each employee changes frequently. Users can assign work orders on both the Repair Work Orders \(RS301000\) form and the Assign Work Orders \(RS501000\) form. Multiple users may assign repair work orders to the same employee at the same time. These concurrent updates of a record trigger this error: *Another process has updated the record*.

To avoid this error, you’ll implement a custom attribute derived from the PXAccumulator attribute. The accumulator attribute modifies the SQL query and guarantees that concurrent updates of each record are handled smoothly. In this attribute, you’ll calculate the number of repair work orders assigned to each employee and enforce a maximum of 10.

## Process Overview { .section}

You'll create a custom accumulator attribute to calculate the numbers of assigned work orders for each employee during the assignment or completion of work orders.

In the custom attribute, you’ll define the following:

-   The constructor, in which you'll specify the update mode for the records
-   The PrepareInsert\(\) method, in which you’ll define the updating policy for the field and specify the restriction for the values of this field

You'll also assign to the DAC the custom accumulator attribute that stores the field to be updated by the accumulator attribute.

## System Preparation { .section}

Before you begin implementing a custom PXAccumulator attribute, do the following:

1.  Prepare an Acumatica ERP instance by performing the [Test Instance for Customization: To Deploy an Instance with a Custom Form that Implements a Workflow](CodeCustomization_PrepareInstance_Activity_DeployInstanceT240.md) prerequisite activity.
2.  Create the database table and include the creation script in the customization project as follows:

    1.  In SQL Server Management Studio, execute the [`T240_DatabaseTables.sql`](https://github.com/Acumatica/Help-and-Training-Examples/blob/HEAD/Customization/T240/SourceFiles/DBScripts/T240_DatabaseTables.sql) script to create the `RSSVEmployeeWorkOrderQty` database table.
    2.  On the [Database Scripts](../UserGuide/AU_20_90_00.md) page of the Customization Project Editor, for the added table, do the following:
        1.  On the page toolbar, click **Add Custom Table Schema**.
        2.  In the dialog box that opens, select the `RSSVEmployeeWorkOrderQty` table and click **OK**.
    3.  Publish the project.
    **Tip:** For details on designing database tables for Acumatica ERP, see [Designing the Database Structure and DACs](DA__mng_Designing_Database_Structure.md#).

3.  In the system, indicate the completion of all repair work orders that have the *Assigned* status on the Repair Work Orders \(RS301000\) form. Do the following for each of the repair work orders that has the *Assigned* status:

    1.  Open the repair work order.
    2.  Click **Complete** on the form toolbar.
    The `RSSVEmployeeWorkOrderQty` table will hold the number of repair work orders assigned to each employee. This table currently contains no data because you haven’t yet implemented the logic to update the data in the table. However, if any repair work orders are assigned to employees, you need to complete them. As a result, none of the employees have repair work orders assigned and the table’s data correctly reflects the current state of the system.


## Step 1: Creating a DAC \(Self-Guided Exercise\) { .section}

During system preparation, you’ve created the `RSSVEmployeeWorkOrderQty` database table, whose `NbrOfAssignedOrders` column will be updated by the custom accumulator attribute. In this step, you’ll create a data access class for this table.

**Tip:** For details on creating a DAC, see the *T200 Maintenance Forms* training course.

As you create the `RSSVEmployeeWorkOrderQty` DAC, you’ll perform the following general actions:

1.  Create the `RSSVEmployeeWorkOrderQty` data access class and define its single system field: LastModifiedDateTime. \(For more information about the definition of the LastModifiedDateTime system field, see [Audit Fields](DA__con_Audit_Fields.md#) in the documentation.\)
2.  For the DAC, specify the [`PXHidden`](https://help.acumatica.com/(W(4))/Help?ScreenId=ShowWiki&pageid=615f145d-3415-1060-8081-20bfc5f23a76) attribute, which indicates that the DAC won’t be used for reports or generic inquiries.
3.  In the DAC, define the `UserID` and `NbrOfAssignedOrders` fields and their attributes as follows:
    -   Mark the `UserID` field as the key field, as shown in the following code.

        ```
                #region UserID
                [PXDBInt(IsKey = true)]
                public virtual int? UserID { get; set; }
                public abstract class userID : PX.Data.BQL.BqlInt.Field<userID> { }
                #endregion
        ```

    -   Don’t specify any display names for the fields because they won’t be displayed in the UI.

## Step 2: Implementing the Accumulator Attribute { .section}

In this step, you’ll create the custom `RSSVEmployeeWorkOrderQtyAccumulator` accumulator attribute for the `RSSVEmployeeWorkOrderQty` DAC. For each employee, this attribute will compute the total of the number of assigned work orders and save the value in the `RSSVEmployeeWorkOrderQty.NbrOfAssignedOrders` field.

The attribute will be derived from the PXAccumulator system attribute. The base attribute can also be configured to calculate the values in the `RSSVEmployeeWorkOrderQty.NbrOfAssignedOrders` field. You'll instead use the custom attribute because you need to specify a custom restriction for the number of work orders assigned to an employee—a maximum of 10.

To implement the custom accumulator attribute, do the following:

1.  In the `Messages.cs` file, add the following constant with the message that’s displayed when the restriction specified in the accumulator attribute is violated.

    ```
            public const string ExceedingMaximumNumberOfAssignedWorkOrders =
                @"Updating the number of assigned work orders for the employee 
                will lead to exceeding of the maximum number of assigned work orders, 
                which is 10.";
    ```

2.  In the `RSSVEmployeeWorkOrderQty.cs` file, define the `RSSVEmployeeWorkOrderQtyAccumulator` attribute as follows.

    ```
        public class RSSVEmployeeWorkOrderQtyAccumulator :
            PXAccumulatorAttribute
        {
            //Specify the single-record mode of update in the constructor.
            public RSSVEmployeeWorkOrderQtyAccumulator()
            {
                _SingleRecord = true;
            }
            //Override the PrepareInsert method.
            protected override bool PrepareInsert(PXCache sender, object row,
                PXAccumulatorCollection columns)
            {
                if (!base.PrepareInsert(sender, row, columns)) return false;
                RSSVEmployeeWorkOrderQty newQty = (RSSVEmployeeWorkOrderQty)row;
                if (newQty.NbrOfAssignedOrders != null)
                {
                    // Add the restriction for the value of 
                    // RSSVEmployeeWorkOrderQty.NbrOfAssignedOrders.
                    columns.AppendException(
                        Messages.ExceedingMaximumNumberOfAssignedWorkOrders,
                    new PXAccumulatorRestriction<
                        RSSVEmployeeWorkOrderQty.nbrOfAssignedOrders>(
                        PXComp.LE, 10));
                }
                // Update NbrOfAssignedOrders by using Summarize.
                columns.Update<RSSVEmployeeWorkOrderQty.nbrOfAssignedOrders>(
                    newQty.NbrOfAssignedOrders,
                    PXDataFieldAssign.AssignBehavior.Summarize);
                return true;
            }
        }
    ```

3.  Add the `RSSVEmployeeWorkOrderQtyAccumulator` attribute to the `RSSVEmployeeWorkOrderQty` class, as shown below.

    ```
        [PXHidden]
        [RSSVEmployeeWorkOrderQtyAccumulator]
        public class RSSVEmployeeWorkOrderQty : PXBqlTable, IBqlTable
        {        ...
        }
    ```

    You have added the custom attribute directly to the `RSSVEmployeeWorkOrderQty` DAC because this class is updated only from code and not through the UI.

4.  Build the project.

**Parent topic:**[Updating Data with a Custom PXAccumulator Attribute](../StudioDeveloperGuide/CodeCustomization_PXAccumulator_Mapref.md)

