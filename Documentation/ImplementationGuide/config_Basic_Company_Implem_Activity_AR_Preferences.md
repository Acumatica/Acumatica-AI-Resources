# Accounts Receivable: To Specify Accounts Receivable Preferences {#_7d50ea5c-cda7-44ca-8fc5-23c9f353297b .task}

In this activity, you will learn how to define the basic settings to be used for the accounts receivable functionality.

## Story { .section}

Suppose that as an administrator, you need to define the preference settings for the accounts receivable functionality. You need to specify the default customer class and other settings that will make it easier for users to create AR documents.

## Process Overview { .section}

In this activity, you will specify accounts receivable preferences on the [Accounts Receivable Preferences](../UserGuide/AR_10_10_00.md) \(AR101000\) form.

## System Preparation { .section}

Before you start specifying accounts receivable preference settings, make sure that the following tasks have been performed in the system:

1.  The company has been created and its actual ledger has been specified; see [Company Without Branches: To Configure a Company Without Branches](config_Basic_Company_Implem_Activity_Enabling_Features.md) and [General Ledger: To Create an Actual Ledger](config_Basic_Company_Implem_Activity_Actual_Ledger.md).
2.  The credit terms that are used by customers have been created, as described in [Credit Terms: To Define Single-Installment Credit Terms](config_Basic_Company_Implem_Activity_Credit_Terms.md).
3.  The default customer class has been created, as described in [Accounts Receivable: To Create a Customer Class](config_Basic_Company_Implem_Activity_Customer_Classes.md).

## Step: Specifying the Accounts Receivable Preferences { .section}

To specify the basic settings that will apply to accounts receivable, do the following:

1.  Sign in to the company you have prepared with the *admin* username.
2.  Open the [Accounts Receivable Preferences](../UserGuide/AR_10_10_00.md) \(AR101000\) form.

    Note that all the required settings \(that is, those marked with an asterisk\) have already been specified by default.

3.  In the **Posting Settings** section of the **General** tab, make sure that the **Automatically Post on Release** check box is selected. With this setting, AR transactions will be automatically posted to the general ledger once they are released.
4.  In the **Data Entry Settings** section of the **General** tab, specify the following settings, which simplify the processing of AR documents:
    -   **Default Customer Class ID**: *DEFAULT*
    -   **Hold Documents on Entry**: Cleared
    -   **Validate Document Totals on Entry**: Cleared
    -   **Require Payment Reference on Entry**: Cleared
5.  On the form toolbar, click **Save**.

**Parent topic:**[Accounts Receivable](../ImplementationGuide/config_AR_Mapref.md)

