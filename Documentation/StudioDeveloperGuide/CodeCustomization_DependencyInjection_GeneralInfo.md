# Dependency Injection: General Information {#_67164f06-37ff-40c1-9f33-55e6aa43b44e .concept}

In the code of Acumatica Framework-based applications, you can use dependency injection to encapsulate particular logic as a service, which you can then use anywhere in your application.

## Applicable Scenarios { .section}

You implement dependency injection if you need to reduce tight coupling between components and make code easier to maintain, test, and extend. By separating object creation from object usage, dependency injection allows implementations to be changed without affecting dependent code.

## Implementation of Dependency Injection { .section}

To implement dependency injection in your application, you need to:

1.  Define the service for dependency injection. For details, see [Dependency Injection: Service Definition](CodeCustomization_DependencyInjection_ServiceDefinition.md).
2.  Register the service, as described in [Dependency Injection: Service Registration](CodeCustomization_DependencyInjection_ServiceRegistration.md).
3.  Inject the logic in a class in your application. For more information, see [Dependency Injection: Use of Dependency Injection](CodeCustomization_DependencyInjection_Use.md).

**Important:**

-   Dependency injection in Acumatica Framework-based applications requires the use of the external `Autofac` library. Acumatica does not guarantee the backward compatibility of this library. For details about the `Autofac` library, see [https://autofac.readthedocs.io/en/latest/](https://autofac.readthedocs.io/en/latest/).
-   You need to use the version of the `Autofac` library that is provided in the `Bin` folder of the Acumatica ERP instance to which you publish the customization project. You don’t need to include the file of the `Autofac` library in your customization project.

**Attention:** Dependency injection can be implemented in a project of your Acumatica ERP extension library, which is compiled to an external DLL file. You can’t include the implementation of dependency injection in a *Code* item in a customization project.

**Tip:** For information about dependency injection in unit tests and `PX.Tests.Unit.TestBase`-derived classes, see [Test Method: Registration of Services](../DeveloperGuide/UnitTest_TestMethod_RegisterServices.md) and [Test Method: To Register a Service](../DeveloperGuide/UnitTest_TestMethod_Activity_RegisterServices.md).

**Parent topic:**[Reusing Business Logic with Dependency Injection](../StudioDeveloperGuide/CodeCustomization_DependencyInjection_Mapref.md)

