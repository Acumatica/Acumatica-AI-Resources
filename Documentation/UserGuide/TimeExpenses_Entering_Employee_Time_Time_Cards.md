# Employee Time Entry: Time Cards {#_df6eed30-5167-45c2-8419-da46715e16eb .concept}

Acumatica ERP provides time card functionality to assist you with efficient billing, payroll calculation, and project cost estimation.

**Important:** The time card functionality is available if the *Advanced Financials* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Creating Time Cards { .section}

In Acumatica ERP, a time card is a report of the time an employee spends on each activity during a time card period. A time card can be created for a weekly, biweekly, semi-monthly, or monthly period, depending on the time card frequency specified for the employee on the [Employees](EP_20_30_00.md) \(EP203000\) form. You can also create time cards for custom weeks. For details, see [Employee Time Entry: Time Card Frequencies](TimeExpenses_Entering_Employee_Time_Time_Card_Frequency.md).

You can create time cards on the [Employee Time Cards](EP_30_50_00.md) \(EP305000\) form in either of the following ways:

-   Manually, by entering all their settings.
-   By clicking the **Preload from Previous Time Card** button on the **Summary** tab. The system copies all rows from the most recently submitted time card for the selected employee prior to the selected week, excluding rows with earning types used for holidays or vacations.

You can create a time card for any period in the past or future, as long as no time card already exists for the selected employee for that period. By default, when you create a new time card, the system inserts the current period number in the **Period** box if the selected employee has no time card for this period. If a time card for the current period already exists, the system inserts the number of the next available period, based on the most recent existing time card.

When preparing a time card, you report working time by adding rows on the **Summary** tab of the [Employee Time Cards](EP_30_50_00.md) form. You must add a separate row for each of the following cases:

-   Activities associated with different projects or project tasks
-   Activities related to different earning types
-   Billable and non-billable activities

After you have created a time card, you can review it, along with other time cards, on the [Employee Time Cards](EP_30_50_00.md) form if the username you are signed in with is associated with the employee selected on the form. That is, the username must be specified in the **Employee Login** box on the **General** tab of the [Employees](EP_20_30_00.md) form for this employee. This form lists the following time cards:

-   Yours
-   Those of the employees for whom you are an appointed delegate
-   Those of employees in the workgroups at lower levels in the company tree than your workgroup

**Tip:** For more information about the company tree, see [Company Tree and Workgroups](EP__con_Company_Organizational_Chart.md).

If you create a time card for an employee other than the one associated with your signed-in username, that employee must also have a username specified in the **Employee Login** box on the **General** tab of the [Employees](EP_20_30_00.md) form.

If time cards are mandatory in your company, you can make them required on a per-employee basis by selecting the **Time Card is Required** check box on the [Employees](EP_20_30_00.md) \(EP203000\) form.

## Viewing the Statuses of Time Cards { .section}

On the [Employee Time Cards](EP_30_50_00.md) \(EP305000\) form, you can view each time card's status, which reflects its processing stage. A time card can have one of the following statuses:

-   *On Hold*: The time card is a draft and cannot be released.
-   *Pending Approval*: The time card has been completed and is ready for approval.
-   *Approved*: The time card has been approved.
-   *Rejected*: The time card has been rejected.
-   *Released*: The time card has been released. If any of the activities from the time card is associated with a specific project, at least one project transaction has been generated; for more information, see [Employee Time Billing: General Information](Projects_Tracking_Time_GeneralInfo.md). If any of the activities is associated with contracts \(through cases\), the contract usage data has been updated; for more information, see [Contract Usage: Contract Usage.](Billing_Contracts_Contract_Billing_ContractUsage.md)

## Approving Time Cards { .section}

If approval of time cards has been configured in your system, a time card cannot be released until it has been approved. If you are an approver, you can mass-approve time cards by using the [Approvals](EP_50_30_10.md) \(EP503010\) form. Alternatively, you can approve individual time cards by using the [Employee Time Cards](EP_30_50_00.md) \(EP305000\) form.

On the [Approvals](EP_50_30_10.md) form, you can access the following time cards:

-   Those assigned to you for approval

    **Tip:** You will be able to approve or reject these time cards, but you will not be able to open them on the [Employee Time Cards](EP_30_50_00.md) form.

-   Those assigned to members of your workgroup
-   Those assigned to the members of the workgroups at lower levels in the company tree than your workgroup

**Important:** If the *Time Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you cannot approve or release a time card unless all the activities included in the time card have been approved \(if required\). For more information, see [Employee Time Entry: Time Activities](TimeExpenses_Entering_Employee_Time_Time_Activities.md).

## Using Corrective Time Cards { .section}

If a released time card does not reflect the actual time that you have spent \(or another employee has spent\) on work activities during the week, you can create a corrective time card. To do this, open the released time card on the [Employee Time Cards](EP_30_50_00.md) \(EP305000\) form and click **Correct** on the More menu.

As a result, the system creates a new time card with *Correction* in the **Type** box and with the original time card’s reference number in the **Orig. Reg. Nbr.** box. The data from the original time card, including the original time zone in which the time card was created, is copied to this new time card. On the **Summary** tab, you can adjust the data of the corrective time card as needed before submitting it for approval \(if required\). After that, the original time card is no longer listed on the [Employee Time Cards](EP_40_60_00.md) \(EP406000\) inquiry form because it has been replaced by the corrective time card.

When a corrective time card is released, new transactions are generated for only the difference in the reported hours on this card as compared to the original time card.

A released corrective time card can also be corrected.

**Note:** You can correct equipment time cards similarly by using the [Equipment Time Card](EP_30_80_00.md) \(EP308000\) form.

## Combining Time Cards and Time Activities { .section}

In Acumatica ERP, you can report working hours by using time cards in combination with time activities. The reported data from a time activity instantly becomes available in one of your time cards. On the [Employee Time Cards](EP_30_50_00.md) \(EP305000\) form, you can view details of all time activities associated with a particular time card.

A time card can be approved only if all the activities associated with the time card have been approved. When the time card is released, the associated activities are released automatically. An activity cannot be released on its own if it is associated with a time card.

The system may create a project transaction during time card release if any activity included in the time card is associated with a project. \(Alternatively, the same project transaction may be generated if the activity is associated with a billable case that is billed directly to the customer before the time card is released. For details about direct case billing, see [Managing Cases](CRM_Support_Managing_Cases_Mapref.md).\) These transactions can be used for tracking the project costs.

**Parent topic:**[Entering Employee Time](../UserGuide/TimeExpenses_Entering_Employee_Time_Mapref.md)

