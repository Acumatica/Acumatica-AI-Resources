# Photo Logs: Implementation Checklist {#_3a8434e9-a21d-4b41-b67c-3873ca49876a .concept}

The following sections provide details you can use to ensure that the system is configured properly for working with photo logs, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

Before you begin working with photo logs, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|Make sure that the *Construction*, and *Construction Project Management* features are enabled.|
|**Photo Logs** tab of the [Project Management Preferences](PJ_10_10_00.md) \(PJ101000\) form|Make sure that statuses have been configured for photo logs. The *N/A* status, which is the only predefined status in the system, is specified by default for a new photo log. This status cannot be deleted, but you can change its name and description, if needed.

For instructions, see [Photo Logs: Implementation Activity](Construction_Photo_Logs_Implem_Activity.md).

|
|[File Upload Preferences](SM_20_25_50.md) \(SM202550\) form|Review the list of the supported image extensions on the form and add additional ones, if needed.

 After you have saved any changes to the file upload preferences, to apply the changes in the list of file extensions supported for upload, you must clear the system cache by clicking **Reset Caches** on the More menu of the [Apply Updates](SM_20_35_10.md) \(SM203510\) form.

|
|[Projects](PM_30_10_00.md#) \(PM301000\) form|Make sure that the necessary projects have been created.|

## Other Settings That Affect the Workflow {#section_hpn_w2y_l5b .section}

You can affect the workflow of daily field reports by specifying additional settings as follows:

-   To change the format of photo log identifiers, adjust the *PHOTOLOG* numbering sequence on the [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form, or create a new numbering sequence and select this sequence in the **Photo Log Numbering Sequence** box on the **Photo Logs** tab of the [Project Management Preferences](PJ_10_10_00.md) \(PJ101000\) form. For more information on numbering sequences, see [Use of Numbering Sequences](CS__con_Multiple_Numbering_Sequences.md).
-   To change the format of photo identifiers, adjust the *PHOTO* numbering sequence on the [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form, or create a new numbering sequence and select this sequence in the **Photo Numbering Sequence** box on the **Photo Logs** tab of the [Project Management Preferences](PJ_10_10_00.md) \(PJ101000\) form. For more information on numbering sequences, see [Use of Numbering Sequences](CS__con_Multiple_Numbering_Sequences.md).
-   To add the additional attributes that will be available for individual photos in a photo log, specify the list of attributes on the **Photo Logs** tab of the [Project Management Preferences](PJ_10_10_00.md) \(PJ101000\) form. When a user adds a photo in the photo log, the user specifies the appropriate attribute values for the photo.

**Parent topic:**[Working with Photo Logs](../UserGuide/Construction_Photo_Logs_Mapref.md)

