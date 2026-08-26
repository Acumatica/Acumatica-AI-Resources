# Generic Inquiry as a Substitute Form: To Configure an Inquiry as an Entry Point {#_b8acf4fb-fbf5-408a-b92c-6658267a5f57 .task}

In this activity, you will learn how to modify an existing generic inquiry to make it a substitute form for a primary data entry form. Once you have done this, when a user clicks the name of the entry form in a workspace or a list of search results, the system will open the substitute form. If the user clicks a record name in the inquiry results, the entry form will open.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are a technical specialist in your company who is working on simple customizations, including those involving the creation, modification, and use of generic inquiries. An accountant of your company has asked you to replace the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form with a generic inquiry. You have offered the predefined Invoices and Memos \(AR3010PL\) generic inquiry form; this form is the substitute form for the [Invoices and Memos](AR_30_10_00.md) form by default. The accountant said that this inquiry form generally provides the needed functionality, but that the new form should also give users the abilities to view the total tax amount and to create a new document directly on the inquiry form.

## Configuration Overview {#section_dzm_1dz_jrb .section}

You will work with a copy of the predefined Invoices and Memos \(AR3010PL\) generic inquiry form, which has the *AR-Invoices and Memos* inquiry title and the *Invoices and Memos* site map title specified on the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form.

The copy you will work with has the *DB8-ARInvoicesMemos* inquiry title and the *S130 Invoices and Memos* site map title specified on the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form.

## Process Overview { .section}

On the **Entry Point** tab of the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form, you will specify the requested generic inquiry as a substitute form for the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, and enable the creation of new records and deletion of multiple records.

## System Preparation {#section_c54_dpr_jrb .section}

Launch the Acumatica ERP website, and sign in to a tenant with the *U100* dataset preloaded as system administrator Kimberly Gibbs. You should sign in by using the *gibbs* username and the *123* password.

**Tip:** The *gibbs* user is assigned the *Administrator* role, which has sufficient access rights to manage the system configuration and to modify generic inquiries, advanced filters, pivot tables, and dashboards.

## Step: Defining the Generic Inquiry as an Entry Point { .section}

To modify the generic inquiry to replace the primary form, do the following:

1.  Open the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form.
2.  In the **Inquiry Title** box of the Summary area, select *DB8-ARInvoicesMemos*.
3.  In the **Site Map Title** box, type `Invoices and Memos (Substitution)`.
4.  On the **Results Grid** tab, add a row with the following settings:

    -   **Object**: *ARInvoice*
    -   **Data Field**: *TaxTotal*
    -   **Caption**: `Total Tax`
    **Tip:** If some columns mentioned in the activity aren’t available in the table, make them visible by using the Column Configuration dialog box.

5.  On the form toolbar, click **Save**.
6.  On the **Entry Point** tab, in the **Entry Screen Settings** section, do the following:
    1.  Make sure that in the **Entry Screen** box, the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form is selected.
    2.  To replace the selected entry form with the substitute form \(that is, to direct the system to display the generic inquiry form instead of the entry form when a user clicks the menu item\), select the **Replace Entry Screen with This Inquiry in Menu** check box.
    3.  In the dialog box that opens, click **Yes**.
7.  In the **Operations With Records** section, ensure the **Enable New Record Creation** check box is selected. This gives a user the ability to add new records from the substitute form. With this check box selected, the **New Record** button appears on the form toolbar of the substitute form \(that is, the inquiry form\). When the user clicks this button, the system opens the entry form so that the user can add a new record.
8.  On the form toolbar, click **Save**.
9.  On the **Navigation** tab, review the navigation settings, which have been added automatically, and notice that the **Window Mode** is set to *Inline* and unavailable for editing. This means that the substitute form opens in the same browser tab when a user is adding a new record or viewing the details of an existing record.
10. Click the eye icon on the side panel to preview how your changes have affected the inquiry. The system has added to the form toolbar the action you have enabled \(that is, the **New Record** button\). If you double-click a row in the table, the system opens the [Invoices and Memos](AR_30_10_00.md) form with the details of the selected record.
11. Search for the [Invoices and Memos](AR_30_10_00.md) form by its name, *Invoices and Memos*, and notice that the search results do not contain the name of the form. Then search for the form by its identifier, *AR301000*, and notice that when you click the resulting form, the system opens the inquiry form that is configured as the substitute form.

**Parent topic:**[Making a Generic Inquiry a Substitute Form](../UserGuide/GI_Gi_as_Entry_Point_Mapref.md)

