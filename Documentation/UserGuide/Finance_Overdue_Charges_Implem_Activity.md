# Overdue Charges: Implementation Activity {#_48a68dd9-0654-49bb-b106-100effd55c05 .task}

In the following implementation activity, you will learn how to implement the overdue charges functionality.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that starting on January 1, 2025 the CFO of SweetLife Fruits &amp; Jams decided to start applying overdue charges to customer documents that are past due. Overdue charge documents should be generated for two customers that have multiple past due documents—*COFFEESHOP* and *GOODFOOD*. The overdue charges should be calculated for the days past due by using the outstanding balance of a document for each of these days. The annual rate for overdue charges is 10%.

Acting as the chief accountant, you need to enable the needed feature and set up the overdue charge functionality.

**Tip:** In a production environment, you have to set up calculating overdue charges before you start creating and processing documents to avoid manual updates of settings for existing documents. For training purposes, this chapter will show how to manually update the settings of particular documents to apply overdue charges to them.

## Process Overview { .section}

In this activity, you will first enable the *Overdue Charges* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. On the [Overdue Charges](AR_20_45_00.md) \(AR204500\) form, you will create an overdue charge code and specify its settings. On the [Statement Cycles](AR_20_28_00.md) \(AR202800\) form, you will update the settings of the *EOM* statement cycle and select the new overdue charge code for it. On the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, you will update the AR settings to make the system calculate overdue charges by statement cycle. On the [Customers](AR_30_30_00.md) \(AR303000\) form, you will turn on the calculation of overdue charges for the *COFFEESHOP* and *GOODFOOD* customers. Finally, on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, you will apply calculation of overdue charges for particular open invoices of these customers.

## System Preparation { .section}

Before you start implementing the overdue charge functionality, launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as the chief accountant with the *johnson* username and the *123* password.

## Step 1: Enabling the Needed Feature { .section}

To enable the *Overdue Charges* feature, do the following:

1.  On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, click **Modify** on the form toolbar.
2.  Select the **Overdue Charges** check box within the **Advanced Financials** group.

    The check boxes for the other needed features are already selected because you have preloaded the *U100* dataset into the company; you do not have to change the selection of any other features.

3.  On the form toolbar, click **Enable**.

## Step 2: Creating an Overdue Charge Code { .section}

To create an overdue charge code for 10 annual rate, do the following:

1.  On the [Overdue Charges](AR_20_45_00.md) \(AR204500\) form, create a new record.
2.  In the **Overdue Charge ID** box, enter `OVERDUE10`.
3.  In the **Description** box, enter `Overdue charges of 10% annually`.
4.  In the **General Settings** section, specify the following settings for the new code:
    -   **Calculation Method**: *Interest on Prorated Balance*

        This calculation method means that the system will calculate overdue charges for the days past due by using the outstanding balance of a document for each of these days. The overdue document is subject to charges until it is closed. If overdue charges have been recorded for the document, the system calculates the charges for the number of days since the date of the last overdue charges.

    -   **Terms**: *30D*

        These credit terms will be inserted into the generated overdue charge documents.

    -   **Overdue Charge Account**: *41000 \(Overdue Charge Income\)*
    -   **Tax Category**: *EXEMPT*
5.  In the **Charging Settings** section, specify the following settings for the new code:
    -   **Total Threshold**: `5`

        This box specifies the minimum amount of the overdue charge on which the system initiates the generation of a document of the *Overdue Charge* type.

    -   **Charging Method**: *Percent With Threshold*

        If this method is selected, the overdue charge will be calculated as an annual percentage of the open balance of the document.

    -   **Threshold**: `0`

        The system compares the charge amount calculated for each overdue document with the threshold amount specified in this box to check whether to include the charges as line items to the generated *Overdue Charge* document. A threshold amount of $0 means that the charges calculated for all overdue documents will be included in the generated *Overdue Charge* document as is.

        **Tip:** If you specify a particular amount in this box, the calculated overdue charges whose amounts are less than the threshold amount will not be included in the generated *Overdue Charge* document.

6.  In the table that appears when you select the *Percent With Threshold* charging method, add a row with the following settings:
    -   **Start Date**: *1/1/2025*
    -   **Percent Rate**: `10`

        This is the annual percentage rate to be used for calculation overdue charges.

7.  On the form toolbar, click **Save** to save the changes.

## Step 3: Updating the Settings of the Statement Cycle { .section}

To update the settings of the *EOM* statement cycle, do the following:

1.  On the [Statement Cycles](AR_20_28_00.md) \(AR202800\) form, open the *EOM* statement cycle.
2.  In the **Finance Charge Settings** section, select the **Apply Overdue Charges** check box to make possible the use of overdue charges for the statement cycle.

    **Tip:** If you want to make the system show a warning message on the [Prepare Statements](AR_50_30_00.md) \(AR503000\) form if there are overdue documents for which no overdue charge documents have been generated, you need to select the **Require Overdue Charges Calculation Before Statement** check box for the needed statement cycle.

3.  In the **Overdue Charge ID** box, select the *OVERDUE10* code. The system will use this code when calculating overdue charges for customers that use the *EOM* statement cycle.
4.  On the form toolbar, click **Save** to save the changes.

## Step 4: Updating the Accounts Receivable Preferences { .section}

To update the AR preferences, do the following:

1.  Open the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form.
2.  In the **Data Processing Settings** section on the **General** tab, select the **Set Default Overdue Charges by Statement Cycle** check box.
3.  On the form toolbar, click **Save** to save your changes.

## Step 5: Setting Up the Calculation of Overdue Charges for Customers { .section}

To update the settings of the *COFFEESHOP* and *GOODFOOD* customers, do the following:

1.  On the [Customers](AR_30_30_00.md) \(AR303000\) form, open the *COFFEESHOP* customer.
2.  On the **Financial** tab, select the **Apply Overdue Charges** check box. The system calculates overdue charges on documents of only customers for which this check box is selected.
3.  On the form toolbar, click **Save**.
4.  In the **Customer ID** box, select *GOODFOOD*.
5.  On the **Financial** tab, select the **Apply Overdue Charges** check box.
6.  On the form toolbar, click **Save**.

    The newly created invoices to *COFFEESHOP* and *GOODFOOD* will have the **Apply Overdue Charges** check box selected. The previously created invoices for these customers \(which were created before you enabled the calculation of overdue charges for the customers\) currently have the **Apply Overdue Charges** check box cleared. You need to select this check box in the invoices manually if you need to calculate the overdue charges for these invoices.


## Step 6: Updating the Settings of Overdue Invoices { .section}

To update the settings of existing overdue invoices to make the system calculate overdue charges for them, do the following:

1.  Open the Invoices and Memos \(AR3010PL\) list of records.
2.  In the table, filter the documents of the *COFFEESHOP* customer as follows:
    1.  Click the **Customer** column.
    2.  In the dialog box that is displayed, specify the following settings:
        -   **Equals**: Selected
        -   Customer lookup box: *COFFEESHOP*
    3.  Click **Apply** to close the dialog box and apply the filter.
3.  In the table, locate an invoice in the amount of $5,300 and open it.
4.  On the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, which is opened, select the **Apply Overdue Charges** check box.
5.  On the form toolbar, click **Save** to save the changes.
6.  In the **Reference Nbr.** box, click the magnifier button.
7.  In the table, which is opened, find an invoice for the *GOODFOOD* customer in the amount of $3,030 and open it.
8.  On the **Financial** tab, select the **Apply Overdue Charges** check box.
9.  On the form toolbar, click **Save** to save the changes.

**Parent topic:**[Applying Overdue Charges](../UserGuide/CreditPolicy_Overdue_Charges_Mapref.md)

