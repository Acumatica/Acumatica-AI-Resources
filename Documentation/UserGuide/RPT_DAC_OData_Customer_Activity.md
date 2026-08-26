# DAC-Based OData: To Retrieve Data by Using the $expand and $select Parameters {#_07f1dfde-4479-4ebc-b950-ed5bbccfe053 .task}

This activity will walk you through the process of retrieving a list of records by using a `GET` request with the *$expand* and *$select* URL parameters through the DAC-based OData interface.

## Story { .section}

In the business intelligence \(BI\) application of the MyStore company, a marketing manager should be able to view analytics for the distribution of existing customers by geographical state. To display the needed customer information to the marketing manager, you need to retrieve from Acumatica ERP the relevant data on the customers, their contacts, and their addresses. This data has been entered on the [Customers](AR_30_30_00.md) \(AR303000\) form in Acumatica ERP. You want to use the DAC-based OData interface to obtain this data.

## Process Overview { .section}

Through the DAC-based OData interface, you will request records directly from the [PX.Objects.AR.Customer](https://help.acumatica.com/dacBrowser/PX.Objects.AR/Customer) DAC. In the `$select` parameter, you will list every field you want to provide in the result. In the `$expand` parameter, you will specify navigation properties for every related DAC you want to provide in the result. For navigation properties, you will specify the DAC fields in the `$select` parameters in parentheses.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Deploy an instance of Acumatica ERP with the *MyStoreInstance* name and a tenant that has the *MyStore* name and contains the *T100* data.
2.  Make sure the Postman application is installed on your computer. To download and install Postman, follow the instructions on [https://www.postman.com/downloads/](https://www.postman.com/downloads/).
3.  Complete the following prerequisite activity: [DAC-Based OData: To Sign In to Acumatica ERP and Retrieve the Metadata](../Shared/../UserGuide/RPT_DAC_OData_SignIn_Activity.md).
4.  If you have created a Postman collection with the basic authentication configured, add a new request to the collection and configure the request to inherit the authorization type from the parent collection.

## Step 1: Researching the Needed Fields { .section}

To provide the list of customers to the BI application, you need to retrieve the following values from Acumatica ERP:

-   Customer ID
-   Account name
-   Customer class
-   Details of the main contact of the customer:
    -   Email address
    -   Primary phone number
-   Customer address:
    -   City
    -   State
    -   Postal code
    -   Address lines

The corresponding elements on the [Customers](../Shared/../UserGuide/AR_30_30_00.md) \(AR303000\) form are shown in the following screenshot.

![](../Shared/Images/Customers.png "Elements on the Customers form")

To understand which DACs and fields you need to use to retrieve the list of customer records with contacts, you can investigate the [Customers](AR_30_30_00.md) form by using the [Element Inspector](AU_ElementInspector.md) tool.

To request the list of customers with contacts, you need the following fields of the DACs:

-   The AcctCD, AcctName, and CustomerClassID fields of the PX.Objects.AR.Customer DAC
-   The Email and Phone1 fields of the PX.Objects.CR.Contact DAC
-   The AddressLine1, AddressLine2, City, State, and PostalCode fields of the PX.Objects.CR.Address DAC

## Step 2: Retrieving the List of Customers { .section}

Along with the information from the PX.Objects.AR.Customer DAC, you need to retrieve information from the PX.Objects.CR.Contact and PX.Objects.CR.Address DACs, which are related to the PX.Objects.AR.Customer DAC. The ContactByDefBillContactID navigation property of the Customer entity refers to the contact information contained in the Contact DAC. The AddressByDefAddressID navigation property of the Customer entity refers to the address contained in the Address DAC. To understand which navigation properties to use, you can review the metadata that you have received in [DAC-Based OData: To Sign In to Acumatica ERP and Retrieve the Metadata](RPT_DAC_OData_SignIn_Activity.md).

To retrieve the list of customers with contacts, do the following:

1.  In the Postman collection, add a request with the following settings:
    -   HTTP method: `GET`
    -   URL: *http://localhost/MyStoreInstance/t/MyStore/api/odata/dac/PX\_Objects\_AR\_Customer*
    -   The parameters in the following table

        |Parameter|Value|
        |---------|-----|
        |*$select*|`AcctCD,AcctName,CustomerClassID`|
        |*$expand*|        ```
ContactByDefBillContactID($select=Email,Phone1),
AddressByDefAddressID($select=AddressLine1,
AddressLine2,City,State,PostalCode)
        ```

|

2.  Send the request. If the request is successful, its response contains the `200 OK` status code. The following code example shows a fragment of the response body.

    ```language-json
    {
        "@odata.context": 
          "http://localhost/MyStoreInstance/t/MyStore/api/odata/dac/$metadata
          #PX_Objects_AR_Customer(
          AcctCD,AcctName,CustomerClassID,ContactByDefBillContactID(EMail,Phone1),
          AddressByDefAddressID(AddressLine1,AddressLine2,City,State,PostalCode))",
        "value": [
            {
                "AcctCD": "C000000001",
                "AcctName": "Jersey Central Office Equip",
                "CustomerClassID": "DEFAULT",
                "ContactByDefBillContactID": {
                    "EMail": "jersey-equip@mail.con",
                    "Phone1": "+1 (777) 283-0414"
                },
                "AddressByDefAddressID": {
                    "AddressLine1": "1 De Villiers & Harrison St, 11-th Flr.",
                    "AddressLine2": null,
                    "City": "Johannesburg",
                    "State": null,
                    "PostalCode": null
                }
            },
        ...
      ]
    }
    ```

3.  Save the request.

**Parent topic:**[Accessing DACs Through OData](../UserGuide/RPT_DAC_OData_Mapref.md)

