# Inquiry Forms:To Set Up an Inquiry Form {#_1a40b984-c999-45f6-8443-755dcdaaf914 .task}

This activity will walk you through the process of creating an inquiry form without any filtering parameters.

## Story { .section}

Suppose that you need to create an inquiry form in the *PhoneRepairShop* customization project that will display a table showing all repair work orders that have not yet been paid in full. Each row should show information about the invoices that have been created for these orders.

## Process Overview { .section}

In this activity, you will create the Open Payment Summary \(RS401000\) custom inquiry form and define and configure its components by performing the following steps:

1.  Creating the inquiry form
2.  Defining the DAC for the grid view of the inquiry form
3.  Calculating a value of a field in the RowSelecting event handler
4.  Defining the data view for the inquiry form

## System Preparation { .section}

Make sure that you’ve configured your instance, as described in [Test Instance for Customization: To Deploy an Instance with a Custom Form that Implements a Workflow](../StudioDeveloperGuide/CodeCustomization_PrepareInstance_Activity_DeployInstanceT240.md).

## Step 1: Creating the Form—Self-Guided Exercise { .section}

In this self-guided exercise, you will create the Open Payment Summary \(RS401000\) form on your own. Although this is a self-guided exercise, you can use the details and suggestions in this topic as you create the form. \(Form creation is described in detail in the *T200 Maintenance Forms* training course.\)

If you’re using the Customization Project Editor to complete the self-guided exercise, you can perform the following instructions:

1.  On the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form, click the name of your customization project.

    The [Screens](../UserGuide/AU_20_10_00.md) page of the Customization Project Editor opens.

2.  On the page toolbar of the [Screens](../UserGuide/AU_20_10_00.md) page, click **Create New Screen**.
3.  In the **Create New Screen** dialog box, which opens, specify the following settings:
    -   **Screen ID**: `RS.40.10.00`
    -   **Graph Name**: `RSSVPaymentPlanInq`
    -   **Graph Namespace**: `PhoneRepairShop`
    -   **Page Title**: `Open Payment Summary`
    -   **Template**: *FormGrid \(FormDetail\)*
    -   **Create Modern UI Files**: Selected
4.  Move the generated `RSSVPaymentPlanInq` graph to the extension library.

    **Tip:**

    -   Don’t make any standard system actions available.
    -   Don’t define any data views. You’ll define the data view later in this activity.
5.  Make sure that the `RSSVWorkOrder` DAC is defined in the `PhoneRepairShop_Code` Visual Studio project.

    Don’t define any new DACs; you will define a new DAC in the next step.

6.  Build the project in Visual Studio.
7.  Update the customization project with a new version of `PhoneRepairShop_Code.dll`, and publish the customization project.
8.  Add a link to the Open Payment Summary form to the *Inquiries* category of the Phone Repair Shop workspace, and make it available in the workspace’s quick menu.
9.  In the Customization Project Editor, update the *SiteMapNode* item for the Open Payment Summary form.

## Step 2: Defining the DAC for the Grid View of the Form { .section}

The Open Payment Summary \(RS401000\) form displays information about repair work orders \(including the details of the invoice created for each order\). All fields on this form are unbound, and you don’t need to work with the fields on the Repair Work Orders \(RS301000\) form, which works with the `RSSVWorkOrder` DAC.

In this step, for the grid view of the Open Payment Summary form, you will derive the new `RSSVWorkOrderToPay` class from `RSSVWorkOrder` and extend the new class with additional DAC fields that are specific to the inquiry form. In the derived DAC, you’ll add the `OrderNbr`, `InvoiceNbr`, and `Status` abstract classes \(which are defined in the base `RSSVWorkOrder` DAC\) with the new modifier. You need to define new abstract classes because you’ll use the data fields of the derived class in BQL statements, such as the BQL statements in the data view of a processing form and in attributes.

To define the `RSSVWorkOrderToPay` DAC, do the following:

1.  In the `Helper/Messages.cs` file, add the `RSSVWorkOrderToPay` string to the Messages class, as shown below. This message will be used in the [PXCacheName](https://help.acumatica.com/(W(4))/Help?ScreenId=ShowWiki&pageid=052f5683-d20b-da61-4e6c-47a966162fb4) attribute for the new DAC.

    ```language-csharp
            public const string RSSVWorkOrderToPay = "Repair Work Order to Pay";
    ```

2.  In the `RSSVWorkOrder.cs` file, declare the `RSSVWorkOrderToPay` DAC: Derive the `RSSVWorkOrderToPay` class from `RSSVWorkOrder`, as shown below.

    ```language-csharp
        [PXCacheName(Messages.RSSVWorkOrderToPay)]
        public class RSSVWorkOrderToPay : RSSVWorkOrder
        {
        }
    ```

3.  In the `RSSVWorkOrderToPay` class, define the `OrderNbr`, `InvoiceNbr`, and `Status` abstract classes with the `new` modifier, as shown below.

    ```language-csharp
            #region InvoiceNbr
            public new abstract class invoiceNbr :
                PX.Data.BQL.BqlString.Field<invoiceNbr>
            { }
            #endregion
    
            #region Status
            public new abstract class status :
                PX.Data.BQL.BqlString.Field<status>
            { }
            #endregion
    
            #region OrderNbr
            public new abstract class orderNbr :
                PX.Data.BQL.BqlString.Field<orderNbr>
            { }
            #endregion
    ```

4.  In the `RSSVWorkOrderToPay` class, define the `PercentPaid` field, as shown below.

    ```language-csharp
            #region PercentPaid
            [PXDecimal]
            [PXUIField(DisplayName = "Percent Paid")]
            public virtual Decimal? PercentPaid { get; set; }
            public abstract class percentPaid :
                PX.Data.BQL.BqlDecimal.Field<percentPaid>
            { }
            #endregion
    ```


## Step 3: Calculating the PercentPaid Field in RowSelecting { .section}

In the derived DAC, you’ve added the `PercentPaid` field. During the retrieval of each `RSSVWorkOrder` record, the value of the `PercentPaid` field will be calculated from the database as the percentage of the invoice amount that has been paid. Add this logic as follows:

1.  In the `RSSVPaymentPlanInq` graph of the `RSSVPaymentPlanInq.cs` file, add the calculation of the `PercentPaid` field value in the RowSelecting event, as shown in the following code.

    ```language-csharp
            protected virtual void _(Events.RowSelecting<RSSVWorkOrderToPay> e)
            {
                if (e.Row == null) return;
                if (e.Row.OrderTotal == 0) return;
                RSSVWorkOrderToPay order = e.Row;
                var invoices = 
                    SelectFrom<ARInvoice>.
                    Where<ARInvoice.refNbr.IsEqual<@P.AsString>>.
                    View.Select(this, order.InvoiceNbr);
                if (invoices.Count == 0)
                    return;
                ARInvoice first = invoices[0];
                e.Row.PercentPaid = (order.OrderTotal - first.CuryDocBal) /
                    order.OrderTotal * 100;
            }
    ```

    In the event handler, you are selecting the invoice with the same number as the one specified in the repair work order; you’re then calculating the percentage.

    You need to use an event handler instead of attributes because you can’t check for values of *0* by using attributes.

    **Tip:** If you’ve generated the `RSSVPaymentPlanInq` graph from the Code Editor, you can remove the `Save` and `Cancel` actions defined in the graph.

2.  In the `RSSVPaymentPlanInq.cs` file, add the required `using` directives, which are shown in the following code.

    ```language-csharp
    using PX.Data.BQL.Fluent;
    using PX.Data.BQL;
    using PX.Objects.AR;
    ```

3.  Build the project.

## Step 4: Defining the Data View of the Form { .section}

In this step, you will add the data view to the `RSSVPaymentPlanInq` graph, which works with the Open Payment Summary \(RS401000\) form. In this data view, which provides data for the grid \(table\) of the inquiry form, you’ll select only those repair work orders that are not yet paid and the invoices for these orders.

To define the data view of the form in the `RSSVPaymentPlanInq` graph, do the following:

1.  In the `RSSVPaymentPlanInq.cs` graph, add the following member. \(Replace the automatically generated `DetailsView` member if you’ve used the Customization Project Editor to create the graph.\)

    ```language-csharp
            [PXFilterable]
            public 
                SelectFrom<RSSVWorkOrderToPay>.
                  InnerJoin<ARInvoice>.On<ARInvoice.refNbr.
                    IsEqual<RSSVWorkOrderToPay.invoiceNbr>>.
                Where<RSSVWorkOrderToPay.status.
                    IsNotEqual<RSSVWorkOrderEntry_Workflow.States.paid>>.
                View.ReadOnly DetailsView = null!;
    ```

    The `InnerJoin` clause adds information from the invoice that was created for the repair work order so that you can display the invoice’s due date and balance on the page.

    The `Where` clause excludes all orders with the *Paid* status from the results of the query.

    Because users don’t need to edit any records on the inquiry form, you’ve used the `ReadOnly` view type, which defines the selection of records in read-only mode. In the UI, Acumatica Framework automatically disables the editing of data records that were retrieved through a read-only data view.

2.  If you’ve generated the `RSSVPaymentPlanInq` graph from the Code Editor, remove the `MasterView` view and the `MasterTable` and `DetailsTable` classes.
3.  Build the project.

Now that you’ve defined the backend of the form, you can proceed with creating the form’s UI, as described in [Inquiry Forms: To Create the UI of an Inquiry Form with Only a Grid](UIDev_InquiryForm_Activity_UI.md).

**Parent topic:**[Defining an Inquiry Form](../DeveloperGuide/UIDev_InquiryForm_Mapref.md)

