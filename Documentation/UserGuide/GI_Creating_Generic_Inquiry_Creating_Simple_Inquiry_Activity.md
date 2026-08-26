# Creation of a Generic Inquiry: To Create an Inquiry Based on One DAC {#_4b966d58-7aac-4b80-b529-6cfb0f1025ac .task}

In this activity, you will learn how to create a simple generic inquiry that collects data from one data access class \(DAC\). The activity describes the steps of designing a sample generic inquiry for testing purposes, so that you can develop a better understanding of the process.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are a technical specialist in your company who is working on simple customizations, including the creation and modification of generic inquiry forms. An accountant of your company has requested an inquiry form that collects data about invoices and memos. You have offered the predefined Invoices and Memos \(AR3010PL\) generic inquiry form, but the accountant instead wants a simpler inquiry that displays columns with the document type, the reference number, and the balance of the invoice with that number. The accountant has asked you to maintain the default access rights to the inquiry.

## Process Overview { .section}

The generic inquiry that you are going to create will have three columns to display the invoice reference number, the balance, and the document type. Thus, you will start by inspecting the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form to explore which data access classes \(DACs\) you can use to access the needed data.

Once you obtain these details, you will create a generic inquiry on the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form and configure its results grid.

When the inquiry has been created and all the necessary settings have been specified, you will preview and then publish the inquiry.

## System Preparation { .section}

Launch the Acumatica ERP website, and sign in to a tenant with the *U100* dataset preloaded as system administrator Kimberly Gibbs. You should sign in by using the *gibbs* username and the *123* password.

**Tip:** The *gibbs* user is assigned the *Administrator* role, which has sufficient access rights to manage the system configuration and to modify generic inquiries, advanced filters, pivot tables, and dashboards.

## Step 1: Discovering DACs and Data Fields { .section}

To inspect the applicable user interface elements, do the following:

1.  Open the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.
2.  Point to the **Reference Nbr.** element, press Ctrl+Alt, and then click. The **Element Properties** dialog box opens. You are interested in two settings, **Data Class** and **Data Field**; these settings correspond to the data access class and data field you need, which are, respectively, *PX.Objects.AR.ARInvoice* and *RefNbr*.

    **Tip:** As an alternative, you can click **Settings** &gt; **Inspect Element** on the form title bar and then click the **Reference Nbr.** element.

3.  While you are pointing at the **Balance** element, press Ctrl+Alt and click to open the **Element Properties** dialog box. Notice that the **Data Class** box again contains *PX.Objects.AR.ARInvoice*, while the **Data Field** box contains *CuryDocBal*.
4.  Inspect the **Type** element, and notice that the **Data Field** box contains *DocType* and that the **Data Class** box again contains *PX.Objects.AR.ARInvoice*.

    You have discovered that the data access class you need is *PX.Objects.AR.ARInvoice* and the data fields you need are *DocType*, *RefNbr*, and *CuryDocBal*.


## Step 2: Creating the Generic Inquiry { .section}

To begin the process of creating the generic inquiry, do the following:

1.  Open the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form.
2.  In the Summary area, in the **Inquiry Title** box, type the name for the inquiry: `DB-SampleGenericInquiry`.
3.  On the **Data Sources** tab, do the following:
    1.  On the table toolbar, click **Add Row**.
    2.  In the **Source Name** column of the added row, select *PX.Objects.AR.ARInvoice*. \(In this example, you need to add a row for only this DAC, because the fields that are going to be used are in this DAC.\)

        **Tip:** Use the Search box \(upper right\) to find the DAC.

4.  On the form toolbar, click **Save**.

    Notice that the system has filled the **Alias** column with the predefined short name of the DAC \(that is, *ARInvoice*\).


## Step 3: Configuring the Results Grid { .section}

To configure the results grid \(that is, the columns showing the data in the generic inquiry form\), do the following:

1.  On the **Results Grid** tab of the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form with *DB-SampleGenericInquiry* selected, on the table toolbar, click **Add Row** to add a new row, and do the following:

    **Tip:** To speed up the selection of items from the list, start typing the names of the values. The system will filter the list based on what you type.

    1.  In the **Object** column of the added row, select *ARInvoice*.
    2.  In the **Data Field** column, select *DocType*.
2.  Again click **Add Row** to add a new row, and do the following:
    1.  In the **Object** column of the added row, select *ARInvoice*.
    2.  In the **Data Field** column, select *RefNbr*.
3.  Again click **Add Row** to add a new row, and do the following:

    1.  In the **Object** column of the added row, select *ARInvoice*.
    2.  In the **Data Field** column, select *CuryDocBal*.
    Notice that the **Visible** and **Default Navigation** check boxes are selected by default for all rows. That is, the system will display the added columns in the inquiry results and will display the values in these fields as links if the source code supports links for these fields.

4.  On the form toolbar, click **Save**.

## Step 4: Previewing the Generic Inquiry Form { .section}

To preview the generic inquiry form you have created, click the eye icon on the side panel of the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form while you are viewing the generic inquiry. Once reviewed, close the side panel.

## Step 5: Publishing the New Inquiry { .section}

To add the inquiry you have created to the site map, do the following:

1.  While you are still working with the *DB-SampleGenericInquiry* generic inquiry on the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form, on the form toolbar, click the **Publish to the UI** button.
2.  In the **Publish to the UI** dialog box, which opens, review the default settings.
3.  In the **Access Rights** section, select **Copy Access Rights from Screen**, and then select *Invoices and Memos* with the *AR.30.10.00* screen ID in the box next to the option button.

    With these settings, users that have access to the Invoices and Memos \(AR3010PL\) list of records will also have access to the created generic inquiry.

4.  Click **Publish** to complete publication and close the dialog box.
5.  On the main menu, select the **Data Views** menu item, and under the **Inquiries** category, make sure the created inquiry is listed.

**Parent topic:**[Creating a Generic Inquiry](../UserGuide/GI_Creating_Generic_Inquiry_Mapref.md)

