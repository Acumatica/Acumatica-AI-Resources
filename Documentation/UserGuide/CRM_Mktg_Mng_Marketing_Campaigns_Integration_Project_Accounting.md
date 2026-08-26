# Marketing Campaigns: Project Accounting for Campaigns {#_b4d7eebb-99b1-458a-9427-be13602a8299 .concept}

In Acumatica ERP, you can use the project accounting functionality to track the expenses and revenue related to a marketing campaign and associate a marketing campaign with a project if the *Projects* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. The system can treat a marketing campaign as a project and use the mechanism for tracking the project budget for tracking the budget of the marketing campaign.

For more information about project budgets, see [Managing the Project Budget](Projects_Budget_Mapref.md).

## Configuring a Project for a Campaign {#section_xgf_kgg_k5b .section}

To be able to track the expenses and revenue of a marketing campaign, you need to create a project on the [Projects](PM_30_10_00.md) \(PM301000\) form without selecting any customer. For the project, on the [Projects](PM_30_10_00.md) or [Project Tasks](PM_30_20_00.md) \(PM302000\) form, you also need to create a project task dedicated to the expense and revenue accounting of a marketing campaign. For more information, see [Creating and Processing Projects](Projects_Process_Mapref.md).

Also, in the system settings for projects, *All Projects* must be selected in the **Restrict Project Selection** box on the **General** tab \(**Visibility Settings** section\) of the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form. This setting makes it possible for the system to associate an invoice or sales order that is created as a result of this marketing campaign with a project with no customer selected.

You can select the project and project task associated with a marketing campaign on the **Campaign Details** tab \(**Project Accounting Integration** section\) of the [Marketing Campaigns](CR_20_20_00.md) \(CR202000\) form. If needed, you can specify these settings for multiple marketing campaigns to associate them with a single project.

You can delete a project associated with a marketing campaign by clearing the settings specified in the **Project Accounting Integration** section of the **Campaign Details** tab for this marketing campaign. You can also change the project by selecting another project and project task. In this case, all documents created based on this marketing campaign stay associated with the previously defined project. You can override a project, unless it is specified in a released invoice.

## Processing Campaign-Related Documents {#section_x1s_dhg_k5b .section}

By default, an activity created on the [Marketing Campaigns](CR_20_20_00.md) \(CR202000\) form is not associated with any project, even if the campaign itself is associated with a project. You can associate an activity of any type with a project and project task by selecting them in the **Project** and **Project Task** boxes, respectively, on the [Activity](CR_30_60_10.md) \(CR306010\) or [Task](CR_30_60_20.md) \(CR306020\) form. The marketing campaign activities with selected project and project task will be displayed on the **Activities** tab of the [Projects](PM_30_10_00.md) \(PM301000\) and [Project Tasks](PM_30_20_00.md) \(PM302000\) forms.

**Attention:** The system does not copy the activities created on the [Projects](PM_30_10_00.md) or [Project Tasks](PM_30_20_00.md) form to the list of activities on the [Marketing Campaigns](CR_20_20_00.md) form for this marketing campaign.

If a project and project task have been defined for the marketing campaign, the system associates them with any opportunities that are created as a result of this marketing campaign. You can also manually associate an opportunity created on the [Opportunities](CR_30_40_00.md) \(CR304000\) form that is not based on any marketing campaign, with a marketing campaign \(and a project, respectively\) in one of the following ways:

-   By selecting the marketing campaign in the **Source Campaign** box on the **Additional Info** tab \(**Source** section\) of the [Opportunities](CR_30_40_00.md) form
-   By selecting the project in the **Project** box on the **Additional Info** tab \(**Details** section\) of the [Opportunities](CR_30_40_00.md) form

If only one marketing campaign is associated with a project, the system inserts it in the **Source Campaign** box by default. If multiple campaigns are associated with a project, in this box, you can select a marketing campaign from the list of marketing campaigns associated with the selected project. The system inserts the project task created for this marketing campaign in the **Project Task** column on the **Details** tab of the [Opportunities](CR_30_40_00.md) form for an opportunity.

**Tip:** You can see the marketing campaign that is associated with a project task on the **Summary** tab of the [Project Tasks](PM_30_20_00.md) form.

If you do not need to associate an opportunity with a marketing campaign, you can delete the marketing campaign that is inserted for the opportunity in the **Source Campaign** box of the [Opportunities](CR_30_40_00.md) form. In this case, the opportunity is not associated with the marketing campaign and project.

When you create an invoice through an opportunity that has resulted from a marketing campaign, the system adds the line with this invoice on the **Invoices** tab of the [Projects](PM_30_10_00.md) form. When the created invoice is released, the system shows the revenue and expenses of the marketing campaign in the **Actual Amount** column on the **Balances** tab of the form.

**Parent topic:**[Managing Marketing Campaigns](../UserGuide/CRM_Mktg_Mng_Marketing_Campaigns_Mapref.md)

