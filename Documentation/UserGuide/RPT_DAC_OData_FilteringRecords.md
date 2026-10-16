# DAC-Based OData: Filtering Records

You can filter OData records by specifying filter criteria for fields of a data access class \(DAC\), a single related entity, and a related entity collection. Filtering this way narrows the results before they leave the server, instead of pulling a broad record set and then filtering it yourself.

To retrieve the filtered records, you append the DAC name and the *$filter* parameter to the base URL of the DAC-based OData interface. For details about the base URL, see [The URL for the DAC-Based OData Interface](RPT_DAC_OData_GeneralInfo.md#_17597c9b-c7c4-4659-ae6a-f15108e59eee).

## Specifying a Filter

To filter records, specify your criteria in the *$filter* parameter of the URL using [OData 4.01 URL conventions](http://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part2-url-conventions.html).

**Tip:** Before you add *$filter* to a request, inspect the `Cap.FilterRestrictions` annotation of the entity set in the metadata:

-   If the annotation contains `<PropertyValue Property="Filterable" Bool="false"/>`, don’t use fields declared in that DAC in a filter condition. You can still filter by inherited fields unless they are listed in the `NonFilterableProperties` collection.
-   If the annotation doesn't include `<PropertyValue Property="Filterable" Bool="false"/>`, you can filter by the DAC fields unless they are listed in the `NonFilterableProperties` collection.

The following sample URL retrieves the sales orders whose `OrderType` field value is *IN*.

```
GET https://localhost/AcumaticaERP/t/U100/api/odata/dac/SOOrder?
$filter=(OrderType eq 'IN')
```

## Filtering by a Single Related Entity

In the *$filter* parameter, you can specify a navigation property for a single related DAC or a field of that DAC.

The following sample request retrieves sales orders that have a billing address.

```
GET https://localhost/AcumaticaERP/t/U100/api/odata/dac/SOOrder?
$filter=SOAddressByBillAddressID ne null
```

The following sample request retrieves sales orders whose billing address has the address ID of 37.

```
GET https://localhost/AcumaticaERP/t/U100/api/odata/dac/SOOrder?
$filter=SOAddressByBillAddressID/AddressID eq 37
```

## Filtering by a Related Entity Collection

For a navigation property that represents a collection of related DACs, you can use the `Any` and `All` lambda operators in the *$filter* parameter.

The following sample request retrieves sales orders that have at least one line.

```
GET https://localhost/AcumaticaERP/t/U100/api/odata/dac/SOOrder?
$filter=SOLineCollection/Any()
```

The following sample request retrieves sales orders that have at least one line whose line number is 2.

```
GET https://localhost/AcumaticaERP/t/U100/api/odata/dac/SOOrder?
$filter=SOLineCollection/Any(x: x/LineNbr eq 2)
```

The following sample request retrieves sales orders for which every line has a line number other than 2.

```
GET https://localhost/AcumaticaERP/t/U100/api/odata/dac/SOOrder?
$filter=SOLineCollection/All(x: x/LineNbr ne 2)
```

You can also use `$count` to filter records by the number of entities in a related collection. The following sample request retrieves sales orders that have exactly three lines.

```
GET https://localhost/AcumaticaERP/t/U100/api/odata/dac/SOOrder?
$filter=SOLineCollection/$count eq 3
```

**Parent topic:**[Accessing DACs Through OData](../UserGuide/RPT_DAC_OData_Mapref.md)

