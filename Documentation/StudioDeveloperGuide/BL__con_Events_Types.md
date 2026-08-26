# Types of Graph Event Handlers {#_94d73d75-d469-4a86-8b47-99cf305cc592 .concept}

Acumatica Framework provides two types of graph event handlers: classic and generic. To declare a classic event handler, you specify the DAC name, the field name, and the type of event in the handler name. To declare a generic event handler, you specify the field name and the DAC name as type parameters of the event type. Both types of event handlers work the same.

We recommend using generic event handlers because they are easier to declare, use, and validate in Visual Studio. To refactor classic event handlers into generic event handlers, you can use Acuminator.

**Tip:** All examples in the subsequent topics demonstrate generic event handlers.

## Classic Event Handlers { .section}

Classic event handlers have the following signature:

-   For row-level events:

    ```
    protected virtual void [DACName]_[RowEventName](…)
    ```

-   For field-level events:

    ```
    public virtual void [DACName]_[FieldName]_[FieldEventName](…)
    ```


For example, a classic handler for the RowSelected event of the `CROpportunityProducts` DAC is defined as follows.

```
protected virtual void CROpportunityProducts_RowSelected(
    PXCache sender, PXRowSelectedEventArgs e) {
…}
```

## Generic Event Handlers { .section}

Generic event handlers have the following signature:

-   For the row-level events:

    ```
    public virtual _(Events.[RowEventName]<[DACName]> e)
    ```

    For example, a generic handler for the RowSelected event of the `CROpportunityProducts` DAC is defined as follows.

    ```
    protected virtual void _(Events.RowSelected<CROpportunityProducts> e)
    ```

-   For the field-level events:

    ```
    public virtual _(Events.[FieldEventName]<[DACName], [FieldName]> e)
    ```

    For example, a generic handler for the FieldUpdated event of the `CROpportunityProducts.contactID` field is defined as follows.

    ```
    protected virtual void _(Events.FieldUpdated<CROpportunityProducts.contactID> e)
    ```

    Specifying the DAC name as a parameter is optional because the system determines it automatically based on the field name. You should specify the DAC name explicitly if the field is inherited and you want to declare an event handler for the inherited field. For example, the FieldDefaulting event handler for the `CurrencyInfo.moduleCode` field looks as follows.

    ```
    protected override void _(Events.FieldDefaulting<CurrencyInfo, 
      CurrencyInfo.moduleCode> e)
    ```


**Tip:** The use of `_` as the name of a generic event handler is a best practice. We recommend that you name event handlers based on this established convention. However, this naming convention is not enforced by the Acumatica Framework. This means that it is technically possible to create a generic event with a different name that does not follow the established convention, as shown in the following example.

```
protected virtual void MyHandler(Events.RowSelected<CROpportunityProducts> e)
```

You can declare more than one generic event handler for the same event by adding a custom name \(for example, a number\) after the event name as follows.

```
public virtual _2(Events.[EventName]<[DACName], [FieldName]> e)
```

The following example shows the second event handler for the FieldUpdated event of the `CROpportunityProducts.contactID` field.

```
protected virtual void _2(Events.FieldUpdated<CROpportunityProducts.contactID> e)
```

**Tip:** While you can declare more than one generic event handler for the same event, you cannot declare more than one classic event handler for the same event.

However, we do not recommend declaring more than one event handler because Acumatica Framework does not determine the call order.

**Parent topic:**[Working with Events](../StudioDeveloperGuide/BL__mng_Working_With_Events.md)

