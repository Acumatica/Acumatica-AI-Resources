# Test Method: Registration of Services {#_44af5121-8520-45c9-be4a-7a4d415a581f .concept}

Acumatica uses the *dependency injection* technique to design software. With this technique, an object \(a *client*\) receives other objects \(*services*\) that it depends on; in this context, these services are called *dependencies*. Each of these services must be registered: For each needed interface, you must specify the service that implements this interface.

This software design pattern is used to decouple code components and make them easier to extend and test. For more information about dependency injection, see [https://docs.microsoft.com/en-us/dotnet/core/extensions/dependency-injection](https://docs.microsoft.com/en-us/dotnet/core/extensions/dependency-injection).

## Implementation of the Dependency Injection in Acumatica ERP and Unit Tests { .section}

In Acumatica ERP, the `Autofac` library is used to implement the dependency injection. For more information, see [Dependency Injection: General Information](../StudioDeveloperGuide/CodeCustomization_DependencyInjection_GeneralInfo.md#).

In unit tests, mock services are used instead of real complex objects. These mock services are simplified services that mimic real ones.

To register a service, you need to override the TestBase.RegisterServices method and make calls to the Autofac.ContainerBuilder.RegisterType generic method.

The following table includes the frequently used mock services that are available in Acumatica ERP.

|Mocked Interface|Mock Service|
|----------------|------------|
|`IFinPeriodRepository` \(defined in the `PX.Objects.GL.FinPeriods` namespace\)|`FinPeriodServiceMock` \(defined in the `PX.Objects.Unit` namespace\)|
|`IPXCurrencyService` \(defined in the `PX.Objects.CM.Extensions` namespace\)|`CurrencyServiceMock` \(defined in the `PX.Objects.Unit` namespace\)|

You can also define your own service, register it, and use it in a `PX.Tests.Unit.TestBase`-derived class as described in [Dependency Injection: General Information](../StudioDeveloperGuide/CodeCustomization_DependencyInjection_GeneralInfo.md).

**Parent topic:**[Creating a Test Method](../DeveloperGuide/UnitTest_TestMethod_Mapref.md)

