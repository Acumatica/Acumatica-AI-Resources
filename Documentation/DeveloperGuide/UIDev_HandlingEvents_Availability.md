# UI Events: Changing of Availability of a UI Element {#_f365392b-df72-40c2-8041-9282da4ea682 .concept}

To change the availability of a UI element, you can implement an event handler for the RowSelected or CurrentRowChanged event. If you implement any of these event handlers, the availability of the element is defined on the client side without both communication with the server side and the committing of changes to the server. Therefore implementation of these event handlers can improve the performance of the application.

## Changing Availability of a Button { .section}

To change the availability of a button, for example, depending on a row selected in the table or a change in the table, you need to do the following:

1.  Declare the object of the PXActionState type in the screen or view class.

    ```language-javascript
    export class SOLine extends PXView {​
        POSupplyOK: PXActionState;​
    }
    ```

2.  Implement an event handler for the RowSelected or CurrentRowChanged event.

    In the following example, a handler for the RowSelected event is used to define the availability of the button that corresponds to the `POSupplyOK` action. The `POSupplyOK` action is defined in the `SOLine` view class, whose instance is available through the `Transactions` view property.

    ```language-javascript
    export class SO301000 extends PXScreen {​
      **Transactions** = createCollection(**SOLine**);​
    ​
      @handleEvent(CustomEventType.CurrentRowChanged, { view: "Transactions" })
      onSOLineChanged(args: CurrentRowChangedHandlerArgs<PXViewCollection<SOLine>>) {
        const model = (<any>args.viewModel as SOLine); 
        const ar = args.viewModel.activeRow;
    
        if (model.POSupplyOK) model.POSupplyOK.enabled = !!ar?.POCreate.value;
    
        if (model.ItemAvailability) 
          model.ItemAvailability.enabled = !!ar?.IsStockItem.value;
        if (model.SOOrderLineSplittingExtension_ShowSplits) 
          model.SOOrderLineSplittingExtension_ShowSplits.enabled = !!ar;
      }
    }​
    ```


**Parent topic:**[Handling UI Events](../DeveloperGuide/UIDev_HandlingEvents_Mapref.md)

