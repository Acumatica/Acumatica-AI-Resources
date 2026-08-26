# Settlement of Stripe Payments {#_fc6bf52a-1f49-49f8-84ab-4831541bca71 .concept}

If your business operates outside the US or Canada and uses the Stripe processing center, you can seamlessly import settlement batches directly from Stripe into Acumatica ERP. The Stripe payment plug-in:

-   Sends the amounts of actual fees withdrawn for transactions, adjustments, or batch payouts to Acumatica ERP. When you set up a processing center that supports these fees, you must select an entry type for each fee type—*Payment*, *Refund*, *Adjustment*, and *Batch*—on the [Processing Centers](CA_20_50_00.md) \(CA205000\) form.
-   Imports and processes both automatic payouts and manual payouts in Acumatica ERP as *settlement batches*—groups of transactions that have been submitted together for settlement with a bank.

    **Tip:** A payout is a withdrawal of funds from the Stripe balance to the customer's bank account. In rare cases, the payout may be a negative amount, which means that the withdrawal covers a negative Stripe balance.

    A settlement batch for an automatic payout can have records on the **Adjustments** tab of the [Settlement Batches](CA_30_70_00.md) \(CA307000\) form. These records represent adjustments and transfers in the Stripe payout, such as manual payout transfers, minimum-balance holds and releases, and dispute-related holds and releases.

-   Includes adjustments and their fees in the bank deposit. The **Adjustment Amount** box on the [Bank Deposits](CA_30_50_00.md) \(CA305000\) form includes the balance of adjustments. The **Adjustments Account** box is populated with the clearing account, which must be set up for a deposit account and a payment method on the **Clearing Accounts** tab of the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form. Both the deposit account and the payment method must be linked to the Stripe processing center.

## Settlement of Credit Card Payments { .section}

The system automatically creates bank deposits based on payments settled with a bank. It imports settlement batches from the Stripe processing center and creates bank deposits based on these batches.

For more information on the setup of the Stripe processing center, see [Setup of the Stripe Processing Center](CA__CON_Setup_Stripe_Proc_Center.md).

## Import of Settlement Batches { .section}

You import settlement batches on the [Import Settlement Batches](CA_50_70_00.md) \(CA507000\) form. When the process completes, you click a link in the **Reference Number** column to open the batch on the [Settlement Batches](CA_30_70_00.md) \(CA307000\) form.

On this form, the net amount shown in the Summary area matches the payout amount in Stripe. This value reflects the actual transfer amount to or from the customer's bank account.

If the batch includes adjustments, they’re shown on the **Adjustments** tab, and the number of adjustments is displayed in the **Adjustment Count** box of the Summary area.

## Bank Deposit Creation { .section}

The way the system creates a deposit on the [Settlement Batches](CA_30_70_00.md) \(CA307000\) form depends on the type of payout:

-   For **automatic payouts**, the deposit amount and accounts are based on the documents matched to batch transactions. Adjustment amounts are included in the deposit.
-   For **manual payouts**, the system uses the settings on the **Clearing Accounts** tab of the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form and searches for the manual payout account in the following order:

    1.  The clearing account from a record with the **Payment Method** column empty
    2.  The clearing account from any record referenced by the selected payment method
    The system applies the same logic when selecting the adjustment account for depositing adjustments in automatic payouts.


When you click **Create Deposit** on the [Settlement Batches](CA_30_70_00.md) form, the system creates a deposit and inserts its link in the **Bank Deposit** box.

**Attention:** If no records are listed on the **Clearing Accounts** tab \(a rare case\), when you click **Create Deposit** on the [Settlement Batches](CA_30_70_00.md) form, the system will display an error message. If you click **Yes** in the dialog box that opens, the system sets the batch’s status to *Deposited*.

In a bank deposit for a manual payout, the batch amount is shown in the **Manual Payout Amount** box of the Summary area.

For automatic payouts, the **Adjustment Amount** box shows the resulting balance of adjustments.

**Tip:** You can set up automatic bank depositing for a processing center by selecting the **Automatically Create Bank Deposits** check box on the **Preferences** tab of the [Processing Centers](CA_20_50_00.md) \(CA205000\) form.

**Parent topic:**[Performing Settlement of Credit Card Payments and EFTs](../UserGuide/CA__MNG_Settlement_of_CC_Payments.md)

