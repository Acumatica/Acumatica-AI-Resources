# Subaccounts: Implementation Activity {#_64736a3d-89c3-41ca-b0a4-0af7bcb11372 .task}

In this activity, you will learn how to enable the appropriate feature to use subaccounts, define the structure of subaccounts, and specify the allowable values for subaccount segments in the system.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the management of the SweetLife Fruits &amp; Jams company wants to report the company’s expenses by department and its revenue by groups of items.

Acting as a system administrator, you have to perform the needed actions to configure subaccounts in the system. The subaccounts will consist of two segments: one that represents a product, and another that represents a department. You also have to specify the values for each segment and set up the subaccounts so that users enter subaccounts on data entry forms by selecting the values segment by segment.

## Configuration Overview {#section_er3_mjv_vxb .section}

In the *U100* dataset, the following tasks have been performed for the purposes of this activity:

-   On the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form, the *SWEETLIFE* company has been defined.
-   On the [Branches](../UserGuide/CS_10_20_00.md) \(CS102000\) form, the *HEADOFFICE* branch of the *SWEETLIFE* company has been created.
-   On the [Segmented Keys](../UserGuide/CS_20_20_00.md#) \(CS202000\) form, the *SUBACCOUNT* segmented key has been created.

## Process Overview { .section}

To configure subaccounts in the system, you will first enable the *Subaccounts* feature on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form. You will then define the *SUBACCOUNT* segmented key on the [Segmented Keys](../UserGuide/CS_20_20_00.md) \(CS202000\) form to meet the company's business needs. Finally, you will assign values to the segments on the [Segment Values](../UserGuide/CS_20_30_00.md) \(CS203000\) form. You will then check the subaccounts on the [Subaccounts](../UserGuide/GL_20_30_00.md) \(GL203000\) form and change them if necessary.

## System Preparation { .section}

Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as a system administrator Kimberly Gibbs by using the *gibbs* username and the *123* password.

**Tip:** This activity shows the configuration of subaccounts on a system that has already been in use. However, in a production environment, we recommend that you configure subaccounts very early in the setup of Acumatica ERP, when you configure other general ledger settings, including the chart of accounts.

## Step 1: Enabling the Subaccounts Feature { .section}

To enable the *Subaccounts* feature, do the following:

1.  Open the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.
2.  On the form toolbar, click **Modify** to make it possible to change the set of enabled features.
3.  Select the **Subaccounts** check box in the **Advanced Financials** group of features.
4.  On the form toolbar, click **Enable**.

In a production environment, after the feature is enabled and before you proceed with implementation, you have to activate the Acumatica ERP license by using the [Activate License](../UserGuide/SM_20_15_10.md) \(SM201510\) form. In this practice activity, you are using Acumatica ERP under the trial license, which does not require activation and provides all available features.

## Step 2: Modifying the SUBACCOUNT Segmented Key { .section}

To modify the *SUBACCOUNT* segmented key, do the following:

1.  Open the [Segmented Keys](../UserGuide/CS_20_20_00.md#) \(CS202000\) form.
2.  In the **Segmented Key ID** box of the Summary area, select *SUBACCOUNT*.
3.  In the **Lookup Mode** box, select *By Segment: All Avail. Segment Values*. Notice that the **Allow Adding New Values On the Fly** check box becomes selected automatically.

    In this lookup mode, users can combine subaccounts from the needed segments during data entry. For each segment, a user can type an allowed value or press F3 to select a value from the predefined list. Each new combination is saved to the list of subaccounts, which you can view and edit on the [Subaccounts](../UserGuide/GL_20_30_00.md) \(GL203000\) form.

4.  In the table, for the *1* segment, specify the following settings:
    -   **Description:** `Product Group`
    -   **Length**: `3`
    -   **Validate**: Selected

        These settings mean that the validation of segment values is turned on for the segment. With this check box selected, a user can add a value to this particular segment only by selecting the value from the list of available ones.

5.  On the table toolbar, click **Add Row**, and specify the following settings in the new row:
    -   **Description:** `Department`
    -   **Length**: `3`
    -   **Validate**: Selected
6.  On the form toolbar, click **Save**.

You have defined the *SUBACCOUNT* segmented key based on the company's business needs. You will now define the allowable values for each segment.

## Step 3: Defining the Allowable Values for the Segments of the SUBACCOUNT Segmented Key { .section}

To define the segment values, do the following:

1.  While you are still viewing the *SUBACCOUNT* segmented key on the [Segmented Keys](../UserGuide/CS_20_20_00.md#) \(CS202000\) form, click *1* in the **Segment ID** column of the table.

    The system opens the [Segment Values](../UserGuide/CS_20_30_00.md) \(CS203000\) form for the *1* segment of the *SUBACCOUNT* segmented key.

2.  On the table toolbar, click **Add Row**, and specify the following settings in the added row:
    -   **Value**: `000`
    -   **Description**: `All other products`
3.  Add five more rows with the following settings. These segment values represent the group of items to which the applicable item belongs.

    |Value|Description|
    |-----|-----------|
    |`ELE`|`Electronics and computer equipment`|
    |`EQU`|`Juicers and their components`|
    |`FRU`|`Fruit`|
    |`JAM`|`Jams`|
    |`NSS`|`Non-stock items and services`|

4.  On the form toolbar, click **Save**.
5.  In the **Segment ID** box, select *2*.
6.  Add six rows with the following settings. These segment values represent the applicable department.

    |Value|Description|
    |-----|-----------|
    |`000`|`Not Defined`|
    |`ENG`|`After-sales engineering`|
    |`FIN`|`Finance`|
    |`MKT`|`Marketing`|
    |`OPS`|`Operations`|
    |`SLS`|`Sales`|

7.  On the form toolbar, click **Save**.

You have specified the allowable values for the subaccount segments.

## Step 4: Changing Subaccounts { .section}

You have enabled the *Subaccounts* feature on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form and configured subaccounts in the system. Because transactions had already been added to the system before you performed these steps, the system added the *0* subaccount and specified it for all these transactions.

You need to change the *0* subaccount so that it contains the values that you have specified for the *SUBACCOUNT* segmented key. Do the following:

1.  Open the [Subaccounts](../UserGuide/GL_20_30_00.md) \(GL203000\) form.
2.  In the **Subaccount** column of the only row, double-click the subaccount identifier, and change it to `000-000`.
3.  On the form toolbar, click **Save**.
4.  In the dialog box that opens, click **Yes**.

Now all the transactions that existed before you configured subaccounts are related to the *000-000* subaccount.

You have configured subaccounts in the system. Now the appropriate subaccounts must be specified for every transaction in the system.

**Parent topic:**[Subaccounts](../ImplementationGuide/config_Subaccounts_Mapref.md)

