# Customization Update to 2026 R1: Support for Dependency Injection in the Credit Card Processing Framework {#_9835d87d-e4ae-4f78-8407-5ce8624e673e .concept}

In Acumatica ERP 2026 R1, the credit card processing framework has been refactored to support **constructor-based dependency injection \(DI\)** for payment plug-ins. This refactoring gives you modern tools for creating more efficient, modular, and testable integrations.

## The Big Picture { .section}

Previously, credit card processing plug-ins relied on the `ServiceLocator` pattern to resolve dependencies. These approaches limited testability and made plug-ins harder to maintain. The following code shows an example of such an approach.

```language-csharp
protected async Task<HttpResponseMessage> ExecuteAsync(HttpRequestMessage request)
{
 using (var client = ServiceLocator.Current
                      .GetInstance<IHttpClientFactory>().CreateClient())
 {
  var response = await client.SendAsync(request);
  return response;
 }
}
```

In Version 2026 R1, the new framework replaces this pattern with **constructor-based dependency injection**. As a result, you can implement payment integrations that are **scalable and DI-friendly**.

## Dependency Injection for Plug-In Creation { .section}

Plug-in dependencies are now injected directly through constructors. Instead of resolving plug-ins through `ServiceLocator`, the framework resolves them through a factory managed by the DI container.

To create a plug-in object, the framework provides a plug-in factory called CCProcessingPluginFactory in the PX.Objects.CC.Factories namespace. In its constructor, a dictionary of all registered plug-in types is injected, and an instance of a plug-in is received by the plug-in's fully qualified type name. You can use this factory when you need to create plug-in instances explicitly.

The following code snippet shows the implementation of the plug-in factory.

```language-csharp
public class CCProcessingPluginFactory: ICCProcessingPluginFactory
{
  private readonly IIndex<string, ICCProcessingPlugin> _pluginIndex;

  public CCProcessingPluginFactory(IIndex<string, 
                                   ICCProcessingPlugin> pluginIndex)
  {
    _pluginIndex = 
      pluginIndex ?? throw new ArgumentNullException(nameof(pluginIndex));
  }

  public ICCProcessingPlugin CreatePluginForProcessingCenter
                                   (CCProcessingCenter processingCenter)
  {
    try
    {
      Type pluginType = 
           CCPluginTypeHelper.GetPluginTypeWithCheck(processingCenter);
      return CreatePluginForPluginType(pluginType.FullName);
    }
    catch (PXException)
    {
      throw;
    }
    catch (Exception ex)
    {
      throw new PXException(ex,
                AR.Messages.ERR_ProcessingCenterTypeInstanceCreationFailed,
                             processingCenter.ProcessingTypeName,
                             processingCenter.ProcessingCenterID);
    }
  }

  public ICCProcessingPlugin CreatePluginForPluginType(
                              string pluginTypeFullName)
  {
    if (string.IsNullOrEmpty(pluginTypeFullName))
      {
        throw new ArgumentNullException(nameof(pluginTypeFullName));
      }
    if (!_pluginIndex.TryGetValue(pluginTypeFullName, 
                                   out ICCProcessingPlugin plugin))
      {
        throw new PXException(
              AR.Messages.ERR_ProcessingCenterTypeInstanceCreationFailed, 
               pluginTypeFullName, "Unknown");
      }
      return plugin;
  }
}
```

## Plug-In Registration { .section}

The system automatically registers all plug-ins as services in the DI container. So if you develop a new plug-in, no additional registration steps are required.

To register plug-in types, the system checks available assemblies \(by using the `PXProviderTypeSelectorAttribute.GetTypesImplementing` method\) for implementations of the `CCProcessingBase.Interfaces.V2.ICCProcessingPlugin` interface. The system then registers every type as a named service. The following code shows an example.

```language-csharp
using System;
using Autofac;
using PX.CCProcessingBase.Interfaces.V2;
using PX.CCProcessingBase.Logging.V2;
using PX.Objects.CC.Factories;
using PX.Objects.Common;

namespace PX.Objects.AR.CCPaymentProcessing
{
  internal class ServiceRegistration : Module
  {
   protected override void Load(ContainerBuilder builder)
   {
     builder.RegisterType<CCProcessingPluginFactory>()
      .As<ICCProcessingPluginFactory>().SingleInstance();

     foreach (var type in PXProviderTypeSelectorAttribute
              .GetTypesImplementing(typeof(ICCProcessingPlugin)))
     {
        builder.RegisterType(type)
         .Named<ICCProcessingPlugin>(type.FullName);
     }
      builder.RegisterDecorator<
        LoggingProcessingPlugin, ICCProcessingPlugin>();
   }
  }
}
```

Note that this approach works for both built-in plug-ins and third-party plug-ins delivered as part of a customization project.

## Upgrade Notes { .section}

As a result of the credit card processing framework being refactored to support dependency injection, changes have been made to some data access classes \(DACs\) and methods.

The PX.Objects.CA.PXProviderTypeSelectorAttribute.ProviderRec DAC has been replaced with PX.Objects.Common.PXProviderTypeSelectorAttribute.ProviderRec.

The following methods have been replaced:

-   In the PX.Objects.AR.CCPaymentProcessing.CardsSynchronization namespace:
    -   CCSynchronizeCardManager.ctor\(PXGraph, String, CreditCardReceiverFactory\) with CCSynchronizeCardManager.ctor\(PXGraph, String, CreditCardReceiverFactory, ICCProcessingPluginFactory\)
-   In the PX.Objects.AR.CCPaymentProcessing namespace:
    -   CCCustomerInformationManager.GetCreatePaymentProfileForm\(PXGraph, ICCPaymentProfileAdapter\) with CCCustomerInformationManager.GetCreatePaymentProfileForm\(PXGraph, ICCPaymentProfileAdapter, ICCProcessingPluginFactory\)
    -   CCCustomerInformationManager.GetNewPaymentProfiles\(PXGraph, ICCPaymentProfileAdapter, ICCPaymentProfileDetailAdapter\) with CCCustomerInformationManager.GetNewPaymentProfiles\(PXGraph, ICCPaymentProfileAdapter, ICCPaymentProfileDetailAdapter, ICCProcessingPluginFactory\)
    -   CCCustomerInformationManager.GetManagePaymentProfileForm\(PXGraph, ICCPaymentProfile\) with CCCustomerInformationManager.GetManagePaymentProfileForm\(PXGraph, ICCPaymentProfile, ICCProcessingPluginFactory\)
    -   CCCustomerInformationManager.ProcessProfileFormResponse\(PXGraph, ICCPaymentProfileAdapter, ICCPaymentProfileDetailAdapter, String\) with CCCustomerInformationManager.ProcessProfileFormResponse\(PXGraph, ICCPaymentProfileAdapter, ICCPaymentProfileDetailAdapter, ICCProcessingPluginFactory, String\)
    -   CCCustomerInformationManager.GetOrCreatePaymentProfile\(PXGraph, ICCPaymentProfileAdapter, ICCPaymentProfileDetailAdapter\) with CCCustomerInformationManager.GetOrCreatePaymentProfile\(PXGraph, ICCPaymentProfileAdapter, ICCPaymentProfileDetailAdapter, ICCProcessingPluginFactory\)
    -   CCCustomerInformationManager.GetPaymentProfile\(PXGraph, ICCPaymentProfileAdapter, ICCPaymentProfileDetailAdapter\) with CCCustomerInformationManager.GetPaymentProfile\(PXGraph, ICCPaymentProfileAdapter, ICCPaymentProfileDetailAdapter, ICCProcessingPluginFactory\)
    -   CCCustomerInformationManager.DeletePaymentProfile\(PXGraph, ICCPaymentProfileAdapter, ICCPaymentProfileDetailAdapter\) with CCCustomerInformationManager.DeletePaymentProfile\(PXGraph, ICCPaymentProfileAdapter, ICCPaymentProfileDetailAdapter, ICCProcessingPluginFactory\)
    -   CCCustomerInformationManager.GetCustomerProfile\(PXGraph, String, String\) with CCCustomerInformationManager.GetCustomerProfile\(PXGraph, String, String, ICCProcessingPluginFactory\)
    -   CCCustomerInformationManager.ctor\(ProcessingCardsPluginFactory\) with CCCustomerInformationManager.ctor\(Object\)
-   In the PX.Objects.AR.CCPaymentProcessing.Helpers namespace:

    -   CCPluginTypeHelper.GetProcessor&lt;T&gt;\(CCProcessingCenter, ICardProcessingReadersProvider, CCProcessingFeature\) with CCPluginTypeHelper.GetProcessor&lt;T&gt;\(Object, ICardProcessingReadersProvider, CCProcessingFeature\)
    -   CCProcessingFeatureHelper.IsPaymentHostedFormSupported\(CCProcessingCenter\) with CCProcessingFeatureHelper.IsPaymentHostedFormSupported\(CCProcessingCenter, ICCProcessingPluginFactory\)
    -   CCProcessingHelper.CCProcessingCenterNeedsExpDateUpdate\(PXGraph, CCProcessingCenter\) with CCProcessingHelper.CCProcessingCenterNeedsExpDateUpdate\(PXGraph, CCProcessingCenter, ICCProcessingPluginFactory\)
    -   CCProcessingHelper.GetTokenizedPMsString\(PXGraph\) with CCProcessingHelper.GetTokenizedPMsString\(PXGraph, ICCProcessingPluginFactory\)
    Note that the CCProcessingFeatureHelper class is static now.

-   In the PX.Objects.CA namespace:
    -   PXProviderTypeSelectorAttribute.GetProviderRecs\(Type\[\]\) has been replaced with PXProviderTypeSelectorAttribute.GetProviderRecs\(Type\[\]\), which is now available in the PX.Objects.Common namespace.
    -   PXProviderTypeSelectorAttribute+ProviderRec.ctor\(\) has been replaced with PXProviderTypeSelectorAttribute+ProviderRec.ctor\(\), which is now available in the PX.Objects.Common namespace.
-   In the PX.Objects.CC.PaymentProcessing namespace, the following methods have been replaced:

    -   Level3Processing.ctor\(\) with Level3Processing.ctor\(ICCProcessingPluginFactory\)
    -   Level3Processing.ctor\(ICCPaymentProcessingRepository\) with Level3Processing.ctor\(ICCPaymentProcessingRepository, ICCProcessingPluginFactory\)
    -   MobileTerminalProcessing.ctor\(PXGraph, IAuthorizationManager, IApplicationManager\) with MobileTerminalProcessing.ctor\(PXGraph, IAuthorizationManager, IApplicationManager, ICCProcessingPluginFactory\)
    -   PayLinkProcessing.ctor\(ICCPaymentProcessingRepository\) with PayLinkProcessing.ctor\(ICCPaymentProcessingRepository, ICCProcessingPluginFactory\)
    In the PX.Objects.Extensions.PaymentTransaction namespace:

    -   PaymentTransactionGraph&lt;TGraph, TPrimary&gt;.GetClassMethodName\(\) with PaymentTransactionGraph&lt;TGraph, TPrimary&gt;.GetClassMethodName\(String\)

The following methods have been removed:

-   In the PX.Objects.AR.CCPaymentProcessing.Helpers namespace:
    -   CCPluginTypeHelper.CreatePlugin\(CCProcessingCenter\)
    -   CCProcessingFeatureHelper.ctor\(\)

**Parent topic:**[Updating Customization Projects to Acumatica ERP 2026 R1](../DeveloperGuide/CodeCustomization_CustomizationUpdate_Mapref.md)

