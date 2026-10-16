# $top Parameter \(Contract Versions 5 and 4\)

When you retrieve records from Acumatica ERP by using the contract-based REST API, you use the *$top* parameter to specify the number of records to be returned from Acumatica ERP. That is, if you specify *N* as the value of this parameter, the first *N* records will be returned from Acumatica ERP.

If you do not use the *$top* parameter in a request, all records will be returned. However, if a limit is specified in SQL Server Resource Governor and the number of available records exceeds the limit, an error will be returned.

## Example: Retrieval of the First Five Records

To obtain only first five records from the list, you use the following parameter string: *$top=5*.

**Parent topic:**[Parameters for Retrieving Records](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Parameter.md)

