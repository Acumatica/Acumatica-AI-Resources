# Processing Status Update for Credit Card Payments

In Acumatica ERP, the processing status of a credit card payment indicates the current state of the payment transaction, such as whether it has been authorized, declined, captured, voided, or held for review.

For credit card payments, this status is stored for each payment and can be used in inquiries, reports, quick filters, and business events. This makes it easier to monitor payments that require attention, automate follow-up actions based on the transaction status, and include processing status information in payment-related workflows and analysis.

**Attention:** The capabilities described below are also applicable to ACH payments. For more details about ACH, see [ACH Payments](AP__con_ACH_Payment_Support.md).

## Processing Statuses

The table below lists all the possible processing statuses and their codes.

|Code|Name on the UI|
|----|--------------|
|AUF|*Pre-Authorization Failed*|
|AIF|*Pre-Authorization Increase Failed*|
|CAF|*Capture Failed*|
|VDF|*Voiding Failed*|
|CDF|*Refund Failed*|
|AUS|*Pre-Authorized*|
|CAS|*Captured*|
|VDS|*Voided*|
|CDS|*Refunded*|
|REJ|*Rejected*|
|AUE|*Pre-Authorization Expired*|
|CAE|*Held for Review \(Capture\) Expired*|
|AUH|*Held for Review \(Authorization\)*|
|CAH|*Held for Review \(Capture\)*|
|VDH|*Held for Review \(Void\)*|
|CDH|*Held for Review \(Refund\)*|
|AUD|*Pre-Authorization Declined*|
|CAD|*Capture Declined*|
|VDD|*Voiding Declined*|
|CDD|*Refund Declined*|
|VFD|*Validation Failed \(Refund\)*|
|VFV|*Validation Failed \(Voiding\)*|
|VFS|*Validation Failed*|
|UKN|*Unknown*|
|NCL|*Not Calculated*|
|CRF|*Captured, Refund Failed*|
|CRS|*Captured, Refunded*|
|CVF|*Captured, Voiding Failed*|
|CVP|*Captured, Void/Refund Pending Validation*|
|CFV|*Captured, Void/Refund Failed Validation*|
|ACF|*Pre-Auth./Capture Failed Validation*|
|ACP|*Pre-Auth./Capture Pending Validation*|
|PVP|*Pre-Auth., Void/Refund Pending Validation*|
|PFV|*Pre-Auth., Void/Refund Failed Validation*|
|PAC|*Pre-Authorized, Capture Failed*|
|PAI|*Pre-Authorized, Pre-Authorization Increase Failed*|
|PRF|*Pre-Authorized, Refund Failed*|
|PAV|*Pre-Authorized, Voiding Failed*|
|RVF|*Refunded, Voiding Failed*|
|VFA|*Validation Failed \(Authorization\)*|
|VFC|*Validation Failed \(Capture\)*|
|VRF|*Void/Refund Failed Validation*|
|VRP|*Void/Refund Pending Validation*|
|VFR|*Voided, Refund Failed*|

## Reviewing the Processing Status

The **Processing Status** column appears in the Payments and Applications \(AR3020PL\) and Cash Sales \(AR3040PL\) lists of records—which are generic inquiry forms. You can save the column as part of a quick filter.

If the **Processing Status** column is not displayed, edit the generic inquiries for the lists of records. Below you can see the configuration of the *AR-Payments and Applications* generic inquiry.


## Expiration Warnings for Pre-Authorized Payments

If a pre-authorized transaction has expired, you’ll see a warning in the **Processing Status** box.

The warning appears on individual payment records on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) and [Cash Sales](AR_30_40_00.md) \(AR304000\) forms and as an inline warning in payment rows on the following forms:

-   [Sales Orders](SO_30_10_00.md) \(SO301000\): **Payments** tab
-   [Invoices](SO_30_30_00.md) \(SO303000\): **Applications** tab
-   [Credit Card Processing for Sales](SO_50_70_00.md) \(SO507000\)
-   [Validate Card Payments](AR_51_30_00.md) \(AR513000\)
-   [Card Payments Pending Review](CA_40_30_00.md) \(CA403000\)
-   [Capture Payments](AR_51_15_00.md) \(AR511500\)

The warning is shown for payments that have an active pre-authorization status or that have the *Held for Review \(Authorization\)* or *Held for Review \(Capture\)* status after the expiration date has passed.

**Attention:** For Acumatica Payments, the system cannot change a transaction’s status to *Pre-Authorized Expired* or *Held for Review \(Capture\) Expired* based on the date alone. This is because the **Validate Card Payment** command doesn’t return the transaction’s expiration information from the processing center. As a result, those payments show the expiration warning indefinitely until they are voided, captured, or otherwise resolved. Although the warning is generated, the processing status isn't changed to *Expired*.

## Updating the Processing Status After the Upgrade

After you upgrade Acumatica ERP to Version 2026 R2 from an earlier version, existing credit card and ACH payment records don’t yet have a stored processing status. Until they’re updated, these payments show a status of *Not Calculated* on data entry forms.

A system administrator uses the [Update Processing Status](AR_51_40_00.md) \(AR514000\) form to mass-update the processing status for existing payments. For details, see [To Update the Processing Status of Payments](AR__HOW_Update_Processing_Status.md).

Payments whose processing status can’t be determined at this time—for example, because they have no associated processing center transaction—keep the *Not Calculated* status. They will be picked up automatically during future processing. Note that the process only updates the stored processing status. It does not process, validate, synchronize, capture, void, or refund payments.

If you open such a payment on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) or [Cash Sales](AR_30_40_00.md) \(AR304000\) form, the **Processing Status** box may show a warning. This means that the payment was created before the system upgrade to the current version and has not yet been processed on the [Update Processing Status](AR_51_40_00.md) form.

## Scheduling Automatic Updates of Processing Statuses

On the [Update Processing Status](AR_51_40_00.md) \(AR514000\) form, you can configure an automatic schedule to process payments in the background without manual intervention. If the schedule starts a new run while a previous run is still in progress, the later run ends without any records being processed—no payments are processed twice.

We recommend the following schedule configuration: If your organization has more than 100,000 records on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) and [Cash Sales](AR_30_40_00.md) \(AR304000\) forms, run the schedule every two hours.

Keep in mind that the system limits the maximum number of times the schedule can run, calculated as follows: `Number of payments / 10,000 + 2`. When configuring your schedule, make sure the number of executions doesn't exceed this limit.

**Important:** Make sure that the **Payment Date After** setting is not included in the schedule parameters. During each run, the system fills it in automatically so that clicking **Process All** selects no more than 10,000 payments for processing.

For more information about the setup of automatic schedules, see [Scheduling Automated Processing](SA_Scheduling_Automated_Processing_Mapref.md).

## Using the Validate Card Payment Command

When you click **Validate Card Payment** on the More menu of the [Payments and Applications](AR_30_20_00.md) \(AR302000\) or [Cash Sales](AR_30_40_00.md) \(AR304000\) form, the system updates the stored processing status of a credit card or ACH payment, even if the processing center returns no new information. This keeps statuses up to date after each validation.

**Parent topic:**[Processing Credit Card Payments](../UserGuide/AR__MNG_ProcessingCCPayments.md)

