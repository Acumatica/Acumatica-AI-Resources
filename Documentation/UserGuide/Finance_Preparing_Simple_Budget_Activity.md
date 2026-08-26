# Simple Budget: Process Activity {#_52ca8dc0-0b33-42ba-aed8-f6215dbf666e .task}

In this activity, you will learn how to prepare simple budgets by uploading data from Excel files.

## Story {#section_gjk_mjv_vxb .section}

Suppose that the sales manager of SweetLife Fruits &amp; Jams has prepared an Excel file with the sales budget for the SweetLife company. The sales budget contains the amounts of each stock and non-stock item \(jams, fruit, equipment, services, and other products\) that the company's stores plan to sell in 2026.

Further suppose that the production manager of SweetLife has prepared an Excel file with a production budget for SweetLife, with amounts based on the sales budget. Acting as a SweetLife accountant, you have to upload these budgets to the system.

## Configuration Overview {#section_jjk_mjv_vxb .section}

In the *U100* dataset, the following tasks have been performed for the purposes of this activity:

-   On the [Companies](CS_10_15_00.md) \(CS101500\) form, the *SWEETLIFE* company has been defined.
-   On the [Branches](CS_10_20_00.md) \(CS102000\) form, the *HEADOFFICE* branch of the *SWEETLIFE* company has been created.
-   On the [Ledgers](GL_20_15_00.md) \(GL201500\) form, the *BUDGET* ledger has been added.

## Process Overview {#section_mjk_mjv_vxb .section}

In this activity, on the [Budgets](GL_30_20_10.md) \(GL302010\) form, you will specify the basic settings of a simple budget \(branch, ledger, and financial year\) and add the budget articles to the table. You will then post the budgets to a budget ledger by releasing the budget articles on the [Release Budgets](GL_50_55_10.md) \(GL505510\) form.

## System Preparation {#section_ojk_mjv_vxb .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as an accountant Nenad Pasic by using the *pasic* username and the *123* password.
2.  To define the needed budget ledger, make sure that you have performed the following prerequisite activity: [Budget Ledger: Implementation Activity](../ImplementationGuide/BudgetLedger_Implem_Activity.md).
3.  Make sure that no budget tree has been configured on the [Budget Configuration](GL_20_50_00.md) \(GL205000\) form. You cannot complete this activity if a budget tree has been configured.

## Step 1: Uploading Budget Data {#section_qjk_mjv_vxb .section}

To upload the budgets from the respective Excel files, do the following:

1.  Open the [Budgets](GL_30_20_10.md) \(GL302010\) form.
2.  In the **Branch** box of the Summary area, ensure that *HEADOFFICE* is selected.
3.  In the **Ledger** box, ensure that *BUDGET* is selected.
4.  In the **Financial Year** box, select *2026*.
5.  On the table toolbar, click **Load Records from File**.
6.  In Step 1 of the **Import Data** wizard, which opens, click **Upload File** and select the [Sales\_Budget\_HEADOFFICE\_2026.xlsx](Files/Sales_Budget_HEADOFFICE_2026.xlsx) file.
7.  In Step 2 of the wizard, leave the default values and click **Next**.
8.  In Step 3 of the wizard, leave all the default settings and click **Finish**.

    The system uploads the budget articles from the Excel file.

9.  On the form toolbar, click **Save** to save the uploaded budget.
10. In the **Ledger** box, make sure that *BUDGET* is selected.
11. In the **Financial Year** box, make sure that *2026* is selected.
12. On the table toolbar, click **Load Records from File**.
13. In Step 1 of the wizard that opens, click **Upload File** and select the [Production\_Budget\_HEADOFFICE\_2026.xlsx](Files/Production_Budget_HEADOFFICE_2026.xlsx) file.
14. In Step 2 of the wizard, leave *Update Existing* in the **Mode** box, and click **Next**.
15. In Step 3 of the wizard, leave all the default settings and click **Finish**.

    The system uploads the budget articles from the Excel file.

16. On the form toolbar, click **Save** to save the uploaded budget.

## Step 2: Releasing the Budgets {#section_ujk_mjv_vxb .section}

To release the budgets, do the following:

1.  Open the [Release Budgets](GL_50_55_10.md) \(GL505510\) form.
2.  On the form toolbar, click **Release All**.

    The **Processing** dialog box opens. Close this dialog box when the processing is complete.


You have prepared a simple sales budget and a simple production budget for the *HEADOFFICE* branch for the year 2026.

**Parent topic:**[Preparing a Simple Budget](../UserGuide/Finance_Preparing_Simple_Budget_Mapref.md)

