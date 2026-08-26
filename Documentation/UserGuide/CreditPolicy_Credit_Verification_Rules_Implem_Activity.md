# Credit Verification Rules: Implementation Activity {#_529e5069-3f59-4c55-bfc4-e1bb7d850060 .task}

In the following implementation activity, you will learn how to set up credit verification rules for specific customers.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story {#section_z4c_hjv_vxb .section}

Suppose that SweetLife Fruits &amp; Jams has decided to start tracking credit limits and days past due for some of the customers. The *COFFEESHOP* customer has multiple unpaid documents and a large balance. This customer should be put on credit hold if the total balance of its open documents exceeds $2,000. For this customer, the *Credit Limit* verification rule should be used.

The *GOODFOOD* customer sometimes fails to pay the documents in time, so the *Days Past Due* verification rule should be used for this customer. Acting as Yona Jones, an accountant in charge of the Credit Control team, you need to set up the credit verification rules for these customers.

## Process Overview {#section_cpc_hjv_vxb .section}

In this activity, on the [Customers](AR_30_30_00.md) \(AR303000\) form, you will set up credit verification rules for the *COFFEESHOP* and *GOODFOOD* customers. On the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, you will review the accounts receivable preferences settings and make sure that the **Hold Document on Failed Credit Check** check box is selected.

## System Preparation {#section_epc_hjv_vxb .section}

Before you start setting up credit verification rules, launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as an accountant with the *jones* username and the *123* password.

## Step 1: Setting Up Credit Verification Rules {#section_gpc_hjv_vxb .section}

To set up credit verification rules for specific customers, do the following:

1.  On the [Customers](AR_30_30_00.md) \(AR303000\) form, open the *COFFEESHOP* customer.
2.  On the **Financial** tab \(**Credit Verification Rules** section\), specify the following settings:

    -   **Credit Verification**: *Credit Limit*
    -   **Credit Limit**: `2000`
    The specified credit limit means that the maximum total balance of open documents of the customer in the system should not exceed the credit limit \($2,000\). The **Available Credit** box shows the difference between the limit, the open order balance, and the customer balance displayed on the form, which in this case is *–6066.30*.

3.  On the form toolbar, click **Save** to save the changes.
4.  In the **Customer ID** box, select *GOODFOOD*.
5.  On the **Financial** tab, specify the following settings:
    -   **Credit Verification**: *Days Past Due*
    -   **Credit Days Past Due**: `15`
6.  On the form toolbar, click **Save** to save the changes.

## Step 2: Reviewing the Accounts Receivable Preferences {#section_jpc_hjv_vxb .section}

To review the accounts receivable preferences, do the following:

1.  Open the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form.
2.  On the **General** tab, make sure that the **Hold Document on Failed Credit Check** check box is selected.

    Because this check box is selected, users will not be able to release documents for the customers who failed credit check.


**Parent topic:**[Configuring Credit Verification Rules](../UserGuide/CreditPolicy_Credit_Verification_Rules_Mapref.md)

