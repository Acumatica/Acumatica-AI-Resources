# Bill Approval for Payment {#_bf8888e8-0ee3-4f48-90ee-093935c94781 .concept}

In some companies, to keep control on cash, authorized employees approve bills for payment before other users can pay these bills. In smaller companies, approval of bills may not be required. With Acumatica ERP, you can configure the approval of bills to match the approval procedure established in your company.

## Approval Configuration {#section_zfh_njv_vxb .section}

In a small company, the process of approving bills for payment can be very simple: A person authorized to approve bills pays them. In this case, make sure that the **Require Approval of Bills Prior to Payment** check box on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form is cleared. Then, upon release of bills, the system calculates the appropriate pay date for each bill. All *Open* bills appear on the [Prepare Payments](AP_50_30_00.md) \(AP503000\) form \(to which only the person authorized to approve bills has access\) and will be paid if approved. The [Approve Bills for Payment](AP_50_20_00.md) \(AP502000\) form can be removed from the site map or used as an inquiry showing totals for documents selected using various criteria.

If bills should be approved directly in your system as a separate stage before they may be paid, make sure the **Require Approval of Bills Prior to Payment** check box is selected on the [Accounts Payable Preferences](AP_10_10_00.md) form. Then unapproved bills appear on the [Approve Bills for Payment](AP_50_20_00.md) \(AP502000\) form and can be approved on this form. You can configure the system so that only employees authorized to approve bills will have access to this form. Only approved bills appear on the [Prepare Payments](AP_50_30_00.md) form and can be paid on their pay date.

**Attention:** Even if the **Require Approval of Bills Prior to Payment** check box is selected on the [Accounts Payable Preferences](AP_10_10_00.md) form \(that is, bills require approval for payment\), users can still pay bills on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form.

For general information about the configuration of approvals in the system, see [Approval Configuration: General Information](../ImplementationGuide/config_Approvals_General_Info.md).

## Pay Date Calculation {#section_dgh_njv_vxb .section}

On release of a bill, the system assigns it a pay date according to the option selected for the vendor. Bills of the vendor can be paid by their due dates or by their cash discount dates, as the vendor prefers; this option can be selected in the **Payment By** list on the **Payment** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form.

Generally, the pay dates are calculated in accordance with credit terms assigned to the vendor. If for the vendor, the number of payment lead days is specified on the **Payment** tab of this form, the pay date for the vendor bills is calculated as the due date \(or cash discount date\) minus the number of lead days. The pay dates for the bills automatically generated in the Purchase Orders module are calculated in the same way.

## Approval of Bills for Payment {#section_ggh_njv_vxb .section}

For approval of bills, the [Approve Bills for Payment](AP_50_20_00.md) \(AP502000\) form is used. By using the elements on the form, a user can select bills by their pay date due date or cash discount date; the user can instead select overdue bills, bills with a cash discount still available, or bills with due dates in the near future. The user can also view bills already approved or bills requiring approval.

When approving bills, the user should take into account the payment lead time and use the pay date to select bills so that payments can reach the vendors before the bills' due dates or cash discount dates.

The users can approve particular bills by selecting the unlabeled check boxes at the beginning of the respective rows in the **Pending Documents** table, or they can apply a filter to display only specific bills and approve all listed on the page by clicking the unlabeled check box used as the column heading.

As the user approves bills, he or she can notice as the total amount of approved bills \(shown as the **Approved for Payment** value\) increases. If there is only a certain amount in a cash account intended for payments, the user can stop approval when the total exceeds the amount available for payments. Once the user clicks **Save**, the selected bills will be marked as approved and will be available for paying.

Individual AP documents can be approved or rejected directly on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. If the entry of an approval or rejection reason has been set up, the approver enters a reason in the **Enter Reason** dialog box, which is opened on the [Bills and Adjustments](AP_30_10_00.md) form.

## Payment of Approved Bills {#section_lgh_njv_vxb .section}

To pay approved bills \(with the *Released* status\), an authorized user can use the [Prepare Payments](AP_50_30_00.md) \(AP503000\) form and this can be another stage of approval if the user pays only bills he or she approves.

The user can select bills by using the specific cash account and the specific payment method associated with the cash account; all approved bills are displayed automatically. Optionally, the user can select bills with a cash discount available or with pay dates in the future to be sure that payments will reach the vendors in time.

**Parent topic:**[Approving Accounts Payable Documents](../UserGuide/AP__con_Approval_of_AP_Bills.md)

