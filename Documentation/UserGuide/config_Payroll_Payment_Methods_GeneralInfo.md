# Payment Methods: General Information {#_c8fb2834-40c3-40c8-8040-5e70aa2231e4 .concept}

Acumatica ERP has predefined payment methods that you can adjust to the business needs of an organization, or you can define new payment methods. The settings of the payment methods describe how the particular payment is done and provide the default cash account to be used to record payments.

A payroll employee may receive either a printed paycheck or a direct deposit. The payment methods used for the generation of employee paychecks and the cash accounts for each of those payment methods must be set up for use in payroll.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Set up predefined payment methods and cash accounts for use in payroll
-   Define a direct deposit payment method

## Applicable Scenarios { .section}

You set up the payment methods and related cash accounts to be used in payroll so that you can generate paychecks and your employees can receive their payments.

## Payment Method Setup { .section}

You use the [Payment Methods](CA_20_40_00.md) \(CA204000\) form to make a payment method available for use in payroll. On this form, you need to select the necessary payment method and perform the following steps:

-   In the Summary area, select the **Use in PR** check box.
-   On the **Allowed Cash Accounts** tab, select the **Use in PR** check box for the cash accounts that you want to mark as available for use in payroll.
-   On the same tab, make sure that the **AP/PR Default** check box is selected for the cash account that will be used as default for this payment method when it is used in payroll.

For the payment method that is marked for use in payroll, the **Settings for Use in PR** tab appears on the [Payment Methods](CA_20_40_00.md) form. On this tab, you can specify the following settings:

-   If the payment method involves printed paychecks, you select the **Print Checks** option box in the **Processing** section and selects a report to be used for printing paychecks in the **Report** box \(the **Print Settings** section\) by doing one of the following:
    -   Selecting the *Paychecks \(PR641010\)* in the **Report** box.
    -   Selecting the **Use Detailed Pay Stub Report** check box \(the **Report Settings** section\), The system automatically selects the *Detailed Paychecks \(PR642000\)* report in the **Report** box.

        **Tip:** When you clear the **Use Detailed Pay Stub Report** check box, the system selects the *Paychecks* report in the **Report** box.

-   If the payment method involves direct deposit payments, you select the **Create Batch Payments** option box in the **Processing** section and do one of the following:
    -   If the *US Payroll* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you select *Export PR Payment to ACH* or *Export PR Payment to ACH Balanced* \(depending on whether your bank requires that your ACH files include balance lines\) in the **Export Scenario** box.
    -   If the *Canadian Payroll* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form, you select *Export PR Payments to EFT* in the **Export Scenario** box.

**Parent topic:**[Setting Up Payment Methods](../UserGuide/config_Payroll_Payment_Methods_mapref.md)

