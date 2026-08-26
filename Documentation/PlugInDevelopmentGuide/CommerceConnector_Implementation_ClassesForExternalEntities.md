# Connector Implementation: Classes for External Entities {#_bcc2705e-ece7-4ce2-aabf-2a48a7badd55 .concept}

You need to create a class for each external entity to be synchronized with Acumatica ERP through the connector. Classes for external entities are adapters for the entities of the API of the external system.

## Base Class and Interface { .section}

You define a class that derives from the [PX.Commerce.Core.BCAPIEntity](https://help.acumatica.com/(W(25))/Help?ScreenId=ShowWiki&pageid=e99edea6-f3cb-04db-6c2f-9af83fc9af4c) base class, which implements the [PX.Commerce.Core.IExternEntity](https://help.acumatica.com/(W(24))/Help?ScreenId=ShowWiki&pageid=6839d3f9-050c-8463-e442-cd2e00a469ad) interface. In this class, you define the properties of the external API entity that you need to synchronize with the properties of the entity stored in Acumatica ERP.

## Attributes of the Class and Its Properties { .section}

You assign the [PX.Commerce.Core.CommerceDescription](https://help.acumatica.com/(W(25))/Help?ScreenId=ShowWiki&pageid=490ee272-f67f-b635-a345-66da991bdcf2) attribute with the name of the entity to the class. Entity names are used as the names of the external objects on the [Entities](../UserGuide/BC_20_20_00.md) \(BC202000\) form.

You also assign the CommerceDescription attributes to the properties of the class. In each attribute, you specify the following parameters:

-   The name of the property, which is used as the name of the external field on the mapping and filtering tabs of the [Entities](../UserGuide/BC_20_20_00.md) form.
-   Optional: A FieldFilterStatus value, which specifies whether the field is used on the filtering tabs of the [Entities](../UserGuide/BC_20_20_00.md) form.
-   Optional: A FieldMappingStatus value, which indicates whether the field is used on the mapping tabs of the [Entities](../UserGuide/BC_20_20_00.md) form.
-   Optional: A `String` value that specifies the feature on which the field depends, such as `"PX.Objects.CS.FeaturesSet+userDefinedOrderTypes"`. The field is available on the [Entities](../UserGuide/BC_20_20_00.md) form if the specified feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.

You also assign the Newtonsoft.Json.JsonProperty attribute to the properties of the class to map them to the properties of the external entity retrieved in JSON format through the external API.

**Attention:** The external system determines which classes you need to implement and how the connector communicates with the external system.

## Example { .section}

The following code shows an example of the declaration of a customer entity for the WooCommerce connector.

**Tip:** You can see this code on [GitHub](https://github.com/Acumatica/Help-and-Training-Examples/blob/HEAD/PlugInDevelopment/Help/ImplementingConnector/WooCommerceTest/External/CustomerData.cs).

```language-csharp
﻿using System;
using System.Collections.Generic;
using PX.Commerce.Core;
using Newtonsoft.Json;

namespace WooCommerceTest
{
    [CommerceDescription(WCCaptions.Customer)]
    public class CustomerData : BCAPIEntity, IWooEntity
    {
        [JsonProperty("id")]
        [CommerceDescription(WCCaptions.ID, FieldFilterStatus.Skipped, 
            FieldMappingStatus.Import)]
        public int? Id { get; set; }

        [JsonProperty("date_created")]
        public DateTime? DateCreatedUT { get; set; }

        [CommerceDescription(WCCaptions.DateCreatedUT)]
        [ShouldNotSerialize]
        public virtual DateTime? CreatedDateTime
        {
            get
            {
                return DateCreatedUT != null ? 
                    DateCreatedUT.ToDate() : default;
            }
        }

        [JsonProperty("date_modified_gmt")]
        public DateTime? DateModified { get; set; }

        [CommerceDescription(WCCaptions.DateModifiedUT)]
        [ShouldNotSerialize]
        public virtual DateTime? ModifiedDateTime
        {
            get
            {
                return DateModified != null ? 
                    DateModified.ToDate() : default;
            }
        }

        [JsonProperty("email")]
        [CommerceDescription(WCCaptions.Email, FieldFilterStatus.Skipped, 
            FieldMappingStatus.Import)]
        [ValidateRequired]
        public string? Email { get; set; }

        [JsonProperty("first_name")]
        [CommerceDescription(WCCaptions.FirstName, FieldFilterStatus.Skipped, 
            FieldMappingStatus.Import)]
        [ValidateRequired]
        public string? FirstName { get; set; }

        [JsonProperty("last_name")]
        [CommerceDescription(WCCaptions.LastName, FieldFilterStatus.Skipped, 
            FieldMappingStatus.Import)]
        [ValidateRequired()]
        public string? LastName { get; set; }

        [JsonProperty("username")]
        [CommerceDescription(WCCaptions.UserName, FieldFilterStatus.Skipped, 
            FieldMappingStatus.Import)]
        public string? Username { get; set; }

        [JsonProperty("billing")]
        public CustomerAddressData? Billing { get; set; }

        [JsonProperty("shipping")]
        public CustomerAddressData? Shipping { get; set; }
    }
}
```

**Parent topic:**[Implementing a Connector for an External System](../PlugInDevelopmentGuide/CommerceConnector_Implementation_Mapref.md)

