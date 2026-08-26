# Connector Implementation: Mapping Classes {#_b8f3a608-10cd-44cb-8338-96be1a45d02c .concept}

For each pair of an internal entity and an external entity that should be synchronized, you need to implement a mapping class, which defines the correspondence between the properties of the internal and external entities.

## Base Class and Interfaces { .section}

The mapping class implements the following interfaces:

-   PX.Commerce.Core.IMappedEntity: Represents the mapping between the properties of the local and external objects
-   [PX.Commerce.Core.IMappedEntityExtern&lt;ExternType&gt;](https://help.acumatica.com/(W(24))/Help?ScreenId=ShowWiki&pageid=ffbd0978-663b-fe3a-b7d4-7185348f08c9): Provides methods for the addition of an external entity to the mapping
-   [PX.Commerce.Core.IMappedEntityLocal&lt;LocalType&gt;](https://help.acumatica.com/(W(24))/Help?ScreenId=ShowWiki&pageid=ebf62130-ec23-316d-a168-8c3fde8868d4): Provides a method for the addition of an internal entity to the mapping

The [MappedEntity&lt;ExternType, LocalType&gt;](https://help.acumatica.com/(W(25))/Help?ScreenId=ShowWiki&pageid=7e8494fc-5b69-b1dc-e48d-9d6bb2c4017a) class provides the default implementation of these interfaces. The class also provides the default constructors from which you can derive the constructors of the mapping classes. These constructors use the following as input parameters:

-   A `string` identifier of the mapped entities, which is exactly two characters long
-   A `string` identifier of the connector, which is defined in the ConnectorType property of the connector class

## Example { .section}

The following code shows an example of the implementation of a mapping class.

**Tip:** You can see this code on [GitHub](https://github.com/Acumatica/Help-and-Training-Examples/blob/HEAD/PlugInDevelopment/Help/ImplementingConnector/WooCommerceTest/Sync/MappedCustomer.cs).

```language-csharp
﻿using System;
using PX.Commerce.Core;
using PX.Commerce.Core.API;

namespace WooCommerceTest
{
    public class MappedCustomer : MappedEntity<CustomerData, Customer>
    {
        public const string TYPE = BCEntitiesAttribute.Customer;

        public MappedCustomer()
            : base(WooCommerceConnector.TYPE, TYPE)
        { }
        public MappedCustomer(Customer entity, Guid? id, DateTime? timestamp)
            : base(WooCommerceConnector.TYPE, TYPE, entity, id, timestamp) { }
        public MappedCustomer(CustomerData entity, string id, 
            DateTime? timestamp)
            : base(WooCommerceConnector.TYPE, TYPE, entity, 
            id, id,timestamp) { }
    }
}
```

**Parent topic:**[Implementing a Connector for an External System](../PlugInDevelopmentGuide/CommerceConnector_Implementation_Mapref.md)

