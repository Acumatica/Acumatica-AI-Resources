# Connector Implementation: Bucket Classes {#_51df84f5-e853-415e-95d4-9aefaaff090f .concept}

For the synchronization of data between an external system and Acumatica ERP, for each entity that you need to synchronize, you need to define a bucket class that defines the entities to be synchronized before and after the synchronization of this entity.

## Base Class and Interface { .section}

You define this bucket in the bucket class, which derives from the [PX.Commerce.Core.IEntityBucket](https://help.acumatica.com/(W(24))/Help?ScreenId=ShowWiki&pageid=c423ac4a-f111-00a7-7f67-e73b52b030c8) interface and, optionally, the [PX.Commerce.Core.EntityBucketBase](https://help.acumatica.com/(W(25))/Help?ScreenId=ShowWiki&pageid=9336767d-3b71-626c-5689-7bbfee7e9c8c) base class. The EntityBucketBase class is a supplementary class that provides the default implementation of the PreProcessors and PostProcessors properties of the IEntityBucket interface.

In the bucket class, you need to define the entity that is being synchronized in the Primary property of the bucket class. In the Entities property of the bucket class, you specify all entities that are being synchronized in this bucket. The PreProcessors property contains the list of entities that should be synchronized before the entity is, while the PostProcessors property specifies the list of entities that should be synchronized after the entity is.

## Example { .section}

Suppose that after synchronizing address entities between an external system and Acumatica ERP, you need to synchronize customer entities. The following code shows an example of the bucket class implementation for the address and customer entities.

**Tip:** You can see this code on [GitHub](https://github.com/Acumatica/Help-and-Training-Examples/blob/HEAD/PlugInDevelopment/Help/ImplementingConnector/WooCommerceTest/Sync/WooLocationEntityBucket.cs).

```language-csharp
﻿using PX.Commerce.BigCommerce;
using PX.Commerce.Core;

namespace WooCommerceTest
{
    public class WooLocationEntityBucket : EntityBucketBase, IEntityBucket
    {
        public IMappedEntity Primary => Address;
        public IMappedEntity[] Entities =>
          new IMappedEntity[] { Address, Customer };

        public override IMappedEntity[] PostProcessors =>
          new IMappedEntity[] { Customer };

        public MappedLocation Address = null!;
        public MappedCustomer Customer = null!;
    }
}
```

**Parent topic:**[Implementing a Connector for an External System](../PlugInDevelopmentGuide/CommerceConnector_Implementation_Mapref.md)

