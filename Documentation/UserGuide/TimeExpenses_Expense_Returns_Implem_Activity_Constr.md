# Expense Returns with Corporate Cards: To Configure a Corporate Card {#_6293f77b-5c56-4171-a9c5-11c81ef5947c .task}

This activity will walk you through the process of creating the necessary entities for the processing of expenses for construction projects with corporate credit cards.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the employees of the ToadGreen company can use a corporate credit card for charging their business expenses. Acting as a system administrator, you need to prepare the system for payments by corporate credit card, and give Ellen Watson the ability to pay project-related expenses in this way.

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Expense Management* feature has been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   On the [Entry Types](CA_20_30_00.md#) \(CA203000\) form, the *BANKFEE* entry type has been added.
-   On the [Employees](EP_20_30_00.md#) \(EP203000\) form, the *EP00000033 \(Ellen Watson\)* account has been created.

## Process Overview { .section}

You will first create a GL account to be used for the credit card payments on the [Chart of Accounts](GL_20_25_00.md#) \(GL202500\) form, and create the corresponding cash account on the [Cash Accounts](CA_20_20_00.md#) \(CA202000\) form. You will then create a payment method for the card on the [Payment Methods](CA_20_40_00.md#) \(CA204000\) form. Finally, you will create a corporate credit card on the [Corporate Cards](CA_20_25_00.md#) \(CA202500\) form.

## System Preparation { .section}

Launch the Acumatica ERP website, and sign in as an administrator by using the *gibbs* username and the *123* password.

## Step 1: Creating a GL Account for a Corporate Card { .section}

Create a GL account as follows:

1.  Open the [Chart of Accounts](GL_20_25_00.md#) \(GL202500\) form, and on the form toolbar, click **Add Row**.
2.  In the new line, create an account with the following settings:
    -   **Account**: `29000`
    -   **Account Class**: *OTHCURLIAB*
    -   **Type**: *Liability*
    -   **Description**: `Corporate Credit Card`
    -   **Post Option**: *Detail*
3.  On the form toolbar, click **Save**.

## Step 2: Creating a Payment Method { .section}

To create a payment method for the corporate credit card, do the following:

1.  Open the [Payment Methods](CA_20_40_00.md#) \(CA204000\) form, and click **Add New Record**.
2.  In the **Payment Method ID** box of the Summary area, type `CORPCC`.
3.  In the **Means of Payment** box, select *Credit Card*.
4.  In the **Description** box, type `Corporate card payment method`.
5.  Make sure the **Use in AP** check box is selected.
6.  Clear the **Use in AR** check box \(because this payment method will not be used for customer payments\).
7.  Clear the **Require Remittance Information for Cash Account** check box \(because remittance information is not required for this payment method\).
8.  On the **Settings for Use in AP** tab, specify the following settings:
    -   **Not Required** \(under **Additional Processing**\): Selected

        With this option button selected, payment documents created with this payment method do not require additional processing, such as printing checks.

    -   **Require Unique Payment Ref.**: Cleared

        This indicates that the unique payment reference number is not required for each payment document created with this payment method.

9.  Save the payment method.

## Step 3: Creating a Cash Account { .section}

Create a cash account as follows:

1.  On the [Cash Accounts](CA_20_20_00.md#) \(CA202000\) form, click **Add New Record**.
2.  In the Summary area, in the **Cash Account** box, type `29000`, and specify the following settings:
    -   **Account**: *29000 - Corporate Credit Card*
    -   **Branch**: *TBGROUP*
    -   **Requires Reconciliation**: Selected
    -   **Restrict Visibility with Branch**: Cleared
    -   **Use for Corporate Cards**: Selected
    -   **Reconciliation Numbering Sequence**: *CARECON*
3.  On the **Payment Methods** tab, click **Add Row**, and in the **Payment Method** column, select *CORPCC*.
4.  On the **Entry Types** tab, click **Add Row**, and in the **Entry Type ID** column, select *BANKFEE*.
5.  Save the created cash account.

## Step 4: Creating the Corporate Credit Card { .section}

To create the corporate credit card, do the following:

1.  On the [Corporate Cards](CA_20_25_00.md#) \(CA202500\) form, click **Add New Record**.
2.  In the **Branch** box, select *TBGROUP*.
3.  In the **Name** box of the Summary area, type `USD Corporate Card`ToadGreen.
4.  In the **Card Number** box, type the following card number: `7891`.
5.  In the **Cash Account** box, select *29000 - Corporate Credit Card.*
6.  On the table toolbar, click **Add Row**, and select *EP00000033 \(Ellen Watson\)* in the **Employee ID** column.
7.  On the form toolbar, click **Save**.

You have configured the needed entities to give an employee the ability to pay by using a corporate credit card.

**Parent topic:**[Processing Expense Returns to Corporate Cards](../UserGuide/TimeExpenses_Expense_Returns_Mapref.md)

