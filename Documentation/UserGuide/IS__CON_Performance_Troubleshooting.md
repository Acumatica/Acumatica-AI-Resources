# Troubleshooting Performance in Import and Export Scenarios {#_b6f6300a-f1ea-488f-ba46-70db879f553a .concept}

When you are importing or exporting a large number of records by using an import scenario, data processing can take a rather long time. You can use the ways described in this topic to speed up the processing of import and export scenarios.

## Parallel Processing of Import Scenarios { .section}

In Acumatica ERP, data import by using an import scenario can be sped up if you enable parallel execution of the scenario. The parallel processing of an import scenario by the system can be especially useful for data migration during the initial implementation of the system.

To enable parallel processing of an import scenario, you select the **Parallel Processing** check box in the Summary area of the [Import Scenarios](../Shared/../UserGuide/SM_20_60_25.md) \(SM206025\) form.

If parallel processing is enabled for an import scenario, during the execution of the scenario, the system divides the whole list of records to process into batches of records. The lines of a particular document \(that is, the records that have the same key fields specified\) are always included in the same batch. The system executes the import scenario for these batches in parallel threads.

**Tip:** The **Break on Error** and **Break on Incorrect Target** check boxes become unavailable if the **Parallel Processing** check box is selected.

## Removal of Unnecessary Commits in Import Scenarios { .section}

When the system imports records to Acumatica ERP, it performs a commit to the server for all fields with the **Commit** check box selected on the **Mapping** tab of the [Import Scenarios](../Shared/../UserGuide/SM_20_60_25.md) \(SM206025\) form; these commits take excessive server time. When you create the mapping of an import scenario, the system selects the **Commit** check box automatically for the key fields and the fields other fields depend on.

To optimize the performance of an import scenario, you can clear the **Commit** check box for some of these fields. You can perform the following steps when you are optimizing the performance of an import scenario by removing unnecessary commits:

1.  Create an import scenario in which you leave the default settings for the **Commit** check box for all fields. Test the scenario, make sure it works correctly, and note the processing time. If you need to decrease the time, proceed to the next step.
2.  Try to clear the **Commit** check box for each appropriate field of the scenario \(using the following guidelines\), one by one, testing the scenario after each change and reviewing the processing time. However, do not clear the **Commit** check box for any of the following fields:

    -   Key fields. For example, **Type** and **Reference Nbr.** fields are key fields on the [Invoices and Memos](../Shared/../UserGuide/AR_30_10_00.md) \(AR301000\) form.
    -   The last field of a detail line. Suppose that you are importing the values of the **Transaction Descr.**, **Ext. Price**, **Account**, and **Subaccount** columns on the **Details** tab of the [Invoices and Memos](../Shared/../UserGuide/AR_30_10_00.md) form. You should not clear the **Commit** check box for the **Subaccount** field, because it is the last field in the row that you specify.
    -   The **Value** field of an attribute.
    -   All fields whose values must be entered to make certain elements available. For example, on the [Purchase Orders](../Shared/../UserGuide/PO_30_10_00.md) \(PO301000\) form, you need to specify the value of the **Vendor** element to make the **Add Row** button on the table toolbar of the **Details** tab available.
    You can clear the **Commit** check box for the fields that cause other fields on the form to be updated; in this case, the system will perform an update of these fields when it saves the imported record.


## Ways to Speed Export Scenarios { .section}

To speed data export, you can perform the following steps, which are listed in the order in which we recommend you try them:

1.  On the **Mapping** tab of the [Export Scenarios](../Shared/../UserGuide/SM_20_70_25.md) \(SM207025\) form for the export scenario, make sure the **Commit** check box is selected for the minimum number of fields.

    The **Commit** check box must be selected for the key fields that specify the records that should be exported \(for example, the key fields that are mapped to the *=Every* instruction\) and for the fields that you modify during export. In some other situations, the system selects the **Commit** check box automatically \(for example, for the *&lt;Dialog Answer&gt;* command\); leave these check boxes selected. For fields whose values you do not need to modify during the export, you do not need to select the **Commit** check box.

2.  Remove the *=Every* instruction from the mapping of the export scenario if this scenario satisfies all of the following requirements:

    -   You are exporting summary data and data from the related objects, and you are not exporting data from detail objects.
    -   You are not modifying the values of any fields during data export.
    -   You are not applying actions to the records during data export.
    If you remove the *=Every* instruction from the scenario, during data export, the system generates a generic inquiry internally that retrieves the data being exported from the system in one request instead of retrieving information for each record one by one, which significantly increases the speed of data export.

3.  Configure a generic inquiry that retrieves the data that you need to export, create a scenario that exports data from this generic inquiry, and export data by using this scenario.

    **Tip:** You can find information on how to create a generic inquiry in the *S130 Data Retrieval and Analysis* training course.


**Parent topic:**[Importing and Exporting Records by Using Scenarios](../UserGuide/IS__mng_Importing_Exporting_Records.md)

