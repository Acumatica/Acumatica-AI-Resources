# Integration with HubSpot: Enhanced HubSpot Data Provider {#_cdb7ad5b-17f7-4f09-9a96-74dfe416a6c1 .concept}

In Acumatica ERP, you can use the *HubSpot Enhanced Provider* data provider to configure the export of data from Acumatica ERP to HubSpot and the import of data from HubSpot to Acumatica ERP through the use of integration scenarios. The *HubSpot Enhanced Provider* data provider can work with the following data.

|Entity Type in Acumatica ERP|Corresponding Entity Type in HubSpot|Notes|
|----------------------------|------------------------------------|-----|
|Leads|Contacts| |
|Contacts|Contacts| |
|Business Accounts|Companies| |
|Marketing Lists|Contact Lists|Only list properties can be synchronized in real time. The list membership can be synchronized on demand or by a schedule.|

## Specific Functions Available for Integration Scenarios { .section}

The table below provides a list of specific functions that may be used in formulas in an integration scenario that uses the *HubSpot Enhanced Provider* data provider. \(For more information about functions, see [Functions](../UserGuide/IS__con_IS_Functions.md).\)

|Scenario Type|Function|Description|
|-------------|--------|-----------|
|Export|GetHubSpotContactID\(id\)|Searches for a synchronization state in the list of known synchronization states by using the Acumatica ERP contact or lead ID \(id\).

 This function throws an exception if the id value is null when the function is called.

 The function returns null if no synchronization state is found for the specified id and no record with a matching email address is found in HubSpot.

|
|GetHubSpotListId\(listid\)|Searches for a contact list \(listid\) in the list of known real-time synchronization states by using the Acumatica ERP marketing list ID.

 This function returns null when no contact list is found.

|
|FindHubSpotListId\(listid\)|Searches for a contact list \(listid\) in the list of known synchronization states by using the Acumatica ERP marketing list ID.

 This function throws an exception when no contact list is found.

|
|GetHubSpotCompanyID\(accountid\)|Searches for a HubSpot company in the list of known synchronization states by using the Acumatica ERP business account natural key \(AcctCD\).

 This function returns null when no company is found.

|
|FindHubSpotCompanyID\(accountid\)|Searches for a HubSpot company in the list of known synchronization states by using the natural key of the Acumatica ERP business account \(AcctCD\).

 This function throws an exception when nothing is found.

|
|Import|GetAcumaticaContactID\(vid, field, value\)|Searches for a synchronization state in the list of known synchronization states by using the HubSpot contact ID \(vid\); if the synchronization state is not found, the function searches for a contact for which the value of the field parameter is equal to value.

 All the parameters are mandatory. If any parameter is not specified, the function returns an error when it is called.

 If the value of the vid or value parameter is null when the function is called, the function throws an exception.

 The function requires that the field parameter be a valid contact field name. If no field is found, the function throws an exception.

 If no synchronization state is found for the vid parameter and if no contact record is found for the field parameter and for the value parameter, the function returns null.

 If multiple records are found by the function, it throws an exception.

|
|FindAcumaticaLeadOrContactID\(vid\)|Searches for a synchronization state in the list of known synchronization states by using the HubSpot contact ID \(vid\).

 This function returns the ID of the found lead or contact. The function returns null if the vid parameter is null. It throws an exception when no synchronization state is found.

|
|GetAcumaticaLeadID\(vid, field, value\)|Searches for a synchronization state in the list of known synchronization states by using the HubSpot contact ID \(vid\); if the HubSpot contact ID is not found, searches for a lead for which the value of the field parameter is equal to value.

 All the parameters are mandatory. If any parameter is not specified, the function returns an error when called.

 If the value of the vid or value parameter is null when the function is called, the function throws an exception.

 The function requires that the field parameter be a valid lead field name. If no field is found, the function throws an exception.

 If no synchronization state is found for the vid parameter and if no lead record is found for the field parameter and for the value parameter, the function returns null.

 If multiple records are found by the function, it throws an exception.

|
|GetAcumaticaMarketingListID\(listid, listname\)|Searches for an Acumatica ERP marketing list in the list of known synchronization states by HubSpot list ID; if the marketing list is not found, the function searches for a list with a name equal to listname.

 This function returns null when no marketing list is found.

|
|FindAcumaticaMarketingListID\(listid\)|Searches for the HubSpot listid in the list of known synchronization states.

 This function returns null if listid is null.

 The function throws an exception when no HubSpot listid is found.

|
|GetAcumaticaAccountID\(companyid, field, value\)|Searches for an Acumatica ERP business account in the list of known synchronization states by using the HubSpot company ID or, if no state is found, searches for a business account that has the value of the field parameter equal to value.

 This function returns null when no Acumatica ERP business account is found.

|
|FindAcumaticaAccountID\(companyid\)|Searches for the companyid in the list of known synchronization states.

 This function throws an exception when no companyid is found.

|

**Parent topic:**[Integration with HubSpot](../ImplementationGuide/config_HubSpot_Mapref.md)

