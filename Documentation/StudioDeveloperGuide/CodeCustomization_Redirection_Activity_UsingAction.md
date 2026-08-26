# Redirection to Webpages:To Add Redirection Links to a Grid by Using an Action {#_32eb36c6-8223-4c21-b647-c2d6cd9e7ac9 .task}

This activity will walk you through the process of adding redirection links to the grid of a form by using an action.

## Story { .section}

Suppose that you want to improve the navigation between the rows of the grid on the Open Payment Summary \(RS401000\) form and the repair work orders and sales orders listed in these lines. You need to implement redirection links, which will give users the ability to navigate to the form that has detailed information about the repair work order or the sales order.

Two types of orders are displayed on the Open Payment Summary \(RS401000\) form: work orders and sales orders. Thus, when a user clicks an order number in the **Order Nbr.** column of the grid, the form corresponding to the order number should be opened:

-   Work order: The Repair Work Orders \(RS301000\) form
-   Sales order: The [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form

You cannot implement this behavior by using the approach described in [Redirection to Webpages: To Add Redirection Links to the Grid by Using the PXSelector Attribute](CodeCustomization_Redirection_Activity.md). To implement this logic, you will declare an action, and inside the action method, you’ll implement a redirection link to the corresponding form.

## Process Overview { .section}

In this activity, you will add redirection links to the **Order Nbr.** column of the Open Payment Summary \(RS401000\) inquiry form by performing the following steps:

1.  Defining an action in the graph of the form, and defining an action method with the logic to open the corresponding data entry form, based on the order type
2.  Adjusting the TypeScript file of the form
3.  On the Open Payment Summary \(RS401000\) form, testing the redirection links to make sure they open the appropriate data entry form: [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) or Repair Work Orders \(RS301000\)

## System Preparation { .section}

Make sure that you’ve completed the steps described in the following prerequisite activities:

1.  [Test Instance for Customization: To Deploy an Instance with a Custom Form that Implements a Workflow](CodeCustomization_PrepareInstance_Activity_DeployInstanceT240.md)
2.  [Inquiry Forms: To Set Up an Inquiry Form](../DeveloperGuide/UIDev_InquiryForm_Activity_SetupForm.md)
3.  [Inquiry Forms: To Create the UI of an Inquiry Form with Only a Grid](../DeveloperGuide/UIDev_InquiryForm_Activity_UI.md)
4.  [Filtering Parameters: To Add a Filter for an Inquiry Form](../DeveloperGuide/UIDev_FilteringParameters_Activity_ConfigureFilter.md)
5.  [Data View Delegates: To Add a Filtering Query Dynamically](CodeCustomization_DataViewDelegates_Activity_DynamicFilter.md)

## Step 1: Adding an Action to the Graph { .section}

In this step, you’ll implement an action that redirects the user to the Repair Work Orders \(RS301000\) or [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form, depending on the order type of the selected line. To add a redirection link by using an action, do the following:

1.  In the `RSSVPaymentPlanInq` graph, define the `ViewOrder` action as follows.

    ```language-csharp
            public PXAction<RSSVWorkOrderToPay> ViewOrder = null!;
            [PXButton(DisplayOnMainToolbar = false)]
            [PXUIField]
            protected virtual void viewOrder()
            {
                RSSVWorkOrderToPay order = DetailsView.Current;
                // if this is a repair work order
                if (order.OrderType == OrderTypeConstants.WorkOrder)
                {
                    // create a new instance of the graph
                    var graph = PXGraph.CreateInstance<RSSVWorkOrderEntry>();
                    // set the current property of the graph
                    graph.WorkOrders.Current = graph.WorkOrders.
                      Search<RSSVWorkOrder.orderNbr>(order.OrderNbr);
                    // if the order is found by its ID,
                    // throw an exception to open the order in a new tab
                    if (graph.WorkOrders.Current != null)
                    {
                        throw new PXRedirectRequiredException(graph, true,
                          "Repair Work Order Details");
                    }
                }
                // if this is a sales order
                else
                {
                    // create a new instance of the graph
                    var graph = PXGraph.CreateInstance<SOOrderEntry>();
                    // set the current property of the graph
                    graph.Document.Current = graph.Document.
                      Search<SOOrder.orderNbr>(order.OrderNbr);
                    // if the order is found by its ID,
                    // throw an exception to open the order in a new tab
                    if (graph.Document.Current != null)
                    {
                        throw new PXRedirectRequiredException(graph, true,
                          "Sales Order Details");
                    }
                }
            }
    ```

    In the action method, you have created a new instance of the `RSSVWorkOrderEntry` or `SOOrderEntry` graph, depending on the type of the order. In the graph, you’ve set the `Current` property of the primary view’s PXCache to the order if the system has found it by using the specified ID.

    If the current data record is set for the PXCache object, you throw the PXRedirectRequiredException to open the form with the current data record displayed.

    **Tip:** To learn the primary view name, you can use the Element Inspector to explore the Summary area of the entry form.

2.  Build the project.

## Step 2: Adjusting the TypeScript File of the Form { .section}

To add a redirection link by using an action, you need to adjust the TypeScript file of the form. Do the following:

1.  In the `RS401000.ts` file, add the linkCommand and PXActionState import directives.
2.  In the `RS401000` screen class, add a property of the PXActionState type for the `viewOrder` action, as shown below.

    ```language-javascript
    	ViewOrder: PXActionState;
    ```

3.  In the `RSSVWorkOrderToPay` view class, add the linkCommand decorator for the `OrderNbr` field, as shown in the following code. As the type parameter of the linkCommand decorator, you specify the screen class in which the property for the action is defined.

    ```language-javascript
    	@linkCommand<RS401000>("ViewOrder")
    	OrderNbr: PXFieldState;
    ```

4.  Publish the customization project.

## Step 3: Testing the Redirection Links { .section}

To test the redirection links that you’ve implemented, do the following:

1.  In Acumatica ERP, open the Open Payment Summary \(RS401000\) form.
2.  In the **Order Nbr.** column of the table, click any sales order number—that is, the number of any order with an **Order Type** of *SO*.

    In a new tab, the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form should open with the selected sales order.

3.  On the Open Payment Summary form, in the **Order Nbr.** column, click any repair work order number—that is, any order with an **Order Type** of *WO*.

    In a new tab, the Repair Work Orders \(RS301000\) form should open with the selected repair work order.


**Parent topic:**[Redirecting the User to Webpages](../StudioDeveloperGuide/CodeCustomization_Redirection_Mapref.md)

