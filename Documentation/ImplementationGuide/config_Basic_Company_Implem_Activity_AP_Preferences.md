# Accounts Payable: To Specify Accounts Payable Preferences {#_931e7038-3340-4b61-a88a-46de8670f376 .task}

In this activity, you will learn how to specify the basic settings to be used in accounts payable.

## Story { .section}

Suppose that as an administrator, you need to define preference settings for the accounts payable functionality. You need to specify the default vendor class and other settings that will make it easier for users to create AP documents.

## Process Overview { .section}

In this activity, on the [Accounts Payable Preferences](../UserGuide/AP_10_10_00.md) \(AP101000\) form, you will specify accounts payable preferences.

## System Preparation { .section}

Before you start specifying the accounts payable preference settings, make sure that the following tasks have been performed in the system:

1.  The company has been created and its actual ledger has been specified; [Company Without Branches: To Configure a Company Without Branches](config_Basic_Company_Implem_Activity_Enabling_Features.md) and [General Ledger: To Create an Actual Ledger](config_Basic_Company_Implem_Activity_Actual_Ledger.md).
2.  The credit terms that are used by vendors have been created, as described in [Credit Terms: To Define Single-Installment Credit Terms](config_Basic_Company_Implem_Activity_Credit_Terms.md).
3.  The default vendor class has been created, as described in [Accounts Payable: To Create a Vendor Class](config_Basic_Company_Implem_Activity_Vendor_Classes.md).

## Step: Specifying the Accounts Payable Preferences { .section}

To specify the required and recommended settings that apply to accounts payable, do the following:

1.  Sign in to the company you have prepared with the *admin* username.
2.  Open the [Accounts Payable Preferences](../UserGuide/AP_10_10_00.md) \(AP101000\) form.

    Note that all the required settings \(that is, those marked with an asterisk\) have already been specified by default.

3.  In the **Posting Settings** section of the **General** tab, make sure that the **Automatically Post on Release** check box is selected. With this setting, transactions related to AP documents will be automatically posted to the general ledger once they are released.
4.  In the **Data Entry Settings** section of the **General** tab, specify the following settings, which simplify the processing of AP documents:
    -   **Default Vendor Class ID**: *DEFAULT*
    -   **Hold Documents on Entry**: Cleared
    -   **Require Approval of Bills Prior to Payment**: Cleared
    -   **Validate Document Totals on Entry**: Cleared
    -   **Require Vendor Reference**: Cleared
5.  On the form toolbar, click **Save**.

**Parent topic:**[Accounts Payable](../ImplementationGuide/config_AP_Mapref.md)

