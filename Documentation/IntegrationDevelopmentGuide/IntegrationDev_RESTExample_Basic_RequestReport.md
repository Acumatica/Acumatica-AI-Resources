# Request a Report

To request a report by using the contract-based REST API, you access the needed URL with the `POST` HTTP method. You pass the parameters of the report in JSON format in the request body.

See the following sections for details on the request and the response.

## HTTP Method and URL

If you need to retrieve a report from Acumatica ERP, you use the `POST` HTTP method and the following URL.

```
POST http://<Base endpoint URL>/<Report entity>
```

The URL has the following components:

-   *&lt;Base endpoint URL&gt;* is the URL of the contract-based endpoint through which you are going to work with Acumatica ERP. This URL has the following format: *http://&lt;Acumatica ERP instance URL&gt;/entity/&lt;Endpoint name&gt;/&lt;Endpoint version&gt;/*.
-   *&lt;Report entity&gt;*: The name of the entity that corresponds to the report that you are going to obtain.

For example, suppose that the created custom endpoint has the *http://localhost/AcumaticaDB/entity/Report/0001/* URL and the *CashAccountSummary* report entity. The developer would use the following URL: *http://localhost/AcumaticaDB/entity/Report/0001/CashAccountSummary*.

## Parameters

You use no query parameters when you request a report from Acumatica ERP. \(The report parameters are passed in the request body.\)

## Request Headers

You can specify the following headers in the request.

<table id="_40bf8194-174d-41e1-9ba1-dce56cf597b4"><thead><tr><th>

Header

</th><th>

Description

</th></tr></thead><tbody><tr><td>

Accept

</td><td>

Specifies the format in which the report should be returned. The format \(and the respective header value\) can be one of the following:-   PDF: `application/pdf`
-   HTML: `text/html`
-   Excel: `application/vnd.openxmlformats-officedocument.spreadsheetml.sheet`

If the `Accept` header is not specified, the report is returned in PDF format.

</td></tr><tr><td>

Content-Type

</td><td>

Specifies the format of the request body, which should be application/json.

</td></tr><tr><td>

Cookie

</td><td>

Specifies the cookies that you’ve received during the sign-in to Acumatica ERP with the login method. For details on this method, see [Sign In to the Service](../Shared/../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic_Login.md).

 You must use the Cookie header if:

 -   You’ve used the login method to sign in to Acumatica ERP.
-   You’re using the OAuth 2.0 or OpenID Connect \(OIDC\) authorization with the api:concurrent\_access scope and need to manage session IDs through cookies.

</td></tr><tr><td>

Accept-Language

</td><td>

Specifies the language in which the report should be returned from Acumatica ERP. The header value can be one of the following:

 -   A locale name that is specified on the [System Locales](../UserGuide/SM_20_05_50.md) \(SM200550\) form, such as *fr-FR*: If this locale is defined on the form and is active, the report in this language will be returned. If this locale is not defined on the form or is inactive, the active locale with the lowest sequence number that is defined on the form is used for the returned report.
-   Empty or *\**: The returned report uses the *en-US* locale.
-   Multiple locale names that are weighted with the quality value syntax, such as *fr-FR, en;q=0.8, de;q=0.7, \*;q=0.5*: To generate the returned report, the system uses the requested locale that is defined on the form, is active, and has the highest priority specified. For more information about quality values, see [https://developer.mozilla.org/en-US/docs/Glossary/Quality\_values](https://developer.mozilla.org/en-US/docs/Glossary/Quality_values).

</td></tr></tbody>
</table>

## Request Body

In the request body, you specify the parameters of the report in JSON format, as shown in the following example.

```json
{
    "CompanyBranch": {"value": "SOFT"},
    "IncludeNonClearedTransactions": {"value": true}
}
```

If no parameters are specified in the request body, the default parameters of the report are used.

You can find details on how to represent a record in JSON format in [Representation of a Record in JSON Format](IS__con_REST_Entity_Representation_in_JSON.md#).

## Response Status Codes

The following table lists the HTTP status codes that the system returns for a request for a report.

<table id="_970da984-282e-41b1-b56c-841acaa6b024"><thead><tr><th>

Code

</th><th>

Description

</th></tr></thead><tbody><tr><td>

*202*

</td><td>

The operation is in progress. The `Location` header of the response contains the URL that you can use to obtain the requested report by using the `GET` HTTP method. When the report is ready, this `GET` request returns the *200 OK* status code. The requested report is returned in the response body.

</td></tr><tr><td>

*400*

</td><td>

The data specified in the request is invalid.

</td></tr><tr><td>

*401*

</td><td>

The user is not signed in to the system.

</td></tr><tr><td>

*500*

</td><td>

An internal server error has occurred.

</td></tr></tbody>
</table>

## Response Body

After the request succeeds, the response body is empty.

## Example

The following request shows an example of a PDF version being requested of the [Cash Account Summary](../UserGuide/CA_63_30_00.md) \(CA633000\) report through the REST API of the custom *Report/0001* endpoint.

**Tip:** In the request example below, `<Acumatica ERP host>` is the URL of the Acumatica ERP host \(such as *https://my.acumatica.com*\). You need to use the instance name in the URL of the request \(such as *https://my.acumatica.com/MyInstance*\) if the instance is not installed in the root of the website.

```
POST /entity/Report/0001/CashAccountSummary HTTP/1.1
Host: <Acumatica ERP host>
Accept: application/pdf
Content-Type: application/json

{
    "CompanyBranch": {"value": "SOFT"},
    "IncludeNonClearedTransactions": {"value": true}
}
```

The response of the successful request contains the `Location` header similar to the following: `/<instance name>/entity/Report/0001/CashAccountSummary/report/PDF/7049baf4-9387-4dd4-9eb5-e975cc8d1a96`. When the report is ready, a GET request to this URL returns the requested report in the response body.

**Parent topic:**[Basic Requests](../IntegrationDevelopmentGuide/IntegrationDev_RESTExample_Basic.md)

