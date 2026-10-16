# Setup of Integration with AvidXchange

You perform the following general steps to integrate Acumatica ERP with AvidXchange:

1.  On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you enable the *AvidXchange Integration* feature.
2.  You set up access rights for each user role that works with the integration. These roles need access to the following forms: [Payment Methods](CA_20_40_00.md) \(CA204000\), [External Payment Processor](AP_20_55_00.md) \(AP205500\), [Checks and Payments](AP_30_20_00.md) \(AP302000\), [Process Payments / Print Checks](AP_50_50_00.md) \(AP505000\), and [Synchronize External Payments](AP_50_53_00.md) \(AP505300\).
3.  When you enable the *AvidXchange Integration* feature, the system creates the *AVIDPAY* payment processor, which is active and uses the AvidXchange plug-in. For this payment processor, the **For Production Use** check box is selected, which means that payment requests are sent to the live AvidXchange environment rather than to the sandbox. On the [External Payment Processor](AP_20_55_00.md) form, you review the settings of this payment processor and add the funding accounts you want to pay from.
4.  You map each funding account to a cash account in Acumatica ERP.
5.  When you enable the *AvidXchange Integration* feature, the system creates the *AVIDPAY* payment method automatically. On the [Payment Methods](CA_20_40_00.md) \(CA204000\) form, you review the settings of this payment method and update them, if needed.
6.  You onboard your organization in AvidXchange and complete the enrollment application in the AvidXchange portal.

## Requirements for Funding Accounts

-   Only USD cash accounts are supported.
-   Cash accounts must belong to companies located in the United States.
-   All bank details \(bank name, routing number, account number, and account holder\) must be specified before onboarding a funding account.
-   Duplicate funding accounts \(the same routing number and account number\) are not allowed.

## Organization Onboarding

At least one funding account must be added before onboarding can begin.

-   After onboarding has started, the external payment processor cannot be deleted.
-   If the onboarding status is *Expired*, *Rejected*, or *Canceled*, you must create a new external payment processor.

AvidXchange manages users at the organization level as part of the enrollment. You do not onboard individual users in Acumatica ERP.

For details on organization onboarding, see [To Set Up and Enroll Your Organization in AvidXchange](AP__HOW_AvidXchange_Setup.md).

## Managing Funding Accounts and Cash Accounts

Each funding account is one of your bank accounts, registered with AvidXchange as a source of funds. Each one has to be mapped to a cash account in Acumatica ERP, because the mapping identifies the bank account to draw on when you pay.

You can add a funding account at any time. To register an account that you added after your organization was enrolled, select its row and click **Onboard Account**. Bank details can be edited only while the account still has the *Pending Onboarding* status, so review them before you onboard the account. If the details of an account change later, add a new funding account and map the cash account to it instead.

You can change or remove the mapping of a cash account at any time, regardless of the status of the funding account. Only cash accounts in USD that belong to companies with a U.S. main address can be mapped. If you decide to stop paying from a particular bank account, remove its mapping to its cash account.

**Attention:** So that AvidXchange can draw funds from your bank account, ask your bank to allow ACH debits from the authorized originators of AvidXchange.

For details, see [Optional: To Add a Funding Account](AP__HOW_Avid_Add_Funding_Account.md).

## Mass Update of Vendor Payment Methods

After you have configured the integration, you can use the [Update Vendor Payment Methods](AP_50_71_00.md) \(AP507100\) form to set the AvidXchange payment method as the default payment method for multiple vendors at once.

The system updates the vendor payment methods along with the related settings that you specify in the Summary area of the [Update Vendor Payment Methods](AP_50_71_00.md) form.

-   **Cash Account**: If this box is filled in, the process also updates the vendor's cash account on the **Payment** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form.

    If this box is left empty, the process updates the vendor's default payment method and handles the cash account as follows:

    -   If the vendor's cash account is included in the settings of the new payment method, the **Cash Account** setting on the **Payment** tab of the [Vendors](AP_30_30_00.md) form remains unchanged.
    -   If the vendor's cash account is **not** included in the settings of the new payment method, the value in the **Cash Account** box on the [Vendors](AP_30_30_00.md) form is removed.
-   **Update Open Documents**: If this check box is selected, the process updates the vendor documents that have the following settings:

    -   On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, *Bill*, *Debit Adj.*, *Credit Adj.*, or *Prepayment* is selected in the **Type** box.
    -   The document has a status other than *Closed*, *Rejected*, or *Voided*.
    If a value is specified in the **Current Payment Method** box of the Summary area, the system updates only the open AP documents that have this payment method specified.

    If this check box is cleared, the open AP documents of the selected vendors are excluded from the update process.


For details, see [To Switch Vendors to the AvidXchange Payment Method](AP__HOW_Avid_Mass-Update_PMs.md).

**Parent topic:**[Integration with AvidXchange](../UserGuide/AP__CON_Integration_with_AvidXchange.md)

