# Export of All Records: Use of Every {#_371a0c27-c887-4c68-9909-68bb642cbd78 .concept}

If you want to export every record of a specific type, on the **Mapping** tab of the [Export Scenarios](SM_20_70_25.md) \(SM207025\) form, you map the key field to the `=Every` system action. \(The **Commit** check box is selected automatically for this field.\) This action ensures that every record of the specific type will be processed during export.

For example, if you want to export all customer records available in the system, you should map the **Customer ID** field to `=Every`. The **Commit** check box is selected automatically for this field. If you need the value of the **Customer ID** field in the output destination, you should also map this field to the appropriate external field. The example below shows the mapping that makes the system export all customer records available in the system and export the **Customer ID** field to the target *CUSTOMER ID* field.

|Source Object|Field or Action|Target Field or Value|
|-------------|---------------|---------------------|
|*Customer Summary*|*Customer ID*|*=Every*|
|*Customer Summary*|*Customer ID*|*CUSTOMER ID*|

**Parent topic:**[Configuring Scenario Mapping](../UserGuide/IS__mng_Scenario_Mapping.md)

