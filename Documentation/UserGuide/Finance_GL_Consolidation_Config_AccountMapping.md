# GL Consolidation: Account Mapping {#_05b98916-71dc-4bf3-87a7-fc793d996099 .concept}

Consolidation process requires mapping of the accounts and subaccounts \(if the subaccounts are used in the system\) of the consolidation unit to the respective accounts and subaccounts of the parent tenant. This mapping depends on your consolidation scenario: what level of details should be available in the consolidation branch for the required consolidated reports.

## Account Mapping {#section_ddm_mjv_vxb .section}

You map accounts on the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form of the consolidation unit by specifying an appropriate account of the parent tenant in the **Consolidation Account** column for each account of the consolidation unit. For instructions, see [GL Consolidation: To Prepare the Consolidation Unit](Finance_GL_Consolidation_To_Prepare_Consol_Unit.md).

**Attention:** The YTD Net Income account is not involved in mapping because transactions cannot be posted directly to this account. The system will automatically update this account after a consolidation batch is posted.

The chart of accounts can be different in each consolidation unit and in the parent tenant. Multiple accounts in a consolidation unit can be mapped to a single account of the parent tenant. That is, on the [Chart of Accounts](GL_20_25_00.md) form of the consolidation unit, you can select the same parent account in the **Consolidation Account** column for different accounts of the consolidation unit.

If the parent tenant has a more detailed chart of accounts than some of its consolidation units do, some consolidated accounts may not contain correct information. For example, consider a parent tenant with multiple accounts to record travel expenses—*Airfare*, *Taxi*, and *Rentals*—and a consolidation unit with only one account, *Travel Expenses*. In this case, the *Travel Expenses* account of the consolidation unit has to be consolidated with one of the parent's travel expense accounts. No matter which account is chosen as the consolidation target, the consolidated data will not be accurate.

**Tip:** For correct reporting, we recommend that the consolidation units keep similar or even more detailed charts of accounts than the parent company has.

**Parent topic:**[Performing GL Consolidation](../UserGuide/Finance_GL_Consolidation_Mapref.md)

