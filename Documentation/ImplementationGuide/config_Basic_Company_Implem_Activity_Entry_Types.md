# Cash Management: To Create an Entry Type {#_81a7ae15-fd4b-4ddf-b118-980c74139155 .task}

In this activity, you will learn how to define an entry type, which categorizes cash operations in the system.

## Story { .section}

Suppose that as an administrator, you need to define entry types for cash operations of the SweetLife company. For now, an entry type for recording bank service charges is needed.

## Process Overview { .section}

In this activity, you will create an entry type on the [Entry Types](../UserGuide/CA_20_30_00.md) \(CA203000\) form.

## System Preparation { .section}

Before you start creating the entry type, make sure that the following tasks have been performed in the system:

1.  The company has been created, as has its actual ledger, as described in [Company Without Branches: Implementation Checklist](config_Basic_Company_Implem_Checklist.md) and [General Ledger: To Create an Actual Ledger](config_Basic_Company_Implem_Activity_Actual_Ledger.md).
2.  The cash management preference settings have been defined, as described in [Cash Management: To Specify Cash Management Preferences](config_Basic_Company_Implem_Activity_CA_Preferences.md).

## Step: Defining an Entry Type { .section}

To define an entry type, perform the following instructions:

1.  Sign in to the company you have prepared with the *admin* username.
2.  On the [Entry Types](../UserGuide/CA_20_30_00.md) \(CA203000\) form, create a new record.
3.  In the **Entry Type ID** column, type `BANKFEE`.
4.  In the **Disb./Receipt** column, select *Disbursement*.
5.  In the **Entry Type Description** column, type `Bank Fees`.
6.  In the **Module** column, make sure that *CA* \(the default setting\) is selected.
7.  In the **Default Offset Account** column, select *61100 - Bank Service Charges*.
8.  On the form toolbar, click **Save** to save the entry type.

When you create cash accounts, you can assign this entry type to the necessary cash accounts. For details, see [Cash Management: To Create Cash Accounts](config_Basic_Company_Implem_Activity_Cash_Accounts.md).

**Parent topic:**[Cash Management](../ImplementationGuide/config_CA_Mapref.md)

