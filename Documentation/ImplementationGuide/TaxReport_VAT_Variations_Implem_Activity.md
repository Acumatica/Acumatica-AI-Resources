# Tax Report Configuration: To Create a Tax Report for VAT Variations {#_f5919207-0562-46c5-9e61-171d8239269f .task}

By performing this implementation activity, you will learn how to configure the content of a tax report for multiple variations of value-added tax, and to specify the rules of accumulating the data in the report lines.

## Story { .section}

Suppose that SweetLife Fruits &amp; Jams is going to report multiple types of VAT besides the general VAT and needs a separate tax agency and a tax report for this purpose. Acting as an implementation consultant, you need to create a tax agency and a tax report for VAT variations.

The tax report should include the following lines:

-   *Net Tax to Pay or Reclaim*: Accumulates the total tax amount to be paid to the tax agency or reclaimed from the tax agency in the tax period \(that is, output tax minus input tax\).
-   *Reverse VAT*: Accumulates the total tax amount of reverse VAT to be paid to the tax agency. This report line will be used for reporting a reverse VAT.
-   *Standard-Rated Acquisitions*: Accumulates the total tax amount to be paid to the tax agency or reclaimed from the tax agency in the tax period. This report line will be used for reporting a generate VAT that offsets the reverse VAT.
-   *Deductible VAT*: Accumulates the total tax amount of partially deductible VAT on the company's purchases. This report line will be used for reporting a partially deductible VAT.
-   *Pending Output VAT*: Accumulates the total tax amount of pending VAT to be paid to the tax agency.
-   *Pending Input VAT*: Accumulates the total tax amount of pending VAT to be claimed from the tax agency.

## Configuration Overview { .section}

In the *U100* dataset, the following configuration tasks have been performed to prepare the system for this activity to be performed:

-   On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the *VAT Reporting* feature has been enabled.
-   On the [Vendor Classes](../UserGuide/AP_20_10_00.md) \(AP201000\) form, the *TAXAGENCY* vendor class has been configured.
-   On the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, the *24100 \(Tax Payable\)*, *17000 \(Tax Claimable\)*, and *65100 \(Other Tax Expenses\)* accounts have been created.

## Process Overview { .section}

In this activity, you will do the following:

1.  On the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form, you will create a tax agency for VAT variations.
2.  You will create a tax report for the needed tax agency and add lines to it on the [Reporting Settings](../UserGuide/TX_20_51_00.md) \(TX205100\) form.
3.  You will add reporting groups on the **Reporting Groups** tab of the [Reporting Settings](../UserGuide/TX_20_51_00.md) form.
4.  On the [Reporting Groups](../UserGuide/TX_20_52_00.md) \(TX205200\) form, you will specify the report lines that should be updated by the taxes associated with each reporting group.

## System Preparation { .section}

To prepare the system, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as an implementation consultant by using the *gibbs* username and the *123* password.

## Step 1: Creating a Tax Agency { .section}

To create a tax agency, do the following:

1.  On the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form, create a new record.
2.  In the Summary area, specify the following settings:
    -   **Vendor ID**: `VATVAR`
    -   **Account Name**: `Tax Agency for VAT Variations`
    -   **Vendor Status**: *Active*
3.  On the **General** tab \(**Account Information** section\), select *TAXAGENCY* in the **Vendor Class** box.
4.  On the **Financial** tab \(**Vendor Properties** section\), select the **Vendor Is Tax Agency** check box.
5.  On the form toolbar, click **Save**.
6.  Go to the **Tax Agency** tab.
7.  In the **Default Tax Accounts** section, specify the following settings:
    -   **Tax Payable Account**: *24100 \(Tax Payable\)*
    -   **Tax Claimable Account**: *17000 \(Tax Claimable\)*
    -   **Tax Expense Account**: *65100 \(Other Tax Expenses\)*
8.  In the **Pending VAT Settings** section, select *On Payments* in the **VAT Recognition Method** box.

    This setting in needed to recognize pending VAT on payments.

9.  In the **Tax Report Settings** section, specify the following settings:
    -   **Default Tax Period Type**: *Month*
    -   **Update Closed Tax Periods**: Selected
    -   **Automatically Generate Tax Bill**: Selected
    -   **Use Currency Precision**: Selected
10. On the form toolbar, click **Save**.

## Step 2: Creating a Tax Report, Adding Report Lines, and Creating Reporting Groups { .section}

To create a tax report for the new agency, add report lines, and create reporting groups, do the following:

1.  Open the [Reporting Settings](../UserGuide/TX_20_51_00.md) \(TX205100\) form.
2.  In the **Tax Agency ID** box, select *VATVAR*.
3.  In the **Valid From** box, select *1/1/2026*.
4.  On the **Report Lines** tab, click **Add Row** on the table toolbar for each new line, and specify the following settings:

    |Report Line Order|Description|Update With|Update Rule|Net Tax|
    |-----------------|-----------|-----------|-----------|-------|
    |*1*|`Net Tax to Pay or Reclaim`|*Tax Amount*|*+Output-Input*|Selected|
    |*2*|`Reverse VAT`|*Tax Amount*|*+Output-Input*|Cleared|
    |*3*|`VAT on Standard-Rated Acquisitions`|*Tax Amount*|*+Input-Output*|Cleared|
    |*4*|`Deductible VAT`|*Tax Amount*|*+Input-Output*|Cleared|
    |*5*|`Pending Output VAT`|*Tax Amount*|*+Output-Input*|Cleared|
    |*6*|`Pending Input VAT`|*Tax Amount*|*+Input-Output*|Cleared|

5.  On the form toolbar, click **Save**.
6.  On the **Reporting Groups** tab, click **Add Row** on the table toolbar for each new line, and specify the following settings:

    |Name|Group Type|
    |----|----------|
    |`Reverse`|*Output*|
    |`Standard-Rated Acquisitions`|*Input*|
    |`Deductible`|*Input*|
    |`Pending (Output)`|*Output*|
    |`Pending (Input)`|*Input*|

7.  On the form toolbar, click **Save**.

## Step 3: Adding the Reporting Groups to the Report { .section}

To add the reporting groups to the report, do the following:

1.  Open the [Reporting Groups](../UserGuide/TX_20_52_00.md) \(TX205200\) form.
2.  In the **Tax Agency** box, select *VATVAR*.
3.  In the **Reporting Group** box, select *1 - Reverse*.
4.  In the **Report Version** box, select *1*.
5.  Click **Add Row** on the table toolbar, and add two rows, specifying the following settings \(listed below\) for each row:
    -   **Report Line**: *1 - Net Tax to Pay or Reclaim*
    -   **Report Line**: *2 - Reverse VAT*
6.  On the form toolbar, click **Save**.
7.  In the **Reporting Group** box, select *2 - Standard Rated Acquisitions*.
8.  Click **Add Row** on the table toolbar, and add two rows, specifying the following settings \(listed below\) for each row:
    -   **Report Line**: *1 - Net Tax to Pay or Reclaim*
    -   **Report Line**: *3 - VAT on Standard-Rated Acquisitions*
9.  In the **Reporting Group** box, select *3 - Deductible*.
10. Click **Add Row** on the table toolbar, and add two rows, specifying the following settings \(listed below\) for each row:
    -   **Report Line**: *1 - Net Tax to Pay or Reclaim*
    -   **Report Line**: *4 - Deductible VAT*
11. In the **Reporting Group** box, select *4 - Pending \(Output\)*.
12. Click **Add Row** on the table toolbar, and add two rows, specifying the following settings \(listed below\) for each row:
    -   **Report Line**: *1 - Net Tax to Pay or Reclaim*
    -   **Report Line**: *5 - Pending Output VAT*
13. In the **Reporting Group** box, select *5 - Pending \(Input\)*.
14. Click **Add Row** on the table toolbar, and add two rows, specifying the following settings \(listed below\) for each row:
    -   **Report Line**: *1 - Net Tax to Pay or Reclaim*
    -   **Report Line**: *6 - Pending Input VAT*
15. On the form toolbar, click **Save**.

**Parent topic:**[Tax Report](../ImplementationGuide/Taxes_TaxReport_Mapref.md)

