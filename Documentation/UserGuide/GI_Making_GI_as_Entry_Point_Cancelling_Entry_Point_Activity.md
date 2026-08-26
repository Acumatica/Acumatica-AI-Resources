# Generic Inquiry as a Substitute Form: To Suspend the Replacement of a Primary Form {#_0aa4a6f5-9ad0-4775-bef8-aea6c9642f85 .task}

In this activity, you will learn how to suspend the replacement of a primary form with a substitute form. Once you have done this, when a user clicks the name of the entry form in a workspace or a list of search results, the system will open the entry form instead of the substitute form it currently opens.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are a technical specialist in your company who is working on customizations. Previously, you configured Acumatica ERP in your company so that the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form is replaced with the predefined Invoices and Memos \(AR3010PL\) generic inquiry form, which has the *AR-Invoices and Memos* inquiry title and the *Invoices and Memos* site map title specified on the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form. Now an accountant of your company has asked you to make changes to the generic inquiry that is defined as a substitute form. Before you begin making these changes, you need to suspend the replacement of the primary form, so that the generic inquiry form is not opened while you are in the process of making changes to it.

**Tip:** The Invoices and Memos \(AR3010PL\) generic inquiry form, which is the list of the invoices and memos that have been created on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, is the substitute form that is opened when you click the *Invoices and Memos* link in a workspace or a list of search results.

## Process Overview { .section}

On the [Lists as Entry Points](SM_20_85_00.md) \(SM208500\) form, you will clear the replacement for the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

## System Preparation { .section}

Launch the Acumatica ERP website, and sign in to a tenant with the *U100* dataset preloaded as system administrator Kimberly Gibbs. You should sign in by using the *gibbs* username and the *123* password.

**Tip:** The *gibbs* user is assigned the *Administrator* role, which has sufficient access rights to manage the system configuration and to modify generic inquiries, advanced filters, pivot tables, and dashboards.

## Step: Suspending the Replacement of an Entry Form { .section}

To suspend the replacement of the entry form, do the following:

1.  Open the [Lists as Entry Points](SM_20_85_00.md) \(SM208500\) form.
2.  In the table, locate the row with *AR301000 - Invoices and Memos* in the **Entry Screen ID** column, and clear the check box in the **Active** column for the row.
3.  On the form toolbar, click **Save**.
4.  Search for the [Invoices and Memos](AR_30_10_00.md) form by its name, *Invoices and Memos*, and notice that when you click the resulting form, the system opens the primary form instead of the generic inquiry.

**Parent topic:**[Making a Generic Inquiry a Substitute Form](../UserGuide/GI_Gi_as_Entry_Point_Mapref.md)

