# Dependency Injection: Service Registration {#_14efd604-a2f1-47be-b3a3-4ba34ef98f89 .concept}

To register the service for dependency injection in your application, you do the following:

1.  Implement a registration class derived from the Autofac.Module class.
2.  In this registration class, override the Module.Load\(\) method. You don’t need to call the base method in the overriding method.

**Tip:**

-   You can register multiple implementations of an interface for the service in one registration class or multiple registration classes. You can also use other Autofac capabilities to inject dependencies into a class.
-   To make it possible to override the service in a customization project, you should register the service with PreserveExistingDefaults\(\) appended to the registration method.

The following code shows an example of a registration class.

``` {#codeblock_t5l_bpt_k3c .language-csharp}
using System;
using Autofac;
using PX.Data;
namespace MyNamespace
{
    //A class that registers the implementation class with Autofac
    public class MyServiceRegistrarion : Module
    {
        protected override void Load(ContainerBuilder builder)
        {
            builder.RegisterType<MyService>().As<IMyService>();
        }
    }
}
```

**Parent topic:**[Reusing Business Logic with Dependency Injection](../StudioDeveloperGuide/CodeCustomization_DependencyInjection_Mapref.md)

