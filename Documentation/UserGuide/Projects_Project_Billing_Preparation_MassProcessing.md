# Project Billing Preparation: Mass Processing {#_21a73326-a715-480b-811b-c1606f4c052b .concept}

This topic explains how to perform mass-processing operations related to project billing, and how the system generates, changes, or works with documents as a result of the mass processing.

## Mass-Billing Projects { .section}

Multiple projects can be billed at the same time on the [Run Project Billing](PM_50_30_00.md) \(PM503000\) form. On this form, you can run billing for multiple projects that are pending billing as of the **Invoice Date**, which is selected in the Summary area of the form. You can also narrow the projects to be shown by specifying the project status, statement cycle, customer class, customer, and project template in the Selection area of the form. For more information on preparing projects for billing, see [Project Billing Preparation: General Information](Projects_Project_Billing_Preparation_GeneralInfo.md).

**Important:** The form displays projects to which your user account has sufficient access rights.

In the table on the form, the system lists the following projects:

-   For progress billing, projects that have a nonzero **Pending Invoice Amount Total** \(which can be either positive or negative\). For more information about the progress billing process, see [Progress Billing: General Information](Projects_Billing_Project_by_Progress_GeneralInfo.md).
-   For time and material billing, projects that have unbilled project transactions—that is, the transactions with the **Billed** check box cleared on the [Project Transactions](PM_30_40_00.md) \(PM304000\) form. The system selects these project transactions based on the option selected in the **Billing Cutoff** box on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form as follows:

    -   If *Include Transactions with Billing Date* is selected, the system selects all unbilled transactions with dates earlier than or the same as the **Invoice Date** selected in the Summary area of the form.
    -   If *Include Only Transactions Before Billing Date* is selected, the system selects all unbilled transactions with dates that are earlier than the **Invoice Date**.
    For more information about the time and material billing process, see [Time and Material Billing: General Information](Projects_Billing_for_Time_and_Material_GeneralInfo.md).

-   For recurring billing, projects that include at least one non-completed project task that has been configured for recurring billing. The system shows the projects billed on demand and the projects that have a **Next Billing Date**, which is specified on the **Summary** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form, that is earlier than or the same as the billing date. \(The billing date is specified in the **Invoice Date** box in the Selection area of the [Run Project Billing](PM_50_30_00.md) form.\)

    For more information about recurring billing, see [Project Billing Preparation: Recurring Billing](Projects_Project_Billing_Preparation_Recurring_Billing.md).


When you run billing, the system creates pro forma invoices or accounts receivable invoices \(depending on the workflow configured for the project\) with the billing date, which is specified in the **Invoice Date** box.

**Parent topic:**[Preparing Projects to Billing](../UserGuide/Projects_Project_Billing_Preparation_Mapref.md)

