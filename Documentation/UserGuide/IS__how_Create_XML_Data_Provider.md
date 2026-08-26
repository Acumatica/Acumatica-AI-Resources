# To Create an XML Data Provider {#_3fa49466-c99e-47ac-a32a-4d1a4bc2fe99 .task}

You use the [Data Providers](SM_20_60_15.md) \(SM206015\) form to create a data provider, which defines the structure of external data and is used by Acumatica ERP during data import or data export.

**Attention:** The characters that are forbidden in XML are omitted during the data export to XML files.

This procedure describes how to create a data provider that works with the records in an XML file.

## Before You Proceed { .section}

Make sure the XML file for which you are going to create a data provider has one of the following formats:

-   Tree format, in which the values of the source fields are placed in the tags of the source XML file. The structure must be similar to that shown in the following code.

    ```
    <?xml version="1.0" encoding="us-ascii"?>
    <Root>
      <Columns>
        <Column>Type</Column>
        <Column>ReferenceNbr</Column>
        <Column>Status</Column>
        <Column>LineNumber</Column>
        <Column>InventoryID</Column>
        <Column>UnitPrice</Column>
        <Column>Quantity</Column>
        ...
      </Columns>
      <Rows>
        <Row>
          <Item>SO</Item>
          <Item>000001</Item>
          <Item>On Hold</Item>
          <Item>1</Item>
          <Item>Battery</Item>
          <Item>3.00</Item>
          <Item>15</Item>
          ...
        </Row>
      </Rows>
    </Root>
    ```

-   Flat format, in which the values of the source fields are placed in attributes of tags in the source XML file. The structure must be similar to that shown in the following code.

    ```
    <?xml version="1.0" encoding="us-ascii"?>
    <Root>
      <Columns>
        <Column Name="Type"/>
        <Column Name="ReferenceNbr"/>
        <Column Name="Status"/>
        <Column Name="LineNumber"/>
        <Column Name="InventoryID"/>
        <Column Name="UnitPrice"/>
        <Column Name="Quantity"/>
      </Columns>
      <Rows>
        <Row Type="SO" ReferenceNbr="000001" Status="On Hold" LineNumber="1" 
          InventoryID="Battery" UnitPrice="3.00" Quantity="15"/>
      </Rows>
    </Root>
    ```


If you need to use another XML format, you should develop a custom data provider by using the API provided by Acumatica ERP or use the contract-based API to import or export the data. For details about the contract-based API, see [Configuring the REST API](../IntegrationDevelopmentGuide/IS__mng_Contract_Based_Web_Services.md).

## To Create an XML Data Provider { .section}

1.  Review the file for which you need to create the data provider to identify the needed parameters of the provider \(the file format and file encoding\) and the external data schema.
2.  On the [Data Providers](SM_20_60_15.md) \(SM206015\) form, create a provider, and specify the following settings:
    -   **Name**: The name of the provider, which usually alludes to the data you will transfer by using this provider, such as `Import/Export Customers`
    -   **Data Type**: *XML Provider* \(PX.DataSync.XMLSYProvider\)
3.  On the form toolbar, click **Save**. You need to save the provider before you upload the file.
4.  Drag the file to the form, and refresh the form in your browser. The file is uploaded to the form.

    **Tip:** As an alternative to this step, to upload the source file to the form, on the title bar, click **Files**. In the **Files** dialog box, which opens, click **Browse** to locate the source file. Select the file, and click **Open**. In the dialog box, click **Upload** to upload the file to the website; then close the dialog box.

5.  On the **Parameters** tab, do the following to specify the parameters of the data provider:
    -   Make sure that the value of the *FileName* parameter is correct; it was filled in automatically when you uploaded the file.
    -   As the value of the *Encoding* parameter, specify the encoding of the source file by selecting the appropriate encoding value from the drop-down list in the **Value** column of the table.
    -   As the value of the *Format* parameter, specify the format of the XML file.
6.  On the **Schema** tab, in the **Source Objects** pane, select the **Active** check box for the only available object of the XML provider, to make the object available in integration scenarios.

    **Tip:** If you don't see an object on the **Source Objects** pane, click **Fill Schema Objects** on the toolbar of the pane.

7.  On the toolbar of the **Source Fields** pane, click **Fill Schema Fields**. The system displays the field names available in the file in this pane. Make sure the **Active** check box is selected for all the fields of the file for which data will be imported or exported.
8.  On the form toolbar, click **Save**.

You have created an XML data provider that you can use in an import or export scenario.

**Parent topic:**[Preparing Data for Import and Export by Using Scenarios](../UserGuide/IS__mng_Data_Providers.md)

