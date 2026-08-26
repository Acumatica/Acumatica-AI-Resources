# Payment Methods: To Set Up a Payment Method for Use in Payroll {#_2ef7bc67-50d1-4161-ba77-71ef399077b2 .task}

In the following implementation activity, you will learn how to set up a predefined payment method for use in payroll.

## Story { .section}

Suppose that some of the organization's employees should receive printed checks as their payments. Acting as the system administrator, you need to set up the *CHECK* payment method, which is a predefined method, for use in payroll.

## Configuration Overview { .section}

In the *U100 Payroll* snapshot, for the purposes of this activity, the *10200WH* cash account has been created on the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form.

## Process Overview { .section}

In this activity, to set up a predefined payment method for use in payroll, you will do the following:

1.  On the [Payment Methods](CA_20_40_00.md) \(CA204000\) form, you will configure a payment method for use in the payroll functional area.
2.  On the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form, you will enable a cash account for use in the payroll functional area.

## System Preparation { .section}

Before you start setting up the payment method, you should launch the Acumatica ERP website and sign in as a system administrator by using the following credentials:

-   Username: *gibbs*
-   Password: *123*

As a prerequisite activity, in the company to which you are signed in, be sure you have prepared the system for the implementation of the payroll functionality, as described in [Payroll Basic Configuration: Implementation Activity](config_Payroll_Basic_Implem_Activity.md).

## Step 1: Configuring a Payment Method for Use in Payroll { .section}

To enable a payment method for use in the payroll functional area, do the following:

1.  On the [Payment Methods](CA_20_40_00.md) \(CA204000\) form, open the *CHECK* payment method.
2.  In the Summary area, select the **Use in PR** check box. Leave the **Use in AP** and **Use in AR** check boxes selected.
3.  On the **Settings for Use in PR** tab, do the following:
    1.  Make sure that the **Print Checks** option button is selected in the **Processing** section.
    2.  In the **Report** box, select the *Paychecks \(PR641010\)* report.
4.  On the form toolbar, click **Save**.

## Step 2: Enabling a Cash Account for Use in Payroll { .section}

To enable a cash account for use in the payroll functional area, do the following:

1.  On the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form, open the *10200WH* cash account.
2.  On the **Payment Methods** tab, for the *CHECK* payment method, select the **Use in PR** check box.
3.  On the form toolbar, click **Save**.

**Parent topic:**[Setting Up Payment Methods](../UserGuide/config_Payroll_Payment_Methods_mapref.md)

