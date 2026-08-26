# DAC-Based OData: To Retrieve Data by Using the $expand, $select, and $filter Parameters {#_81a945c0-5ed8-4712-a0aa-cffa86713a2e .task}

This activity will walk you through the process of retrieving data by using a `GET` request with the *$expand*, *$select*, and *$filter* URL parameters through the DAC-based OData interface.

## Story { .section}

In the business intelligence \(BI\) application of the MyStore company, a warehouse manager should be able to view the statistics of the items available in a particular warehouse. To make it possible for the BI application to display these statistics, you need to retrieve from Acumatica ERP information about the quantities of stock items that are available in any warehouse. You also need to retrieve these statistics for a particular stock item. You want to use the DAC-based OData interface to obtain this data.

In Acumatica ERP, item availability data is displayed on the [Inventory Summary](IN_40_10_00.md) \(IN401000\) form. To view the on-hand and available quantities of any stock item on this form, you select the item in the Selection area of the form. Item availability data is available in the Item Availability Data \(INGI0002\) generic inquiry, which has been preconfigured for use in this activity.

## Process Overview { .section}

You will review the Item Availability Data \(INGI0002\) generic inquiry. To get the data provided by this generic inquiry, in a DAC-based OData request, you will specify the DACs on which the generic inquiry is based. To specify a value of the parameter of the generic inquiry, you will use the *$filter* parameter of the HTTP request.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Deploy an instance of Acumatica ERP with the *MyStoreInstance* name and a tenant that has the *MyStore* name and contains the *T100* data.
2.  Make sure the Postman application is installed on your computer. To download and install Postman, follow the instructions on [https://www.postman.com/downloads/](https://www.postman.com/downloads/).
3.  Complete the following prerequisite activity: [DAC-Based OData: To Sign In to Acumatica ERP and Retrieve the Metadata](../Shared/../UserGuide/RPT_DAC_OData_SignIn_Activity.md).
4.  If you have created a Postman collection with the basic authentication configured, add a new request to the collection and configure the request to inherit the authorization type from the parent collection.

## Step 1: Reviewing the Generic Inquiry { .section}

The Item Availability Data \(INGI0002\) generic inquiry is based on the [PX.Objects.IN.INSiteStatus](https://help.acumatica.com/dacBrowser/PX.Objects.IN/INSiteStatus) data access class and has one parameter, which you can use to extract the stock item by its inventory ID. To review this generic inquiry and make sure it includes the needed elements, do the following:

1.  On the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form, select the inquiry with the title *Item Availability Data* in the Summary area.
2.  Make a note of the following items on the form:
    -   On the **Data Sources** tab, the DAC that is used in the generic inquiry
    -   On the **Parameters** tab, the parameter definition
    -   On the **Results Grid** tab, the DAC fields included in the generic inquiry results
3.  Click **View Inquiry** on the form toolbar to view the resulting generic inquiry form.

## Step 2: Retrieving the Quantities of Items { .section}

To retrieve the quantities of items, do the following:

1.  In the Postman collection, add a request with the following settings:
    -   HTTP method: `GET`
    -   URL: *http://localhost/MyStoreInstance/t/MyStore/api/odata/dac/PX\_Objects\_IN\_INSiteStatus*
    -   Parameters: The parameters shown in the following table

        |Key|Value|
        |---|-----|
        |*$select*|`QtyOnHand,QtyAvail`|
        |*$expand*|        ```
InventoryItemByInventoryID($select=InventoryCD,Descr),
INSiteBySiteID($select=SiteCD)
        ```

|
        |*$filter*|        ```
InventoryID eq 41
        ```

|

2.  Send the request. If the request is successful, the response contains the `200 OK` status code. The result is shown in the following code.

    ```language-json
    {
      "@odata.context": 
        "http://localhost/MyStoreInstance/t/MyStore/api/odata/dac/$metadata
        #PX_Objects_IN_INSiteStatus(QtyOnHand,QtyAvail,InventoryItemByInventoryID(
        InventoryCD,Descr),INSiteBySiteID(SiteCD))",
      "value": [
        {
          "QtyOnHand": 1999.000000,
          "QtyAvail": 1977.000000,
          "InventoryItemByInventoryID": {
            "InventoryCD": "AALEGO500 ",
            "Descr": "Lego 500 piece set"
          },
          "INSiteBySiteID": {
            "SiteCD": "MAIN      "
          }
        }
      ]
    }
    ```

3.  Save the request.

**Parent topic:**[Accessing DACs Through OData](../UserGuide/RPT_DAC_OData_Mapref.md)

