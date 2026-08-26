# Combined Subaccounts: To Define a Subaccount Mask for AR Documents {#_0538f8a0-0e2e-4b84-afc5-b5d5e97a2fd8 .task}

In this activity, you will learn how to configure automatically combined subaccounts in accounts receivable documents. You do this by defining a subaccount mask in the accounts receivable preferences and by specifying subaccounts for the needed entities.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you need to configure the combined subaccounts to be used in customer documents, to speed up their processing. Acting as an administrator, you have to specify the subaccount mask that will be used for these documents, and then specify the sales subaccount for some of the source records. The first segment of the subaccount should be taken from the non-stock item selected in the document line. The second segment should be taken from the customer selected in the document.

## System Preparation { .section}

Before you start to specify a subaccount mask, in a tenant with the *U100* dataset preloaded, be sure subaccounts have been configured to be used in the system, as described in [Subaccounts: Implementation Activity](config_Subaccounts_Implem_Activity.md). This configuration involves enabling the appropriate feature to use subaccounts, defining the structure of subaccounts, and specifying the values for subaccount segments in the system.

## Step 1: Defining the Mask for Combined Subaccounts in AR Documents { .section}

To define the subaccount mask in the accounts receivable preferences, do the following:

1.  Sign in to the company you have prepared by using the *gibbs* username and the *123* password.
2.  Open the [Accounts Receivable Preferences](../UserGuide/AR_10_10_00.md) \(AR101000\) form.
3.  Click in the **Combine Sales Sub. From** box of the **General** tab \(**Data Entry Settings** section\), point at the first segment, and press F3.

    The lookup box opens with the possible options that can be selected.

4.  Select *III* for the first segment.

    This directs the system to take the first segment from a non-stock item.

5.  For the second segment, make sure *LLL* is selected.

    This directs the system to take the second segment of the combined subaccount from a customer account.

6.  Click **Save** on the form toolbar.

## Step 2: Specifying the Sales Subaccount for Non-Stock Items { .section}

For the *OFLCOURSE* and *ONLCOURSE* non-stock items, you will specify the sales subaccount, which the system will use to form the combined subaccount when that item is selected in a document. \(In a production system, you would specify the appropriate sales subaccount for all stock and non-stock items.\) To specify the sales subaccount for the non-stock items, do the following:

1.  Open the [Non-Stock Items](../UserGuide/IN_20_20_00.md) \(IN202000\) form.
2.  In the **Inventory ID** box of the Summary area, select *OFLCOURSE*.
3.  On the **GL Accounts** tab, in the **Sales Sub.** box, specify `NSS-000`.
4.  On the form toolbar, click **Save**.
5.  Repeat Instructions 2 through 4 for the *ONLCOURSE* non-stock item.

## Step 3: Specifying the Sales Subaccount for Customers { .section}

For the *COFFEESHOP*, *GOODFOOD*, and *HMBAKERY* customers, you will specify the sales subaccount, which the system will use to form the combined subaccount if the customer is selected in a document. \(In a production system, you would specify the appropriate sales subaccount for all customers.\) To specify the sales subaccount for customers, do the following:

1.  Open the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form.
2.  In the **Customer ID** box, select *COFFEESHOP*.
3.  On the **GL Accounts** tab, in the **Sales Sub.** box, specify `000-SLS`.
4.  On the form toolbar, click **Save**.
5.  Repeat Instructions 2 through 4 for the *GOODFOOD* and *HMBAKERY* customers.

**Parent topic:**[Automatically Combined Subaccounts](../ImplementationGuide/config_Combined_Subaccounts_Mapref.md)

