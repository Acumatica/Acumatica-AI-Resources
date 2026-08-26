# Duplicate Validation: Implementation Checklist {#_1f9556c0-f9f6-4c4d-a012-05c91abc5aa5 .concept}

The following sections provide details you can use to ensure that the system is configured properly for duplicate validation in Acumatica ERP, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Mandatory Configuration { .section}

We recommend that before you start validating records for duplicates, you make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\)|The following features have been enabled:-   *Customer Management*: Provides the customer relationship management \(CRM\) functionality, including lead and customer tracking, as well as the handling of sales opportunities, contacts, marketing lists, and campaigns
-   *Duplicate Validation* in the *Customer Management* group of features: Provides the duplicate validation functionality

|
|[Customer Management Preferences](../UserGuide/CR_10_10_00.md) \(CR101000\)|The numbering sequence settings have been specified and saved to the system, as described in [Basic Customer Relationship Management](config_CRM_Basic_Mapref.md).|
|[Duplicate Validation](../UserGuide/CR_10_30_00.md) \(CR103000\)|Duplicate validation settings have been specified as follows:-   For the pair of records selected in the **Comparison** pane, at least one matching field with the score weight, transformation rule, and action created on entry is specified.
-   The **Validation Score Threshold** box has a value.

|

## Recommended Configuration { .section}

|Form|Criteria to Check|
|----|-----------------|
|[Duplicate Validation](../UserGuide/CR_10_30_00.md) \(CR103000\)|The **Validate on Entry** check box is selected for each combination of record types on the **Comparison** pane. With this check box selected, the system will validate each new lead, contact, or business account when a new record is being created and saved for the first time on the [Leads](../UserGuide/CR_30_10_00.md) \(CR301000\), [Contacts](../UserGuide/CR_30_20_00.md) \(CR302000\), or [Business Accounts](../UserGuide/CR_30_30_00.md) \(CR303000\) form.|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of duplicate validation by specifying additional settings:

-   To cause the system to perform duplicate validation processing more quickly—validating records and calculating grams is handled in parallel mode and may be a time-consuming process—add the following key to the `web.config` file located in the website folder.

    ```
    <add key="ParallelProcessingDisabled" value="False" />
    ```

-   To cause the system to validate the field values of each new lead, contact, or business account—such as an email address or phone number—for duplication as soon as a user specifies these settings on the data entry form and tries to save the record for the first time, select the *Warn* option for these fields in the **Create on Entry** column of the [Duplicate Validation](../UserGuide/CR_10_30_00.md) \(CR103000\) form.
-   To cause the system to prevent the creation of duplicate records on the corresponding data entry form, select the *Block* option for each needed field in the **Create on Entry** column of the corresponding table on the [Duplicate Validation](../UserGuide/CR_10_30_00.md) form.
-   To make the system calculate validation scores strictly according to the duplicate validation rules—without adjusting score weights for missing \(empty\) fields—clear the **Normalize Validation Scores** check box on the [Duplicate Validation](../UserGuide/CR_10_30_00.md) form.

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you configure duplicate validation by performing instructions similar to those described in [Duplicate Validation: Implementation Activity](config_CRM_Duplicate_Validation_Implem_Activity.md).

**Parent topic:**[Duplicate Validation](../ImplementationGuide/config_CRM_Duplicate_Validation_Mapref.md)

