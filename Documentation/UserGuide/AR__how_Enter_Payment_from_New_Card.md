# To Enter a Payment from a New Credit Card {#_436ed7e9-181a-4f2f-adf6-5ee022a73358 .task}

You can enter information about a new credit card when you are processing a payment on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form.

## Before You Proceed {#section_kqs_4jv_vxb .section}

Make sure that the processing center has been configured with the **Accept Payments From New Card** check box selected in the Summary area of the [Processing Centers](CA_20_50_00.md) \(CA205000\) form.

## To Enter a Payment from a New Credit Card {#section_mqs_4jv_vxb .section}

1.  Open the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form.
2.  On the form toolbar, click **Add New Record**.
3.  In the **Type** box of the Summary area, select *Payment* or *Prepayment*.
4.  In the **Customer** box, select a customer. The system uses the customer as a source to automatically fill in form elements with default values for the location, payment method, cash account, and other customer-related settings.
5.  In the **Location** box, check the customer location and change it if needed.
6.  In the **Payment Method** box, select a payment method that is used for card payments.

    **Attention:** Payment methods are set up on the [Payment Methods](CA_20_40_00.md) \(CA204000\) form.

7.  In the **Proc. Center ID** box, select a processing center that has been configured for accepting payments from new cards.
8.  Make sure that the **New Card** check box is selected.
9.  In the **Cash Account** box, select a cash account.
10. Optional: Add a brief description of the payment.
11. In the **Payment Amount** box, enter the total amount paid according to the customer document.
12. On the form toolbar, click **Save** to save the payment.
13. On the More menu \(under **Card Processing**\), click **Capture** or **Authorize** to initialize the processing of a credit card payment.
14. In the processing center form displayed by the system, enter the information about the new credit card, and click **Pay**.

    The system saves the transaction data, along with the customer profile ID and the customer payment profile ID.

15. Optional: On the **Card Processing** tab, review the credit card payment information.

**Parent topic:**[Processing Credit Card Payments](../UserGuide/AR__MNG_ProcessingCCPayments.md)

