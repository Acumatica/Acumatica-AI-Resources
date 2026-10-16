# Representation of a Record in JSON Format

By using the contract-based REST API, you obtain existing records from Acumatica ERP, create new records, update, and delete them. You work with the records in Acumatica ERP by using the entities that are defined in the contract of the endpoint that you use to access the service. You pass records to and receive them from the contract-based REST API in JavaScript object notation \(JSON\) format. JSON is a text format for transmitting data objects that consist of key-value pairs.

To represent a record in JSON format, you use the rules that are described in the following sections. You do not need to specify the values of all fields of an entity; you can specify the values of only the needed fields.

## System Fields

You specify the value of a system field \(such as `id` or `rowNumber`\) of an entity in the following format.

```
<Field name> : <Value>
```

For example, if you need to specify the row number *1* for an entity, you use the following string.

```
"rowNumber" : 1
```

You specify the value of the `note` field in the same way as you would any general field \(see the next section\).

## General Fields

You specify the value of a general field \(that is, a field that is not a system field\) of an entity in the following format.

```
<Field name> : {"value" : <Value>}
```

For example, if you need to specify *JOHNGOOD* as the customer ID of a customer record, you use the following string.

```
"CustomerID" : {"value" : "JOHNGOOD"}
```

## Drop-Down Fields in Contract Version 5

In Contract Version 5, a selected value of a drop-down field contains an internal id and a description. Use the ID to process the value and to specify the value in a request. You can use the description to display the value in an application.

A response represents a single-select field as one structured value, as shown in the following example.

```json
"Status": {
  "value": {
    "id": "CL",
    "description": "Completed"
  }
}
```

In a request, specify the ID, as shown in the following example.

```json
"Status": {
  "value": {
    "id": "CL"
  }
}
```

The value property of a multi-select field is always an array, including when only one value is selected. A response can contain the following fragment.

```json
"Color": {
  "value": [
    { "id": "Y", "description": "Yellow" },
    { "id": "R", "description": "Red" }
  ]
}
```

In a request, specify an array of IDs, as shown in the following example.

```json
"Color": {
  "value": [
    { "id": "Y" },
    { "id": "R" }
  ]
}
```

String and integer single-select fields have the StringSingleSelectValue and IntSingleSelectValue types, respectively. String-based multi-select fields have the StringMultiSelectValue type. Contract Version 5 does not provide an integer-based multi-select type.

## Date-Only Fields

A field that represents a calendar date without a time component can have the DateOnlyValue type. Send and receive the value in the *YYYY-MM-DD* format, without a time or time zone, as shown in the following example:

```json
"Date": {
  "value": "2026-09-09"
}
```

## Linked Entities

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

## Detail Entities

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

## Custom Fields

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

In Contract Version 5, the type property is required for every custom field that you send in a request body; specify it together with the value property. You use this block in the JSON representation of the entity \(top-level, detail, or linked\) that contains this custom field.

**Tip:** For details on how to find out the field name and the name of the data view, see [Custom Fields](IS__con_CB_Custom_Fields.md#).

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

In Contract Version 5, a custom string or integer single-select field has the CustomStringSingleSelectField or CustomIntSingleSelectField type, respectively. The value contains an id and a description. A custom string-based multi-select field has the CustomStringMultiSelectField type and contains an array of structured values.

**Parent topic:**[Configuring the REST API](../IntegrationDevelopmentGuide/IS__mng_Contract_Based_Web_Services.md)

