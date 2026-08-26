# To Import Data from XML {#_5fa2a144-2f1d-4369-b1fe-adc732accf7e .task}

If you are importing data that has been exported from an Acumatica ERP form to an XML file, the structure of the XML file that you import is specific to the form. You can obtain the XML file of a form’s needed structure by exporting data to XML on this form, as described in [To Export Data to XML](IS__how_XML_export.md#).

Below you can find instructions on importing data from the XML file to the Acumatica ERP form.

## To Import Data from XML { .section}

1.  Open the form to which you want to import data.
2.  On the form toolbar, click **Clipboard** &gt; **Import from XML**.
3.  In the **Upload XML File** dialog box, click **Choose File**, and select the file you want to import.
4.  Click **Upload** to upload the file to the system.
5.  After the data has been imported successfully, click **Save** on the form toolbar.

**Attention:** If a file was attached to the form whose data you exported, there is no information about this file in the exported XML file. After you import data to the form, you need to attach the file manually. For example, if you have exported to XML a data provider that has a file attached to the [Data Providers](SM_20_60_15.md) \(SM206015\) form, you need to attach the file to the data provider manually after you import the data of the provider.

**Parent topic:**[Importing and Exporting Data to Excel and XML](../UserGuide/GS_Importing_Exporting_to_Excel_XML.md)

