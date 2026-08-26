# Accounts Receivable: To Create a Statement Cycle {#_98d9bb2a-43ff-40b7-bfbc-f0b49c771e6f .task}

In this activity, you will learn how to define a statement cycle in the system.

## Story { .section}

Suppose that the SweetLife company informs its customers about their current balances and outstanding documents by sending customers statements at the end of every month. In the statements, the outstanding customer documents should be broken down by the following aging periods: 0 to 10 days, 11 to 20 days, 21 to 30 days, and more than 30 days. The outstanding documents are aged based on their due dates. Acting as an administrator, you need to define the statement cycle in the system.

## Process Overview { .section}

In this activity, you will create a statement cycle on the [Statement Cycles](../UserGuide/AR_20_28_00.md) \(AR202800\) form.

## System Preparation { .section}

Before you start defining statement cycles, make sure that the company has been created and its actual ledger has been specified; see [Company Without Branches: To Configure a Company Without Branches](config_Basic_Company_Implem_Activity_Enabling_Features.md) and [General Ledger: To Create an Actual Ledger](config_Basic_Company_Implem_Activity_Actual_Ledger.md).

## Step: Defining a Statement Cycle { .section}

To define a statement cycle, do the following:

1.  Sign in to the company you have prepared with the *admin* username.
2.  On the [Statement Cycles](../UserGuide/AR_20_28_00.md) \(AR202800\) form, add a new record.
3.  In the Summary area, specify the following settings:
    -   **Cycle ID**: `EOM`
    -   **Description**: `End of Month`
4.  In the **General Settings** section, make sure that *End of Month* is selected in the **Schedule Type** box.
5.  In the **Aging Settings** section, specify the following settings:
    -   **Use Financial Periods for Aging**: Cleared
    -   **Aging Period \(Days\), 1 –**: `10`

        Once you specify the first aging period, the system automatically specifies the other aging periods, based on the assumption that all the aging periods will have the same length. The system also automatically specifies the descriptions for aging periods. If needed, you can change the automatically specified settings of aging periods to custom ones.

    -   **Age Based On**: *Due Date*

        This setting means that the system will use the due dates of the outstanding documents to determine the appropriate aging period in customer statements and accounts receivable aging reports for outstanding invoices, debit memos, and overdue charges.

6.  On the form toolbar, click **Save**.

**Parent topic:**[Accounts Receivable](../ImplementationGuide/config_AR_Mapref.md)

