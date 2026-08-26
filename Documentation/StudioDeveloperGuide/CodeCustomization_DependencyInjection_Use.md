# Dependency Injection: Use of Dependency Injection {#_2aef750e-25eb-4dc2-90c1-c0d28fb59bc4 .concept}

To use dependency injection in a class, you define a property of this class and assign the InjectDependency attribute to this property.

## Applicable Classes { .section}

You can use dependency injection in:

-   A graph
-   A graph extension
-   An attribute derived from PXEventSubscriberAttribute
-   A custom action class derived from the PXAction class or its descendants
-   A PXSelectBase-derived class
-   a `PX.Tests.Unit.TestBase`-derived class

**Attention:** The Acumatica Framework does not support dependency injection in constructors. The system injects dependencies after the constructor is executed.

## Use of Dependency Injection During Graph Initialization { .section}

The properties to which the InjectDependency attribute is assigned cannot be used in graph constructors. If you need to use these properties during the initialization of a graph, you need to implement the IGraphWithInitialization interface in the graph. You can use the properties in the implementation of the IGraphWithInitialization.Initialize\(\) method.

## Examples { .section}

The following code shows definitions of the property with the InjectDependency attribute in various classes.

```language-csharp
using System;
using PX.Data;

namespace MyNameSpace
{
    //Dependency injection in a graph
    public class MyGraph : PXGraph<MyGraph>
    { 
        [InjectDependency]
        private IMyService MyService { get; set; }

        public PXAction<MyDAC> MyButton;
        [PXButton]
        [PXUIField(DisplayName ="My Action")]
        protected void myButton()
        {
            MyService.ProvideServiceFunctions();
        }

        //Other code of the graph
    }

    //Dependency injection in a graph extension
    public class MyGraphExtension : PXGraphExtension<MyGraph>
    {
        [InjectDependency]
        private IMyService MyService { get; set; }

        //Other code of the graph extension
    }

    //Dependency injection in a custom attribute
    public class CustomAttribute : PXEventSubscriberAttribute
    {
        [InjectDependency]
        public IMyService Service { get; set; }

        //Other code of the attribute
    }

    //Dependency injection in a custom action class
    public class CustomCancel<T> : PXCancel<T> 
        where T: class, IBqlTable, new()
    {
        [InjectDependency]
        public IMyService Service { get; set; }

        //Other code of the custom action class
    }

    //Dependency injection in a PXSelectBase-derived class
    public class MySelect<Table> : PXSelectBase<Table>
        where Table : class, IBqlTable, new()
    { 
        [InjectDependency]
        private IMyService MyService { get; set; }

        //Other code of the class
    }

    //Dependency injection in a PX.Tests.Unit.TestBase-derived class
    public class MyTestClass : PX.Tests.Unit.TestBase
    { 
        [InjectDependency]
        private IMyService MyService { get; set; }

        // Other code of the test class
    }
}
```

**Parent topic:**[Reusing Business Logic with Dependency Injection](../StudioDeveloperGuide/CodeCustomization_DependencyInjection_Mapref.md)

