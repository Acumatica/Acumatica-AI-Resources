# General Ledger: To Specify General Ledger Preferences {#_4bf5d099-3060-4f2a-8825-4a8ca71e3e43 .task}

In this activity, you will learn how to specify the basic settings to be used for the general ledger functionality.

## Story { .section}

Suppose that a company with an actual ledger has been created and a chart of accounts has been defined in Acumatica ERP. Acting as an administrator, you need to specify the preference settings related to the general ledger functionality. You will specify the accounts that are mandatory for the system and other settings that make it easier for users to create entities in the system.

## Process Overview { .section}

In this activity, you will configure general ledger preferences on the [General Ledger Preferences](../UserGuide/GL_10_20_00.md) \(GL102000\) form.

## System Preparation { .section}

Before you start specifying the general ledger preference settings, make sure that the following tasks have been completed in the system:

1.  The company has been created and its actual ledger has been specified; see [Company Without Branches: To Configure a Company Without Branches](config_Basic_Company_Implem_Activity_Enabling_Features.md) and [General Ledger: To Create an Actual Ledger](config_Basic_Company_Implem_Activity_Actual_Ledger.md).
2.  The Net Income and Retained Earnings accounts have been added to the chart of accounts, as described in [General Ledger: To Create a Chart of Accounts](config_Basic_Company_Implem_Activity_COA.md).

## Step: Specifying the General Ledger Preferences { .section}

You specify the basic settings related to processing GL transactions as follows:

1.  Sign in to the company you have prepared with the *admin* username.
2.  Open the [General Ledger Preferences](../UserGuide/GL_10_20_00.md) \(GL102000\) form.
3.  In the **YTD Net Income Account** box in the **Chart of Accounts Settings** section, select *33000 - Net Income*. This is a required setting for a company.
4.  In the **Retained Earnings Account** box, select *32000 - Retained Earnings*. This setting is also required for a company.

    **Attention:** You can select only an account with the *Liability* type in the **Retained Earnings Account** box. If you enter an account with another type, the system displays an error message.

5.  On the form toolbar, click **Save**.
6.  In the **Posting Settings** section, make sure the **Automatically Post on Release** check box is selected.

    All batches will be automatically posted to the general ledger after release. This setting simplifies batch processing, because no batches with the *Unposted* status will be generated.

7.  In the **Data Entry Settings** section, clear the **Hold Batches on Entry** check box.

    When new batches are saved, they will have the *Balanced* status. This setting also simplifies the processing of batches.

8.  On the form toolbar, click **Save**.

**Parent topic:**[General Ledger](../ImplementationGuide/config_Mapref_GL.md)

