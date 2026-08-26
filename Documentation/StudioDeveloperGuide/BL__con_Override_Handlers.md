# Override of Event Handlers {#_d316d773-1548-4a23-b542-a4bf7aa4ecc6 .concept}

You can override an event handler with or without calling the base method.

**Attention:** The Acumatica Framework doesn't support overriding of `CacheAttached` event handlers.

To override an event handler without invocation of the base method, use code based on the following template.

```language-csharp
protected virtual _(Events.[EventName]<[DACName], [FieldName]> e) 
{
  … 
}
```

To override an event handler with invocation of the base method, use code based on the following template.

```language-csharp
protected virtual void _(
    Events.[EventName]<[DACName], [FieldName]> e, 
    PX[EventName] baseMethod)
{
  baseMethod(e.Cache, e.Args);
  … 
}
```

**Tip:** For a base method, you should provide two parameters because a base method is a classic interceptor delegate, not a generic one. For details, see [Types of Graph Event Handlers](BL__con_Events_Types.md).

For example, to override an event handler for the RowSelected event of the `CurrencyInfo` class, use the following code.

```language-csharp
protected virtual void _(Events.RowSelected<CurrencyInfo> e, PXRowSelected baseMethod)
{
  baseMethod(e.Cache, e.Args);
}
```

## Overriding Event Handlers with Delegate Parameters That Have the Generic Delegate Signature { .section}

The Acumatica Framework’s event handler override mechanism supports only event handlers whose delegate parameters' signature matches the signature of a graph’s classic event handler \(shown below\).

```language-csharp
protected virtual void _(Events.FieldUpdating<APInvoice, APInvoice.docBal> e, 
  PXFieldUpdating fieldUpdatingBase)
{
}
```

Here, the second parameter has a classic delegate type: `PXFieldUpdating`.

The mechanism doesn't support overrides whose delegate parameters' signature matches the signature of a graph’s generic event handler, such as `Action<Events.FieldUpdating<…>>` in the following example.

```language-csharp
protected virtual void _(Events.FieldUpdating<APInvoice, APInvoice.docBal> e,
    Action<Events.FieldUpdating<APInvoice, APInvoice.docBal>> fieldUpdatingBase)
{
}
```

Note that it's not the exact delegate type that matters—that is, whether it’s `PXFieldUpdating`, `PXFieldUpdated`, or your own custom delegate. What matters is the delegate's signature, specifically:

-   The return type
-   The list of parameter types
-   The list \(if any\) of generic type parameters

If your delegate parameters' signature matches the signature of a graph’s classic event handler, the system will detect the override and wire it up correctly. Thus, the system recognizes the following override even though it doesn’t use the `PXFieldUpdating` delegate type.

```language-csharp
protected virtual void _(Events.FieldUpdating<APInvoice, APInvoice.docBal> e,
    Action<PXCache, PXFieldUpdatingEventArgs> fieldUpdatingBase)
{
}
```

Internally, `PXFieldUpdating`, PXFieldUpdated, and all other predefined delegate types are just delegate aliases that are available for your convenience. The override mechanism doesn’t treat those aliases specially.

**Parent topic:**[Working with Events](../StudioDeveloperGuide/BL__mng_Working_With_Events.md)

