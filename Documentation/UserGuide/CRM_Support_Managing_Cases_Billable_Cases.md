# Case Management: Billable Cases {#_a9fe771e-cb05-49c4-a1c2-642b9c561a53 .concept}

In Acumatica ERP, your customer support team can bill customers for cases by creating and tracking case-related billable emails and activities, such as phone calls, tasks, and any other time spent on the case. You can charge customers for the time that your support team has spent on processing the case, based on the released activities.

In Acumatica ERP, the billing settings of a case are defined by the settings of the billing mode that is specified for the case class on the **Details** tab of the [Case Classes](CR_20_60_00.md) \(CR206000\) form. If a case is billable, on the **Additional Info** tab of the [Cases](CR_30_60_00.md) \(CR306000\) form, the system selects the **Billable** check box and makes it unavailable for editing if the **Enable Billable Option Override** check box on the **Details** tab of the [Case Classes](CR_20_60_00.md) form is cleared for the case class. Activities that are associated with the case can be billable or not billable; this setting should be specified for the case class. For details, see [Defining Case Classes](CRM_Case_Classes_Mapref.md).

Cases and case-related activities can be billed in accordance with a specific contract or a default contract associated with the case class if the *Time Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Case-Based Billing Settings { .section}

For a case of a class that has the *Per Case* billing mode selected in the **Billing Mode** box on the **Details** tab of the [Case Classes](CR_20_60_00.md) \(CR206000\) form, you can do the following:

-   Release the case for billing on the [Cases](CR_30_60_00.md) \(CR306000\) form if the case has the *Closed* status. If any activity related to the case has not been completed yet \(and approved, if approval is required\), you cannot release the case.
-   Mass-release cases on the [Release Cases](CR_50_70_00.md) \(CR507000\) form.
-   Manually override the total number of billable hours of the case in the **Billing** section on the **Additional Info** tab of the [Cases](CR_30_60_00.md) form. The total billable time is displayed in the **Billable Time** box. The system automatically calculates the total billable time as the sum of the billable time of all reported activities associated with the case. The total billable time is rounded up to the time interval specified in the **Round Time By** box for the case class of this case on the [Case Classes](CR_20_60_00.md) form. The invoice always includes the total number of billable hours displayed in the **Billable Time** box. If the *Time Management* feature is disabled, manually overriding the number of billable hours is the only way you can report the time spent on a case; the customer will then be billed based on the time that you have specified.
-   If the case is associated with a contract, enable case counting by specifying an item in the **Case Count Item** box of the **Summary** tab \(**Case Billing Settings** section\) of the [Contract Templates](CT_20_20_00.md) \(CT202000\) form. With case counting, you can bill your customer for only the number of cases associated with the contract. The billable hours reported for the case will also be billed. For details, see [Managing Contracts](Contracts_Managing_Contracts_Mapref.md).
-   Use direct billing, which means that the customer associated with the case is billed directly without any contract involved. You must clear the **Require Contract** check box on the [Case Classes](CR_20_60_00.md) form to use direct billing for cases of the class.

## Activity-Based Billing Settings of a Case { .section}

If a case has the *Per Activity* billing mode selected in the **Billing Mode** box on the **Details** tab of the [Case Classes](CR_20_60_00.md) \(CR206000\) form, the case must be associated with a contract so that related activities can be billed according to the costs defined by this contract.

For a case of the class that has the *Per Activity* billing mode, you can do the following:

-   Bill the customer for separate activities when the case is not yet closed. This mode may be useful when the case cannot be closed by the end of the billing period, although you need to bill the customer for the services already rendered.
-   Release only the activities associated with the case on the [Release Time Activities](EP_50_70_20.md) \(EP507020\) form. The case cannot both be marked as billable and be released for billing.

## Billable Activities Associated with a Case { .section}

In Acumatica ERP, you can bill a customer for an email or an activity that is associated with a case and marked as billable. If there are any tasks or events associated with the case, the activities related to these tasks and events are billed as activities related to the case.

Before you can create a case-related invoice for an activity, make sure that the following tasks have been performed in the system:

-   The activity has been marked as billable on the [Activity](CR_30_60_10.md) \(CR306010\) or [Email Activity](CR_30_60_15.md) \(CR306015\) form, with the **Track Time and Costs** check box selected and the hours specified in the **Billable Time** box.

    **Tip:** When you have specified the time in the **Time Spent** box, the system copies these hours to the **Billable Time** box. You can make this value less, if needed.

-   The activity has been completed \(that is, it has the *Completed* **Status**\).
-   If approval of activities is required, the activity has been approved for billing. For details, see [Employee Time Entry: Time Activities](TimeExpenses_Entering_Employee_Time_Time_Activities.md).
-   The activity has been released.

You can release a completed and approved \(if required\) activity for billing in one of the following ways:

-   By releasing a time card on the [Release Time Cards](EP_50_50_10.md) \(EP505010\) form if the owner of the activity uses time cards
-   By using the [Release Time Activities](EP_50_70_20.md) \(EP507020\) form
-   By releasing the related case if the case is billed within the *Per Case* billing mode

When a contract-related case is released for billing, the contract usage data is updated. You can view the resulting data on the [Contract Usage](CT_30_30_00.md) \(CT303000\) form. For more information on how contract-related cases are billed, see [Contract Billing: General Information](Billing_Contracts_Contract_Billing_GeneralInfo.md).

You use the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form to view the invoices that were generated during direct billing.

You can view the data on the resulting customer transactions by using the [Customer History](AR_65_20_00.md) \(AR652000\) report.

## Billable Activities Associated with a Project { .section}

If a case activity is associated with a project, a project transaction may be created during direct billing. Alternatively, the same project transaction may be generated during the release of the time card that includes the case activity if the time card is released before the case is billed. For details about time card release, see [Employee Time Entry: Time Cards](TimeExpenses_Entering_Employee_Time_Time_Cards.md). These project transactions can be used for tracking the project costs. For details about project cost tracking, see [Project Budget: General Information](Projects_Budget_GeneralInfo.md).

**Parent topic:**[Managing Cases](../UserGuide/CRM_Support_Managing_Cases_Mapref.md)

