# Payment Methods for Vendors {#_a0ceae11-89eb-446b-bc4a-f7553eabb5d1 .concept}

You can configure payment methods that are used to pay vendors of your organization. The settings of a payment method describe how a particular payment was done and provide the default cash account to be used to record payments. The system does not initiate the actual movement of money; it just holds the information about the payment.

In this topic, you will read about the general steps of setting up a payment method. You will also see examples of payment methods that can be used to record payments to vendors.

## General Payment Method Setup {#section_l2b_kjv_vxb .section}

You use the [Payment Methods](CA_20_40_00.md) \(CA204000\) form to configure payment methods. You perform the following general steps to set up a payment method:

1.  On this form, you specify the required settings, such as the identifier, means of payment, and description.

    **Tip:** We recommend that you use the *Cash/Check* means of payment for all payment methods that are used to describe how your organization pays vendors.

2.  You specify how you want to use the payment method: For payments to vendors, select the **Use in AP** check box.

    **Tip:** The same payment method can be used to record incoming and outgoing payments; that is, you can select both the **Use in AR** and the **Use in AP** check boxes \(or just one of the check boxes\).

3.  On the **Allowed Cash Accounts** tab, you add the cash accounts to be used with this payment method. Additionally, you can select the **AP Default** check box to define the cash account that is used by default for outgoing payments.
4.  Optionally, you can do any of the following for the payment method:
    -   Enable automatic numbering of printed checks or other documents that confirm payment, by using the **AP - Suggest Next Number** and the **AP Last Reference Number** columns on the **Allowed Cash Accounts** tab.
    -   Disable the requirement that each payment reference number must be unique, by clearing the **Require Unique Ref.** check box, which is selected by default and appears if the **Not Required** option is selected in the **Additional Processing** section on the **Settings for Use in AP** tab.
    -   Configure printing of checks or other documents that confirm payment, by selecting the **Print Checks** option in the **Additional Processing** section on the **Settings for Use in AP** tab and specifying additional parameters in the **Check Printing Settings** section \(which appears on the right side of the tab\).
    -   Configure grouping of multiple payments into a batch that you will send to a money transfer operator, by selecting the **Create Batch Payments** option in the **Additional Processing** section on the **Settings for Use in AP** tab and specifying additional parameter in the **Export Settings** section \(which appears on the right side of the tab\).
5.  You activate the payment method—that is, select the **Active** check box.
6.  You save the new payment method.

All of these payment methods, which are configured to describe how your organization pays vendors, are available for use at once with any vendor account.

## Cash {#section_q2b_kjv_vxb .section}

To record outgoing payments made with cash, you develop a payment method and base it on the *Cash/Check* means of payment. You associate the payment method with general cash accounts and petty cash accounts.

You can enable automatic numbering of outgoing payments for this payment method and configure the printing of documents that confirm payment if you provide any.

## Check {#section_t2b_kjv_vxb .section}

To record outgoing payments made with checks, you develop a payment method and base it on the *Cash/Check* means of payment. You associate the payment method with bank cash accounts.

You can configure automatic numbering and printing of outgoing checks for this payment method. You can specify how checks are printed and which report is to be used as a template.

## Corporate Credit or Debit Card {#section_w2b_kjv_vxb .section}

To record outgoing payments made with a corporate credit or debit card, you develop a payment method and associate the payment method with bank cash accounts, which provide the funds for outgoing payments. This payment method should be based on the *Cash/Check* means of payment because the *Credit Card* means of payment is designed to be used for configuring payment methods used in Accounts Receivable.

Payments that are made with a corporate credit or debit card usually are not numbered. Thus, on the [Payment Methods](CA_20_40_00.md) \(CA204000\) form, make sure that the **Require Unique Payment Ref.** check box on the **Settings for Use in AP** tab is cleared \(the check box is displayed if the **Not Required** option is selected in the **Additional Processing** section\).

If you want to provide some document that confirms payment \(for example, a remittance advice\), you can configure the printing of such a document, but in this case you have to specify for each document a unique payment reference number because selecting the **Print Checks** option in the **Additional Processing** section makes the **Require Unique Payment Ref.** check box selected by default and unavailable.

## Wire Transfer {#section_afb_kjv_vxb .section}

To record outgoing payments made by wire transfer, you develop a payment method and base it on the *Cash/Check* means of payment. You associate the payment method with bank cash accounts, which provide funds for outgoing payments.

You can configure automatic numbering of the payments according to the numbering sequence used by the money transfer operator, and you can configure printing of documents that confirm payment.

If the money transfer operator does not provide a reference number for the payments, you can clear the **Require Unique Payment Ref.** check box on the **Settings for Use in AP** tab \(the check box is displayed if the **Not Required** option is selected in the **Additional Processing** section\) and create payments without reference numbers.

## Batch Payments {#section_efb_kjv_vxb .section}

You can configure a payment method that you can use to group multiple payments into a batch and send this batch to a money transfer operator. Acumatica ERP provides you with a ready-for-use scenario for generating batches to be processed by an Automated Clearing House \(ACH\) operator. For details, see [Setup of ACH Payment Processing](CA__CON_Setup_ACH_Payments.md).

## Payment Reference Numbers and Their Automatic Generation {#section_gfb_kjv_vxb .section}

Usually documents that confirm payment, especially checks, are assigned unique payment reference numbers. In Acumatica ERP, you can specify whether specifying a unique payment reference number for outgoing payments is required by using the **Require Unique Payment Ref.** check box that is displayed if the **Not Required** option is selected in the **Additional Processing** section on the **Settings for Use in AP** tab of the [Payment Methods](CA_20_40_00.md) \(CA204000\) form. If you select this check box for a payment method, you will have to specify a unique payment reference number for each payment made with this payment method.

**Attention:** If you select the **Print Checks** or the **Create Batch Payments** option in the **Additional Processing** section, the **Require Unique Payment Ref.** check box becomes selected and unavailable.

You can enable automatic generation of a payment reference number for documents recorded to a particular cash account with any payment method used in the Accounts Payable module. You enable automatic numbering and specify the numbering rule for each cash account by using the **AP - Suggest Next Number** and the **AP Last Reference Number** columns on the **Allowed Cash Accounts** tab of the [Payment Methods](CA_20_40_00.md) form. The generated number automatically appears in the **Payment Ref.** box on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form when a user creates a new document and selects the cash account and the payment method for which the automatic numbering is configured.

Regardless of whether you enable automatic numbering, the user can manually specify a payment reference number. If you have configured the payment method so that documents must be printed, the system will require the user to enter a unique payment reference number in the **Next Check Number** box on the [Process Payments / Print Checks](AP_50_50_00.md) \(AP505000\) form before printing the document.

If printing is not required for documents that confirm payment, the user can manually specify the payment reference number in the **Payment Ref.** box on the [Checks and Payments](AP_30_20_00.md) form. In this case, the system requires and validates the uniqueness of each payment reference number only if the **Require Unique Payment Ref.** check box is selected for the payment method used.

## Documents That Confirm Payment and Their Printing {#section_mfb_kjv_vxb .section}

With Acumatica ERP, you can configure the payment method to require the printing of documents that confirm payment \(in particular, checks\). If you want to require the printing of checks, on the [Payment Methods](CA_20_40_00.md) \(CA204000\) form, you select the **Print Checks** option button in the **Additional Processing** section on the **Settings for Use in AP** tab and specify the appropriate settings in the **Check Printing Settings** section of the tab.

**Attention:** If **Print Checks** is selected, the system requires a unique payment reference number for payments to be printed because the **Require Unique Payment Ref.** check box is selected and cannot be modified.

The system provides two reports that you can use as templates for printing checks; specify one of these in the **Remittance Report** box on the **Settings for Use in AP** tab:

-   [Check Form](AP_64_05_00.md) \(AP640500\): A check is printed without the remittance information \(stub\).
-   [Check Form with Remittance](AP_64_10_00.md) \(AP641000\): A check is printed with the remittance information. The maximum number of lines to be included in the stub is defined by the **Lines per Stub** setting \(also in the **Check Printing Settings** section\). If the number of lines exceeds this value, the remaining lines are to be printed on the stub of the next check papers, which are marked with the VOID line.

To avoid wasting check papers and numbers because you exceed the number of lines, you can configure the printing of remittance information on a separate paper by selecting the **Print Remittance Report** check box \(also in the **Check Printing Settings** section of the [Payment Methods](CA_20_40_00.md) form\) and specifying the [Additional Remittance Form](AP_64_20_00.md) \(AP642000\) report as the template. With this configuration, the system will print the allowed number of lines on the check and also print all the lines on a separate paper.

If more than 10 bills are being paid, only 10 of them are printed on the check itself; the remaining bills don't fit on the check blank. The additional remittance report lists all the bills being paid, and the words *Continued. See remittance for details.* inform users that not all bills are printed on the check blank.

Thus, the **Payment Ref.** box in the Summary area of the [Checks and Payments](AP_30_20_00.md) form shows the number of the check used for paying all the bills. The number in the **Check Number** column reflects the number of the check blank on which a particular bill was printed. If a bill was not printed on any check blank, the **Check Number** column is empty; nevertheless, the bill was paid with the check whose number is shown in the **Payment Ref.** box. If, instead of using an additional remittance report, users print the bills being paid on voided checks, the numbers of these voided checks are shown in the **Check Number** column.

All three templates used for printing checks can be adjusted to correspond to the format of checks used by your organization. For details on modifying the reports, see the [Acumatica Report Designer Guide](ReportDesigner_Main.md). Also, you can create templates for printing any kind of document that confirms payment with the help of Report Designer.

**Parent topic:**[Managing Payment Methods](../UserGuide/CA__MNG_PaymentMethods.md)

