# Account Groups: To Create an Off-Balance Group {#_3d465975-21fe-4f03-8ac1-5db3b7fcb048 .task}

In this implementation activity, you will learn how to create an account group to be used for collecting statistical information.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story {#section_zfp_dm4_grb .section}

Suppose that you are a construction project manager who is configuring project accounting for the ToadGreen Building Group company. You want to know the total amount associated with the number of work hours spent by employees on construction projects \(including an extra work beyond the budgeted number of work hours\), but you do not want to post these amounts to the general ledger because these expenses are billed monthly under separate project budget lines related to labor.

You need to create an off-balance account group for tracking burden expenses in construction projects.

## System Preparation {#section_agp_dm4_grb .section}

To prepare to perform the instructions of the activity, launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded; you should sign in as a construction project manager by using the *ewatson* username and the *123* password.

## Step: Creating an Account Group {#section_bgp_dm4_grb .section}

To create an account group for tracking burden expenses, do the following:

1.  On the [Account Groups](PM_20_10_00.md) \(PM201000\) form, add a new record.
2.  In the **Account Group ID** box, type `BURDEN`.

    Notice that the **Active** check box is selected by default.

3.  In the **Type** box, select *Off-Balance*. Leave the **Expense** check box selected.
4.  In the **Description** box, type `Burden Expenses`.
5.  Save the account group.

**Parent topic:**[Creating Account Groups](../UserGuide/Account_Groups_Mapref.md)

