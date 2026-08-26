# Contract Management: Contract Upgrade {#_428c1b6d-1dc0-45a0-9a53-bb78a2ffb488 .concept}

Before the setup and activation of a contract created on the [Customer Contracts](CT_30_10_00.md) \(CT301000\) form, the contract has the *Draft* status, and you can make any needed changes.

After contract setup and activation, you can make only limited changes to the contract. To begin making these changes, if the contract has the *Active* status, you start the upgrade process by clicking **Upgrade Contract** on the More menu. This changes the status of the contract to *Pending Upgrade* and gives you the ability to make allowable changes to the contract.

Once you have finished making the needed changes to the contract, you click **Activate Upgrade** on the More menu \(under **Processing**\).

## Permissible Changes During Contract Upgrade {#section_ldw_jcz_bvb .section}

Not all elements of the [Customer Contracts](CT_30_10_00.md) \(CT301000\) form can be changed during a contract upgrade. In the Summary area of the form, you can select a different customer location or modify the description of the contract. These changes can be done for a contract with the *Active* status without the upgrade procedure.

On the **Summary** tab, you can change most settings in the **Contract Settings** and **Contract Management** sections. None of the settings in the **Billing Schedule** section can be changed, and in the **Billing Information** section, you can change only the option selected in the **Bill To** box.

On the **Details** tab, you can change the effective date of the upgrade \(in the **Effective From** box\) and apply a new discount code \(in the **Promo Code** box\). Also, in the table of the tab, you can change the set of included contract items and change their quantities within allowable limits. Note that you can change the set of provided contract items only if for the template the contract is based on, the **Enable Template Item Override** check box is selected on the [Contract Templates](CT_20_20_00.md) \(CT202000\) form.

## Contract Billing and Provisioning of an Upgraded Contract {#section_djc_4wy_bvb .section}

The process of upgrading a contract begins when you click **Upgrade Contract** on the [Customer Contracts](CT_30_10_00.md) \(CT301000\) form. Until you activate the upgrade, contract billing and provision are still performed based on the settings of the contract before the upgrade process was started.

When you have finished making changes to the contract, you activate the changes by clicking **Activate Upgrade** on the form toolbar. With the contract again active, contract billing and provision are performed according to the new settings.

**Parent topic:**[Managing Contracts](../UserGuide/Contracts_Managing_Contracts_Mapref.md)

