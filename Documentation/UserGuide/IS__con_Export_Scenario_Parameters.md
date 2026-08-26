# Export Scenario Parameters {#_90d70c70-5f29-4c0e-a902-eb3f3e81f8b5 .concept}

When you create an export scenario on the [Export Scenarios](SM_20_70_25.md) \(SM207025\) form, you first specify the required parameters.

The required parameters are as follows:

-   **Name**: In this box, you specify a name for the export scenario that reflects its functionality. You have to use unique names between import and export scenarios. \(That is, you cannot use the same name for both an import scenario and an export scenario.\)
-   **Screen Name**: In this box, you select the Acumatica ERP form from which you want to export data.
-   **Provider** and **Provider Object**: In this box, you select one of the existing data providers and its object that should be used for data export. If you select a file data provider, Acumatica ERP automatically attaches to the scenario on the [Export Scenarios](SM_20_70_25.md) form the file used for file data provider creation. This file is shared between the data provider and the export scenario that uses it for data export \(that is, it is attached to both the [Data Providers](SM_20_60_15.md) \(SM206015\) form for the provider and the [Export Scenarios](SM_20_70_25.md) form for the scenario\). You can view and modify the attached file by using the [File Maintenance](SM_20_25_10.md) \(SM202510\) form. To open the form, while you are viewing the export scenario, click **Files** on the title bar.

The newly created scenario has the **Active** check box selected, which indicates that the scenario can be used for processing.

After you specify the required parameters, you can set optional parameters, which affect processing of the export scenario by the system and the availability of the export scenario in the user interface of Acumatica ERP. For details on the optional parameters, see the description of the [Export Scenarios](SM_20_70_25.md) form.

**Parent topic:**[Configuring Export Scenarios](../UserGuide/IS__mng_Configuring_Export_Scenarios.md)

