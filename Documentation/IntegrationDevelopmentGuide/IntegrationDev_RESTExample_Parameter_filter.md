# $filter Parameter \(Contract Version 5\)

With the REST API, you use the *$filter* parameter to specify the conditions that determine which records should be selected from the system. Follow these guidelines:

-   Use [OData 4.01 URL conventions](https://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part2-url-conventions.html) to specify the value of the parameter.
-   To specify **multiple conditions** for the same field or different fields in a filter, use the AND and OR operators.
-   In the value of the parameter, you can use the following **functions** as they are defined in OData:

    -   contains
    -   startswith
    -   endswith
-   You can use the following custom function to filter records by the values of **custom fields**: `cf.<Type name>(f='<View name>.<Field name>')`, where `<Type name>` is the type of the custom element, `<View name>` is the name of the data view that contains the element, and `<Field name>` is the name of the element.

-   Encode date and time values in URL format before passing them in the value of the $filter parameter.

## Example: Simple Condition

To obtain stock item records that have the *Active* status in Acumatica ERP, you use the following filter: *$filter=ItemStatus eq 'AC'*. In Contract Version 5, a filter for a drop-down field uses the internal ID rather than the description.

## Example: Condition on a Linked Entity

To obtain a customer record that has the *demo@gmail.com* email address, you use the following filter: *$filter=MainContact/Email eq 'demo@gmail.com'*. \(The Email field is defined in a linked entity, which is available through the MainContact property.\)

**Attention:** The REST API does not support filtering on detail records. If you specify a filter on detail records, the results of the request cannot be predicted.

## Example: Multiple Conditions

To obtain stock item records that have the *Active* status in Acumatica ERP and have been modified later than July 15, 2024, you use the following filter: *$filter=ItemStatus eq 'AC' and LastModifiedDateTime gt 2024-07-15T10%3A31%3A28.402%2B03%3A00*.

**Attention:** You should encode date and time values in URL format before passing them as the value of the parameter. For example, you can encode the current date and time by using the `System.Net.WebUtility.URLEncode()` method as follows: `WebUtility.UrlEncode(new DateTimeOffset(DateTime.Now).ToString("yyyy-MM-ddTHH:mm:ss.fffK"))`.

## Example: Condition with a Date-Only Field

If you want to filter records by a date-only field, you specify the date directly in the *$filter* parameter. For example, if you need to obtain all records with the Date value greater than June 17, 2025, you use the following filter: *$filter=Date gt 2025-06-17*.

## Example: Checking Whether a Multi-Select Field Has Any Value

To select records for which at least one value is selected in the Ownership field, use the following filter:

```
$filter=Ownership/any()
```

## Example: Checking Whether a Multi-Select Field Has No Values

To select records for which no values are selected in the Ownership field, use the following filter:

```
$filter=not Ownership/any()
```

## Example: Checking Whether a Multi-Select Field Contains an ID

To select records for which the Ownership field contains the exact *MO* ID, use the following filter:

```
$filter=Ownership/any(x: x eq 'MO')
```

## Example: Checking Whether a Multi-Select Field Contains Exactly One ID

To select records for which exactly one value is selected in the Ownership field and that value has the *MO* ID, use the following filter:

```
$filter=Ownership/all(x: x eq 'MO')
```

## Example: Negating an Exact Multi-Select Match

To select records that do not have exactly one value with the *MO* ID in the Ownership field, including records for which *MO* is selected with another value, use the following filter:

```
$filter=not Ownership/all(x: x eq 'MO')
```

## Example: Checking for No Values by Using all\(\)

To select records for which no values are selected in the Ownership field by using `all()`, use the following filter:

```
$filter=Ownership/all(x: x eq null)
```

## Example: Excluding an ID from a Multi-Select Field

To select records for which the Ownership field does not contain the *MO* ID, including records for which no values are selected, use the following filter:

```
$filter=Ownership/all(x: x ne 'MO')
```

## Example: Condition on a Custom Single-Select Field

Suppose that in an extension of the *Default/26.200.001* endpoint, you added the `UsrRepairItemType` field to the top-level `StockItem` entity. This field corresponds to the **Repair Item Type** custom element, which has been added to the **General** tab \(in the **Item Defaults** section, which corresponds to the ItemSettings data view\) of the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form. If you want to obtain all records on the [Stock Items](../UserGuide/IN_20_25_00.md) form for which the value of the custom **Repair Item Type** element is *Battery* \(for which the internal ID is *BT\)*, you would use the following parameter string: *$filter=cf.StringSingleSelect\('ItemSettings.UsrRepairItemType'\) eq 'BT'*.

**Tip:** For details on how to find out the name of a custom element and the name of its data view, see [Custom Fields](IS__con_CB_Custom_Fields.md#).

For a custom single-select field, use `cf.StringSingleSelect()` for a string ID or `cf.IntSingleSelect()` for an integer ID.

## Example: Condition on a Custom Multi-Select Field

To select records for which an unmapped custom OWNERSHIP multi-select field contains the *MO* ID, use the following filter:

```
$filter=contains(cf.String('Document.AttributeOWNERSHIP'), 'MO')
```

**Tip:** The `cf.StringMultiSelect()` function is not supported. To filter a custom multi-select field, use `contains()` with `cf.String()`. This condition performs a substring search. To use collection filtering, add the custom field to an endpoint extension and map it as StringMultiSelectValue.

**Parent topic:**[Parameters for Retrieving Records](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Parameter.md)

