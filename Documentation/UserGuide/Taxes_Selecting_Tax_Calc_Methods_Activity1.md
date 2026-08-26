# Tax Calculation Methods: To Create Taxes {#_e5aedb9e-af9b-43cd-a447-0ec63a4bb6a8 .task}

The following activity will walk you through the process of creating taxes with different calculation methods.

## Story {#section_hgh_fjv_vxb .section}

Suppose that you, as an accountant of SweetLife Fruits &amp; Jams, want to explore different tax calculation methods of sales taxes. You want to configure a training tax zone and add taxes that use the following calculation methods:

-   *Exclusive Document-Level*
-   *Exclusive Line-Level*
-   *Inclusive Line-Level*

To be able to compare the difference in how these taxes are applied, the taxes will use the same tax rate of 5%. You are going to use the same customer account \(Candyy Cafe\) in all activities of this lesson.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, for the purposes of this activity, the *CANDYY* customer account has been configured on the [Customers](AR_30_30_00.md) \(AR303000\) form.

## Process Overview {#section_lgh_fjv_vxb .section}

In this activity, you will create a training tax zone for the purposes of this activity on the [Tax Zones](TX_20_60_00.md) \(TX206000\) form; you will then create the needed taxes on the [Taxes](TX_20_50_00.md) \(TX205000\) form and assign them to this tax zone. On the [Tax Categories](TX_20_55_00.md) \(TX205500\) form, you will add the created taxes to the *TRAINING* tax category.

## System Preparation {#section_ngh_fjv_vxb .section}

Before you begin to create taxes with different calculation rules, launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as an accountant Anna Johnson by using the *johnson* username and the *123* password.

## Step 1: Creating a Tax Zone {#section_pgh_fjv_vxb .section}

To create a separate tax zone in which you will later create taxes, proceed as follows:

1.  Open the [Tax Zones](TX_20_60_00.md) \(TX206000\) form.
2.  On the form toolbar, click **Add New Record**, and specify the following settings in the Summary area:
    -   **Tax Zone ID**: `TRAINING`
    -   **Description**: `Calculation rules`
3.  On the form toolbar, click **Save** to save the created tax zone.

## Step 2: Creating a Tax with the Exclusive Document-Level Method {#section_rgh_fjv_vxb .section}

To create a tax that uses the *Exclusive Document-Level* method, proceed as follows:

1.  Open the [Taxes](TX_20_50_00.md) \(TX205000\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  On the form toolbar, click **Add New Record**, and specify the following settings in the Summary area:
    -   **Tax ID**: `EXDOCLEVEL`
    -   **Description**: `Exclusive Document-Level Tax`
    -   **Tax Type**: *Sales*
    -   **Calculation Rule**: *Exclusive Document-Level*
    -   **Cash Discount**: *Does Not Affect Taxable Amount*
3.  On the **Tax Schedule** tab, click **Add Row** on the table toolbar and specify the following settings in the table:
    -   **Start Date**: *1/1/2026*
    -   **Tax Rate**: `5`
    -   **Reporting Group**: *Default Output Group*

        The tax is not assigned to any tax agency, so only the default output group is available for selection.

4.  On the **Zones** tab, click **Add Row** on the table toolbar, and select *TRAINING* in the **Tax Zone ID** column.
5.  On the **GL Accounts** tab, select *24100* in the **Tax Payable Account** box.
6.  On the form toolbar, click **Save** to save the created tax.

## Step 3: Creating a Tax with the Exclusive Line-Level Method {#section_ugh_fjv_vxb .section}

To create a tax that uses the *Exclusive Line-Level* method, proceed as follows:

1.  While you are still on the [Taxes](TX_20_50_00.md) \(TX205000\) form, click **Add New Record** on the form toolbar, and specify the following settings in the Summary area:
    -   **Tax ID**: `EXLINELEVEL`
    -   **Description**: `Exclusive Line-Level Tax`
    -   **Tax Type**: *Sales*
    -   **Calculation Rule**: *Exclusive Line-Level*
    -   **Cash Discount**: *Does Not Affect Taxable Amount*
2.  On the **Tax Schedule** tab, click **Add Row** on the table toolbar, and specify the following settings in the table:
    -   **Start Date**: *1/1/2026*
    -   **Tax Rate**: `5`
    -   **Reporting Group**: *Default Output Group*
3.  On the **Zones** tab, click **Add Row** on the table toolbar, and select *TRAINING* in the **Tax Zone ID** column.
4.  On the **GL Accounts** tab, select *24100* in the **Tax Payable Account** box.
5.  On the form toolbar, click **Save** to save the created tax.

## Step 4: Creating a Tax with the Inclusive Line-Level Method {#section_wgh_fjv_vxb .section}

To create a tax that uses the *Inclusive Line-Level* method, proceed as follows:

1.  While you are still on the [Taxes](TX_20_50_00.md) \(TX205000\) form, click **Add New Record** on the form toolbar, and specify the following settings in the Summary area:
    -   **Tax ID**: `INCLINELEVEL`
    -   **Description**: `Inclusive Line-Level Tax`
    -   **Tax Type**: *Sales*
    -   **Calculation Rule**: *Inclusive Line-Level*
    -   **Cash Discount**: *Does Not Affect Taxable Amount*
2.  On the **Tax Schedule** tab, click **Add Row** on the table toolbar, and specify the following settings in the table:
    -   **Start Date**: *1/1/2026*
    -   **Tax Rate**: `5`
    -   **Reporting Group**: *Default Output Group*
3.  On the **Zones** tab, click **Add Row** on the table toolbar, and select *TRAINING* in the **Tax Zone ID** column.
4.  On the **GL Accounts** tab, select *24100* in the **Tax Payable Account** box.
5.  On the form toolbar, click **Save** to save the created tax.

## Step 5: Creating a Tax Category and Adding Taxes {#section_ygh_fjv_vxb .section}

To create a tax category and add the created taxes to it, proceed as follows:

1.  Open the [Tax Categories](TX_20_55_00.md) \(TX205500\) form.
2.  On the form toolbar, select **Add New Record**, and specify the following settings:
    -   **Tax Category ID**: `TRAINING`
    -   **Description**: `Calculation rules`
3.  On the table toolbar, click **Add Row**, and in the **Tax ID** column, select *EXDOCLEVEL*.
4.  Again click **Add Row**, and in the **Tax ID** column, select *EXLINELEVEL*.
5.  Again click **Add Row**, and in the **Tax ID** column, select *INCLINELEVEL*.
6.  On the form toolbar, click **Save** to save the tax category.

**Parent topic:**[Selecting Tax Calculation Methods](../UserGuide/Taxes_Selecting_Tax_Calc_Methods_Mapref.md)

