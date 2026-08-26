# Credit Status: Implementation Checklist {#_3f5fe046-73c8-4cc3-aa31-ffbb213c0b1c .concept}

The following sections provide details you can use to ensure that the system is configured properly for managing customers' credit status, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist {#section_qj2_hjv_vxb .section}

We recommend that before you initially manage customers' credit status, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The *Dunning Letter Management* feature has been enabled.|
|[Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\)|The dunning settings have been specified on the **Dunning** tab of the form as described in [Dunning Process Setup: Implementation Activity](CreditPolicy_Dunning_Process_Setup_Implem_Activity.md).|
|[Customer Classes](AR_20_10_00.md) \(AR201000\)|The dunning letter levels have been set up for the needed customer classes on the **Dunning** tab as described in [Dunning Process Setup: Implementation Activity](CreditPolicy_Dunning_Process_Setup_Implem_Activity.md).|
|[Customers](AR_30_30_00.md) \(AR303000\)|The customer records have been created and assigned to the needed customer class.|

## Validation of Configuration {#section_sj2_hjv_vxb .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you manage customers' credit status by performing instructions similar to those described in [Credit Status: Process Activity](CreditPolicy_Managing_Credit_Status_Activity.md).

**Parent topic:**[Managing Customers' Credit Status](../UserGuide/CreditPolicy_Managing_Credit_Status_Mapref.md)

