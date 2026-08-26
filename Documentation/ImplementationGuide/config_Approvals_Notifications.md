# Approval Configuration: Pending Approval Notifications {#_cf6d1cd1-0601-4a5c-8cad-61e6cc48c9a6 .concept}

In Acumatica ERP, you can set up approval notifications so that the appropriate employee will receive an email notification each time a record requires their approval.

## Preparing Notification Templates {#section_ws5_zpp_h1c .section}

You can create new templates or edit existing ones by using the [Email Templates](../UserGuide/SM_20_40_03.md) \(SM204003\) form.

On this form, you can find a number of predefined templates for various types of approvals. You can open the lookup table for the **Notification ID** box and use the Search box in the upper right to find a template that you can modify or use as it is.

**Tip:** For example, search for *approval* or the specific record type.

## Setting Up the Sending of Approval Notifications {#section_qbl_gpp_h1c .section}

To cause approval notifications to be sent for the records of particular entity type, you need to specify a notification template on the appropriate preferences form after you have specified the approval map for the entity type. For some entities, you can specify different notification templates for each type of record within an entity type, such as each sales order type.

For instance, to enable notifications for pending invoices, on the **Approval** tab of the [Accounts Receivable Preferences](../UserGuide/AR_10_10_00.md) \(AR101000\) form, you can specify an appropriate template. Locate the row with *Invoice* selected in the **Type** column, and select the notification template in the **Pending Approval Notification** column.

**Attention:** Only original approvers assigned through an approval map can receive notifications about pending approvals. If an approver has an assigned delegate and approvals are reassigned to this delegate, the delegate will not receive pending approval notifications. For more information about delegates, see [Approval Configuration: Delegation of Approvals](../Shared/../ImplementationGuide/Approvals_Delegation_of_Approvals.md).

**Parent topic:**[Configuring Approvals](../ImplementationGuide/config_Approvals_Functionality.md)

