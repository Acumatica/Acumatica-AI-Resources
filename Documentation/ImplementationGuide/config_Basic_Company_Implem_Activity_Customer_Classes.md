# Accounts Receivable: To Create a Customer Class {#_9c04e7d3-f378-497e-857f-04d6f9ea5125 .task}

In this activity, you will create a default customer class in the system. This class will provide many of the settings for newly created customers and for other customer classes you create, thus easing the creation of these entities during the next phase of implementation. Among other settings for the customer class, you will specify the credit terms you have created.

## Story { .section}

Suppose that most of the customers of the SweetLife company use the same settings, such as credit terms, statement cycle, payment method, sales account, AR account, and cash discount account. Acting as an administrator, you need to create a default customer class with these settings so that it can supply default settings when customers and other customer classes are created in the system.

## Process Overview { .section}

In this activity, on the [Customer Classes](../UserGuide/AR_20_10_00.md) \(AR201000\) form, you will create the default customer class and specify its settings.

## System Preparation { .section}

Before you start creating the default customer class, make sure that the following tasks have been performed in the system:

1.  The company has been created and an actual ledger has been specified for it; see [Company Without Branches: To Configure a Company Without Branches](config_Basic_Company_Implem_Activity_Enabling_Features.md) and [General Ledger: To Create an Actual Ledger](config_Basic_Company_Implem_Activity_Actual_Ledger.md).
2.  The credit terms that are used by customers have been created, as described in [Credit Terms: To Define Single-Installment Credit Terms](config_Basic_Company_Implem_Activity_Credit_Terms.md).
3.  At least one statement cycle has been defined in the system, as described in [Accounts Receivable: To Create a Statement Cycle](config_Basic_Company_Implem_Activity_Statement_Cycles.md).

## Step: Creating the Default Customer Class { .section}

To create the default customer class, perform the following instructions:

1.  Sign in to the company you have prepared with the *admin* username.
2.  On the [Customer Classes](../UserGuide/AR_20_10_00.md) \(AR201000\) form, add a new record.
3.  In the Summary area, specify the following settings:
    -   **Class ID**: `DEFAULT`
    -   **Description**: `Default Customer Class`
4.  In the **Default General Settings** section of the **General** tab, select *US - United States of America* in the **Country** box.
5.  In the **Default Financial Settings** section of the **General** tab, specify the following settings:
    -   **Terms**: *30D - 30 Days*
    -   **Statement Cycle ID**: *EOM*
    -   **Payment Method**: *CHECK - Check Payment*
6.  On the **GL Accounts** tab, specify the following accounts:
    -   **AR Account**: *11000 - Accounts Receivable*
    -   **Sales Account**: *40000 - Sales Revenue*
    -   **Cash Discount Account**: *52600 - Cash Discount*
7.  On the form toolbar, click **Save**.

**Parent topic:**[Accounts Receivable](../ImplementationGuide/config_AR_Mapref.md)

