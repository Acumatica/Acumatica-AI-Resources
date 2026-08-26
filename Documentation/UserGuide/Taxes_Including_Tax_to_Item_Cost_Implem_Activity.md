# Taxes Included in the Cost of Items: Implementation Activity {#_2893c921-339d-4dc6-b93d-871c95cb6ce3 .task}

In the following implementation activity, you will learn how to configure the inclusion of taxes in the cost of purchased items.

## Story {#section_g1l_fjv_vxb .section}

Suppose that you, as an implementation manager, need to update the settings of the New York State tax \(defined as *NYSTATETAX* in the system\) so that the taxes calculated on purchases will be automatically included in the costs of the applicable items. First, you need to create a reason code for tax-related inventory adjustment transactions; you then specify this reason code in the purchase order management preferences.

## Configuration Overview {#section_i1l_fjv_vxb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, the *65100 - Other Tax Expenses* account has been created.
-   On the [Taxes](TX_20_50_00.md) \(TX205000\) form, the *NY State Tax* has been configured and assigned to the *TAXABLE* category and the *NYSTATE* tax zone.

## Process Overview {#section_k1l_fjv_vxb .section}

In this implementation activity, you will create the *POTAXCODE* reason code on the [Reason Codes](CS_21_10_00.md) \(CS211000\) form. Then on the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form, in the **Tax Reason Code** box, you will select the reason code you have created \(*POTAXCODE*\). Finally, on the [Taxes](TX_20_50_00.md) \(TX205000\) form, you will update the settings of the *NYSTATETAX* tax.

## System Preparation { .section}

Before you begin performing the steps of this activity, launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as a system administrator Kimberly Gibbs by using the *gibbs* username and the *123* password.

## Step 1: Creating Reason Code for Posting Taxes {#section_o1l_fjv_vxb .section}

To create a reason code for tax-related inventory adjustments, do the following:

1.  Open the [Reason Codes](CS_21_10_00.md) \(CS211000\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  Click **Add New Record** on the form toolbar, and specify the following settings in the Summary area:
    -   **Reason Code**: `POTAXCODE`
    -   **Description**: `Taxes on purchase`
    -   **Usage**: *Adjustment*
    -   **Account**: *65100 - Other Tax Expenses*
3.  On the form toolbar, click **Save** to save your changes.
4.  Open the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form.
5.  On the **General** tab, in the **Tax Reason Code** box \(**Other** section\), select the reason code you have created \(*POTAXCODE*\).
6.  On the form toolbar, click **Save** to save your changes.

## Step 2: Updating the Tax Settings {#section_q1l_fjv_vxb .section}

To set up inclusion of the tax in the item costs, proceed as follows:

1.  Open the [Taxes](TX_20_50_00.md) \(TX205000\) form.
2.  In the **Tax ID** box, select *NYSTATETAX*.
3.  On the **Tax Schedule** tab, make sure that a row with the following settings is defined:
    -   **Start Date**: *1/1/1900*
    -   **Tax Rate**: `8.875`
    -   **Reporting Group**: *Input*
4.  On the **Categories** tab, make sure that a row with the *TAXABLE* category has been added to the table.
5.  On the **Zones** tab, make sure that a row with the *NYSTATE* zone has been added to the table. The settings of the tax mean that the tax will be applied to all taxable items purchased from vendors assigned to the *NYSTATE* tax zone.
6.  On the **GL Accounts** tab, clear the **Use Tax Expense Account** check box.
7.  On the form toolbar, click **Save** to save your changes.

**Parent topic:**[Including Taxes in the Cost of Items](../UserGuide/Taxes_Including_Tax_to_Item_Cost_Mapref.md)

