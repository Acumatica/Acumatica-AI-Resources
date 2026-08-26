# Payment Methods: To Define a Direct Deposit Payment Method {#_3dc79aac-1d35-4735-8ef3-0e1eb48be538 .task}

In the following implementation activity, you will learn how to define a direct deposit payment method.

## Story { .section}

Suppose that some of the organization's employees should receive direct deposits. Acting as the system administrator, you need to define a new payment method that will be used in payroll for direct deposit payments.

## Configuration Overview { .section}

In the *U100 Payroll* snapshot, for the purposes of this activity, the *10200WH* cash account has been created on the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form.

## Process Overview { .section}

You define a new payment method on the [Payment Methods](CA_20_40_00.md) \(CA204000\) form.

## System Preparation { .section}

Before you start defining a new payment method, you should launch the Acumatica ERP website and sign in as a system administrator by using the following credentials:

-   Username: *gibbs*
-   Password: *123*

As a prerequisite activity, in the company to which you are signed in, be sure you have completed the [Payment Methods: To Set Up a Payment Method for Use in Payroll](Payroll_Payment_Methods_Implem_Activity.md).

As a prerequisite activity, in the company to which you are signed in, be sure you have performed the activities in the preceding lessons of this part of the course.

## Step 1: Defining a Direct Deposit Payment Method { .section}

To define a direct deposit payment method, do the following:

1.  On the [Payment Methods](CA_20_40_00.md) \(CA204000\) form, click **New Record** on the form toolbar.
2.  In the Summary area, specify the following information:
    -   **Payment Method ID**: `DIRDEPOSIT`
    -   **Active**: Selected
    -   **Means of Payment**: *Direct Deposit*
    -   **Description**: `Direct deposits`
    -   **Use in AP**: Cleared
    -   **Use in AR**: Cleared
    -   **Use in PR**: Selected
    -   **Require Remittance Information for Cash Account**: Selected
3.  On the **Allowed Cash Accounts** tab, add a row and specify the following settings in the added row:
    -   **Cash Account**: *10200WH*
    -   **Use in PR**: Selected
    -   **AP/PR Default**: Selected
4.  On the **Settings for Use in PR** tab, specify the following settings:
    1.  **Create Batch Payments**: Selected
    2.  **Export Scenario**: *Export PR Payment to ACH*
5.  On the **Remittance Settings** tab, insert rows with the information from the following table.

    **Tip:** The regular expressions in the **Validation Reg. Exp.** column must contain no spaces.

    |ID|Description|Required|Entry Mask|Validation Reg. Exp.|
    |---|-----------|--------|----------|--------------------|
    |`1`|`Beneficiary Account No:`|Selected| |`^\d{1,17}$`|
    |`2`|`Beneficiary Name:`|Selected| |`^([\w]|\s){0,22}$`|
    |`3`|`Bank Routing Number (ABA):`|Selected|`000000000`|`^\d{9,9}$`|
    |`4`|`Bank Name:`|Selected| |`^([\w]|\s){0,22}$`|
    |`5`|`Company ID`|Selected| |`^([\w]|\s){0,9}$`|
    |`6`|`Company ID Type`|Selected|`0`|`^\d{1,1}$`|

6.  On the form toolbar, click **Save**.

## Step 2: Updating Remittance Settings of the Cash Account { .section}

To enable a cash account for use in the payroll functional area, do the following:

1.  On the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form, open the *10200WH* cash account.
2.  On the **Remittance Settings** tab, for the *DIRDEPOSIT* payment method, specify the following information in the **Remittance Details** table:
    -   *Beneficiary Account No*: `1234567890`
    -   *Beneficiary Name*: `SweetLife`
    -   *Bank Routing Number \(ABA\)*: `026009593`
    -   *Bank Name*: `Bank of America`
    -   *Company ID*: `SweetLife`
    -   *Company ID Type*: `1`
3.  On the form toolbar, click **Save**.

**Parent topic:**[Setting Up Payment Methods](../UserGuide/config_Payroll_Payment_Methods_mapref.md)

