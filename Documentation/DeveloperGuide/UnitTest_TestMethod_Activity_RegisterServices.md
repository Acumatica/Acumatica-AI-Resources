# Test Method:To Register a Service {#_83427471-c909-4771-90ca-96045ef0b064 .task}

The following activity will walk you through the process of registering a mock service in a test class.

## Story { .section}

Suppose that running a test method leads to the generation of the `Autofac.Core.Registration.ComponentNotRegisteredException` exception. When this exception occurs, the error message specifies which component \(interface\) is not registered. You need to register the service that implements the specified interface.

## Process Overview { .section}

To get rid of the exception, you will add the use of the Autofac library and override the `TestBase.RegisterServices` method in the test class. In the overridden `RegisterServices` method, you will register the needed service that implements the interface specified in the exception message.

## System Preparation { .section}

Before you begin implementing the registration of a service, do the following:

1.  Make sure that you have performed the [Test Instance for Unit Testing: To Deploy an Instance](UnitTest_InitialConfiguration_Activity_DeployInstance.md) prerequisite activity to prepare the Acumatica ERP instance that you will use.
2.  Make sure that you have performed the [Test Project and Test Class: To Create a Test Project](UnitTest_TestProject_Activity_CreateProject.md) prerequisite activity to create and configure the `PhoneRepairShop_Code.Tests.csproj` test project.
3.  Create the `InventoryItemMaintTests` test class. For an example that shows how to create a test class, see [Test Project and Test Class: To Create a Test Class](UnitTest_TestProject_Activity_CreateClass.md).
4.  Make sure that you have performed the [Test Method: To Create a Test Method with Parameters](UnitTest_TestMethod_Activity_CreateTestMethodWithParams.md) prerequisite activity to create the `RepairItemTypeEnabled_WhenRepairItemSelected` test method.
5.  Run the `RepairItemTypeEnabled_WhenRepairItemSelected` test method.

## Step: Registering a Service { .section}

When the test method created in [Test Method: To Create a Test Method with Parameters](UnitTest_TestMethod_Activity_CreateTestMethodWithParams.md) is run, the following error message is generated if a proper service is not registered \(only part of the error message is quoted\).

`Autofac.Core.Registration.ComponentNotRegisteredException : The requested service 'System.Func`2[[PX.Data.PXGraph, PX.Data, Version=1.0.0.0, Culture=neutral, PublicKeyToken=3b136cac2f602b8e],[PX.Objects.CM.Extensions.IPXCurrencyService, PX.Objects, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null]]' has not been registered. To avoid this exception, either register a component to provide the service, check for service registration using IsRegistered(), or use the ResolveOptional() method to resolve an optional dependency.`

To register this service, do the following:

1.  In the `PhoneRepairShop_Code.Tests.csproj` project, add a reference to `Autofac.dll` from the `Bin` folder of the Acumatica ERP instance if it has not been added yet. For details, see [Test Project and Test Class: To Create a Test Project](UnitTest_TestProject_Activity_CreateProject.md).
2.  In the `InventoryItemMaintTests` class, override the TestBase.RegisterServices method as follows.

    ```language-csharp
            protected override void RegisterServices(ContainerBuilder builder)
            {
                base.RegisterServices(builder);
                builder.RegisterType<PX.Objects.Unit.CurrencyServiceMock>().
                    As<IPXCurrencyService>();
            }
    ```

3.  Make sure the following `using` directives have been added to the `InventoryItemMaintTests.cs` file.

    ```language-csharp
    using Autofac;
    using PX.Objects.CM.Extensions;
    ```


After the service is registered, run the tests for the `RepairItemTypeEnabled_WhenRepairItemSelected` test method, which had failed previously. Make sure that the tests succeed.

**Parent topic:**[Creating a Test Method](../DeveloperGuide/UnitTest_TestMethod_Mapref.md)

