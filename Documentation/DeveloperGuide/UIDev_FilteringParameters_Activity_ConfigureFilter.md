# Filtering Parameters:To Add a Filter for an Inquiry Form {#_8d69344b-afae-42f2-a68d-6ec995b752a9 .task}

This activity will walk you through the process of implementing custom filtering parameters for an inquiry form.

## Story { .section}

Suppose that you need to add custom filtering parameters to the Open Payment Summary \(RS401000\) inquiry form, which you created in the *PhoneRepairShop* customization project, so that users can filter the repair work orders listed in the table on the inquiry form.

The form will contain UI elements in the Selection area that can be used to filter the listed repair work orders by the customer and service type, and to filter the listed sales orders by the customer. You will define filtering parameters for these UI elements.

## Process Overview { .section}

In this activity, you’ll add filtering parameters to the Open Payment Summary \(RS401000\) inquiry form by performing the following steps:

1.  Defining the DAC with only unbound fields that will be used as filtering parameters
2.  Configuring the PXFilter data view and the PXCancel action as graph members used for filtering data for an inquiry form
3.  Adding the Selection area to the inquiry form by adjusting the TypeScript and HTML files of the form

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Configure your instance by performing the [Test Instance for Customization: To Deploy an Instance with a Custom Form that Implements a Workflow](../StudioDeveloperGuide/CodeCustomization_PrepareInstance_Activity_DeployInstanceT240.md) prerequisite activity.
2.  Complete the steps described in the following prerequisite activities:
    1.  [Inquiry Forms: To Set Up an Inquiry Form](UIDev_InquiryForm_Activity_SetupForm.md)
    2.  [Inquiry Forms: To Create the UI of an Inquiry Form with Only a Grid](UIDev_InquiryForm_Activity_UI.md)

## Step 1: Defining a DAC with Filtering Parameters for the Inquiry Form { .section}

In this step, you will define the `RSSVWorkOrderToPayFilter` DAC, which will be used to display the selection criteria \(filtering parameters\) on the Open Payment Summary \(RS401000\) form. The DAC will contain two fields \(`CustomerID` and `ServiceID`\) that correspond to the filtering parameters. To define the DAC with filtering parameters, do the following:

1.  In the `RSSVPaymentPlanInq` graph, define the `RSSVWorkOrderToPayFilter` data access class by using the following code.

    ```language-csharp
        [PXHidden]
        [PXVirtual]
        public class RSSVWorkOrderToPayFilter : PXBqlTable, IBqlTable
        {   
            #region CustomerID
            [CustomerActive(DisplayName = "Customer ID")]
            public virtual int? CustomerID { get; set; }
            public abstract class customerID :
                PX.Data.BQL.BqlInt.Field<customerID>
            { }
            #endregion
            
            #region ServiceID
            [PXInt()]
            [PXUIField(DisplayName = "Service")]
            [PXSelector(
                typeof(Search<RSSVRepairService.serviceID>),
                typeof(RSSVRepairService.serviceCD),
                typeof(RSSVRepairService.description),
                DescriptionField = typeof(RSSVRepairService.description),
                SelectorMode = PXSelectorMode.DisplayModeText)]
            public virtual int? ServiceID { get; set; }
            public abstract class serviceID :
                PX.Data.BQL.BqlInt.Field<serviceID>
            { }
            #endregion
        }
    ```

2.  For the filtering parameters to be used in a BQL query, add the `serviceID` and `customerID` fields to the `RSSVWorkOrderToPay` DAC by using the following code.

    ```language-csharp
            public new abstract class serviceID :
                PX.Data.BQL.BqlInt.Field<serviceID>
            { }
    
            public new abstract class customerID :
                PX.Data.BQL.BqlInt.Field<customerID>
            { }
    ```

3.  Build the project.

## Step 2: Configuring the Graph Members Used for Filtering Data on the Inquiry Form { .section}

In this step, you will prepare the graph members to be used for filtering data on the form. To define the graph members, in the `RSSVPaymentPlanInq` graph, do the following:

1.  Define a PXFilter data view \(as shown in the following code\), which provides filtering parameters for the inquiry form.

    ```language-csharp
            public PXFilter<RSSVWorkOrderToPayFilter> Filter = null!;
    ```

2.  Define the `PXCancel` action, which adds the **Cancel** button to the form toolbar, as shown in the following code. The action clears the filter.

    ```language-csharp
            public PXCancel<RSSVWorkOrderToPayFilter> Cancel = null!;
    ```

3.  Replace the definition of the `DetailsView` data view with the following code, which not only selects repair work orders that do not have the *Paid* status but also matches the filtering criteria based on the values of the `serviceID` and `customerID` fields.

    ```language-csharp
         [PXFilterable]
           public 
            SelectFrom<RSSVWorkOrderToPay>.
            InnerJoin<ARInvoice>.On<
                ARInvoice.refNbr.IsEqual<RSSVWorkOrderToPay.invoiceNbr>>.
            Where<
                RSSVWorkOrderToPay.status.IsNotEqual<
                    RSSVWorkOrderEntry_Workflow.States.paid>.
                And<RSSVWorkOrderToPayFilter.customerID.FromCurrent.IsNull.
                     Or<RSSVWorkOrderToPay.customerID.IsEqual<
                          RSSVWorkOrderToPayFilter.customerID.FromCurrent>>>.
                And<RSSVWorkOrderToPayFilter.serviceID.FromCurrent.IsNull.
                     Or<RSSVWorkOrderToPay.serviceID.IsEqual<
                          RSSVWorkOrderToPayFilter.serviceID.FromCurrent>>>>.
            View.ReadOnly DetailsView = null!;
    ```

4.  Override the `IsDirty` property of the graph, as the following code shows.

    ```language-csharp
            public override bool IsDirty => false;
    ```

5.  Build the project.

## Step 3: Adding Filtering Elements for the TypeScript File of the Form { .section}

In this step, you will define TypeScript code for the Selection area, which has the elements to be used for filtering. Do the following:

1.  In the `RS401000.ts` file, add createSingle and PXFieldOptions to the list of import directives \(if they are not already added\).
2.  In the `RS401000` screen class, add the view property for the Selection area before the `DetailsView` property, as shown in the following code.

    ```language-javascript
    	@viewInfo({ containerName: "Selection Area" })
    	Filter = createSingle(RSSVWorkOrderToPayFilter);
    ```

3.  In the primaryView parameter of the graphInfo decorator, change the value to `Filter`, as shown below.

    ```language-javascript
    @graphInfo({
    	graphType: "PhoneRepairShop.RSSVPaymentPlanInq",
    	primaryView: "Filter",
    })
    ```

4.  Add the view class with the fields of the Selection area of the form, as shown in the code below.

    ```language-javascript
    export class RSSVWorkOrderToPayFilter extends PXView {
    	CustomerID: PXFieldState<PXFieldOptions.CommitChanges>;
    	ServiceID: PXFieldState<PXFieldOptions.CommitChanges>;
    }
    ```

    You've specified the CommitChanges option for each field to immediately refresh data records as soon a user updates a filtering parameter.

5.  Save your changes.

## Step 4: Adding Filtering Elements for the HTML File of the Form { .section}

In this step, you will define HTML code for the Selection area. Do the following:

1.  In the `RS401000.html` file, before the qp-grid tag, add qp-template tag with a single qp-fieldset tag inside it. In the qp-fieldset tag, add two field tags for the filtering parameters, as shown in the following code.

    ```language-xml
        <qp-template name="17-17-14" id="formFilter">
            <qp-fieldset slot="A" id="columnFirst" view.bind="Filter">
                <field name="CustomerID"></field>
                <field name="ServiceID"></field>
            </qp-fieldset>
        </qp-template>
    ```

    You've used the 17-17-14 template, which organizes the controls in three columns. You have only two controls to be displayed in the Selection area; therefore, you’ve placed all of them in the first column of the template.

2.  Save your changes.

**Parent topic:**[Adding Filtering Parameters to a Form](../DeveloperGuide/UIDev_FilteringParameters_Mapref.md)

