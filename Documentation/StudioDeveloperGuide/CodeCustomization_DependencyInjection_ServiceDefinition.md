# Dependency Injection: Service Definition {#_8eaa39d4-1b6f-45f8-987d-8fa27d027c45 .concept}

In this topic, you’ll learn about defining the service for dependency injection and injecting the current context into the service.

## Defining the Service for Dependency Injection { .section}

To define the service for dependency injection, you define an interface for the service and a class that implements this interface. The following example shows a definition of a service for dependency injection.

```language-csharp
using System;
using Autofac;
using PX.Data;

namespace MyNamespace
{
    //An interface for the service
    public interface IMyService
    {
        void ProvideServiceFunctions();
    }
    //A class that implements the interface
    public class MyService : IMyService
    {
        public void ProvideServiceFunctions()
        {
            //An implementation
        }
    }
}
```

## Injecting the Current Context into the Service { .section}

You may need to support the automatic injection of the current context—such as the current PXGraph instance—into the service. To do this, you add a constructor of the implementation class of the service with the following context as the needed parameters:

-   If you are injecting dependency into a graph, PXGraph
-   If you are injecting dependency into a graph extension, PXCacheExtension, PXGraph, or both PXCacheExtension and PXGraph
-   If you are injecting dependency into an attribute, PXEventSubscriberAttribute, PXCache, or PXGraph \(or any combination of these objects\)
-   If you are injecting dependency into a custom action class, PXAction, PXGraph, or both of these
-   If you are injecting dependency into a PXSelectBase-derived class, a PXSelectBase-derived class

The following code shows examples of constructors in the implementation class.

```language-csharp
public class MyService : IMyService
{
    //A constructor with PXEventSubscriberAttribute
    **public MyService\(PXEventSubscriberAttribute parent\) **
    { 
        //Code of the constructor
    }

    //A constructor with PXCache
    **public MyService\(PXCache cache\)**
    { 
        //Code of the constructor
    }

    //A constructor with PXGraph
    **public MyService\(PXGraph graph\)**
    { 
        //Code of the constructor
    }

    //A constructor with PXEventSubscriberAttribute and PXGraph
    **public MyService\(PXEventSubscriberAttribute parent, PXGraph graph\)**
    { 
        //Code of the constructor
    }

    //Other code of the implementation class
}
```

**Parent topic:**[Reusing Business Logic with Dependency Injection](../StudioDeveloperGuide/CodeCustomization_DependencyInjection_Mapref.md)

