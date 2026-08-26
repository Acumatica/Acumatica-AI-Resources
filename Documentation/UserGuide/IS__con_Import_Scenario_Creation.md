# Import Scenario Creation {#_d79ea7dd-d6d6-4646-b206-14df4c56aea7 .concept}

You create import scenarios on the [Import Scenarios](SM_20_60_25.md) \(SM206025\) form.

The creation of the import scenario consists of the following general steps:

1.  **Analyzing the sequence of actions on the form.**

    Before you start creating an import scenario on the [Import Scenarios](SM_20_60_25.md) form, you should create a data provider, as described in [Data Providers](IS__con_Data_Providers.md#), and learn how a data record is entered on the target Acumatica ERP form.

    When reviewing the Acumatica ERP form for which you will compose the import scenario, pay attention to the required fields on the form. All these fields must be filled in when you create a new record. Some fields on the form can get default values, which can also be used during import. For example, you can configure customer classes before you import customer records so that when these records are imported, the system gets most of settings from the customer class specified for the customer. You can provide the values of the fields that have default values during import and override these default values. Make sure all required data fields either are included in the imported data or are filled with default values.

    Before you start creating a scenario, we strongly recommend that you manually enter one record of the imported data \(or a test record\) on the target Acumatica ERP form. \(If you enter a record of the imported data, during import, you can exclude this record from processing to avoid duplication of records in the system.\)

    As you manually enter the record, make a note of the sequence of actions you perform: the order in which you specify values in the fields on the form, and the actions you perform for the entered record, such as adding a new row and saving your changes.

2.  **Specifying scenario parameters.**

    The parameters of an import scenario define the name of the scenario, the Acumatica ERP form to which data will be imported, and the data provider and source object, which together specify the data source. You can also set other import scenario parameters that define the mode of import and the properties of the data being imported.

3.  **Creating mapping of the scenario .**

    Mapping is the process of creating one-way relations between the fields of an external data source and the fields of an Acumatica ERP form. To provide mapping for a particular field on an Acumatica ERP form, you perform the following steps on the **Mapping** tab of the [Import Scenarios](SM_20_60_25.md) \(SM206025\) form:

    1.  Add a row for the field you want to map.
    2.  In the **Field or Action** column, select the internal field or action that’s located in the needed target object. A target object represents a group of fields on an Acumatica ERP form, such as a Summary area or a detail tab.
    3.  In the **Source Field or Value** column, select the matching external field, internal field, or combination of internal and external fields, functions, and constants. An external field is a field of the object from the data provider specified in the scenario.
    When you are mapping fields, you should first map the key fields: the fields that the system uses to distinguish records that belong to different documents. For example, on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, there are two key fields: **Type** and **Reference Nbr**. You should map these fields before you map the other fields, because you fill in these fields first on the form when you manually enter an invoice. After you have mapped key fields, you should map other fields in the order in which you would fill them in on the form.

    You can deactivate some rows of the scenario mapping by clearing the **Active** check box for corresponding rows. This will exclude the corresponding instruction from the scenario mapping, and this instruction will not be executed during the import process.

    At the end of the mapping of the scenario that imports or updates data in the system, to save the imported record to the database, you have to insert a row with the *&lt;Action: Save&gt;* action.

4.  **Configuring source and target restrictions**

    To import only some records from the data source or update only the records that satisfy some condition, you can configure source and target restrictions for an import scenario on the [Import Scenarios](SM_20_60_25.md) \(SM206025\) form.

    You can find detailed descriptions and examples of the use of source and target restrictions in the following topics:

    -   [Source Restrictions in Import Scenarios](IS__con_Source_Restrictions_in_Import_Scenarios.md#)
    -   [Target Restrictions in Import Scenarios](IS__con_Target_Restrictions_in_Import_Scenarios.md#)

After these steps have been performed, the scenario is ready, and you can use it for data processing.

**Parent topic:**[Configuring Import Scenarios](../UserGuide/IS__mng_Configuring_Import_Scenarios.md)

