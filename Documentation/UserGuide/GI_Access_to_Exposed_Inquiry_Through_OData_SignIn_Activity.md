# Generic Inquiry Access Through OData: To Sign In to Acumatica ERP and Retrieve the Metadata {#_1c478ec1-1b25-4b07-b2a6-dcf98d1816cc .task}

This activity will walk you through the process of signing in to Acumatica ERP and retrieving the metadata when you use the generic inquiry–based OData interface.

## Story { .section}

Suppose that you are a developer who needs to investigate the options available in Acumatica ERP for integration with business intelligence \(BI\) applications. As a part of this task, you need to test the generic inquiry–based OData interface. To send requests to Acumatica ERP through the generic inquiry–based OData interface, you need to sign in to Acumatica ERP.

## Process Overview { .section}

You will configure a Postman collection to use the basic authentication and retrieve the list of generic inquiries and their fields available through the generic inquiry-based OData interface to test the sign-in.

## System Preparation { .section}

Before you begin performing this activity, do the following:

1.  Deploy an instance of Acumatica ERP with the name *MyStoreInstance* and a tenant that has the *MyStore* name and contains the *T100* data.
2.  Make sure that the Postman application is installed on your computer. To download and install Postman, follow the instructions on [https://www.postman.com/downloads/](https://www.postman.com/downloads/).

## Step 1: Signing In to Acumatica ERP { .section}

To configure basic authorization in Postman for sign-in to Acumatica ERP, do the following:

**Tip:** Instead of configuring the requests by yourself, you can import the Postman collection from the [`OData.postman_collection.json`](https://github.com/Acumatica/Help-and-Training-Examples/tree/HEAD/IntegrationDevelopment/I300/OData.postman_collection.json) file, update the variable values, and test the corresponding requests from this collection.

1.  In Postman, create a new collection.
2.  On the **Auth** tab of the collection, specify its authorization settings as follows:
    1.  In the **Auth Type** box, select the *Basic Auth* type.
    2.  In the **Username** and **Password** boxes, type the credentials that you are using to access the Acumatica ERP instance for the training course.
3.  Click **Save**.

## Step 2: Retrieving the Metadata { .section}

To test the sign-in and retrieve the metadata, do the following:

1.  In the collection, add the following `GET` request to retrieve the list of generic inquiries exposed through OData.

    ```
    GET http://localhost/MyStoreInstance/t/MyStore/api/odata/gi/$metadata
    ```

    In this request:

    -   *http://localhost/MyStoreInstance* is the URL of an Acumatica ERP instance.
    -   *MyStore* is the login name of a tenant in this instance.
    -   *http://localhost/MyStoreInstance/t/MyStore/api/odata/gi* is the base URL of the generic inquiry–based OData interface of this tenant in this instance.
    -   You’ve appended */$metadata* to this URL to view the list of fields and parameters in exposed generic inquiries.
2.  Send the request. The response of the successful request contains the `200 OK` status code. The following code example shows a fragment of the response body.

    ```language-xml
    <?xml version="1.0" encoding="utf-8"?>
    <edmx:Edmx Version="4.0" xmlns:edmx="http://docs.oasis-open.org/odata/ns/edmx">
      <edmx:DataServices>
        <Schema Namespace="GenericInquiry"
          xmlns="http://docs.oasis-open.org/odata/ns/edm">
          <EntityType Name="BILeadConversion">
            <Key>
              <PropertyRef Name="LeadID"/>
              <PropertyRef Name="OpportunityID"/>
              <PropertyRef Name="BusinessAccount"/>
              <PropertyRef Name="ContactID"/>
              <PropertyRef Name="NoteID"/>
              <PropertyRef Name="AddressID"/>
              <PropertyRef Name="LeadID_2"/>
            </Key>
            <Property Name="LeadID" Type="Edm.Int32"/>
            <Property Name="OpportunityID" Type="Edm.String"/>
            <Property Name="BusinessAccount" Type="Edm.String"/>
            <Property Name="Contact" Type="Edm.String"/>
            <Property Name="AccountName" Type="Edm.String"/>
            <Property Name="JobTitle" Type="Edm.String"/>
            ...
          </EntityType>
          ...
          <Function Name="DB-StorageDetails">
            <Parameter Name="Warehouse" Type="Edm.String"/>
            <ReturnType Type="Collection(GenericInquiry.DBStorageDetails)" 
              Nullable="false"/>
          </Function>
          ...
          <EntityContainer Name="Default">
            <EntitySet Name="BI-LeadConversion" 
              EntityType="GenericInquiry.BILeadConversion"/>
            <EntitySet Name="BI-Cases" 
              EntityType="GenericInquiry.BICases"/>
            <EntitySet Name="DB-StorageDetails" 
              EntityType="GenericInquiry.DBStorageDetails"/>
            <EntitySet Name="BI-ARInvoices" 
              EntityType="GenericInquiry.BIARInvoices"/>
            <EntitySet Name="BI-GLBudgetActual" 
              EntityType="GenericInquiry.BIGLBudgetActual"/>
            ...
            <FunctionImport Name="DBStorageDetails_WithParameters" 
              Function="GenericInquiry.DB-StorageDetails" 
              EntitySet="DB-StorageDetails"/>
            <FunctionImport Name="CRCampaignSalesOrders_WithParameters" 
              Function="GenericInquiry.CR-CampaignSalesOrders" 
              EntitySet="CR-CampaignSalesOrders"/>
            <FunctionImport Name="PMProjectSummary_WithParameters" 
              Function="GenericInquiry.PM-Project Summary" 
              EntitySet="PM-Project Summary"/>
            <FunctionImport 
              Name="DBStorageDetailsByItemWarehouseLocation_WithParameters" 
              Function="GenericInquiry.DB-StorageDetailsByItemWarehouseLocation" 
              EntitySet="DB-StorageDetailsByItemWarehouseLocation"/>
            <FunctionImport Name="CRCampaignInvoices_WithParameters" 
              Function="GenericInquiry.CR-CampaignInvoices" 
              EntitySet="CR-CampaignInvoices"/>
            ...
          </EntityContainer>
        </Schema>
      </edmx:DataServices>
    </edmx:Edmx>
    ```

3.  Save the request.

**Parent topic:**[Accessing the Exposed Inquiry Results Through OData](../UserGuide/GI_Access_to_Exposed_Inquiry_Through_OData_Mapref.md)

