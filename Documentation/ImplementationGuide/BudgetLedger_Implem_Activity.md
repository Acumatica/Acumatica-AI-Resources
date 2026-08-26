# Budget Ledger: Implementation Activity {#_241f244e-060d-4fd4-b59c-62617fb2f59b .task}

In this activity, you will learn how to create a budget ledger for a company in Acumatica ERP.

## Story { .section}

Suppose that as an accountant, you need to create a budget ledger that will hold the optimistic budgets for the SweetLife Fruits &amp; Jams and Muffins &amp; Cakes companies.

## Configuration Overview {#section_jjk_mjv_vxb .section}

In the *U100* dataset, the following tasks have been performed for the purposes of this activity:

-   On the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form, the *SWEETLIFE* and *MUFFINS* companies have been created.
-   On the [Branches](../UserGuide/CS_10_20_00.md) \(CS102000\) form, the branches of the *SWEETLIFE* company have been defined: *HEADOFFICE*, *SWEETEQUIP*, and *RETAIL*. The branches of the *MUFFINS* company have also been defined: *MHEAD* and *MRETAIL*.

## Process Overview {#section_mjk_mjv_vxb .section}

In this activity, on the [Ledgers](../UserGuide/GL_20_15_00.md) \(GL201500\) form, you will create a budget ledger for an optimistic budget. You will define the ledger to hold the budgets of the SweetLife Fruits &amp; Jams and Muffins &amp; Cakes companies.

## System Preparation { .section}

Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as an accountant Nenad Pasic by using the *pasic* username and the *123* password.

## Step: Creating a Budget Ledger { .section}

To create a budget ledger to be used by both companies, do the following:

1.  On the [Ledgers](../UserGuide/GL_20_15_00.md) \(GL201500\) form, add a new record.
2.  In the **Ledger ID** box of the Summary area, type `BUDGETOPT`.
3.  In the **Description** box, type `Ledger for optimistic budgets`.
4.  In the **Type** box, select *Budget*.
5.  On the table toolbar of the **Companies** tab, click **Add Row**, and select *SWEETLIFE* in the **Company** column of the added row.
6.  Click **Add Row** again, and select *MUFFINS* in the **Company** column of the added row.
7.  On the form toolbar, click **Save**.

    On the **Branches** tab, notice that all the branches of the SweetLife Fruits &amp; Jams and Muffins &amp; Cakes companies have been added. The SweetLife Fruits &amp; Jams company is made up of the *HEADOFFICE*, *SWEETEQUIP*, and *RETAIL* branches. The Muffins &amp; Cakes company has the *MHEAD* and *MRETAIL* branches.


You have created a budget ledger that can now be used to store optimistic budgets for both companies.

**Parent topic:**[Budget Ledger](../ImplementationGuide/BudgetLedger_Mapref.md)

