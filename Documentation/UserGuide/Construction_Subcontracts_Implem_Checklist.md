# Subcontracts: Implementation Checklist {#_76e20714-f567-4535-9f36-b80aa15947b2 .concept}

The following sections provide details you can use to ensure that the system is configured properly for working with subcontracts, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you work with subcontracts, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Tasks to Perform|
|----|----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|Make sure the *Construction* feature is enabled.|
|[Subcontracts Preferences](SC_10_10_00.md#) \(SC101000\) form|Make sure the default settings are saved.|
|[Projects](PM_30_10_00.md) \(PM301000\) form|Make sure that the project has been created and has the *Active* status. For more details, see [Project Creation and Processing: General Information](Projects_Process_GeneralInfo.md).|
|[Non-Stock Items](IN_20_20_00.md#) \(IN202000\) form|Make sure that the non-stock items that are going to be used in subcontracts have been defined in the system. In the item settings, the following settings should be specified: -   On the **General** tab, the **Require Receipt** check box is cleared.

For more information, see [Service Items: General Information](Services_GeneralInfo.md), [Labor Items: General Information](Non_Stock_Item_Projects_GeneralInfo.md).

-   On the **Price/Cost** tab, *Purchases* is selected in the **Post Cost to Expenses On** box.

For more information, see [Project Material Management: Accrual of a Non-Stock Item’s Cost](Construction_Project_Materials_Mgmt_Item_Cost_Accrual.md).


|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of working with subcontracts by specifying additional settings as follows:

-   To change the format of subcontract identifiers, adjust the predefined *SUBCONTR* numbering sequence on the [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form, or create a new numbering sequence and select this sequence in the **Subcontract Numbering Sequence** box on the **General** tab of the [Subcontracts Preferences](SC_10_10_00.md) \(SC101000\) form. For more information on numbering sequences, see [Use of Numbering Sequences](CS__con_Multiple_Numbering_Sequences.md).

    **Attention:** A user can create subcontracts by using the **Create Subcontracts** button on the **Commitments** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form only if the numbering sequence that is used for numbering subcontracts is automatically numbered.

-   To allow a user to enter project-related subcontract lines that have not been initially specified in a cost budget of a project, select the **Allow Adding New Items on the Fly** check box on the [Projects](PM_30_10_00.md) form.
-   To reduce input errors when users enter subcontracts, set up the validation of subcontract totals by selecting the **Validate Total on Entry** check box on the **General** tab of the [Subcontracts Preferences](SC_10_10_00.md#) form. If this check box is selected, when a user creates a new subcontract on the [Subcontracts](SC_30_10_00.md) \(SC301000\) form, to take the subcontract off hold, the user must enter the subcontract total in the **Control Total** box after verifying the details of the subcontract.
-   To turn on the approvals for subcontract, select the **Require Approval** check box on the **General** tab of the [Subcontracts Preferences](SC_10_10_00.md#) form and specify the approval map in the **Approval Map** box. For more information about configuring approvals, see [Approval Configuration: General Information](../ImplementationGuide/config_Approvals_General_Info.md).

**Parent topic:**[Processing Subcontracts](../UserGuide/Construction_Subcontracts_Mapref.md)

