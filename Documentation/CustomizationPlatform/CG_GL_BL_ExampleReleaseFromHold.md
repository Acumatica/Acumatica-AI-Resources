# Putting a Sales Order on Credit Hold Status Programmatically {#_16b635ee-9b9f-4ba0-9fa4-7f0064fd8128 .concept}

When you create a sales order programmatically on the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form, this sales order is assigned the *Open* status by default.

To force a new sales order that is created programatically to move to the *Credit Hold* status instead of the *Open* status, you should explicitly set the credit rule from the customer profile after you have populated the needed fields of the sales order. The following code shows an example.

```
public class SoOrderEntryExt : PXGraphExtension<SOOrderEntry>
    {
        public static bool IsActive() => true;
 
        public PXAction<SOOrder> CreateNewOrder;
 
        [PXButton(CommitChanges = true)]
        [PXUIField(DisplayName = "Create New Order", 
                   Visibility = PXUIVisibility.Visible, Visible = true)]
        public IEnumerable createNewOrder(PXAdapter adapter)
        {
            var graph = PXGraph.CreateInstance<SOOrderEntry>();
            var customer = SelectFrom<Customer>
                    .Where<Customer.acctCD.IsEqual<P.AsString>>
                    .View.Select(graph, "ALPHABETLD").TopFirst;
            var inventory = SelectFrom<InventoryItem>
                    .Where<InventoryItem.inventoryCD.IsEqual<P.AsString>>
                    .View.Select(graph, "AM350WINDO").TopFirst;
            if(customer != null && inventory != null)
            {
                var soOrder = new SOOrder { OrderType = "SO", 
                                            CustomerID = customer.BAccountID };
                graph.Document.Insert(soOrder);
                SOLine line = graph.Transactions.Insert(new SOLine());
                line.OrderQty = 55;
                line.InventoryID = inventory.InventoryID;

                //Explicitly set the credit rule from the customer profile
                graph.customer.Current.CreditRule = customer.CreditRule;
 
                graph.Transactions.Update(line);
                graph.Save.Press();    
                graph.releaseFromHold.Press();
            }
            return adapter.Get();
        }
 
        public virtual void _(Events.RowSelected<SOOrder> args)
        {
            if (args.Row != null)
            {
                CreateNewOrder.SetEnabled(true);
            }
        }
    }
```

Alternatively, you can call the SOOrderEntry.ReloadCustomerCreditRule method after populating the needed fields of the sales order. Note that this method works only if the current customer cache of the SOOrder instance is not null.

**Parent topic:**[Examples of Functional Customization](../CustomizationPlatform/ACECustHow.md)

