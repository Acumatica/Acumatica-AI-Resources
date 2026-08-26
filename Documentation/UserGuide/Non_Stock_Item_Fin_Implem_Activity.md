# Non-Stock Item: Implementation Activity {#_75f0ac95-6782-417e-95a1-d42d3f641a4c .task}

The following activity will walk you through the process of creating a new non-stock item.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story {#section_ufm_4jv_vxb .section}

Suppose that SweetLife Fruits &amp; Jams company pays rent for its office facilities, which is a fixed amount paid every month. The amount the company pays is $4,800 a month starting from 1/30/2026. To make creation of documents easier for accountants, a new non-stock item for rent should be available in the system.

Acting as a SweetLife accountant, you need to create the new non-stock item and specify the needed settings.

## Process Overview {#section_xfm_4jv_vxb .section}

In this activity, you will create a non-stock item on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form. On the tabs of this form, you will specify the item's settings, such as type, posting class, and units of measure. Finally, on the **Price/Cost** tab of the form, you will specify the unit cost for the item.

## System Preparation {#section_zfm_4jv_vxb .section}

To prepare the system, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. To sign in as an accountant, use the johnson *username* and the *123* password.
2.  On the Company and Branch Selection menu, also on the top pane of the Acumatica ERP screen, make sure that the *SweetLife Head Office and Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu to view the list of branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.

## Step 1: Creating a Non-Stock Item {#section_bgm_4jv_vxb .section}

To create a non-stock item, do the following:

1.  Open the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.
2.  On the form toolbar, click **Add New Record** and specify the following settings in the Summary area:
    -   **Inventory ID**: `RENT`
    -   **Item Status**: *Active* \(selected by default\)
    -   **Description**: `Rent`
3.  On the **General** tab, specify the following settings for the item:
    -   **Type**: *Charge*
    -   **Posting Class**: *NONSTOCK - Non-Stock Items*
    -   **Tax Category**: *EXEMPT*
    -   **Require Receipt**: Cleared
    -   **Require Shipment**: Cleared
4.  In the **Unit of Measure** section of the **General** tab, specify the following settings:
    -   **Base Unit**: *ITEM*
    -   **Sales Unit**: *ITEM*
    -   **Purchase Unit**: *ITEM*
5.  On the **GL Accounts** tab, in the **Expense Account** box, select *62900 - Rent or Lease Expense*.
6.  On the form toolbar, click **Save**.

## Step 2: Specifying the Unit Cost for the Item {#section_dgm_4jv_vxb .section}

To specify the unit cost for the non-stock item, do the following:

1.  While you are still on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, click the **Price/Cost** tab and specify the following settings in the **Standard Cost** section:
    -   **Pending Cost**: `4800`
    -   **Pending Cost Date**: *1/30/2026*
2.  On the form toolbar, click **Save**.
3.  On the More menu \(under **Other**\), click **Update Cost**.

    The cost you have specified is now effective and is displayed in the **Current Cost** box and its effective date has been set to 1/30/2026.


**Parent topic:**[Creating a Non-Stock Item](../UserGuide/Non_Stock_Item_Fin_Mapref.md)

