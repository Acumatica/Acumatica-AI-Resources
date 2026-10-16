# Contract Versions

Acumatica ERP 2026 R2 supports Contract Versions 4 and 5. In this topic, you can learn the main characteristics of these contract versions.

Custom endpoints created from scratch have Contract Version 5.

**Tip:** Contract Version 1 is not supported starting from Acumatica ERP 2018 R2. Contract Versions 2 and 3 are not supported starting from Acumatica ERP 2023 R2.

## Comparison of Contract Versions 4 and 5

The following table compares the characteristics of Contract Versions 4 and 5.

|Characteristic|Contract Version 4|Contract Version 5|
|--------------|------------------|------------------|
|Query syntax|You use OData 3 URL conventions. You specify fields of nested entities and nested expansions by using slash-delimited paths.|You use OData 4.01 URL conventions throughout. You nest the `$select` or `$expand` query option that applies to an expanded entity in parentheses in the corresponding `$expand` expression, in accordance with the [OData 4.01 URL conventions](https://docs.oasis-open.org/odata/odata/v4.01/odata-v4.01-part2-url-conventions.html).|
|Elements outside the endpoint definition|You can work with elements added to a form in a customization project and predefined elements that are not included in the entity definition.|Same as Contract Version 4.|
|Drop-down field values|A selected value uses the plain-value format.|A selected value contains an internal ID and a description. In a request body and a filter, you specify the ID.|
|Drop-down field types|The field type does not distinguish between string and integer IDs or between single-select and multi-select values.|The field type indicates whether a single-select ID is a string or an integer. A multi-select field is represented as an array of structured values.|
|Filtering by multi-select fields defined in an endpoint|The any\(\) and all\(\) operators are not supported.|You can use the any\(\) and all\(\) operators.|
|Retrieval of custom fields|You use the `$custom` parameter.|You include custom fields in the `$select` parameter.|
|OpenAPI nullability|The value property of a standard value wrapper can be null, but the wrapper object is not marked as nullable.|Standard value wrapper objects and additional metadata properties are explicitly marked as nullable.|

**Parent topic:**[Configuring the REST API](../IntegrationDevelopmentGuide/IS__mng_Contract_Based_Web_Services.md)

