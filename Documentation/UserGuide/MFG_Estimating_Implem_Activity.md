# Estimating: Implementation Activity {#_ac87330a-9606-47a2-b011-592a74030c7e .task}

In the following implementation activity, you will learn how to configure the estimating functionality.

## Process Overview { .section}

In this activity, you will create an estimate class by using the [Estimate Classes](AM_20_60_00.md) \(AM206000\) form. You will also specify the default settings by using the [Estimate Preferences](AM_10_30_00.md) \(AM103000\) form; the system will apply these settings to new estimates.

## System Preparation { .section}

Before you start configuring estimates, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *SalesDemo* dataset preloaded. You should sign in as the system administrator with the *admin* username and the password for this user valid for your instance.
2.  On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, do the following:
    1.  In the *Inventory and Order Management* group of features, disable the *Distribution Requirements Planning* feature.
    2.  Enable the *Manufacturing* group of features, and then enable the *Estimating* feature in this group.

## Step 1: Creating an Estimate Class { .section}

To create an estimate class that will provide default settings for new estimates, do the following:

1.  Open the [Estimate Classes](AM_20_60_00.md) \(AM206000\) form.
2.  Specify the following settings:
    -   **Class ID**: `DEFAULT`
    -   **Description**: `Default estimate class`
    -   **Item Class**: *MFGFG*
    -   **Tax Category**: *EXEMPT*
    -   **Engineer**: Empty
    -   **Lead Time \(Days\)**: `15`
    -   **Order Qty**: `1`
    -   **Labor Markup \(%\)**: `10`
    -   **Machine Markup \(%\)**: `10`
    -   **Material Markup \(%\)**: `20`
    -   **Tool Markup \(%\)**: `20`
    -   **Overhead Markup \(%\)**: `20`
    -   **Subcontract Markup \(%\)**: `10`
3.  On the form toolbar, click **Save**.

## Step 2: Specifying the Default Estimate Settings { .section}

To specify default estimate settings, do the following:

1.  Open the [Estimate Preferences](AM_10_30_00.md) \(AM103000\) form.
2.  Ensure that the following settings are specified on the form:
    -   **Estimate Number Sequence**: *AMESTIMATE*
    -   **Default Revision**: `A`
    -   **Default Estimate Class**: *DEFAULT*
    -   **Default Work Center**: *WC10*
    -   **Default Prod. Order Type**: *RO*
    -   **New Revision Is Primary**: Selected
    -   **Update All Revisions**: Selected
    -   **Update Price Info**: Selected
3.  On the form toolbar, click **Save**.

**Parent topic:**[Estimating](../UserGuide/MFG_Estimating_Mapref.md)

