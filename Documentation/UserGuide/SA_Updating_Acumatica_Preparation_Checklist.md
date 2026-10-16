# Update of Acumatica ERP: Preparation Checklist

The following section provides details you can use to ensure that the system is properly prepared for applying an update to the system.

## Preparation Checklist

We strongly recommend that before you apply an update to your instance of Acumatica ERP, you perform the preparation operations that are summarized in the following checklist.

<table id="_75f5a845-9a95-409c-9ffd-7c022ec672dc"><thead><tr><th>

Form

</th><th>

Operation

</th></tr></thead><tbody><tr><td>

Not applicable

</td><td>

Back up all configuration files and databases used by the application instances.

</td></tr><tr><td>

Not applicable

</td><td>

If you have created any custom views with the `SCHEMABINDING` clause in the Acumatica ERP database, remove them. \(You can again create these views after the update.\)

</td></tr><tr><td>

Not applicable

</td><td>

If you have been replicating the Acumatica ERP database, turn off the replication. \(Otherwise, the system cannot be updated.\)

</td></tr><tr><td>

Not applicable

</td><td>

If you have developed a client application by using the screen-based SOAP API, follow the procedure described in [To Update a Client Application that Uses Screen-Based Web Services](../IntegrationDevelopmentGuide/IS__how_Update_API_Using_Wrapper.md) to prevent a failure of your application that could otherwise happen because of UI changes in the system.

</td></tr><tr><td>

Not applicable

</td><td>

The system deletes all custom files from the Acumatica ERP site folders during an update. If you need to keep custom files in the `Bin` folder, do one of the following:-   Include all custom files in a customization project and publish this customization project on the site
-   Add the file names to the file with the `.preserve` extension in the same folder

</td></tr><tr><td>

[Automation Schedule Statuses](SM_20_50_30.md) \(SM205030\)

</td><td>

Make sure that no processes are scheduled during the update time. If you find any processes that are scheduled during this time, reschedule them so that they start after the update.

</td></tr><tr><td>

[Tenants](SM_20_35_20.md) \(SM203520\)

</td><td>

On the form toolbar, click **Optimize Database** to check your Acumatica ERP database for orphaned snapshots and delete any that the system finds.

</td></tr><tr><td>

[Apply Updates](SM_20_35_10.md) \(SM203510\)

</td><td>

Schedule the system lockout before the upgrade.

</td></tr><tr><td>

[Apply Updates](SM_20_35_10.md) \(SM203510\)

</td><td>

If you have published customization projects in your Acumatica ERP instance, we recommend validating the compatibility code of the currently published customization projects with the code of the selected product version. To start the validation, on the **Updates** tab of the form, select the product update in the table and click **Validate Customization** on the table toolbar.

</td></tr></tbody>
</table>

**Parent topic:**[Updating Acumatica ERP by Using the Web Interface](../UserGuide/SA_Updating_Acumatica_by_Using_Web_Interface_Mapref.md)

