# Customization Update to 2026 R2: Async Credit Card Processing Interfaces and Methods

Acumatica ERP credit card processing APIs now support asynchronous execution, making it easier to handle long-running processing and cancellation in customization projects and integrations.

If your code calls, implements, or overrides credit card processing APIs, you’ll need to migrate to the new async interfaces. You should review the affected synchronous methods and replace them with their asynchronous equivalents.

## How to Migrate

To update your customization project or integration, do the following:

-   Use the new interfaces in the `PX.CCProcessingBase.Interfaces.V2.Async` namespace.
-   Replace synchronous credit card processing methods with the corresponding `Async` methods.
-   Pass a `CancellationToken` where required.
-   Rebuild and test any plug-ins, wrappers, or overrides that use the obsolete synchronous APIs.

## Asynchronous Plug-In Processors

All processor interfaces in `PX.CCProcessingBase.Interfaces.V2` now have asynchronous equivalents in the `PX.CCProcessingBase.Interfaces.V2.Async` namespace. This change removes hidden blocking operations and allows you to use the `async/await` pattern throughout the call stack.

In the new interfaces, methods that communicate with a processing center have the `Async` suffix in their names and return `Task` or `Task<T>` \(shown below\).

```csharp
namespace PX.CCProcessingBase.Interfaces.V2.Async
{
  public interface ICCPayLinkProcessor
  {
    Task<PayLinkData> GetLinkAsync(PayLinkSearchParams searchParams, 
        CancellationToken ct = default);
    Task<PayLinkData> CreateLinkAsync(PayLinkProcessingParams inputData, 
        CancellationToken ct = default);
    Task<PayLinkData> UpdateLinkAsync(PayLinkProcessingParams inputData, 
        CancellationToken ct = default);
    Task<PayLinkData> CloseLinkAsync(PayLinkProcessingParams payLinkData, 
        CancellationToken ct = default);
    Task<PayLinkData> GetLinkWithTransactionsAsync(
        PayLinkSearchParams searchParams, CancellationToken ct = default);
  }
}
```

**Attention:** The built-in plug-ins, such as Acumatica Payments, have also been modified so they implement the new async interfaces.

## Backward Compatibility

To support incremental migration, new adapters are available in the `PX.CCProcessingBase.Interfaces.V2.Async.Adapter.SyncToAsync` namespace. If your plug-in hasn’t been updated yet, it automatically runs through the appropriate adapter and doesn’t require code changes. You can update existing plug-in assemblies gradually while continuing to support synchronous implementations.

**Attention:** Legacy methods and interfaces are marked as obsolete but remain available in 2026 R2. They are scheduled for removal in 2027 R2.

The adapters preserve the behavior of synchronous plug-ins, but they do not preserve binary compatibility when the return type of a method has changed. Assemblies that use such methods must be rebuilt against the libraries of this version.

## New HttpContextData Class

If you need to use HTTP context data during asynchronous processing, your plug-in can work with the new PX.CCProcessingBase.Interfaces.V2.HttpContextData class. You cannot use the System.Web.HttpContext.Current property because it is available only on the main thread, not on the thread where an asynchronous operation is executed.

When an asynchronous operation is started by using the StartAsyncPaymentProcessingOperation or AwaitPaymentProcessingOperation extension method, the system creates an instance of HttpContextData and stores it in PXContext. Plug-in methods can access this instance by calling the CCPaymentProcessingHelper.GetHttpContextData method.

## Learn More

For more information, see [Implementing Plug-Ins for Processing Credit Card Payments](../PlugInDevelopmentGuide/PlugIn_CCProcessing_Mapref.md).

**Parent topic:**[Updating Customization Projects to Acumatica ERP 2026 R2](../DeveloperGuide/CodeCustomization_CustomizationUpdate_Mapref.md)

