# Payment Methods: Direct Deposits {#_e30af141-152b-4829-9262-bfd57cd860b5 .concept}

Direct deposit payments involve the direct transfer of funds from the company payroll account to the personal savings or checking accounts of its employees.

To be able to use direct deposit payments in Acumatica ERP, you need to define a direct deposit payment method first. You do this by using the [Payment Methods](CA_20_40_00.md) \(CA204000\) form as follows:

1.  In the Summary area, you specify the identifier, the means of payment \(*Credit Card*, *Cash/Check*, or *Direct Deposit*\), and the description of the payment method.

    **Note:** The selected means of payment will not have any effect on how the system will process direct deposit payments; you use this setting only for the informational purpose.

2.  In the Summary area, you select the **Use in PR** check box because you want to use direct deposits in payroll, and then you select the **Require Remittance Information for Cash Account** check box because remittance information is used for ACH payments.
3.  On the **Allowed Cash Accounts** tab, you add rows for each of the cash accounts to be linked to this payment method, and you select the **Use in PR** check box for each cash account.
4.  On the **Settings for Use in PR** tab, you select the **Create Batch Payments** check box, and then you do one of the following:
    -   If the *US Payroll* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you select *Export PR Payment to ACH* or *Export PR Payment to ACH Balanced* \(depending on whether your bank requires that your ACH files include balance lines\) in the **Export Scenario** box.
    -   If the *Canadian Payroll* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form, you select *Export PR Payments to EFT* in the **Export Scenario** box.
5.  On the **Remittance Settings** tab, add remittance information, as described in [To Add a Payment Method for ACH Payments \(Export Scenarios\)](CA__HOW_Add_PM_for_ACH.md). This information will appear on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form so you can enter the company's ACH credentials for the relevant cash account.

    For the configuration of remittance settings for Canadian payroll, see [Settings of the EFT Export Scenario for Canadian Payroll](CA__CON_Settings_of_CanadianEFT_Export_Scenario_PR.md).

6.  In the Summary area, you make sure that the **Active** check box is selected so that the payment method can be used.

An employee will receive direct deposit payments if you specify proper settings on the **Payment** tab of the [Employee Payroll Settings](PR_20_30_00.md) \(PR203000\) form, such as the following:

1.  In the Selection area, specify the direct deposit payment method that you previously created and a cash account.
2.  In the **Direct Deposit** table, you specify each bank account that receives direct deposit amounts for the employee. In each line, you specify the following settings:

    -   The employee’s bank account number to receive the direct deposit
    -   The type of the account, which can be either *Checking* or *Savings*
    -   The employee’s bank name and bank routing number for the account
    -   The amount or percentage of the net paycheck to be directly deposited to the account
    -   The order in which the payment is to be processed, which is important if fixed amounts are specified for multiple bank accounts for the employee and the net pay is not sufficient to cover all amounts
    -   An indication of whether the account is to receive any remainder amount, based on rounding or insufficient or variable amounts. You must mark at least one active account in the table as receiving the remainder amounts.
    **Note:**

    For each line with an account, there will be a line in the employee’s pay stub, direct deposit notification, and ACH file.

    If no active direct deposit details are specified in the **Direct Deposit** table, the employee should receive a printed paycheck; an employee receives either a printed paycheck or a direct deposit, but not both.


For an example of the employee payment setup, see [Employee Payroll Settings: Implementation Activity](Payroll_Employee_Settings_Implem_Activity.md).

**Parent topic:**[Setting Up Payment Methods](../UserGuide/config_Payroll_Payment_Methods_mapref.md)

