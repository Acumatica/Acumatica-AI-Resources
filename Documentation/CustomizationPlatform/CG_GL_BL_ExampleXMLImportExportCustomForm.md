# Implementing the XML Import and Export Functionality in a Custom Form {#_ffddc333-091a-4372-8740-eaf57e257f16 .concept}

For a custom form, you can implement importing of the data to this form and exporting of the data from it. To add the XML import and export functionality to the form, you need to perform the following general steps:

1.  You create an XML file that defines the data to be exported from and imported to the form. For details about the name and format of the file, see the next section.
2.  You place this file in the `App_Data\XmlExportDefinitions` folder of your Acumatica ERP instance.
3.  Optional: You include this file in your customization project to make it available on other Acumatica ERP instances or to preserve the file during updates.

Once you have performed these steps, the **Export as XML** and **Import from XML** commands become available if you click the **Clipboard** button on the form toolbar. For details about the XML import and export functionality, see [To Export Data to XML](https://help.acumatica.com/(W(136))/Help?ScreenId=ShowWiki&pageid=5296d05c-776f-48ea-8137-d1e74c438caa) and [To Import Data from XML](https://help.acumatica.com/(W(136))/Help?ScreenId=ShowWiki&pageid=5fa2a144-2f1d-4369-b1fe-adc732accf7e).

## How to Define the XML File Name and Format { .section}

The name of the XML file that you create to add the XML import and export functionality to your custom form should be same as the ID of your custom form with the XML extension. For example, if the ID of your custom form is *PR301000*, then the XML file name should be `PR301000.xml`. The contents of the XML file also need to be in a specific format for you to be able to correctly add the XML import and export functionality to your custom form.

The following table describes the format of the XML file, including the elements and attributes that should be used when you create the file.

|Element|Description|
|-------|-----------|
|relations|The root element that defines the main DAC and the related DACs to be included in the XML entity definition. This element has the following attributes:

 -   format-version \(required\): The version of the XML file format. The current version is *4*. You can specify a value of the `xs:unsignedByte` type.
-   main-table \(required\): The main DAC of the primary data view of the form. You can specify a value of the `xs:string` type.
-   file-name: The name of the exported XML file. By default, the name of the file is the key \(or keys\) of the exported record. You can use the fields of the main DAC in the file name by specifying the field names in parentheses. For this attribute, values of the `xs:string` type can be specified.

-   unique-key: An indicator that the system should check for duplicate records. This attribute can be specified for parent and child tables.

|
|link|A link to the related DAC to be included in the XML entity definition. This element has the following attributes:

 -   from \(required\): The related DAC along with its field or fields \(in parentheses\) that define the relationship between the related and parent DACs. This attribute accepts values of the `xs:string` type.
-   to \(required\): The parent DAC along with its field or fields \(in parentheses\) that define the relationship between the related and parent DACs. The parent DAC can be the main DAC defined in the main-table attribute of the relations element, or any other DAC to which a link is defined in another link element. This attribute accepts values of the `xs:string` type.
-   type: The type of the link between the related and parent DACs. The default value is *Weak*, which works in most cases. This attribute accepts values of the `xs:string` type.

You may also need to use the following types:

    -   *Note*: To define a relationship with the Note table \(see the following example\).

        ``` {#codeblock_a4v_1sd_f2c}
<link from="GIDesign (NoteID)" 
 to="Note (NoteID)"
 type="Note" />
        ```

    -   *RowKvExt*: To define a relationship with the KvExt tables, which contain the values of multilanguage fields and user-defined fields \(see the following c\).

        ``` {#codeblock_b4v_1sd_f2c}
<link from="GIFilter (NoteID)" 
 to="GIFilterKvExt (RecordID)" 
 type="RowKvExt" />
        ```


|

The following code shows an example of a XML file that is created to add the XML import and export functionality to a custom form.

```
<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<relations format-version="3" main-table="PRSVWorkOrder" file-name="RepairWorkOrder-(OrderNbr)">
  <link from="PRSVWorkOrderItem (OrderNbr)" to="PRSVWorkOrder (OrderNbr)" />
  <link from="PRSVWorkOrderLabor (OrderNbr)" to="PRSVWorkOrder (OrderNbr)"/>
</relations>
```

The following code shows an example of a XML file that is obtained as a result of using the export functionality.

```
<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<data-set>
  <relations format-version="3" relations-version="20160101" main-table="PRSVWorkOrder" 
    file-name="RepairWorkOrder-(OrderNbr)">
    <link from="PRSVWorkOrderItem (OrderNbr)" to="PRSVWorkOrder (OrderNbr)" />
    <link from="PRSVWorkOrderLabor (OrderNbr)" to="PRSVWorkOrder (OrderNbr)" />
  </relations>
  <layout>
    <table name="PRSVWorkOrder">
      <table name="PRSVWorkOrderItem" uplink="(OrderNbr) = (OrderNbr)" />
      <table name="PRSVWorkOrderLabor" uplink="(OrderNbr) = (OrderNbr)" />
    </table>
  </layout>
  <data>
    <PRSVWorkOrder>
      <row OrderNbr="000001" CustomerID="5441" DateCreated="2019-08-21 12:00:00" 
           DateCompleted="2019-10-14 08:00:00" Status="CM" Hold="0" 
           Description="Battery replacement, Nokia 3310" DeviceID="1" ServiceID="1" 
           OrderTotal="40.0000" RepairItemLineCntr="3" 
           Assignee="55deca6a-d50c-4687-8c48-d0d15b5b2606" Priority="M">
        <PRSVWorkOrderItem ServiceID="1" DeviceID="1" LineNbr="3" RepairItemType="BT"
           InventoryID="2609" BasePrice="20.000000" 
           NoteID="f4b92e43-26fa-e911-9fed-4ccc6a8eefea" />
        <PRSVWorkOrderItem ServiceID="1" DeviceID="1" LineNbr="2" RepairItemType="BC" 
           InventoryID="2611" BasePrice="10.000000" 
           NoteID="f3b92e43-26fa-e911-9fed-4ccc6a8eefea" />
        <PRSVWorkOrderLabor InventoryID="35" DeviceID="1" ServiceID="1" DefaultPrice="5.000000" 
           Quantity="2.000000" ExtPrice="10.000000" 
           NoteID="09ba2e43-26fa-e911-9fed-4ccc6a8eefea" />
      </row>
    </PRSVWorkOrder>
  </data>
</data-set>
```

**Parent topic:**[Examples of Functional Customization](../CustomizationPlatform/ACECustHow.md)

