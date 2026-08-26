# Cash Management: To Create Cash Accounts {#_df2987db-747f-452f-b2a8-21ec50f54750 .task}

In this activity, you will learn how to create cash accounts in the system.

## Story { .section}

Suppose that as an administrator, you need to add cash accounts to the system, as requested by the accountant of the SweetLife company. You will create cash accounts that correspond to the following GL accounts: *10100 - Petty Cash* and *10200 - Company Checking Account*.

## Process Overview { .section}

In this activity, on the [Cash Accounts](../UserGuide/CA_20_20_00.md) \(CA202000\) form, you will create a cash account and a company checking account to be used with this cash account.

## System Preparation { .section}

Before you start creating the cash accounts, make sure that the following tasks have been performed in the system:

1.  The company and its actual ledger have been created, as described in [Company Without Branches: To Configure a Company Without Branches](config_Basic_Company_Implem_Activity_Enabling_Features.md) and [General Ledger: To Create an Actual Ledger](config_Basic_Company_Implem_Activity_Actual_Ledger.md).
2.  The cash management preference settings have been defined, as described in [Cash Management: To Specify Cash Management Preferences](config_Basic_Company_Implem_Activity_CA_Preferences.md).
3.  The entry types of cash operations has been defined in the system, as described in [Cash Management: To Create an Entry Type](config_Basic_Company_Implem_Activity_Entry_Types.md).

## Step 1: Creating the Cash Register Account { .section}

To configure SweetLife's cash register account, do the following:

1.  Sign in to the company you have prepared with the *admin* username.
2.  On the [Cash Accounts](../UserGuide/CA_20_20_00.md) \(CA202000\) form, add a new record.
3.  In the Summary area, specify the following settings:
    -   **Cash Account**: `10100`
    -   **Account**: *10100 - Petty Cash*

        This box holds the GL account to which this cash account is linked, so that cash transactions can be traced in the general ledger.

    -   **Description**: `SweetStore Cash Register`
4.  On the table toolbar of the **Payment Methods** tab, click **Add Row**.
5.  In the **Payment Method** column, select *CASH*.
6.  On the form toolbar, click **Save**.

## Step 2: Creating the Company Checking Account { .section}

To configure a cash account to be used with the company checking account, do the following:

1.  While you are still on the [Cash Accounts](../UserGuide/CA_20_20_00.md) \(CA202000\) form, click **Add New Record** on the form toolbar.
2.  In the Summary area, specify the following settings:
    -   **Cash Account**: `10200`
    -   **Account**: *10200 - Company Checking Account*
    -   **Description**: `Checking Account`
3.  On the table toolbar of the **Payment Methods** tab, click **Add Row**.
4.  In the **Payment Method** column of the added row, select *CHECK*.
5.  On the table toolbar of the **Entry Types** tab, click **Add Row**.
6.  In the **Entry Type ID** column of the new row, select *BANKFEE*.
7.  On the form toolbar, click **Save**.

**Parent topic:**[Cash Management](../ImplementationGuide/config_CA_Mapref.md)

