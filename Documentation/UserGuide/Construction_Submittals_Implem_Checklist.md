# Submittals: Implementation Checklist {#_4155bae6-65c6-439b-a5aa-181691f65a56 .concept}

The following sections provide details you can use to ensure that the system is configured properly for processing submittals, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially process submittals, you make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md#) \(CS100000\) form|The *Construction* and *Construction Project Management* features have been enabled.|
|[Project Management Preferences](PJ_10_10_00.md) \(PJ101000\) form|Make sure that all necessary settings related to submittals have been specified.|
|[Projects](PM_30_10_00.md#) \(PM301000\) form|The project for which the submittal is created has been defined, the project tasks have been created, and the project and its tasks have been activated.|
|[Employees](EP_20_30_00.md#) \(EP203000\) form|The necessary employee accounts for employees involved in the submittal process have been defined.|
|[Contacts](CR_30_20_00.md#) \(CR302000\) form|The necessary contacts involved in the submittal process have been created.|

## Other Settings That Affect the Workflow {#section_hdg_ksk_4pb .section}

You can affect submittals and their processing by specifying additional settings as follows:

-   If you need to categorize the submittals, you can create submittal types on the **Submittals** tab of the [Project Management Preferences](PJ_10_10_00.md) \(PJ101000\) form, as described in [Submittals: Implementation Activity](Construction_Submittals_Implem_Activity.md).
-   To change the format of the identifiers the system assigns to submittals, adjust the *SUBMITTAL* numbering sequence on the [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form, or create a new numbering sequence and select this sequence in the **Submittal Numbering Sequence** box on the **Submittals** tab of the [Project Management Preferences](PJ_10_10_00.md) \(PJ101000\) form. For more information on numbering sequences, see [Use of Numbering Sequences](CS__con_Multiple_Numbering_Sequences.md).

    By default, the *SUBMITTAL* numbering sequence specifies that the submittal identifier is an automatically generated alphanumeric string that starts with the *SU* prefix and is followed by six digits, such as *SU-000001*.


## Validation of Configuration {#section_qm2_fgj_4pb .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you process a submittal by performing instructions similar to those described in [Submittals: Process Activity](Construction_Submittals_Process_Activity.md).

**Parent topic:**[Processing Submittals](../UserGuide/Construction_Submittals_Mapref.md)

