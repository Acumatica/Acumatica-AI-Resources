# Representation of a Record in JSON Format {#_7b104d41-3457-42f8-8010-165d9d931d3f .concept}

By using the contract-based REST API, you obtain existing records from Acumatica ERP, create new records, update, and delete them. You work with the records in Acumatica ERP by using the entities that are defined in the contract of the endpoint that you use to access the service. You pass records to and receive them from the contract-based REST API in JavaScript object notation \(JSON\) format. JSON is a text format for transmitting data objects that consist of key-value pairs.

To represent a record in JSON format, you use the rules that are described in the following sections. You do not need to specify the values of all fields of an entity; you can specify the values of only the needed fields.

## System Fields { .section}

You specify the value of a system field \(such as `id` or `rowNumber`\) of an entity in the following format.

```
<Field name> : <Value>
```

For example, if you need to specify the row number *1* for an entity, you use the following string.

```
"rowNumber" : 1
```

You specify the value of the `note` field in the same way as you would any general field \(see the next section\).

## General Fields {#7053e05c-3dfe-429c-8c5d-4a07339447eb .section}

You specify the value of a general field \(that is, a field that is not a system field\) of an entity in the following format.

```
<Field name> : {"value" : <Value>}
```

For example, if you need to specify *JOHNGOOD* as the customer ID of a customer record, you use the following string.

```
"CustomerID" : {"value" : "JOHNGOOD"}
```

## Linked Entities { .section}

You specify the values of the fields of a linked entity in the following format.

```
<Field name> : 
  {
    <List of fields of the linked entity with values>
  }
```

For example, if you need to specify the values of an email address and the address of a customer main contact, you use the following string.

```
"MainContact" : 
    {
      "Email" : {"value" : "demo@gmail.com" },
      "Address" : 
        {
          "AddressLine1" : {"value" : "4030 Lake Washington Blvd NE" },
          "AddressLine2" : {"value" : "Suite 100" },
          "City" : {"value" : "Kirkland" },
          "State" : {"value" : "WA" },
          "PostalCode" : {"value" : "98033" }
        }      
    } 
```

## Detail Entities { .section}

You specify the values of the fields of a detail entity in the following format.

```
<Field name> : 
  [ 
    {
      <List of fields of the detail entity with the values>
    }, 
    {
      <List of fields of the detail entity with the values>
    }, 
    … 
  ]
```

For example, if you need to specify the values of two detail lines of a sales order, you use the following string.

```
"Details" : [
  {
    "InventoryID" : {"value": "AALEGO500"},
    "Quantity" : {"value": 10},
    "UOM" : {"value": "PIECE"}
  },
  {
    "InventoryID" : {"value": "CONGRILL"},
    "Quantity" : {"value": 1},
    "UOM" : {"value": "PIECE"}
  }
]
```

## Custom Fields {#_336108cb-34f8-4c42-ab5d-b5ec36c30a30 .section}

You specify the values of the custom fields \(that is, the fields that are not included in the contract of the endpoint\) in the following format.

**Tip:** Custom fields can correspond to the following elements:

-   The predefined elements on an Acumatica ERP form that are not included in the entity definition
-   The elements that were added to the Acumatica ERP form in a customization project
-   The user-defined fields

```
"custom" : 
  {
    <View name> : 
     { 
       <Field name> : 
         { 
           "type" : <value>, 
           "value" : <value> 
         }
     }
  }
```

You use this block in the JSON representation of the entity \(top-level, detail, or linked\) that contains this custom field.

**Note:** For details on how to find out the field name and the name of the data view, see [Custom Fields](IS__con_CB_Custom_Fields.md#).

For example, suppose that you added the **Personal ID** element to the **Main Contact** area of the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form in a customization project. The `Contact` entity, which is available through the `MainContact` property of the `Customer` entity, contains the **Personal ID** custom element. This element has the `UsrPersonalID` field name and belongs to the `DefContact` data view. To specify the value *AB123456* of the **Personal ID** custom element for the customer with ID *JOHNGOOD* through the REST API, you use the following request body.

```
{
  "CustomerID" : {value : "JOHNGOOD" } ,
  "MainContact" : 
    {
      "custom" : 
        {
          "DefContact" : 
            { 
              "UsrPersonalID" : 
                { 
                  "type" : "CustomStringField", 
                  "value" : "AB123456" 
                }
            }
        }
    }
}
```

**Parent topic:**[Configuring the REST API](../IntegrationDevelopmentGuide/IS__mng_Contract_Based_Web_Services.md)

