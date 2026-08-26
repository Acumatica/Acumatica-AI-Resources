# Subaccounts: Allowable Changes to the Configuration of Subaccounts {#_fc2aec96-ea0d-47cf-86f0-ab57113c1d77 .concept}

After subaccounts have been fully configured and transactions have been posted in your system, there are limitations to the changes you can make to subaccounts. For example, you can append a segment to subaccount identifiers, but you cannot delete the segments of these identifiers, because such a deletion could result in lost data. If you need to change the configuration of subaccounts in a live system, you have the following options.

## Deactivating a Subaccount { .section}

If you are not planning to use a subaccount anymore, you can deactivate it on the [Subaccounts](../UserGuide/GL_20_30_00.md) \(GL203000\) form. If you deactivate it, the system maintains the history of transactions for the subaccount, but users cannot create new documents or transactions with the deactivated subaccount. For details, see [To Deactivate a Subaccount](GL__HOW_To_Deactivate_a_Subaccount.md).

**Attention:** Note that you deactivate the subaccount rather than deleting it. A subaccount can be deleted only if no transactions containing the subaccount have been posted.

## Adding a New Segment { .section}

You can add a new segment to the end of subaccount identifiers on the [Segmented Keys](../UserGuide/CS_20_20_00.md) \(CS202000\) form. In this case, the account–subaccount combinations that are referred to in existing transactions will have an empty value in the new segment. You can update the list of these combinations on the [Subaccounts](../UserGuide/GL_20_30_00.md) form and specify the needed values for the new segment. The history of transactions will be updated to reflect the expanded subaccount identifiers.

The original subaccount must be **updated first**, before any additional subaccounts with the same old subaccount segments are created. At this stage, you must decide which value of the new segment will be used for the existing subaccount. This value will be applied to all historical transactions and to all configurations that previously referenced the original subaccount.

If new subaccounts are created before the original one is updated, the required value of the new segment may already be in use. For this reason, the recommended sequence is:

1.  Choose the value of the new segment that will represent the existing subaccount.
2.  Update the original subaccount so that it includes this value.
3.  Confirm that all historical transactions and cash account settings are updated accordingly.
4.  Create additional subaccounts that differ only by the new segment value, if needed.

**Example**

Before a new segment was added, a cash account used a single subaccount value such as *000-AAA*. After the new segment is introduced, multiple subaccounts can be created that share the same old subaccount values, for example *000-AAA-01*, *000-AAA-02*, and so on.

In this scenario, the original subaccount *000-AAA* must first be updated to include a specific value in the new segment \(for example, *000-AAA-00*\). This update ensures that all existing transactions and cash account settings continue to reference the correct subaccount. Only after this update is completed should additional subaccounts with the same base value be created and used in transactions processing.

**Attention:** You cannot delete any segments of subaccount identifiers.

## Adding New Segment Values and Editing Existing Values { .section}

For subaccount identifiers, you can add new segment values and edit the existing values on the [Segment Values](../UserGuide/CS_20_30_00.md) \(CS203000\) form. If you change a segment value, on the [Subaccounts](../UserGuide/GL_20_30_00.md) form, you have to manually update the list of subaccounts that use the old value to contain the new value. This causes the system to update already-existing transactions to use the new subaccount identifiers.

## Merging Subaccounts { .section}

You can merge subaccounts by moving the balances to one of these subaccounts and deactivating the unnecessary subaccounts on the [Subaccounts](../UserGuide/GL_20_30_00.md) form. After you perform these actions, you can also deactivate any unnecessary values on the [Segment Values](../UserGuide/CS_20_30_00.md) form so that the users cannot select these values when combining subaccounts on the fly.

**Parent topic:**[Subaccounts](../ImplementationGuide/config_Subaccounts_Mapref.md)

