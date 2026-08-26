# Invoice with Combined Subaccounts: Process Activity {#_0ab18403-2547-4879-baf5-3a272123c683 .task}

The following activity will walk you through the process of creating and releasing an AR invoice that contains combined subaccounts.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story {#section_o5r_4jv_vxb .section}

Suppose that today the GoodFood One Restaurant purchased four hours of on-site training from SweetLife Fruits &amp; Jams and additional training materials that are not tracked in the system as non-stock items. Acting as the SweetLife accountant with the *pasic* user account, you need to create an AR invoice for the customer, release the invoice, and then review the balances of involved accounts broken down by subaccounts.

## Process Overview {#section_q5r_4jv_vxb .section}

In this activity, you will create an invoice for the purchase on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form. In the invoice, you will specify all relevant settings in the Summary area—including the customer and the credit terms. When the invoice is ready, you will release it by clicking **Release** on the form toolbar. You will then review the updated amounts of the accounts involved in the documents in the [Trial Balance Detailed](GL_63_25_00.md) \(GL632500\) report.

## System Preparation {#section_s5r_4jv_vxb .section}

Do the following to prepare the system for this activity:

1.  In a tenant with the *U100* dataset preloaded, configure the subaccounts to be used in the system, as described in [Subaccounts: Implementation Activity](../ImplementationGuide/config_Subaccounts_Implem_Activity.md). In this configuration, you enable the appropriate feature to use subaccounts, define the structure of subaccounts, and specify the values for subaccount segments in the system.
2.  In the same tenant, define the subaccount masks to be used in AR documents, as described in [Combined Subaccounts: To Define a Subaccount Mask for AR Documents](../ImplementationGuide/config_Combined_Subaccounts_Implem_Activity.md).
3.  Sign in to the tenant as an accountant by using the following credentials:
    -   Username: *pasic*
    -   Password: *123*
4.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to *1/30/2026*. If a different date is displayed, click the Business Date menu button and select *1/30/2026*. For simplicity, in this process activity, you will create and process all documents in the system on this business date.
5.  On the Company and Branch Selection menu, also on the top pane of the Acumatica ERP screen, make sure that the *SweetLife Head Office and Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu to view the list of branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.

## Step 1: Creating an AR Invoice {#section_u5r_4jv_vxb .section}

You will create an AR invoice to see how the combined subaccount functionality works. Do the following:

1.  Open the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.
2.  Click **Add New Record** on the form toolbar, and specify the following settings in the Summary area:
    -   **Type**: *Invoice*
    -   **Customer**: *GOODFOOD*
    -   **Terms**: *30D* \(inserted by default based on the selected customer\)
    -   **Date**: *1/30/2026* \(the current business date, which is inserted by default\)
    -   **Post Period**: *01-2026* \(inserted by default based on the selected date\)
    -   **Description**: `On-site training 4 hours`
3.  On the **Details** tab, click **Add Row**, and specify the following settings for the added row:

    -   **Branch**: *HEADOFFICE*
    -   **Inventory ID**: *OFLCOURSE*
    -   **Quantity**: `4`
    The system has calculated the extended price \(in the **Ext. Price**column\) for 4 hours of training based on the default price of *OFLCOURSE* \($180\). Notice that the system has inserted the *40000 - Sales Revenue* account in the **Account** column for the line, which is the sales account of the item.

    Also, notice that the system has inserted the *NSS-SLS* subaccount in the **Subaccount** column for this row. The system has composed this sales subaccount according to the subaccount mask specified on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, which is *III-LLL*. The first segment of the combined subaccount was taken from the non-stock item of the line \(as indicated by *III* in the mask\), and the second segment was taken from the customer account of the invoice \(as indicated by *LLL* in the mask\).

4.  On the **Details** tab, click **Add Row** again, and specify the following settings for the added row:

    -   **Branch**: *HEADOFFICE*
    -   **Transaction Description**: `Additional training materials`
    -   **Ext. Price**: `50`
    Notice the *000-SLS* subaccount inserted in the **Subaccount** column for this row. Because no item has been specified for this line, the system inserted *000* as the first segment of the combined subaccount. The second segment was copied from the customer account.

5.  On the form toolbar, click **Save**.

## Step 2: Releasing the AR Invoice {#section_z5r_4jv_vxb .section}

To release the invoice, do the following:

1.  While you are still viewing the invoice on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, click **Remove Hold** on the form toolbar.
2.  On the form toolbar, click **Release** to release the invoice.

    The system changes the status of the invoice to *Open*.


## Step 3: Reviewing the Sales Account in the Trial Balance Report {#section_cvr_4jv_vxb .section}

To review the balance of the *40000* account and check the amounts the system tracked for each subaccount, do the following:

1.  Open the [Trial Balance Detailed](GL_63_25_00.md) \(GL632500\) form.
2.  Make sure the following settings are specified:
    -   **Company/Branch**: *HEADOFFICE*
    -   **Ledger**: *Actual*
    -   **Financial Period**: *01-2026*
3.  On the form toolbar, click **Run Report**.
4.  In the generated report, review the balances of the *40000* account. Notice the amount in the **Credit** column for the *000-SLS* and *NSS-SLS* subaccounts of this account \($50 and $180, respectively\).

**Parent topic:**[Processing an Invoice with Combined Subaccounts](../UserGuide/Finance_Invoice_with_Combined_Subs_Mapref.md)

