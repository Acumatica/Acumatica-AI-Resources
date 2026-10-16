# Automatic Credit Card Surcharges

When customers choose to pay by credit card, you can automatically apply a surcharge to help recover credit card processing costs. A *surcharge* is a small fee added to a credit card transaction to cover your company's costs to process the payment. You can configure and apply a surcharge to each payment created with a credit card or POS terminal. The surcharge is calculated by the processing center and added to the transaction total \(including the sales tax and applicable fees\), then itemized so it's visible in the payment and on receipts.

The surcharge functionality supports only monthly billing. That is, your company \(a merchant\) pays the fees to the processing center once a month. Surcharging in Acumatica ERP works only when the **Compliant Surcharge** service is enabled for the merchant location in the processing center.

**Attention:** This functionality is available only if the *Acumatica Payments* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## What You Need to Know

-   Fees are regulated by states. Most states cap the surcharge at 3% of the purchase, including sales tax. CT \(Connecticut\), MA \(Massachusetts\), Maine \(ME\), and PR \(Puerto Rico\) prohibit surcharging. Surcharging isn't supported outside of USA.
-   Surcharging is not allowed on ACH payments or debit card payments.
-   Each surcharge is shown in a separate line on the bill or receipt, and its amount doesn't exceed the cost of processing.
-   A surcharge is applied to the total transaction amount, which includes the sales tax and any other applicable fees.

## Setup of the Surcharge Functionality

A system administrator should make sure that the **Compliant Surcharge** functionality is enabled for the merchant location in the processing center.

**Tip:** After the processing center enables the service, you may need two merchant accounts \(one with the surcharge functionality enabled and one without\). This typically results in setting up two processing centers in Acumatica ERP so that you can choose whether to process a particular transaction with or without a surcharge.

To set up the surcharge functionality:

1.  On the [Entry Types](CA_20_30_00.md) \(CA203000\) form, create a new entry type with the following settings:
    -   **Disb./Receipt**: *Receipt*
    -   **Module**: *CA*
    -   **Default Offset Account**: The account to which surcharge amounts will be posted
    -   **Default Offset Subaccount**: The corresponding subaccount
    -   **Deduct from Payment**: Cleared
2.  On the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form, add this entry type to the cash account used by the payment method and to the cash account you will select for the processing center in Step 4.
3.  On the [Processing Centers](CA_20_50_00.md) \(CA205000\) form, select a processing center or create one. If you are creating one, fill in the settings on the **Plug-In Parameters** tab.
4.  In the **Cash Account** box of the Summary area, select the cash account to which you added the surcharge entry type in Step 2.
5.  On the **Preferences** tab, select the **Compliant Surcharge** check box.

    The system checks whether surcharges are supported for the merchant account:

    -   If surcharges are not supported, the system displays an error and clears the check box.
    -   If surcharges are supported, the check box remains selected and becomes unavailable for editing.
6.  In the **Surcharge Entry Type** box, select the entry type set up for surcharges.

    Only entry types with the settings listed in Step 1 appear in the lookup table.

7.  On the form toolbar, click **Save**.

## Reviewing the Surcharge Before Processing a Payment

On the [Payments and Applications](AR_30_20_00.md) \(AR302000\) and [Cash Sales](AR_30_40_00.md) \(AR304000\) forms, the surcharge applied to each payment is shown on the **Charges** tab and in the **Finance Charges** box in the Summary area \(see below\).



When you save a payment or cash sale with a credit card or POS payment method:

-   The system retrieves a calculated surcharge and shows it on the form.
-   **For saved cards**: A surcharge is calculated once you select the customer payment method.
-   **For new cards** entered in a hosted form: The system may show an assumed surcharge initially. After the card is entered, the system updates the surcharge amount. For a debit card, the surcharge becomes 0.
-   If you change the payment method or processing center before processing the payment, the system updates the surcharge amount accordingly.

The line added on the **Charges** tab:

-   Is added automatically by the system
-   Can't be selected manually, edited, or deleted
-   Remains non-editable even for unreleased payments
-   Is removed automatically if the payment method is changed to a non-eligible method \(for example, *CHECK* or *ACH*\)

**Tip:** To help you understand the posting direction, the **Disb./Receipt** column is available on the **Charges** tab. The column is hidden by default and can be added in the Column Configuration dialog box.

## Applying Surcharges Across Payment Channels

The surcharge functionality is applied not only in Acumatica ERP but also in customer-facing payment flows:

-   Processing actions: Surcharges are applied when you click **Authorize**, **Capture**, **Void**, or **Refund** on the More menu of the [Payments and Applications](AR_30_20_00.md) \(AP302000\) or [Cash Sales](AR_30_40_00.md) \(AR304000\) form.

    **Attention:** The amount shown in the **Financial Charges** box is negative for authorized and captured payments and positive for voided payments and refunds.

-   Payment links: Surcharges are applied to transactions processed through payment links. For more details about payment links, see [Processing of Payment Links](AR__con_Processing_Payment_Links.md).
-   Acumatica Self-Service Portal: The surcharge amount is shown before the payment is processed and only when a credit card payment method is selected.

## Posting Surcharge Amounts to the GL

When you release a payment that includes a surcharge, the system automatically generates a GL entry using the selected surcharge entry type. The surcharge is posted to the **default offset account**, separating surcharge income from the main sales income.

You can review this amount on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## Surcharges in Settlement Batches and Bank Deposits

In settlement batches on the [Settlement Batches](CA_30_70_00.md) \(CA307000\) form, each payment is displayed as a single line:

-   The payment amount is shown in the **Amount** column.
-   The surcharge amount is shown in the **Fixed Fee** column.

Below is a settlement batch with a surcharge applied.


For more details on using settlement batches, see [Performing Settlement of Credit Card Payments and EFTs](CA__MNG_Settlement_of_CC_Payments.md).

The surcharge functionality supports monthly billing \(the processing center bills at the end of the month and doesn’t withhold the surcharge amount from the settlement batches\). Because the surcharge is treated as funds coming in, it doesn't appear as a negative charge on the [Bank Deposits](CA_30_50_00.md) \(CA305000\) form. Instead, it's included in the deposit amount displayed on the **Payments** tab, as shown below.


For more details on bank deposits, see [Preparation of Bank Deposits](CA__CON_Preparation_of_Deposits.md).

## Reviewing Surcharges on Receipts

On the printed forms of the [Invoice/Memo](AR_64_10_00.md) \(AR641000\) and [Payment Receipt](AR_64_30_00.md) \(AR643000\) reports, every surcharge is shown as a separate line item.

Below is the printed [Payment Receipt](AR_64_30_00.md) report with a surcharge displayed in a separate line.


This line appears on the reports for documents that have the *Credit Card* or *POS Terminal* means of payment.

**Parent topic:**[Processing Credit Card Payments](../UserGuide/AR__MNG_ProcessingCCPayments.md)

