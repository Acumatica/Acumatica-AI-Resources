# Basic Project Configuration: Implementation Checklist {#_f5e5cf75-b160-4797-b23b-fb11a6b9a745 .concept}

The following sections provide details you can use to ensure that the system is configured properly for project accounting in Acumatica ERP, and to specify settings that affect the processing workflows.

## Mandatory Configuration { .section}

To ensure that the basic project accounting configuration has been implemented properly, make sure that the necessary features have been enabled and settings have been specified, as described in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|Multiple forms|Make sure that the minimum company settings have been specified, as described in [Company Without Branches: General Information](config_Basic_Company_GeneralInfo.md), and the minimal required functionality has been implemented for all other functional areas to be integrated with the projects functionality.|
|[Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form|Make sure that the *Projects* feature is enabled.|
|[Projects Preferences](../UserGuide/PM_10_10_00.md) \(PO101000\) form|Save the default settings.|

|Form|Criteria to Check|
|----|-----------------|
|[Projects Preferences](../UserGuide/PM_10_10_00.md) \(PO101000\) form|Make sure that the following settings have been specified on the**General** tab:-   In the **Non-Project Code** box \(**General Settings** section\), the non-project code is specified. This code must be specified in transactions, documents and document lines that are not related to any project. For convenience, the non-project code should be distinctly different from project IDs and should be short, such as the single character *X*, which is used by default.

**Important:** The non-project code should be consistent with the structure of the *PROJECT* segmented key and cannot exceed its length. \(The system uses this key for the identifiers of projects.\) Also, you cannot create a non-project code whose ID matches an existing contract ID because the *CONTRACT* segmented key inherits its structure from the *PROJECT* segmented key. For more information, see [Project Creation and Processing: Configuration Prerequisites](../Shared/../UserGuide/Projects_Process_Config_Prereq.md).

-   In the **Empty Item Code** box \(**General Settings** section\), the empty item ID is specified. This is the identifier to be used in project transaction, commitment, budget lines of a project, or pro forma invoice lines that are not associated with a specific item. The default empty item code is *&lt;N/A&gt;*.

**Important:** The empty item code should be consistent with the structure of the *INVENTORY* segmented key, which the system uses for the identifiers of items, and cannot exceed its length.

-   In the **Empty Item UOM** box \(**General Settings** section\), the default unit of measure of the empty item code is specified. The default value is *HOUR*.
-   In the **Visibility Settings** section, the check boxes are selected for the areas of the system in which the projects should be visible.

|

## Other Settings That Affect the Workflow {#section_bmn_gk5_t5b .section}

You can affect the workflow of projects by specifying additional settings on the **General** tab of the [Projects Preferences](../UserGuide/PM_10_10_00.md) \(PO101000\) form as follows:

-   To cause the system to post project transactions automatically once they are released, select the **Automatically Post on Release** check box.
-   To cause the system to release project allocation transactions automatically, select the **Automatically Release Allocation** check box.

**Parent topic:**[Basic Project Accounting](../ImplementationGuide/config_Project_Basic_Config_Mapref.md)

