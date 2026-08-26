# Connector Implementation: Classes for Acumatica ERP Entities {#_e42854cc-af54-4ac1-8560-5a8c7968451b .concept}

You need to create a class for each Acumatica ERP entitity to be synchronized with the external system through the connector. Classes for Acumatica ERP entities are adapters for the entities of the contract-based REST API of Acumatica ERP.

To implement these classes, you have two options: define the classes on your own, or use the classes defined for the predefined ecommerce integrations, which are available in the PX.Commerce.Core.API namespace. For example, if you need to work with customers in Acumatica ERP, you can use the predefined PX.Commerce.Core.API.Customer class. If the entity is not implemented in the PX.Commerce.Core.API namespace, you can implement a custom class for this entity.

## Base Class and Interface { .section}

The classes for Acumatica ERP entities derive from the [PX.Commerce.Core.API.CBAPIEntity](https://help.acumatica.com/(W(25))/Help?ScreenId=ShowWiki&pageid=ff9520e0-37d3-e074-878b-5ac1b8287b16) base class, which implements the [PX.Commerce.Core.ILocalEntity](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=c8cf309b-1426-6c9d-08fe-78b268fda63a) interface. The CBAPIEntity class includes the set of standard properties of a contract-based API entity, such as Id, RowNumber, Delete, and ReturnBehavior. This class also defines a set of properties that are necessary for the synchronization of the entity with an entity from an external system, such as SyncID or SyncTime.

## Properties of Each Custom Class { .section}

In each custom class, you define only the properties of the contract-based API entity that you need to use, including the key fields of the entity. The names of the class and its properties should be exactly the same as the names of the corresponding contract-based API entity and its properties in the respective version of the *eCommerce/24.200.001* endpoint.

**Tip:** If the API defined in the *eCommerce/24.200.001* endpoint is not sufficient for the implementation of your connector, you can create a custom endpoint and use it for your connector. For details about the creation of a custom endpoint, see [To Create a Custom Endpoint](../IntegrationDevelopmentGuide/IS__how_Create_Endpoint.md) in the Integration Development Guide. To use the custom endpoint for your connector, you need to replace the PXDefault attribute of the WebServiceEndpoint and WebServiceVersion fields of [BCBinding](https://help.acumatica.com/(W(24))/Help?ScreenId=ShowWiki&pageid=d1f69ccf-718c-a862-3fdd-12d9957b627a) by using the corresponding CacheAttached event handlers in the graph of the configuration form. For details about the replacement, see [CacheAttached: General Information](../StudioDeveloperGuide/CodeCustomization_CacheAttached_GeneralInfo.md).

You assign the PX.Commerce.Core.CommerceDescription attributes with the names of the entity and its properties to the class and its properties, respectively. These names are used as the names of the Acumatica ERP objects and fields on the mapping and filtering tabs of the [Entities](../UserGuide/BC_20_20_00.md) \(BC202000\) form.

## Creation of Classes for Acumatica ERP Entities { .section}

To create classes for the Acumatica ERP entities to be synchronized with the external system through the connector, you generally do the following:

1.  On the [Web Service Endpoints](../UserGuide/SM_20_70_60.md) \(SM207060\) form, you open the *eCommerce/24.200.001* endpoint and identify the entities and their fields, including the key fields, that you need to use. For example, for the `Case` entity, you may need to use the `CaseID`, `Subject`, `Description`, NoteID, and `LastModifiedDateTime` fields.
2.  You identify the predefined classes for Acumatica ERP entities \(which are available in the PX.Commerce.Core.API namespace\) that you can use in your connector.
3.  If you need to implement your own classes for Acumatica ERP entities, in the Visual Studio project of the extension library, for each Acumatica ERP entity that you need to use, you create a class with the name of an Acumatica ERP entity that you want to process in the connector.

## Example { .section}

The following code shows an example of the implementation of a class derived from the CBAPIEntity.

**Tip:** You can see this code on [GitHub](https://github.com/Acumatica/Help-and-Training-Examples/blob/HEAD/PlugInDevelopment/Help/ImplementingConnector/WooCommerceTest/Internal/Case.cs).

```language-csharp
﻿using PX.Commerce.Core.API;
using PX.Api.ContractBased.Models;
using PX.Commerce.Core;

[CommerceDescription("Case")]
public partial class Case : CBAPIEntity
{
	public GuidValue? NoteID { get; set; }

	public DateTimeValue? LastModifiedDateTime { get; set; }

	[CommerceDescription("CaseCD")]
	public StringValue? CaseCD { get; set; }

	[CommerceDescription("Subject")]
	public StringValue? Subject { get; set; }

	[CommerceDescription("Description")]
	public StringValue? Description { get; set; }
}
```

**Parent topic:**[Implementing a Connector for an External System](../PlugInDevelopmentGuide/CommerceConnector_Implementation_Mapref.md)

