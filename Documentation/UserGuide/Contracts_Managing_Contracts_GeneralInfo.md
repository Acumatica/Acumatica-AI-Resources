# Contract Management: General Information {#_50f22690-ffe5-46ee-8214-e81b6e1769e7 .concept}

Contracts contain the basic terms of your business relationship with the customer, such as the cost of the services provided, the billing and payment stipulations, the duration of the contract, and the possibility of extending the contract duration. During the execution of a contract, you \(or other users who work with the customer\) perform basic actions and reflect them in Acumatica ERP. You can also use the system to monitor and implement the main processes related to contract management. These processes include changing the terms of the contract \(upgrading the contract\), canceling the last action performed on the contract, renewing the contract, and terminating the contract. To control the actions performed, you can also use related reports and inquiries.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Cancel the last action you have performed while managing a particular contract
-   Change the terms of a the contract \(contract upgrade\)
-   Renew and terminate the contract
-   Work with contract-related reports and inquiries

## Applicable Scenarios { .section}

You manage contracts in the following cases:

-   When you need to cancel the last action you performed on the contract
-   When you need to upgrade or downgrade an active contract, which gives you the ability to change its terms or contract items
-   When it is time to renew a contract that has expired or is about to expire
-   When you need to terminate a contract

## Contract Upgrades { .section}

During the contract lifecycle, you may need to make some changes and modify the contract terms that are already reflected in the activated contract \(upgrade or downgrade a contract\). These modifications may include changes to contract settings; you may also need to change the set of contract items included in the contract, to add contract items or delete included ones, or to change the quantity of contract items.

On the [Customer Contracts](CT_30_10_00.md) \(CT301000\) form, you click **Upgrade Contract** to change the contract's status to *Pending Upgrade*, then you modify the terms of the contract as needed.

You then click **Activate Contract**, which changes the contract back to *Active*. The command initiates the provision of contract services according to the new settings. If you bill a contract that has the *Pending Upgrade* status, the contract will be billed according to the settings that became effective before the upgrade. The new settings do not apply until you click the **Activate Upgrade** command.

For example, suppose that you need to create an additional contract item, which represents a new service that your company will provide recurrently, and add it to the terms of an existing contract. On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, you create a new non-stock item to represent the new service, and you specify the appropriate settings for it. Then on the [Contract Items](CT_20_10_00.md) \(CT201000\) form, you create a new contract item with the new service non-stock item specified as the recurring item. On the [Customer Contracts](CT_30_10_00.md) form, after you change the status of the contract to *Pending Upgrade*, you add the contract item on the **Details** tab. You then activate the contract upgrade.

For more information about contract upgrades, see [Contract Management: Contract Upgrade](Contracts_Managing_Contracts_ContractChanges.md).

## Contract Renewal { .section}

When a contract has expired or is about to expire, your company and your customer may want to extend the duration of the contract and continue the relationship under the same terms. In this case, you can renew the expiring contract to avoid any interruptions to the provision of services. In Acumatica ERP, you can renew a contract if it has the *Renewable* or *Expiring* type.

**Tip:** You can track contracts that are about to expire by using the [Expiring Customer Contracts](CT_40_10_00.md) \(CT401000\) form.

To renew a contract, on the form toolbar or More menu of the [Customer Contracts](CT_30_10_00.md) \(CT301000\) form, you click **Renew Contract**. In the **Renewal Date** box of the **Renew Contract** dialog box, which opens, you specify the start date of the new duration of the contract.

**Tip:** The system extends the contract for the number of days specified for the template of the contract in the **Duration** box on the **Summary** tab of the [Contract Templates](CT_20_20_00.md) \(CT202000\) form. The system extends only contracts of the **Renewable** type if they are renewed before their expiration dates or within the grace periods. If you renew a contract of **Expiring** type or a contract of **Renewable** type when its grace period is over, the system will create a new contract with the *Draft* status as a copy of the one being renewed.

For more information, see [Contract Management: Contract Renewal](Contracts_Setting_Up_Contract_Setup_ContractRenewal.md).

## Contract Termination { .section}

If the parties of the contract have agreed not to continue the relationship under the contract, you can terminate the contract, which causes it to be assigned the *Canceled* status. You terminate a contract on the [Customer Contracts](CT_30_10_00.md) \(CT301000\) form by clicking **Terminate Contract** on the More menu \(under **Processing**\) for the selected contract.

**Attention:** The termination date must be within the current billing period \(between the last and the next billing date and including the starting and ending dates of this period\). The system generates an error if you try to terminate a contract beyond this period. You can view these dates on the **Summary** tab of the [Customer Contracts](CT_30_10_00.md) \(CT301000\) form \(**Billing Schedule** section\). You cannot terminate a contract on a date that is earlier than the date of the last invoice the system issued. Also, you cannot terminate a contract on a date that is later than the **Next Billing** date because all billing actions must be performed before you terminate the contact.

When you initiate the contract termination, the system gathers information on the unbilled usage and unfulfilled services of the contract and generates an invoice or a credit memo, if needed.

In the created credit memo, the system fills in the credit terms on the [Invoices and Memos](AR_30_10_00.md) form based on whether the **Use Credit Terms in Credit Memos** check box is selected on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form as follows:

-   If the check box is selected, the credit terms are copied from the customer's settings.
-   If the check box is cleared, no credit terms are specified for the credit memo.

## Cancellation of the Last Action { .section}

If you need to cancel the last action that you have performed, you can do so by clicking **Undo Last Action** on the More menu of the [Customer Contracts](CT_30_10_00.md) \(CT301000\) form. You can cancel only one action at a time—the most recent one.

If the last action generated an invoice and it has been released, it needs to be reversed and applied to the reversing credit memo to make the **Undo Last** command available. You can review the list of the actions performed for a contract on the **Contract History** tab of the [Customer Contracts](CT_30_10_00.md) form.

For more information, see [Contract Management: Last Action Cancellation](Contracts_Managing_Contracts_Cancellation_Last_Action.md).

To obtain more information that may be related to contracts, you can use a variety of other Acumatica ERP forms and reports, as described in [Customers: Related Reports and Inquiries](Customer_Reports_Inquiries.md).

**Parent topic:**[Managing Contracts](../UserGuide/Contracts_Managing_Contracts_Mapref.md)

