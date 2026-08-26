# Accounts Payable: To Create a Vendor Class {#_90a53490-44c9-42c8-8b4d-b3e036551c41 .task}

You will now define the default vendor class in the system, which will provide many of the settings for newly created vendors and for other vendor classes you create, thus easing the creation of these entities during the next phase of implementation. Among other settings for the vendor class, you will specify the credit terms you have created.

## Story { .section}

Suppose that most of the vendors of the SweetLife company use the same settings, such as credit terms, payment method, cash account, AP account, and cash discount account. Acting as an administrator, you need to create a default vendor class with these settings so that it can supply default settings when vendors and other vendor classes are created in the system.

## Process Overview { .section}

In this activity, on the [Vendor Classes](../UserGuide/AP_20_10_00.md) \(AP201000\) form, you will create a vendor class and specify the default settings for it.

## System Preparation { .section}

Before you start creating the vendor class, make sure that the following tasks have been performed in the system:

1.  The company has been created and an actual ledger has been assigned to it; see [Company Without Branches: To Configure a Company Without Branches](config_Basic_Company_Implem_Activity_Enabling_Features.md) and [General Ledger: To Create an Actual Ledger](config_Basic_Company_Implem_Activity_Actual_Ledger.md).
2.  The credit terms that are used by vendors have been created, as described in [Credit Terms: To Define Single-Installment Credit Terms](config_Basic_Company_Implem_Activity_Credit_Terms.md).

## Step: Creating the Default Vendor Class { .section}

To create the default vendor class, do the following:

1.  Sign in to the company you have prepared with the *admin* username.
2.  On the [Vendor Classes](../UserGuide/AP_20_10_00.md) \(AP201000\) form, add a new record.
3.  In the Summary area, specify the following settings:
    -   **Class ID**: `DEFAULT`
    -   **Description**: `Default Vendor Class`
4.  In the **Default General Settings** section of the **General** tab, select *US - United States of America* in the **Country** box.
5.  In the **Default Financial Settings** section of the **General** tab, specify the following settings:
    -   **Terms**: *310N30 - 3% 10 Days- Net 30*
    -   **Payment Method**: *CHECK - Check Payment*
    -   **Cash Account**: *10200 - Checking Account*
6.  On the **GL Accounts** tab, specify the following accounts:
    -   **AP Account**: *20000 - Accounts Payable*
    -   **Expense Account**: *81000 - Other Expenses*
    -   **Cash Discount Account**: *52600 - Cash Discount*
7.  On the form toolbar, click **Save**.

You can now specify in the preference settings that this is the default vendor class, in addition to specifying other basic settings that will be applicable in accounts payable. For details, see [Accounts Payable: To Specify Accounts Payable Preferences](config_Basic_Company_Implem_Activity_AP_Preferences.md).

**Parent topic:**[Accounts Payable](../ImplementationGuide/config_AP_Mapref.md)

