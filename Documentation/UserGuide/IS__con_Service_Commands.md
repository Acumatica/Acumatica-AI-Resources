# Service Commands in Import and Export Scenarios {#_11c25c0f-6cb8-4d86-9030-a1620baee5fc .concept}

For key fields and the first field that has a commit among the fields of a detail table, the system adds *service commands* on the **Mapping** tab of the scenario you are creating on the [Import Scenarios](SM_20_60_25.md) \(SM206025\) form or the [Export Scenarios](SM_20_70_25.md) \(SM207025\) form. Service commands are commands that invoke hidden actions in the system, such as searching for the record by the key field, refreshing the form, and adding a new line to the detail table. The system automatically adds service commands to the scenario immediately before the commands that invoke them.

For example, suppose that on the [Import Scenarios](SM_20_60_25.md) form, you are mapping the **Type** field of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form. The system automatically inserts a set of service commands before the mapping of the **Type** field: The `<Key: DocType>` and `<Key: RefNbr>` commands invoke search by the key fields, and the `<Action: Cancel>` command restores the default settings for the selected document type.

On the table toolbar of the **Mapping** tab of the [Import Scenarios](SM_20_60_25.md) form or the [Export Scenarios](SM_20_70_25.md) form, by default, the *Show All Commands* option is selected in the drop-down list, which means that you can view the service commands that the system automatically adds to the import scenario.

You can replace service commands with your own commands to change the default behavior of the system. For example, if you map the first field that has a commit among the fields of a detail table, the system adds the `<Line Number>=-New` service command. That means that a new row is added for each new detail line. You can specify the needed line number in the `<Line Number>` command to modify the value of the previously imported detail line. Line numbering starts with 0.

**Attention:** If you search for a detail line by a custom key, you need to deactivate the instruction that sets the `<Line Number>` to *New* from the mapping so that the system does not add a new detail line but instead searches for a detail line.

**Parent topic:**[Configuring Scenario Mapping](../UserGuide/IS__mng_Scenario_Mapping.md)

