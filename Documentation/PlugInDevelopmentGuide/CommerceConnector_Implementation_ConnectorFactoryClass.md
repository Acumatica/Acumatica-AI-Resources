# Connector Implementation: Connector's Factory Class {#_1b1aa251-72f7-4eb2-bda9-084dad58dd1f .concept}

A connector's factory class initializes a connector that has the specified type and name.

## Base Class and Interface { .section}

The connector's factory class implements the [PX.Commerce.Core.IConnectorFactory](https://help.acumatica.com/(W(24))/Help?ScreenId=ShowWiki&pageid=1e65cb46-bc0b-041f-0676-10b928c4675f) interface and, optionally, derives from the [PX.Commerce.Core.BaseConnectorFactory&lt;GraphType&gt;](https://help.acumatica.com/(W(29))/Help?ScreenId=ShowWiki&pageid=7f31fdd7-2de2-2350-e2de-a239adc2084e) base abstract class, which provides the default implementation of particular methods of the interface.

## Members of the Class { .section}

In the connector's factory class, you specify the type of the connector in the Type property and the name of the connector in the Description property. These are the type and name that are defined in the ConnectorType and ConnectorName properties of the connector class.

You also define the condition when the connector is available in Acumatica ERP in the Enabled property. For example, the connector may be available if a particular feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.

If your connector's factory class derives from the BaseConnectorFactory&lt;GraphType&gt;, you need to implement only the following items: a constructor of the factory class, and the GenerateExternID\(\) and GenerateLocalID\(\) methods.

## Example { .section}

The following code shows an example of the implementation of a connector's factory class.

**Tip:** You can see this code on [GitHub](https://github.com/Acumatica/Help-and-Training-Examples/blob/HEAD/PlugInDevelopment/Help/ImplementingConnector/WooCommerceTest/WooCommerceConnectorFactory.cs).

```language-csharp
﻿using PX.Commerce.Core;
using System;

namespace WooCommerceTest
{
    public class WooCommerceConnectorFactory : 
        BaseConnectorFactory<WooCommerceConnector>, IConnectorFactory
    {
        public override string Description => WooCommerceConnector.NAME;
        public override bool Enabled => true;

        public override string Type => WooCommerceConnector.TYPE;

        public WooCommerceConnectorFactory(ProcessorFactory factory)
            : base(factory)
        {
        }

        public virtual Guid? GenerateExternID(BCExternNotification message)
        {
            throw new NotImplementedException();
        }
    }
}
```

**Parent topic:**[Implementing a Connector for an External System](../PlugInDevelopmentGuide/CommerceConnector_Implementation_Mapref.md)

