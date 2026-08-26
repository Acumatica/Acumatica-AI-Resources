# DAC-Based OData: To Sign In to Acumatica ERP and Retrieve the Metadata {#_88440ef2-0feb-4af8-89f2-47d69c5e68be .task}

This activity will walk you through the process of signing in to Acumatica ERP and retrieving the metadata when you use the DAC-based OData interface.

## Story { .section}

Suppose that you are a developer who needs to investigate the options available in Acumatica ERP for integration with business intelligence \(BI\) applications. As a part of this task, you need to test the DAC-based OData interface. To send requests to Acumatica ERP through the DAC-based OData interface, you need to sign in to Acumatica ERP.

## Process Overview { .section}

You will configure a Postman collection to use the basic authentication. To test the sign-in, you will retrieve the full list of DACs, their fields, the fields' types, and the navigation properties of DACs, which are relationships between the DACs.

## System Preparation { .section}

Before you begin performing this activity, do the following:

1.  Deploy an instance of Acumatica ERP with the name *MyStoreInstance* and a tenant that has the *MyStore* name and contains the *T100* data.
2.  Make sure the Postman application is installed on your computer. To download and install Postman, follow the instructions on [https://www.postman.com/downloads/](https://www.postman.com/downloads/).

## Step 1: Signing In to Acumatica ERP { .section}

For sign-in in Acumatica ERP, you will use basic authorization. To configure basic authorization in Postman, do the following:

**Tip:** Instead of configuring the requests by yourself, you can import the Postman collection from the [`OData.postman_collection.json`](https://github.com/Acumatica/Help-and-Training-Examples/tree/HEAD/IntegrationDevelopment/I300/OData.postman_collection.json) file, update the variable values, and test the corresponding requests from this collection.

1.  In Postman, create a new collection.

    **Tip:** Instead of creating a new collection, you can use the same Postman collection that is used in [Generic Inquiry Access Through OData: To Sign In to Acumatica ERP and Retrieve the Metadata](GI_Access_to_Exposed_Inquiry_Through_OData_SignIn_Activity.md).

2.  On the **Auth** tab of the collection, specify its authorization settings as follows:
    1.  In the **Auth Type** box, select the *Basic Auth* type.
    2.  In the **Username** and **Password** boxes, type the credentials that you are using to access the Acumatica ERP instance for the training course.
3.  Click **Save**.

## Step 2: Retrieving the Metadata { .section}

To test the sign-in and retrieve the metadata, do the following:

1.  In the Postman collection, create a `GET` request to the following URL.

    ```
    http://localhost/MyStoreInstance/t/MyStore/api/odata/dac/$metadata
    ```

    In this request:

    -   *http://localhost/MyStoreInstance* is the URL of an Acumatica ERP instance.
    -   *MyStore* is the login name of a tenant in this instance.
    -   *http://localhost/MyStoreInstance/t/MyStore/api/odata/dac* is the base URL of the DAC-based OData interface of this tenant in this instance.
    -   You’ve appended */$metadata* to this URL to obtain the full metadata.
2.  Send the request. The response of the successful request contains the `200 OK` status code. The following code example shows a fragment of the response body.

    **Tip:** Because of the large number of metadata, the request can take a significant amount of time.

    ```language-xml
    <?xml version="1.0" encoding="utf-8"?>
    <edmx:Edmx Version="4.0" xmlns:edmx="http://docs.oasis-open.org/odata/ns/edmx">
      <edmx:DataServices>
        ...
        <Schema Namespace="PX.Api.Mobile.Workspaces" 
          xmlns="http://docs.oasis-open.org/odata/ns/edm">
          <EntityType Name="MobileSiteMapWorkspaces">
            <Key>
              <PropertyRef Name="Name"/>
            </Key>
            <Property Name="MobileWorkspaceID" Type="Edm.Guid"/>
            <Property Name="Owner" Type="Edm.String"/>
            <Property Name="Name" Type="Edm.String"/>
            <Property Name="DisplayName" Type="Edm.String"/>
            <Property Name="SortOrder" Type="Edm.Int32" Nullable="false"/>
            ...
            <NavigationProperty Name="UsersByCreatedByID" Type="PX.SM.Users">
              <ReferentialConstraint Property="CreatedByID" 
                ReferencedProperty="PKID"/>
            </NavigationProperty>
            <NavigationProperty Name="UsersByLastModifiedByID" 
              Type="PX.SM.Users">
              <ReferentialConstraint Property="LastModifiedByID" 
                ReferencedProperty="PKID"/>
            </NavigationProperty>
          </EntityType>
        </Schema>
        ...
      </edmx:DataServices>
    </edmx:Edmx>
    ```

3.  Save the request.

**Parent topic:**[Accessing DACs Through OData](../UserGuide/RPT_DAC_OData_Mapref.md)

