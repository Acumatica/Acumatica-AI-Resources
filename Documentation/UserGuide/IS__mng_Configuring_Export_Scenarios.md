# Configuring Export Scenarios {#_f4da2bb8-dfa9-4d35-83e2-593f52f1c2af .concept}

You create export scenarios on the [Export Scenarios](SM_20_70_25.md) \(SM207025\) form. To create an export scenario, you specify its name, the Acumatica ERP form to be used for export, the data provider that defines the structure of the target data, and the data provider object; you also configure scenario mapping.

After you have created an export scenario, you can export data by using this scenario. You export data on the [Export by Scenario](SM_20_70_36.md) \(SM207036\) form. The system executes the export scenario when you click **Prepare** on this form. This processing differs from the processing of an import scenario in that the import scenario is executed only when you click the **Import** button after you have prepared data. When you invoke the preparation process for the export scenario, the system executes the mapping instructions for each record in the system that satisfies the conditions of the export scenario, and then lists the processed records on the **Prepared Data** tab. To upload the processed records to the external data source, you then click **Export**.

In the mapping of an export scenario, you can use actions, the `<Dialog Answer>` command, and service commands, just as you can use in import scenarios.

-   **[Export Scenario Creation](../UserGuide/IS__con_Export_Scenario_Creation.md)**  

-   **[Export Scenario Parameters](../UserGuide/IS__con_Export_Scenario_Parameters.md)**  

-   **[Source Restrictions in Export Scenarios](../UserGuide/IS__con_Source_Restrictions_in_Export_Scenarios.md)**  


