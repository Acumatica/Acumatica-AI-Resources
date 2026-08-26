# $skip Parameter {#_be37b0cb-eb17-41c0-944c-d52f7a65cf2e .concept}

When you retrieve records from Acumatica ERP by using the contract-based REST API, you use the *$skip* parameter to specify the number of records to be skipped from the list of returned records. That is, if you specify *N* as the value of this parameter, the first *N* records will be skipped from the list of returned records.

If you use the *$skip* and *$top* parameters together, the *$skip* parameter is applied first.

By using the *$skip* and *$top* parameters, you can implement the pagination of records. However, there is no parameter to learn the number of records that meet a particular request.

## Example: Skipping the First Five Records { .section}

If you want to skip the first five records from the list and obtain the rest of the records, you use the following parameter string: *$skip=5*.

**Parent topic:**[Parameters for Retrieving Records](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Parameter.md)

