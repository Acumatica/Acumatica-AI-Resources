# Data Modification During Export: Use of Commit and Actions {#_dfe91043-171f-43b6-83eb-f24d91dbad40 .concept}

You can change the values of some fields or apply an action to a record during export. For example, you can change a description field of a record or delete a record as you are exporting it.

## Changing the Value of a Field { .section}

If you need to change the values of some fields during export, you must perform a commit of these fields to the server. That is, on the **Mapping** tab of the [Export Scenarios](SM_20_70_25.md) \(SM207025\) form, you must select the **Commit** check box for each internal field whose data is modified. If you change the values of some fields during export, you also need to insert the `<Action: Save>` command at the end of the scenario to save the changes to Acumatica ERP.

If you specified specific field values on the form during export only in order to select the data for exporting, however, you don't need to insert the `<Action: Save>` command at the end of the scenario.

If you configured the scenario to change the values of some fields in Acumatica ERP, the system prepares the specified records in the source and tries to apply modifications to them during the preparation process. \(If modification of the specified field is not allowed in the system, the field remains unchanged.\) Then the system exports all prepared records to the external system.

For example, suppose that you create a scenario that exports AR invoices from the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form and adds the string *Exported on 18.05.2015* to their descriptions in Acumatica ERP. As a result of the processing of this scenario, all invoices are exported, and only the invoices with the *Balanced* and *On Hold* statuses are modified. Modification of documents with other statuses is not allowed in the system, so these documents are exported without any change to their descriptions in Acumatica ERP.

## Applying an Action { .section}

As you perform mapping for an export scenario, when you need to reflect the clicking of a button on a form, you should use the corresponding action. You can use the same actions in export scenarios as in import scenarios. For more information, see [Actions in Import Scenarios](IS__con_Actions_in_Import_Scenarios.md#).

If you are going to delete records or apply another action to records by using an export scenario, you have to specify precise source restrictions that select only those records that can be processed; otherwise, no records will be processed.

For example, suppose that you want to delete Accounts Receivable invoices that have *X* as the value of the **Project** element on the [Invoices and Memos](AR_30_10_00.md#) form. To select only invoices that can be deleted, in the source restrictions of the export scenario, you have to specify not only the condition *Project = X* but also the condition *Status = On Hold or Status = Balanced*. If you do not specify filtering by status and there are invoices with the *Open* status in the system, no records will be deleted.

**Parent topic:**[Configuring Scenario Mapping](../UserGuide/IS__mng_Scenario_Mapping.md)

