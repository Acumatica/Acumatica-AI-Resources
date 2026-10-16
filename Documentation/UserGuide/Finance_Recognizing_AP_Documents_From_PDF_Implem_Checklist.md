# AP Documents from PDFs: Implementation Checklist

The following sections provide details you can use to ensure that the system is configured properly for recognizing AP documents from PDF files, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist

We recommend that before you start recognizing AP documents from PDF files, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

<table id="_75f5a845-9a95-409c-9ffd-7c022ec672dc"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form

</td><td>

Make sure that the *AP Document Recognition Service* feature has been enabled.

 **Attention:** The feature is not available in trial mode and can be enabled only if it is included in the license that is applied to the Acumatica ERP instance.

</td></tr><tr><td>

[Email Accounts](SM_20_40_02.md) \(SM204002\) form

</td><td>

Make sure that a system email account is created with incoming mail processing activated and the **Submit to Incoming Documents** check box selected on the **Incoming Mail Processing** tab.

 **Important:** This configuration is needed only if you want automatically submit PDF attachments of incoming emails for recognition.

</td></tr><tr><td>

[Rebuild Full-Text Entity Index](SM_20_95_00.md) \(SM209500\) form

</td><td>

Optional. Rebuild search indexes before you start using the *AP Document Recognition Service* feature.

 When the AP document recognition service receives a scanned or PDF document, it extracts search terms such as vendor name and address and looks up the matching vendor in Acumatica ERP search index. If the search indexes haven't been built yet—which is common in fresh or demo installations—the system won't be able to find and auto-populate vendor information from recognized documents.

 Rebuilding the full-text entity index ensures that all entities \(vendors and others\) are indexed and searchable, allowing the recognition service to correctly identify and link vendors when processing incoming AP documents from PDFs.

 **Tip:** In production systems, indexes are typically already built and kept up to date automatically \(new records are indexed immediately upon creation\). Rebuilding is mainly a precaution for new installations or demo environments, or any time you're unsure whether the indexes are current.

 For details, see [Building Search Indexes](SA_Building_Search_Indexes_Mapref.md).

</td></tr></tbody>
</table>

## Project-Related Recognition Checklist

If you are planning to recognize project-related AP documents from PDF files, you make sure that the following additional configuration steps have been performed, as summarized in the following checklist.

<table id="table_adh_dcz_k2c"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form

</td><td>

Make sure that the following features are enabled:

 -   *Recognition of Project-Related Documents*

**Attention:** The feature is not available in trial mode and can be enabled only if it is included in the license that is applied to the Acumatica ERP instance.

-   *Projects*
-   *Construction*

</td></tr><tr><td>

[Projects Preferences](PM_10_10_00.md) \(PM101000\) form, **General** tab

</td><td>

Make sure that the integration of project accounting and accounts payable is enabled—that is, the **AP** check box is selected in the **Visibility Settings** section on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form.

</td></tr><tr><td>

[Projects](PM_30_10_00.md) \(PM101000\) form, **Summary** tab

</td><td>

Make sure that for each project for which you plan to recognize AP documents, the **AP** check box is selected in the **Visibility Settings** section on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form.

</td></tr></tbody>
</table>

## Validation of Configuration

To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in [AP Documents from PDFs: Process Activity](Finance_Recognizing_AP_Documents_from_PDF_Activity.md).

**Parent topic:**[Recognizing AP Documents from PDFs](../UserGuide/Finance_Recognizing_AP_Documents_From_PDF_Mapref.md)

