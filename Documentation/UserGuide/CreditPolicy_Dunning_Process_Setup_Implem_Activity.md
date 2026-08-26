# Dunning Process Setup: Implementation Activity {#_1dd76c25-ee75-45e8-9f98-7f17a12dec20 .task}

In the following implementation activity, you will learn how to implement the dunning process.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story {#section_eyd_hjv_vxb .section}

Suppose that SweetLife Fruits &amp; Jams decided to implement the dunning process in the system, which the Credit Control team can use to streamline its work. In the system, the following dunning levels should be used:

|Dunning Letter Level|Days Past Due|Days to Settle|Dunning Fee|
|--------------------|-------------|--------------|-----------|
|1|30|3|$0|
|2|60|3|$5|
|3|90|3|$10|

Acting as an implementation consultant \(Kimberly Gibbs\), you need to enable the needed feature and set up the dunning process on the **Dunning** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form.

## Process Overview {#section_hyd_hjv_vxb .section}

In this activity, you will first enable the *Dunning Letter Management* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. On the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, you will update the dunning settings for accounts receivable. Finally, on the [Customer Classes](AR_20_10_00.md) \(AR201000\) form, you will set up dunning letter levels for the *DEFAULT* customer class.

## System Preparation {#section_jyd_hjv_vxb .section}

Before you start implementing the dunning process, launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as Kimberly Gibbs with the *gibbs* username and the *123* password.

## Step 1: Enabling the Needed Feature {#section_lyd_hjv_vxb .section}

To enable the *Dunning Letter Management* feature, do the following:

1.  On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, click **Modify** on the form toolbar.
2.  In the *Advanced Financials* group of features, select the **Dunning Letter Management** check box.
3.  On the form toolbar, click **Enable**.

## Step 2: Updating the Accounts Receivable Preferences {#section_nyd_hjv_vxb .section}

To set up the dunning process, do the following:

1.  Open the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form.
2.  On the **Dunning** tab, specify the following settings:
    -   **Add Coming-Due Documents**: Selected
    -   **Dunning Process**: *By Customer*
    -   **Dunning Fee Item**: *DUNNINGFEE*
    -   **Terms**: *7D - 7 Days*
    -   **Automatically Release Dunning Fee Documents**: Selected
3.  On the form toolbar, click **Save** to save your changes.

## Step 3: Specifying Dunning Settings for a Customer Class {#section_pyd_hjv_vxb .section}

To specify the dunning settings for the *DEFAULT* customer class, do the following:

1.  Open the [Customer Classes](AR_20_10_00.md) \(AR201000\) form and in the **Class ID** box, select *DEFAULT*.
2.  Go to the **Dunning** tab.
3.  On the table toolbar, click **Add Row** and specify the following settings for the row:
    -   **Dunning Letter Level**: *1* \(inserted automatically\)
    -   **Days Past Due**: *30* \(inserted automatically\)
    -   **Days to Settle**: *3* \(inserted automatically\)
    -   **Description**: `30 days`
    -   **Dunning Fee**: *0.00* \(inserted automatically\)
4.  Click **Add Row** again and specify the following settings for the second row:
    -   **Dunning Letter Level**: *2* \(inserted automatically\)
    -   **Days Past Due**: *60* \(inserted automatically\)
    -   **Days to Settle**: *3* \(inserted automatically\)
    -   **Description**: `60 days`
    -   **Dunning Fee**: `5`
5.  Click **Add Row** again and specify the following settings for the third row:
    -   **Dunning Letter Level**: *3* \(inserted automatically\)
    -   **Days Past Due**: *90* \(inserted automatically\)
    -   **Days to Settle**: *3* \(inserted automatically\)
    -   **Description**: `90 days`
    -   **Dunning Fee**: `10`
6.  On the form toolbar, click **Save** to save your changes.

**Parent topic:**[Setting Up the Dunning Process](../UserGuide/CreditPolicy_Dunning_Process_Setup_Mapref.md)

