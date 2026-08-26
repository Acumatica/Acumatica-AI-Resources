# Source Restrictions in Export Scenarios {#_3d0580c5-0290-47cd-a457-e04692439302 .concept}

You use source restrictions in an export scenario for the data available in the Acumatica ERP database. For example, you can configure the system to export only the records that have a particular status.

To specify restrictions on the data being exported, you specify conditions for the Acumatica ERP fields on the **Source Restrictions** tab of the [Export Scenarios](SM_20_70_25.md) \(SM207025\) form. In this case, when it prepares records for export, the system selects only the records that meet the specified condition \(or conditions\) and imports only these records.

For example, suppose that you want to export from the [Customers](AR_30_30_00.md) \(AR303000\) form only the customer records that have *Active* status. In this case, you can add to the source restrictions the condition that the **Status** field should be equal to *Active*. During the preparation process \(when you click **Prepare** on the [Export Scenarios](SM_20_70_25.md) form and the system prepares the data for export\), the system processes the records that match the source restrictions of the scenario and prepares only the records with the *Active* status.

In source restrictions, you can use only the fields of the summary object or detail objects of the form from which you are exporting data. You cannot use columns of **Select** dialog boxes and fields of related objects to filter records or detail lines.

**Parent topic:**[Configuring Export Scenarios](../UserGuide/IS__mng_Configuring_Export_Scenarios.md)

