# Credit Terms: To Define Credit Terms with a Cash Discount {#_428940dc-5fc4-4927-b2c6-c2d42d23a063 .task}

In this activity, you will learn how to define credit terms with a cash discount, which can be used by vendors in their relations with the company and by the company in its relations with customers.

## Story { .section}

Suppose that SweetLife has agreements with its vendors stipulating that the company pays the full amount of each document within 30 days. A 3% cash discount is provided by the vendor if a document is fully paid within 10 days. Acting as an administrator, you have to define one set of credit terms, which indicate that the full amount of each document must be paid within 30 days and a cash discount can be taken if a document is paid within 10 days.

## Process Overview { .section}

In this activity, on the [Credit Terms](../UserGuide/CS_20_65_00.md) \(CS206500\) form, you will create the credit terms for the new company.

## System Preparation { .section}

Before you start defining the credit terms, make sure that the company and its actual ledger has been created, as described in [Company Without Branches: To Configure a Company Without Branches](config_Basic_Company_Implem_Activity_Enabling_Features.md) and [General Ledger: To Create an Actual Ledger](config_Basic_Company_Implem_Activity_Actual_Ledger.md).

## Step: Defining Credit Terms with a Cash Discount { .section}

To define the needed set of credit terms, do the following:

1.  Sign in to the company you have prepared with the *admin* username.
2.  On the [Credit Terms](../UserGuide/CS_20_65_00.md) \(CS206500\) form, add a new record.
3.  In the **General Settings** section, specify the following settings:
    -   **Terms ID**: `310N30`
    -   **Description**: `3% 10 Days - Net 30`
    -   **Installment Type**: *Single*
4.  In the **Due Day Settings** section, specify the following settings:
    -   **Due Day Type**: *Fixed Number of Days*
    -   **Due Day 1**: `30`
5.  In the **Cash Discount Settings** section, specify the following settings:
    -   **Discount Day**: `10`
    -   **Discount %**: `3`
6.  On the form toolbar, click **Save**.

When the applicable credit terms have been defined in the system, vendor and customer classes \(and vendors and customers\) can be created.

**Parent topic:**[Credit Terms](../ImplementationGuide/config_Credit_Terms_Mapref.md)

