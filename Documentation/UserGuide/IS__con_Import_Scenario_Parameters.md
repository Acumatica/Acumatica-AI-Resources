# Import Scenario Parameters {#_61869f8a-aa41-42c3-a822-02056d5f7615 .concept}

When you begin creating an import scenario by using the [Import Scenarios](SM_20_60_25.md) \(SM206025\) form, you specify the following required parameters:

-   **Name**: In this box, you specify a name that reflects the functionality of the import scenario. You have to use unique names between import and export scenarios.
-   **Screen Name**: In this box, you select the Acumatica ERP form that should be used for data import.
-   **Provider** and **Provider Object**: In these boxes, you select one of the previously created data providers and its object that should be used for data import. If you select a file data provider, Acumatica ERP automatically attaches to the scenario on the [Import Scenarios](SM_20_60_25.md) form the file used for file data provider creation. This file is shared between the data provider and the import scenario that uses it for data import—that is, it is attached to both the [Data Providers](SM_20_60_15.md) \(SM206015\) form for the provider and the [Import Scenarios](SM_20_60_25.md) form for the scenario. You can view and modify the attached file on the [File Maintenance](SM_20_25_10.md) \(SM202510\) form; to open the form, while you are viewing the import scenario, click **Files** on the title bar.

The newly created scenario has the **Active** check box selected by default. This check box must be selected so that you can use the scenario for processing records on the [Import by Scenario](SM_20_60_36.md) form.

After you specify the required parameters, you can set optional parameters, which affect processing of the import scenario by the system and the availability of the import scenario in the user interface of Acumatica ERP. For details on the optional parameters, see the description of the [Import Scenarios](SM_20_60_25.md) form.

**Parent topic:**[Configuring Import Scenarios](../UserGuide/IS__mng_Configuring_Import_Scenarios.md)

