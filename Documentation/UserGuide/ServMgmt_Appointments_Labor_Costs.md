# Tracking Labor Costs and Billing {#_fec4e070-4c2b-4bef-bd35-578979e36944 .concept}

In Acumatica ERP, you can track the labor costs of staff members who work in appointments and bill customers for their time. The system calculates these costs automatically on the [Appointments](FS_30_02_00.md) \(FS300200\) form.

## Calculation of Labor Costs { .section}

When you assign a staff member to attend an appointment, the line item for the staff member is also added on the **Profitability** tab of the [Appointments](FS_30_02_00.md) \(FS300200\) form with the rate specified in the **Unit Cost** column. The system copies this rate from the **Rate** column of the [Labor Rates](PM_20_99_00.md) \(PM209900\) form for the staff member.

**Tip:** The system calculates the labor cost for each staff member of an appointment with the *Employee* or *Labor Item* labor rate type and the *Hourly* type of employment assigned to the staff member on the [Labor Rates](PM_20_99_00.md) form.

When the appointment is completed, the system calculates the total cost of performing the job by each staff member \(**Cost Total**\) by multiplying the values in the **Actual Quantity** and **Unit Cost** columns on the **Profitability** tab. Thus, you can see how much has been paid to each staff member that attended the appointment.

## Labor Billing { .section}

If the following conditions are met for the service order type of an appointment on the General tab of the [Service Order Types](FS_20_23_00.md) \(FS202300\) form, the labor can be billed for the appointment:

-   The *Project Transactions* option is selected in the **Generated Billing Documents** box of the **Billing Settings** section.
-   The *Cost as Cost* option is selected in the **Billing Type** box of the **Billing Settings** section.
-   The **Automatically Create Time Activities from Appointments** check box is selected in the **Integrating with Time &amp; Expenses** section.

If the **Track Time** check box is selected for a line on the **Log** tab, the **Billable** check box is selected by default, but you can clear it if necessary. If the **Track Time** check box is cleared for a line, the **Billable** check box is cleared and read-only. You can also specify the billable time or amount for labor in the **Billable Time** and **Billable Amount** columns for the lines for which the labor is billed.

**Parent topic:**[Tracking Costs in Service Documents](../UserGuide/ServMgmt_Tracking_Costs_in_ServDocuments_mapref.md)

