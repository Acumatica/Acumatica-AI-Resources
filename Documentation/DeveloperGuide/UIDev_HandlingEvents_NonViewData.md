# UI Events: Handling of Data That Is Unrelated to Any View {#_201a6d01-3f16-4ba4-b3b1-8004c44b1e7d .concept}

For a callback request that the client sends to the server, the server processes the request, prepares the data to be returned, and injects this data in the final JSON response that is sent to the client. For this callback processing, Acumatica ERP provides a number of hooks. You can attach data handlers to these hooks and implement custom code in these data handlers. The attached handlers can prepare data and execute update operations. When a request comes to the server, the system calls the hooks one by one. The handlers are executed independently of one another. You can execute different code on different hooks to execute a particular code fragment before another one.

You can use these hooks to pass data that is unrelated to any view of the graph to the TypeScript code of the Acumatica ERP form that corresponds to the graph. In this case, you should implement the approach that is described in this topic.

## Implementing the Base Abstract Class { .section}

The BaseCustomDataHandler&lt;TGraph&gt; and BaseCustomDataHandler&lt;TGraph, TParams&gt; abstract classes are base classes that provide the methods to obtain data that is not PXView-based from a graph or submit this data to the graph. These classes are used during client callback.

You need to create a data handler class that inherits from one of these base classes. In the data handler class, you override the method that you want to call to obtain or submit the data. The following code shows an example of the implementation of the class for the SiteMapMaint graph, which means that this handler is executed only in the context of the SiteMapMaint graph or its descendents.

```language-csharp
using PX.Api.TSBasedScreen.Interfaces;
using PX.SiteMap.Graph;

namespace PX.Api.TSBasedScreen.Objects.Handlers.SM200520;

internal class SM200520Handler : BaseCustomDataHandler<SiteMapMaint>
{
  protected override void CollectData(SiteMapMaint graph, dynamic result)
  {
    result.RefreshSitemap = graph.IsSiteMapAltered;
  }
}
```

In the CollectData method in the code above, the value of the `RefreshSitemap` parameter has been specified. The method will be executed when the server collects the data that is sent back to the client during the callback execution. The specified value of the `RefreshSitemap` parameter will be passed to the UI, along with other data returned by the server.

After you have defined the class that inherits from the BaseCustomDataHandler&lt;TGraph&gt; or BaseCustomDataHandler&lt;TGraph, TParams&gt; abstract class, the service for dependency injection is fully defined. You need to register the service.

## Registering the Service { .section}

You register the service that you have implemented for dependency injection. For details about dependency injection, see [Dependency Injection: General Information](../StudioDeveloperGuide/CodeCustomization_DependencyInjection_GeneralInfo.md). You use the RegisterCustomDataHandler method to register the data handler class.

The following code shows an example of this registration.

```language-csharp
﻿using Autofac;
using PX.Api.TSBasedScreen.Interfaces;

namespace PX.Api.TSBasedScreen.Objects
{
  public class ServiceRegistration : Module
  {
    protected override void Load(ContainerBuilder builder)
    {
      builder.RegisterCustomDataHandler<SM200520Handler>();
    }
  }
}
```

**Tip:** You can specify another name for the data handler during registration, as shown in the following code. This name will be used in the frontend code.

```language-csharp
builder.RegisterCustomDataHandler<RefreshSiteMapHandler<SiteMapMaint>>(
  name: "SM200520RefreshSiteMapHandler");
```

You may need to specify the name for the data handler during registration if you have implemented a generic data handler with a graph type as the type parameter and you want to register this generic event handler for multiple graphs.

## Changing the TypeScript Code { .section}

In the screen class in the TypeScript code of the Acumatica ERP form, you add a method and specify the [customDataHandler](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=a8bbccb5-6700-79dc-5bcc-bebc3f6b3eff) decorator for it. As the name of the method you must specify the name that has been used during the registration of the data handler class for dependency injection in the backend code. By default, this name is the name of the data handler class.

This method will be executed after each callback from the server, and it will process the data that is received from the server. The method is strongly typed. In the following code, the result from the server contains one parameter, whose value is assigned in the class that implements the base abstract class in the backend code.

```language-javascript
@customDataHandler()
SM200520Handler(result: { RefreshSitemap: boolean }) {
	if (result.RefreshSitemap) {
		refreshMenu();
	}
}
```

**Parent topic:**[Handling UI Events](../DeveloperGuide/UIDev_HandlingEvents_Mapref.md)

