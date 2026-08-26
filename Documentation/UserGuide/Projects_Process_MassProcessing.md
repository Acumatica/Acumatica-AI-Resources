# Project Creation and Processing: Mass Processing {#_446b47ee-71be-4f0b-a403-8ab260c20d80 .concept}

This topic explains how to perform mass-processing operations related to projects, and how the system generates, changes, or works with documents as a result of the mass processing.

## Mass-Validating Addresses { .section}

You can validate addresses for multiple projects and project-related documents \(pro forma invoices and project quotes\) on the [Validate Addresses in Project Documents](../Shared/../UserGuide/PM_50_70_00.md) \(PM507000\) form. This form is available if the *Address Validation Integration* feature is enabled on the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\) form and an address provider is configured on the [Address Providers](../Shared/../UserGuide/CS_10_30_00.md) \(CS103000\) form.

On the [Validate Addresses in Project Documents](../Shared/../UserGuide/PM_50_70_00.md) form, you select the form in which the address records were entered in the **Creation Form** box, and select the unlabeled check boxes in the rows to be processed in the table. Then you click **Validate** on the form toolbar. To instead validate all the listed address records, you click **Validate All** on the form toolbar.

## Mass-Billing Projects { .section}

You can initiate billing for multiple projects on the [Run Project Billing](../Shared/../UserGuide/PM_50_30_00.md) \(PM503000\) form; this billing entails the creation of multiple invoices. A project is listed on the form only if the invoice date is after its next billing date, which is specified on the **Summary** tab of the [Projects](../Shared/../UserGuide/PM_30_10_00.md) \(PM301000\) form.

To initiate billing for particular projects, you select the unlabeled check boxes in the rows of the projects to be processed in the table on this form, and click **Process** on the form toolbar. To instead initiate billing for all the listed projects, you click **Process All** on the form toolbar.

During processing, the system generates project invoices for the selected projects. Pro forma invoices will be created for only those projects that have the **Create Pro Forma Invoice on Billing** check box selected on the **Summary** tab of the [Projects](../Shared/../UserGuide/PM_30_10_00.md) form; AR invoices will be created for projects for which this check box is cleared. The system creates project invoices with the date that is specified in the **Invoice Date** box in the Selection area of the form.

**Parent topic:**[Creating and Processing Projects](../UserGuide/Projects_Process_Mapref.md)

