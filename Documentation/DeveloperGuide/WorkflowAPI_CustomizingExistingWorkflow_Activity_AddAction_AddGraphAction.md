# Step 1: Adding a Graph Action {#_f1c6a32d-38d9-4420-ad5e-50ad1ee55257 .task}

In this step, you will create an extension of the graph of the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form. In the extension, you will add an action that opens a repair work order. Do the following:

1.  Learn the name of the graph where the action should be added:
    1.  On the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form, click Ctrl + Alt, and click the Summary area of the form.
    2.  In the **Element Properties** dialog box, notice the name in the **Business Logic** box: SOInvoiceEntry.
2.  In the `PhoneRepairShop_Code` project, create an extension of the `SOInvoiceEntry` graph, as the following code shows.

    ```language-csharp
    namespace PhoneRepairShop
    {
        // Acuminator disable once PX1016 ExtensionDoesNotDeclareIsActiveMethod extension should be constantly active
        public class SOInvoiceEntry_Extension : PXGraphExtension<SOInvoiceEntry>
        {
        }
    }
    ```

    **Tip:** Use Acuminator to suppress the [PX1016](https://github.com/Acumatica/Acuminator/blob/master/docs/diagnostics/PX1016.md) error in a comment. In this activity, for simplicity, the extension is always active.

3.  In the graph extension, implement the `viewOrder` action, as the following code shows.

    ```language-csharp
            public PXAction<ARInvoice> ViewOrder = null!;
            [PXButton, PXUIField(DisplayName = "View Repair Work Order")]
            protected virtual IEnumerable viewOrder(PXAdapter adapter)
            {
                var orderEntry = PXGraph.CreateInstance<RSSVWorkOrderEntry>();
                var order = orderEntry.WorkOrders.Search<RSSVWorkOrder.invoiceNbr>(
                    Base.Document.Current.RefNbr);
                if (order == null)
                    return adapter.Get();
    
                orderEntry.WorkOrders.Current = order;
                throw new PXRedirectRequiredException(orderEntry, true,
                    nameof(ViewOrder))
                {
                    Mode = PXBaseRedirectException.WindowMode.NewWindow
                };
            }
    ```

4.  Make sure the following using directives are added.

    ```language-csharp
    ﻿using PX.Data;
    using PX.Objects.SO;
    using System.Collections;
    using PX.Objects.AR;
    ```

5.  Save your changes.

**Parent topic:**[Workflow Customization: To Add an Action to an Existing Workflow](../DeveloperGuide/WorkflowAPI_CustomizingExistingWorkflow_Activity_AddAction.md)

