# Preparation of Dunning Letters: Implementation Checklist {#_25b5c7fb-ca98-44d2-9b81-0560ba062c69 .concept}

The following sections provide details you can use to ensure that the system is configured properly for preparing dunning letters, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist {#section_o22_hjv_vxb .section}

We recommend that before you initially prepare dunning letters, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The *Dunning Letter Management* feature has been enabled.|
|[Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\)|The dunning settings have been specified on the **Dunning** tab of the form as described in [Dunning Process Setup: Implementation Activity](CreditPolicy_Dunning_Process_Setup_Implem_Activity.md).|
|[Statement Cycles](AR_20_28_00.md) \(AR202800\)|Make sure that the *End of Month* statement cycle that will be used for customers has been configured.|
|[Customer Classes](AR_20_10_00.md) \(AR201000\)|The dunning letter levels have been set up for the needed customer classes on the **Dunning** tab as described in [Dunning Process Setup: Implementation Activity](CreditPolicy_Dunning_Process_Setup_Implem_Activity.md).|
|[Customers](AR_30_30_00.md) \(AR303000\)|The customer records have been created and assigned to the needed customer class.|

## Validation of Configuration {#section_q22_hjv_vxb .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you prepare dunning letters for the *By Customer* process by performing instructions similar to those described in [Preparation of Dunning Letters: To Prepare Dunning Letters](CreditPolicy_Preparing_Dunning_Letters_To_Prepare_Letters.md).

## Known Process Limitations {#section_s22_hjv_vxb .section}

If on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, you initially selected *By Document* in the **Dunning Process** box, changing it later to the *By Customer* setting is not recommended.

**Parent topic:**[Preparing Dunning Letters](../UserGuide/CreditPolicy_Preparing_Dunning_Letters_Mapref.md)

