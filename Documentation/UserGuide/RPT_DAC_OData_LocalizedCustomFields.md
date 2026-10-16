# DAC-Based OData: Retrieving Localized and Custom Fields

In this topic, you can find details about how to retrieve multilingual fields and custom or user-defined fields by using the DAC-based OData interface.

## Retrieving Multilingual Fields

If a record has multilingual fields, you can obtain the values of these fields in any available language. You can do this in either of the following ways:

-   By using the `Accept-Language` HTTP header and specifying the desired locale as its value
-   By using the `locale` URL parameter and specifying the desired locale as its value

If neither the `Accept-Language` HTTP header nor the `locale` URL parameter is used, the values of multilingual fields are returned in the default language \(see [Setting Up Languages](SM__CON_Locales_and_Languages.md#section_vkn_2lm_hw)\). If both the `Accept-Language` HTTP header and the `locale` URL parameter are used, the locale specified in the `locale` URL parameter is taken into account.

The following sample URL retrieves the *AACOMPUT01* inventory item with the French values of the multilingual fields.

```
GET https://localhost/AcumaticaERP/t/U100/api/odata/dac/PX_Objects_IN_InventoryItem?
locale=fr-FR&
$filter=InventoryCD eq 'AACOMPUT01'
```

The use of the following request has the same effect.

```
GET /AcumaticaERP/t/U100/api/odata/dac/PX_Objects_IN_InventoryItem?
$filter=InventoryCD eq 'AACOMPUT01' HTTP/1.1
Host: localhost
Accept-Language: fr-FR
```

## Retrieving Custom and User-Defined Fields

In a customization project, you can add custom fields to Acumatica ERP forms. You can also add user-defined fields to Acumatica ERP forms and include them in a customization project. \(For details about user-defined fields, see [User-Defined Fields](CS__con_User_Defined_Fields.md#).\)

To retrieve custom and user-defined fields through the DAC-based OData interface, you do not need to perform special actions. You address custom and user-defined fields by their names.

**Parent topic:**[Accessing DACs Through OData](../UserGuide/RPT_DAC_OData_Mapref.md)

