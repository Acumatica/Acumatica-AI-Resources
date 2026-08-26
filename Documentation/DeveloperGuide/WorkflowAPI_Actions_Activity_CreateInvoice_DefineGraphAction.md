# Step 1: Defining the Graph Action {#_d3315a20-3241-4ab4-8be1-5603cb128d9b .concept}

You should define the method in which an invoice is created, and then you can call this method in the `PXLongOperation.StartOperation` method.

You will use multiple graphs in the method that creates an invoice. To save all changes from multiple graphs to the database, you will use a single PXTransactionScope object. It gives you the ability to avoid incomplete data being saved to the database if an error occurs in the middle of the method.

**Tip:** In Acumatica ERP, there are two types of invoices that can be created for a customer: SO and AR. An SO invoice, which can include stock items, is an extension of an AR invoice, which cannot include stock items. Repair work orders usually have stock items; therefore, you will implement the creation of an SO invoice. However, regardless of your implementation, if an order does not include stock items, the system will create an AR invoice, and if an order includes stock items, the system will create an SO invoice.

To define the method in which the SO invoice is created and the respective action, do the following:

1.  Add the following `using` directives to the `RSSVWorkOrderEntry.cs` file \(if they have not been added yet\).

    ```language-csharp
    using System.Collections.Generic;
    using PX.Objects.SO;
    using PX.Objects.AR;
    ```

    **Tip:** Instead of adding the `using` directives manually, you can add them with the help of the Quick Actions and Refactorings feature of Visual Studio after you define the method in the next instruction.

2.  Add the following static method, `CreateInvoice`, to the `RSSVWorkOrderEntry` graph. The `CreateInvoice` method creates the SO invoice for the current work order.

    ```language-csharp
            private static void CreateInvoice(RSSVWorkOrder workOrder)
            {
                using (var ts = new PXTransactionScope())
                {
                    // Create an instance of the SOInvoiceEntry graph.
                    var invoiceEntry = PXGraph.CreateInstance<SOInvoiceEntry>();
                    // Initialize the summary of the invoice.
                    var doc = new ARInvoice()
                    {
                        DocType = ARDocType.Invoice
                    };
                    doc = invoiceEntry.Document.Insert(doc);
                    doc.CustomerID = workOrder.CustomerID;
                    invoiceEntry.Document.Update(doc);
    
                    // Create an instance of the RSSVWorkOrderEntry graph.
                    var workOrderEntry =
                        PXGraph.CreateInstance<RSSVWorkOrderEntry>();
                    workOrderEntry.WorkOrders.Current = workOrder;
    
                    // Add the lines associated with the repair items
                    // (from the Repair Items tab).
                    foreach (RSSVWorkOrderItem line in
                        workOrderEntry.RepairItems.Select())
                    {
                        var repairTran = invoiceEntry.Transactions.Insert();
                        repairTran.InventoryID = line.InventoryID;
                        repairTran.Qty = 1;
                        repairTran.CuryUnitPrice = line.BasePrice;
                        invoiceEntry.Transactions.Update(repairTran);
                    }
                    // Add the lines associated with labor (from the Labor tab).
                    foreach (RSSVWorkOrderLabor line in
                        workOrderEntry.Labor.Select())
                    {
                        var laborTran = invoiceEntry.Transactions.Insert();
                        laborTran.InventoryID = line.InventoryID;
                        laborTran.Qty = line.Quantity;
                        laborTran.CuryUnitPrice = line.DefaultPrice;
                        laborTran.CuryExtPrice = line.ExtPrice;
                        invoiceEntry.Transactions.Update(laborTran);
                    }
    
                    // Save the invoice to the database.
                    invoiceEntry.Actions.PressSave();
    
                    // Assign the generated invoice number and save the changes.
                    workOrder.InvoiceNbr = invoiceEntry.Document.Current.RefNbr;
                    workOrderEntry.WorkOrders.Update(workOrder);
                    workOrderEntry.Actions.PressSave();
    
                    ts.Complete();
                }
            }
    ```

    In the method above, you have done the following:

    1.  You have created an instance of the `SOInvoiceEntry` graph. This graph works with SO invoices.

        **Important:** To instantiate graphs from code, use the `PXGraph.CreateInstance<T>()` method. Do not use the graph constructor `new T()`, because in this case, no extensions or overrides of the graph are initialized.

        You have initialized the summary of the invoice by using the `ARInvoice` class. You have assigned a value to the `CustomerID` field, which is required to create an invoice. After that you have updated the `ARInvoice` instance in cache.

    2.  You have created an instance of the RSSVWorkOrderEntry graph, which you need to get access to the current work order and to save the generated invoice number to the current work order.

    3.  You have selected the repair and labor items specified on the Repair Work Orders form by using the instance of the `RSSVWorkOrderEntry` graph. Then you have added lines to the invoice by adding instances of the `ARTran` class: the lines associated with repair items, followed by the lines associated with labor items.
    4.  To save the created invoice in the database, you have called the `PressSave()` method of the `SOInvoiceEntry` graph.

    5.  You have saved the number of the generated invoice to the work order and updated its value in the cache. Then you have saved the changes to the database by invoking the `Actions.PressSave()` method.
    6.  At the end of the method, you have completed the transaction.
3.  In the `RSSVWorkOrderEntry` graph, define the `CreateInvoiceAction` action, which adds the **Create Invoice** command to the More menu \(under **Other**\), adds the button with the same name on the form toolbar, and invokes the PXLongOperation.StartOperation method, as shown in the following code.

    **Attention:** To perform a background operation, an action method needs to have a parameter of the PXAdapter type and return IEnumerable.

    ```language-csharp
            public PXAction<RSSVWorkOrder> CreateInvoiceAction = null!;
            [PXButton]
            [PXUIField(DisplayName = "Create Invoice", Enabled = true)]
            protected virtual IEnumerable createInvoiceAction(PXAdapter adapter)
            {
                // Populate a local list variable.
                List<RSSVWorkOrder> list = new List<RSSVWorkOrder>();
                foreach (RSSVWorkOrder order in adapter.Get<RSSVWorkOrder>())
                {
                    list.Add(order);
                }
    
                // Trigger the Save action to save changes in the database.
                Actions.PressSave();
    
                var workOrder = WorkOrders.Current;
                PXLongOperation.StartOperation(this, delegate () {
                    CreateInvoice(workOrder);
                });
    
                // Return the local list variable.
                return list;
            }
    ```

    You have used the PXButton attribute to set up a button on the form. You have specified the button name in the PXUIField attribute.

    In the `createInvoiceAction` method, you have composes a list of work orders by using the adapter.Get method, and invoked the Actions.PressSave action. Because the return of the adapter.Get method does not include data that has not been saved on the form, by calling the PressSave method, you have updated the `workOrders` in the composed list.

    Then you have used the `PXLongOperation.StartOperation()` method to create an invoice. Within the method that you pass to StartOperation\(\), you have invoked the `CreateInvoice` method, which creates the invoice for the current work order.

    **Important:** Inside the delegate method of the StartOperation method, you cannot use members of the current graph.

    Finally, you have returned the list of work orders.


**Parent topic:**[Workflow Actions: To Configure the Conditional Appearance of the Action](../DeveloperGuide/WorkflowAPI_Actions_Activity_CreateInvoice.md)

