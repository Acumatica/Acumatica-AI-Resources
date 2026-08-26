# Value-Added Taxes: To Create a Pending VAT {#_e5f280ca-3b6b-40a7-8574-f616eb2e09e2 .task}

By performing this implementation activity, you will learn how to configure a pending VAT recognized on payments.

## Story { .section}

Suppose that SweetLife Fruits &amp; Jams provides services to customers and the VAT amounts of invoice payments need to be recognized on payment dates. Acting as an implementation consultant, you need to update the settings of the tax agency and create a pending VAT of the *Output* type.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following configuration tasks have been performed to prepare the system for this activity to be performed:

-   On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the *VAT Reporting* feature has been enabled.
-   On the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, the *24200 \(Pending Tax Payable\)* and *17500 \(Pending Tax Claimable\)* accounts have been created.

## Process Overview { .section}

In this activity, on the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form, you will update the settings of the tax agency to make it possible to recognize pending VAT on payments. On the [Taxes](../UserGuide/TX_20_50_00.md) \(TX205000\) form, you will create a pending VAT.

## System Preparation { .section}

To prepare the system, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as an implementation consultant by using the *gibbs* username and the *123* password.
2.  On the Company and Branch Selection menu, on the top pane of the Acumatica ERP screen, select the *SweetLife Head Office and Wholesale Center* branch.
3.  As a prerequisite activity, in the company to which you are signed in, be sure you have configured a tax agency and a tax report as described in [Tax Report Configuration: To Create a Tax Report for VAT Variations](TaxReport_VAT_Variations_Implem_Activity.md).
4.  As a prerequisite activity, be sure that you have created the *CANADA* tax zone on the [Tax Zones](../UserGuide/TX_20_60_00.md) \(TX206000\) form as described in [Tax Zones and Categories: To Create a Tax Category and Tax Zone for VAT](TaxZones_and_Categories_VAT_Implem_Activity.md).
5.  As a prerequisite activity, be sure that you have created the *PENDING* tax category on the [Tax Categories](../UserGuide/TX_20_55_00.md) \(TX205500\) form as described in [Tax Zones and Categories: To Create a Tax Category and Tax Zone for VAT](TaxZones_and_Categories_VAT_Implem_Activity.md).
6.  As a prerequisite activity, be sure that you have configured a tax report on the [Reporting Settings](../UserGuide/TX_20_51_00.md) \(TX205100\) form and reporting groups for the tax report on the [Reporting Groups](../UserGuide/TX_20_52_00.md) \(TX205200\) form. For details, see [Tax Report Configuration: To Create a Tax Report for VAT Variations](TaxReport_VAT_Variations_Implem_Activity.md).

## Step 1: Updating the Tax Agency Settings { .section}

To update the tax agency settings, do the following:

1.  Open the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form.
2.  In the **Vendor ID** box, select *VATVAR*.
3.  On the **Tax Agency** tab, specify the following settings:
    -   **VAT Recognition Method**: *On Payments*

        This setting means that the tax amounts will be recognized based on the payments applied to documents.

    -   **Output Tax Entry Ref. Nbr.**: *Payment Ref. Nbr.*

        This setting means that the reference numbers of the payments will be used as the reference numbers of the documents subject to pending output VAT included in a tax report.

4.  On the form toolbar, click **Save**.

## Step 2: Creating a Pending VAT { .section}

To create a pending VAT, do the following:

1.  On the [Taxes](../UserGuide/TX_20_50_00.md) \(TX205000\) form, create a new record.
2.  In the Summary area, specify the following settings:
    -   **Tax ID**: `PENDINGVAT`
    -   **Description**: `Pending VAT`
    -   **Tax Type**: *VAT*
    -   **Pending VAT**: Selected
    -   **Include in VAT Taxable Total**: Selected
    -   **Calculation Rule**: *Exclusive Line-Level*
    -   **Cash Discount**: *Does Not Affect Taxable Amount*
    -   **Tax Agency**: *VATVAR*
3.  On the **Tax Schedule** tab, click **Add Row** on the table toolbar, and specify the following settings:
    -   **Start Date**: *1/1/1900* \(inserted by default\)
    -   **Tax Rate**: `7`
    -   **Reporting Group**: *Pending \(Output\)*
4.  Click **Add Row** again and specify the following settings for a new row:
    -   **Start Date**: *1/1/1900* \(inserted by default\)
    -   **Tax Rate**: `7`
    -   **Reporting Group**: *Pending \(Input\)*
5.  On the **Categories** tab, click **Add Row** on the table toolbar, and select *PENDING* in the **Tax Category** column.
6.  On the **Zones** tab, click **Add Row** on the table toolbar, and select *CANADA* in the **Tax Zone ID** column.
7.  On the **GL Accounts** tab, specify the following settings:
    -   **Pending Tax Payable Account**: *24200 \(Pending Tax Payable\)*

        This account will be credited in the amount of the pending output VAT that is imposed on taxable sales.

    -   **Pending Tax Claimable Account**: *17500 \(Pending Tax Claimable\)*

        This account will be debited in the amount of the pending input VAT that is imposed on taxable purchases.

8.  On the form toolbar, click **Save**.

**Parent topic:**[Value-Added Taxes](../ImplementationGuide/Taxes_Configuring_VAT_Mapref.md)

