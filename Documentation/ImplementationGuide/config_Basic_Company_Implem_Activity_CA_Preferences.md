# Cash Management: To Specify Cash Management Preferences {#_a519da15-93a5-4d02-a008-23c76e003497 .task}

In this activity, you will learn how to specify the basic settings to be used for the cash management functionality.

## Story { .section}

Suppose that the SweetLife company with an actual ledger has been created and the company's chart of accounts has been defined in Acumatica ERP. Acting as an administrator, you need to specify the cash management preference settings. You will specify the cash-in-transit account to be used, which is mandatory in the system, and the settings that make it easier for users to create entities when using the cash management functionality.

## Process Overview { .section}

In this activity, you will specify cash management preferences on the [Cash Management Preferences](../UserGuide/CA_10_10_00.md) \(CA101000\) form.

## System Preparation { .section}

Before you start specifying the cash management preference settings, make sure that the following tasks have been performed in the system:

1.  The company has been created and its actual ledger has been specified; see [Company Without Branches: To Configure a Company Without Branches](config_Basic_Company_Implem_Activity_Enabling_Features.md) and [General Ledger: To Create an Actual Ledger](config_Basic_Company_Implem_Activity_Actual_Ledger.md).
2.  The account that you plan to specify as the cash-in-transit account has been created, as described in [General Ledger: To Create a Chart of Accounts](config_Basic_Company_Implem_Activity_COA.md).

## Step: Specifying the Cash Management Preferences { .section}

You specify the basic settings the system will use for the cash management functionality as follows:

1.  Sign in to the company you have prepared with the *admin* username.
2.  Open the [Cash Management Preferences](../UserGuide/CA_10_10_00.md) \(CA101000\) form.
3.  On the **General** tab, in the **Cash-In-Transit Account** box \(**Reconciliation Settings** section\), select the *10500 - Cash in Transit* account.

    This account is the only cash management setting that is required for a company.

4.  In the **Posting and Release Settings** section, make sure that the **Automatically Post to GL on Release** check box is selected.

    With this setting, all cash transactions will be automatically posted to the general ledger after release.

5.  In the **Data Entry Settings** section, clear the **Hold Transactions on Entry** check box.

    With this setting, when new cash documents are saved, they will have the *Balanced* status, which simplifies the processing of these documents.

6.  Clear the **Require Document Ref. Nbr. on Entry** check box.

    This setting prevents users from having to specify a reference number for cash transactions and deposits created in the system.

7.  On the form toolbar, click **Save**.

**Parent topic:**[Cash Management](../ImplementationGuide/config_CA_Mapref.md)

