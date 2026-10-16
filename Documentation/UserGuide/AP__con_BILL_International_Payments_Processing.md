# Processing International Payments

For BILL, a transaction is considered an international payment when the vendor is located outside the United States, regardless of the currency used on the bill or payment. Acumatica ERP supports the following international payment scenarios:

-   **Bill in USD**–**payment in USD**
-   **Bill in USD**–**payment in foreign currency**
-   **Bill in foreign currency**–**payment in the same foreign currency**

When you process international payments, the system won't perform currency conversion, rounding operations, or RGOL calculation. All these operations will be performed by BILL.

**Attention:** BILL doesn't support funding accounts in a foreign currency. Funds are debited from a USD bank account, and BILL determines the conversion rate.

For details on setting up BILL integration, see [Setup of Integration with BILL](AP__CON_BillCom_Integration_Setup.md) and [International Payments with BILL](AP__CON_BILL_International_Payments.md).

## Loading and Applying an External Exchange Rate

When you're working with an international vendor and the bill currency isn’t USD, you can load the exchange rate provided by BILL and apply it to the payment.

On the form toolbar of the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form, you click **Load Exchange Rate**. The system recalculates the payment amount based on the external exchange rate and updates the payment accordingly.

**Attention:** If the system can't retrieve the external exchange rate, it doesn't block further processing or cause you to lose your work. Instead, it uses notifications to explain what happened and how to proceed. In some cases, the payment is saved or returned with the *On Hold* status.

## Reviewing the Payment's Disbursement and Exchange-Rate Details

On the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form, the **External Processing** section on the **Remittance** tab provides information about foreign-currency payments. You can see details about the amount the vendor will receive and the vendor's payment currency.

## Handling of Expired Exchange Rates

For vendors whose bill currency isn’t USD, the system checks whether the exchange rate is still valid. If the rate has expired, the system shows a warning.

When you initiate processing on the [Process Payments / Print Checks](AP_50_50_00.md) \(AP505000\) form, if any processed payments have expired exchange rates, the system displays the **Process Payments with Expired Rates** dialog box.

In this dialog box, you select how you want the system to proceed and then click **Process**.

## How Final Amounts Are Determined

BILL locks in the exchange rate when it processes a payment. Acumatica ERP then updates the payment based on the final values received from BILL, including:

-   The final **Payment Amount** in USD debited from the funding account
-   The **Disbursement Amount** in the currency the vendor receives

If the system can't obtain the final payment amount, it provides an error notification that directs you to click **Synchronize Payment** on the **Remittance** tab of the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form.

## Example of a USD Bill Paid in a Foreign Currency

Suppose that a bill in the amount of USD 1200 has been entered in the system for a Canadian vendor. Because your company is based in the US, you will pay this bill in USD, but the vendor will receive the payment in CAD. BILL will convert the amount by using the valid exchange rate valid at the time of the conversion.

Below you can see the vendor’s payment, which was created in BILL.


**Attention:** The text of the warning on the **Payment Method** box says that the payment will be processed in the BILL sandbox environment. You won't see this warning in the production environment.

**Tip:** You can review the **Disbursement Method** column to confirm that the payment will be processed through BILL. The form also shows the disbursement amount and the currency in which the vendor will receive the payment.

Once you click **Process** on the form toolbar, the system displays the widget shown below.


When you enter the code and click **Verify**, the payment retains its *Pending Processing* status.

**Tip:** The processing usually happens on the next day. You can click **Synchronize Payment** on the **Remittance** tab of the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form to sync the payment between Acumatica ERP and BILL.

When the payment has been processed in BILL, its processing status changes to *Processed*.

**Parent topic:**[Creating Documents for Processing in BILL](../UserGuide/AP__con_Create_Doc_External_Processing.md)

