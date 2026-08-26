# Contract Management: Last Action Cancellation {#_f6de1770-b2a6-4c90-923f-6e0fae9e0b6b .concept}

Sometimes you realize that the last action you performed on a contract was incorrect, or it needs to be reversed because of a change in the customer's intentions. You can cancel the most recent action you performed on the contract by opening the contract on the [Customer Contracts](CT_30_10_00.md) \(CT301000\) form and clicking **Undo Last Action** on the More menu.

However, the following limitations apply to the availability of this command:

-   You can cancel only one action at a time but not a sequence of actions. That is, if you have successfully canceled an action, you cannot proceed to canceling the action that preceded the one you just canceled. Only after you have performed a new action on the contract does the **Undo Last Action** command become available again.
-   You cannot cancel the contract setup if you have set up and activated the contract by using two different actions \(because the setup action was followed by a separate action: the contract activation\). However, if you have clicked **Set Up and Activate Contract** as the most recent action, you can cancel both the setup and the activation at once because in this case, they were performed as a single action.
-   You cannot cancel an action after the release of an invoice that has been issued as a result of that action. However, if you reverse the released invoice, you can then cancel the action. Also, you can cancel an action if the invoice or credit memo resulting from the action has the *On Hold* or *Balanced* status—that is, if the invoice has not yet been released. In this case, if you click **Undo Last Action**, the system deletes the invoice or credit memo.

**Tip:** You can view the log of actions that have been performed on the selected contract on the **Contract History** tab of the [Customer Contracts](CT_30_10_00.md) form. To see the most recent changes on the **Contract History** tab, you can press F5 to refresh the form.

**Parent topic:**[Managing Contracts](../UserGuide/Contracts_Managing_Contracts_Mapref.md)

