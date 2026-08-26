# GL Consolidation: Implementation Checklist {#_509018e3-dd3b-4526-822f-5e87aac3a0c0 .concept}

The following sections provide details you can use to ensure that the system is configured properly for performing GL consolidation, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist {#section_yfm_mjv_vxb .section}

We recommend that before you initially perform GL consolidation, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|Notes|
|----|-----------------|-----|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The *General Ledger Consolidation* feature has been enabled for the parent company in the parent tenant and for the subsidiary company in the consolidation unit.| |
|[Ledgers](GL_20_15_00.md) \(GL201500\)|In the consolidation unit, a ledger that will be used as a consolidation source has been defined.|For details, see [GL Consolidation Configuration: To Configure a Consolidation Unit](Finance_GL_Consolidation_Config_To_Configure_Consol_Unit.md).|
|[Companies](CS_10_15_00.md) \(CS101500\)|In the parent tenant, the company that represents the consolidation unit in the parent company has been configured.|For details, see [GL Consolidation Configuration: To Configure the Parent Company](Finance_GL_Consolidation_Config_To_Configure_Parent_Company.md).|
|[Company Financial Calendar](GL_20_11_00.md) \(GL201100\)|In the parent tenant, the needed financial periods in the company that represents the consolidation unit have been opened.|
|[Ledgers](GL_20_15_00.md)|In the parent tenant, a consolidation ledger has been created.|
|[Consolidation](GL_10_30_00.md)|In the parent tenant, data synchronization has been performed between the parent company and the consolidation unit.|

## Other Settings That Affect the Workflow {#section_agm_mjv_vxb .section}

You can affect the workflow of posting consolidation batches by specifying additional settings as follows:

-   To cause GL batches to be created with the *On Hold* status, select the **Hold Batches on Entry** check box in the **Data Entry Settings** section of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form. If this check box is cleared, batches are created with the *Balanced* status.
-   To cause GL batches to be posted on release, make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section on the [General Ledger Preferences](GL_10_20_00.md) form. If this check box is cleared, batches are created with the *Unposted* status, and you have to release them on the [Release Transactions](GL_50_10_00.md) \(GL501000\) form.

## Validation of Configuration {#section_cgm_mjv_vxb .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in [GL Consolidation Configuration: To Configure a Consolidation Unit](Finance_GL_Consolidation_Config_To_Configure_Consol_Unit.md) and [GL Consolidation Configuration: To Configure the Parent Company](Finance_GL_Consolidation_Config_To_Configure_Parent_Company.md).

**Parent topic:**[Performing GL Consolidation](../UserGuide/Finance_GL_Consolidation_Mapref.md)

