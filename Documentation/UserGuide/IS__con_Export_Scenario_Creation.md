# Export Scenario Creation {#_facc7b7c-fd57-42fc-af7c-936eceee8ffd .concept}

You create export scenarios on the [Export Scenarios](SM_20_70_25.md) \(SM207025\) form.

The creation of the export scenario consists of the following general steps:

1.  **Analyzing the sequence of actions on the form for data export**

    Before you start creating an export scenario on the [Export Scenarios](SM_20_70_25.md) form, you create a data provider and learn how to retrieve the needed data records from the corresponding Acumatica ERP form. You can find more information on data providers in [Data Providers](IS__con_Data_Providers.md#).

    If needed, you could use the same data provider for import and export of data in the same format. However, a data provider and the scenarios that use this provider share the same external data source. Therefore, if you do not want to confuse the input and output data sources, you should create separate data providers for importing and exporting data.

    Before you start creating a scenario, we strongly recommend that you open a record of the exported data on the source form by selecting the values of the key fields \(which gives you an understanding of how a record is retrieved on the form and which fields you need to export\). As you open the record on the form, make a note of the sequence of actions you perform: the order in which you specify the values in the key field \(or fields\) on the form, the actions you perform, and the list of fields you need to export.

2.  **Specifying scenario parameters**

    You specify the following parameters of an export scenario: the name of the scenario, the Acumatica ERP form that should be used for export, and the data provider and the object, which together specify the target data source. You can also specify other export scenario parameters that define the mode of export and the properties of the data resulting from the export.

3.  **Creating scenario mapping**

    Mapping is the process of creating one-way relations between the fields of the Acumatica ERP form and the fields of the external data source. To provide mapping for a particular field on an Acumatica ERP form, you perform the following steps on the **Mapping** tab of the [Export Scenarios](SM_20_70_25.md) form:

    1.  In the **Source Object** box, you specify the Acumatica ERP object that includes the source field. An object represents a group of fields on an Acumatica ERP form, such as a summary area or a detail tab. \(These are the same objects that are used in import scenario mapping. You can find the description of these objects in [Target Objects and Fields in Import Scenarios](IS__con_Target_Objects_and_Fields_in_Import_Scenarios.md#).\)
    2.  In the **Field or Action Name** column, you select the appropriate internal field or action. An internal field is a field of the Acumatica ERP object selected in the **Source Object** box. \(These are the same internal fields that are used in import scenario mapping. You can find the description of these fields in [Target Objects and Fields in Import Scenarios](IS__con_Target_Objects_and_Fields_in_Import_Scenarios.md#).\)
    3.  In the **Target Field or Value** column, you select the matching external field or type a formula the system will use to determine the value. An external field is a field of the object from the data provider specified in the scenario.
    You first map the key fields that identify the records you want to export. After you have mapped the key fields, you should map the other needed fields.

    You can deactivate some steps of a scenario by clearing the **Active** check box for the corresponding rows.

4.  **Configuring source restrictions**

    To export only some records from the Acumatica ERP database, you can configure source restrictions for an export scenario on the [Export Scenarios](SM_20_70_25.md) form.

    You can find a detailed description of source restrictions and an example of their use in [Source Restrictions in Export Scenarios](IS__con_Source_Restrictions_in_Export_Scenarios.md#).


After these steps have been performed, the scenario is ready and can be used for data processing.

**Parent topic:**[Configuring Export Scenarios](../UserGuide/IS__mng_Configuring_Export_Scenarios.md)

