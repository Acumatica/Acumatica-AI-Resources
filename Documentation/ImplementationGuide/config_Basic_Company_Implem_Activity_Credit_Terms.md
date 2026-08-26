# Credit Terms: To Define Single-Installment Credit Terms {#_ecb8dcdd-729d-4f38-9e77-7b3c28f4e052 .task}

In this activity, you will learn how to define single-installment credit terms, which can be used by vendors in their relations with the company and by the company in its relations with customers.

## Story { .section}

Suppose that SweetLife has agreements with its customers stipulating that the full amount of each document will be paid within 30 days; no cash discounts are provided. Acting as an administrator, you have to define one set of credit terms, which indicate that the full amount of each document must be paid within 30 days.

## Process Overview { .section}

In this activity, on the [Credit Terms](../UserGuide/CS_20_65_00.md) \(CS206500\) form, you will create the credit terms for the new company.

## System Preparation { .section}

Before you start defining the credit terms, make sure that the company and its actual ledger has been created, as described in [Company Without Branches: To Configure a Company Without Branches](config_Basic_Company_Implem_Activity_Enabling_Features.md) and [General Ledger: To Create an Actual Ledger](config_Basic_Company_Implem_Activity_Actual_Ledger.md).

## Step: Defining Credit Terms { .section}

To define the needed set of credit terms, do the following:

1.  Sign in to the company you have prepared with the *admin* username.
2.  On the [Credit Terms](../UserGuide/CS_20_65_00.md) \(CS206500\) form, add a new record.
3.  In the **General Settings** section, specify the following settings:
    -   **Terms ID**: `30D`
    -   **Description**: `30 Days`
    -   **Installment Type**: *Single*
4.  In the **Due Day Settings** section, specify the following settings:
    -   **Due Day Type**: *Fixed Number of Days*
    -   **Due Day 1**: `30`
5.  On the form toolbar, click **Save**.

**Parent topic:**[Credit Terms](../ImplementationGuide/config_Credit_Terms_Mapref.md)

