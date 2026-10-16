# Employee Time Billing: Mass Processing of Documents

This topic explains how to perform mass-processing operations related to employee time tracking, and how the system generates, changes, or works with documents as a result of the mass processing.

## Mass-Releasing Time Activities

To mass-release time activities, you use the [Release Time Activities](EP_50_70_20.md) \(EP507020\) form. On this form, you select the unlabeled check boxes in the rows of the documents to be released and click **Release** on the form toolbar to process the selected documents; alternatively, you can click **Release All** to process all the documents shown in the table.

## Mass-Releasing Time Cards

To mass-release time cards, you use the [Release Time Cards](EP_50_50_10.md) \(EP505010\) forms. On this form, you select the unlabeled check boxes in the rows of the documents to be released and click **Release** on the form toolbar to process the selected documents; alternatively, you can click **Release All** to process all the documents shown in the table.

## Branch Alignment During Mass Release

When you mass-release records on the [Release Time Activities](EP_50_70_20.md) \(EP507020\) or [Release Time Cards](EP_50_50_10.md) \(EP505010\) form, the generated transactions can record project costs and related liabilities under different branches: The project branch is used for project costs, and the employee branch is used for related liabilities. This applies if either of the following options is selected in the **Branch in Project Documents** box on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form:

-   *Use Project Branch*
-   *Use Project Branch in Lines Only*

If the **Block Doc. Processing on Branch Mismatch** check box is selected on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form, the system validates the projects in each processed record before releasing it. A record can't be processed if:

-   A project related to the record has no branch specified. The system displays an error message for the record, and the trace log identifies the project that must be corrected.
-   You don’t have access to a project branch specified in the record. The system displays an error message for the record.

**Parent topic:**[Billing Employee Time](../UserGuide/Projects_Tracking_Time_Mapref.md)

