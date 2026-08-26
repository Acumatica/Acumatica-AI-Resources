# Corporate Cards: To Configure a Corporate Card {#_6293f77b-5c56-4171-a9c5-11c81ef5941c .task}

This activity will walk you through the process of creating the necessary entities for processing of expense receipts with corporate credit cards.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that Jon Waite and Alberto Jimenez—employees of the SweetLife Fruits &amp; Jams company—can use a corporate credit card for charging their business expenses. Acting as an implementation manager of SweetLife, you need to create an account, payment method, and cash account for company corporate cards, as well as to create the corporate card itself in the system.

**Attention:** This activity explains how to configure a corporate card if the *Expense Management* feature is included in your license. If the feature is not available, configure the card issuer as a vendor, as described in [Corporate Cards: To Configure a Vendor for a Corporate Card](Corporate_Card_Implem_Activity_CardIssuer.md).

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   The *Expense Management* feature has been enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.
-   On the [Entry Types](../UserGuide/CA_20_30_00.md) \(CA203000\) form, the *BANKFEE* entry type has been added.
-   On the [Employees](../UserGuide/EP_20_30_00.md) \(EP203000\) form, the accounts for Jon Waite and Alberto Jimenez have been created.

## Process Overview { .section}

To create a corporate card, you will first create a GL account on the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form. You will create a payment method for the card on the [Payment Methods](../UserGuide/CA_20_40_00.md) \(CA204000\) form. You will specify the GL account and payment method for a cash account, which you will create on the [Cash Accounts](../UserGuide/CA_20_20_00.md) \(CA202000\) form. Finally, you will create a corporate credit card on the [Corporate Cards](../UserGuide/CA_20_25_00.md) \(CA202500\) form.

## System Preparation { .section}

To prepare to perform the instructions of the activity, launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded as an implementation manager by using the *gibbs* username and the *123* password.

## Step 1: Creating a GL Account for a Corporate Card { .section}

Create a GL account as follows:

1.  Open the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, and on the form toolbar, click **Add Row**.
2.  In the new line, create an account with the following settings:
    -   **Account**: `29000`
    -   **Account Class**: *OTHCURLIAB*
    -   **Type**: *Liability*
    -   **Description**: `Corporate Credit Card`
    -   **Post Option**: *Detail*
3.  Save your changes.

## Step 2: Creating a Payment Method { .section}

To create a payment method for the corporate credit card, do the following:

1.  On the [Payment Methods](../UserGuide/CA_20_40_00.md) \(CA204000\) form, add a new record.
2.  In the **Payment Method ID** box of the Summary area, type `CORPCC`.
3.  In the Summary area, specify the following settings:
    -   **Means of Payment**: *Credit Card*
    -   **Description**: `Corporate card payment method`
    -   **Use in AP**: Selected
    -   **Use in AR**: Cleared

        This payment method isn’t going to be used for customer payments.

    -   **Require Remittance Information for Cash Account**: Cleared

        Remittance information isn’t required by this payment method for the related cash accounts.

4.  On the **Settings for Use in AP** tab, clear the **Require Unique Payment Ref.** check box in the **Payment Settings** section so that a unique payment reference number isn’t required for each payment document created with this payment method.

    Make sure that **Not Required** is selected in the **Additional Processing** section. Payment documents created with this payment method don’t require additional processing, such as printing checks.

5.  Save the payment method.

## Step 3: Creating a Cash Account { .section}

Create a cash account as follows:

1.  On the [Cash Accounts](../UserGuide/CA_20_20_00.md) \(CA202000\) form, add a new record.
2.  In the **Cash Account** box of the Summary area, type `29000`, and specify the following settings:
    -   **Account**: *29000 - Corporate Credit Card*
    -   **Branch**: *SWEETEQUIP*
    -   **Requires Reconciliation**: Selected
    -   **Restrict Visibility with Branch**: Cleared
    -   **Use for Corporate Cards**: Selected
    -   **Reconciliation Numbering Sequence**: *CARECON - CA Reconciliation*
3.  On the **Payment Methods** tab, on the table toolbar, click **Add Row**, and in the **Payment Method** column, select *CORPCC*.
4.  On the **Entry Types** tab, on the table toolbar, click **Add Row**, and in the **Entry Type ID** column, select *BANKFEE*.
5.  Save the created cash account.

## Step 4: Creating the Corporate Credit Card { .section}

To create the corporate credit card, do the following:

1.  On the [Corporate Cards](../UserGuide/CA_20_25_00.md) \(CA202500\) form, add a new record.
2.  In the Summary area, specify the following settings:
    -   **Branch**: *SWEETEQUIP*
    -   **Name**: `USD Corporate Card`
    -   **Card Number**: `7890`
    -   **Cash Account**: *29000 - Corporate Credit Card*
3.  On the table toolbar, click **Add Row**, and in the **Employee ID** column, select *EP00000003 - Jon Waite*.
4.  Add one more row and select *EP00000004 - Alberto Jimenez* in the **Employee ID** column.
5.  Save the created credit card.

You have configured a corporate credit card.

For instructions on how to process an expense receipt with this credit card, see [Expense Receipts with Corporate Cards: To Claim Expenses for a Project](../UserGuide/TimeExpenses_Expense_Receipts_Process_Activity.md).

**Parent topic:**[Corporate Cards](../ImplementationGuide/Corporate_Card_Mapref.md)

