# Lead Qualification by Sales Teams: General Information {#_27cde16c-81b0-45eb-bf1e-ffb49959dfec .concept}

Marketing and sales teams rapidly adjust their processes and optimally use collected data, striving for the most effective work approaches. As such, they need their CRM systems to be flexible enough to support adjustments in processes without lengthy, costly development being required. Acumatica ERP provides flexible tools that marketing and sales teams can use to implement and customize workflows in the system without doing the coding.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Use the lead statuses in Acumatica ERP in your lead qualification workflow
-   Return a lead to marketing for further nurturing
-   Convert a lead to an opportunity

## Applicable Scenarios { .section}

You may want to learn how to qualify leads in Acumatica ERP in scenarios that include the following:

-   You have obtained a lead from marketing: The marketing team has qualified a lead as a marketing-qualified lead \(MQL\), and your manager has assigned the lead to you. You need to get in touch with the lead and find out \(qualify\) if the organization is interested in the product. If so, you need to convert the lead to an opportunity.
-   A lead has contacted you and confirmed the intention to buy the company's products or services, and you need to convert the lead to an opportunity.
-   A lead has expressed that its organization is not interested in your company's products or services, and you need to disqualify the lead.
-   You need to return a lead that is not yet ready to buy to a marketing team for further nurturing.

## Lead Qualification Process { .section}

Lead qualification is the process of determining a lead to be one of the following:

-   A prospect that fits your target customer profile and has a high chance to become a customer
-   An existing customer with interest in a product or service that this customer has not already purchased

When marketing personnel communicate with leads \(for example, during marketing campaigns\) and work on developing the leads’ interest in the company’s products or services, they establish qualification criteria, which show that some leads are interested to buy more than others. The particular lead qualification criteria vary for different companies and for different products or services. The number of leads that a marketing team passes to a sales team depends on many factors, such as the sales team’s requirements for leads or the number of the leads a sales team can handle.

We recommend that marketing and sales teams work together to agree on the criteria of transferring leads from marketing to sales and regularly revise the criteria depending on company sales and other changing conditions. Based on this agreement, in Acumatica ERP, you can create your lead qualification workflow, which consists of stages \(identifiable phases, which can be required or optional\) in the workflow that relate to particular actions a marketing or a sales employee performs while qualifying each lead. Similarly, the lead proceeds through statuses in the system for each stage. The following sections describe this workflow and the ability to implement it in Acumatica ERP.

## Lead Qualification Workflow { .section}

CRM functional area in Acumatica ERP includes the lead qualification workflow that helps marketing and sales teams manage leads, add leads to marketing campaigns, qualify leads, associate multiple leads with the same business account and contact, return leads that require further nurturing to marketing and reopen a disqualified lead if needed. You can customize the workflow according to your company's lead qualification processes.

The following diagram illustrates the lead qualification workflow.

![](../Shared/Images/diag_CRM_Lead_Qualification_Workflow.png)

In the lead qualification workflow, transitions between lead statuses are implemented as commands on the More menu of the [Leads](../Shared/../UserGuide/CR_30_10_00.md) \(CR301000\) form. You can click these commands on the More menu. A lead status is displayed in the **Status** box of the Summary area on the [Leads](../Shared/../UserGuide/CR_30_10_00.md) form. A system administrator can customize the workflow to define which statuses correspond to the *Active* \(nurtured\) status of the lead.

## Lead Qualification as Performed by Sales in Acumatica ERP { .section}

When a sales team starts working with a marketing-qualified lead \(MQL\), the lead qualifier \(for example, a telemarketer or a sales representative\) can contact and qualify the lead, and then record the results in the system. If a lead is not yet ready to buy, a sales manager can return the lead to the marketing team for further nurturing. If the lead confirms interest in the company's products or services, the lead qualifier qualifies the lead as sales-accepted \(SAL\) and the sales team can take further follow-up actions on the lead, such as converting the lead to an opportunity and creating a contact and a business account for the lead in the system. A lead converted to an opportunity becomes a sales-qualified lead \(SQL\).

Lead qualification by a sales team may include the following steps to move the lead through the needed stages:

-   Validating the lead for duplicates, as described in [Validating Records for Duplicates](CRM_Mktg_Validating_Recs_Duplicates_Mapref.md).
-   Assigning the lead to an owner, as described in [Assigning Leads to Owners and Workgroups](CRM_Mktg_Assigning_Leads_To_Owners_Mapref.md).
-   Communicating with the lead, as described in [Managing Emails and Activities](CRM_Mktg_Managing_Emails_Activities_Mapref.md) and [Managing Mass Emails](CRM_Mktg_Managing_Mass_Emails_Mapref.md).
-   Accepting the lead for follow-up actions by clicking **Accept** for the lead on the More menu of the [Leads](CR_30_10_00.md) \(CR301000\) form.
-   Creating a contact for the lead, as described in [Creating Contacts](CRM_Sales_Creating_Contacts_Mapref.md).
-   Creating a business account for the lead, as described in [Creating Business Accounts](CRM_Sales_Creating_Bus_Accounts_Mapref.md).
-   Converting the lead to an opportunity by clicking **Convert to Opportunity** for the lead on the More menu of the [Leads](CR_30_10_00.md) form. During this process, you specify basic settings for the opportunity, which will be created on the [Opportunities](CR_30_40_00.md) \(CR304000\) form, and create a contact and a business account for the lead if they have not yet been created. Creation of a business account may be required or optional depending on the setting on the [Lead Classes](CR_20_70_00.md) \(CR207000\) form: If the **Require Account for Conversion to Opportunity** check box \(**Conversion Settings** section of the **Details** tab\) is cleared, the creation of a business account will be skipped when the lead is converted to an opportunity.
-   Returning the lead to the marketing team for further nurturing by clicking **Open** for the lead on the More menu of the [Leads](CR_30_10_00.md) form.
-   Disqualifying a lead by clicking **Disqualify** for the lead on the More menu of the [Leads](CR_30_10_00.md) form.
-   Reopening a lead that has been disqualified by clicking **Open** for the lead on the More menu of the [Leads](CR_30_10_00.md) form.

**Tip:** Any of the stages listed above may be skipped as needed, depending on the company's lead qualification processes for sales.

## Lead Qualification Workflow \(Sales\) { .section}

The following diagram illustrates the lead qualification workflow as performed by a sales team.

![](Images/diag_CRM_Lead_Qualification_Sales.png)

## Lead Qualification Statuses { .section}

As a lead is being processed by marketing and sales teams, it progresses through various statuses. Each lead status is displayed in the **Status** box in the Summary area of the [Leads](../Shared/../UserGuide/CR_30_10_00.md) \(CR301000\) form.

In Acumatica ERP, a lead can be assigned one of the following statuses:

-   *New*: The lead has been created in the system, but no work has been done on it yet.
-   *Open*: The lead is being qualified by the marketing team.
-   *Sales-Ready*: The lead has been qualified by a marketing team as showing more interest in the organization's products or services than other leads show.
-   *Sales-Accepted*: The lead has been initially reviewed and accepted by the lead qualification team, and it is willing to communicate more with the sales team for further qualification.
-   *Converted:* The lead has been qualified and converted to an opportunity. Once a lead has this status, most of the boxes on the [Leads](../Shared/../UserGuide/CR_30_10_00.md) form are read-only; you can edit the value in only the **Description** box in the Summary area.
-   *Disqualified*: The lead is showing no interest in the organization's products or services, or is not reachable \(for example, the contact information is not valid\). This status may also be used for leads that are duplicates of more correct or detailed leads. For more information about finding duplicates among CRM records in Acumatica ERP, see [Validating Records for Duplicates](../Shared/../UserGuide/CRM_Mktg_Validating_Recs_Duplicates_Mapref.md).

If a lead has the *New*, *Open*, *Sales-Ready*, or *Sales-Accepted* status, the **Active** check box on the **Additional Info** tab of the [Leads](../Shared/../UserGuide/CR_30_10_00.md) form is selected by default to indicate that the lead can be nurtured by a marketing or sales team. The system clears the check box if the lead has the *Converted* or *Disqualified* status.

The system updates the lead’s status, and the **Status** box is unavailable for editing. A user can move the lead through statuses by clicking any of the following commands on the More menu or on the form toolbar of the [Leads](../Shared/../UserGuide/CR_30_10_00.md) form and selecting a reason in the **Details** dialog box:

-   **Open**: Changes the status to *Open*.
-   **Qualify**: Changes the status to *Sales-Ready*.
-   **Accept**: Changes the to *Sales-Accepted*.
-   **Disqualify**: Changes the status to *Disqualified*.

You can also convert the lead to opportunity and change the lead status to *Converted* by clicking the **Convert to Opportunity** command on the More menu of the [Leads](../Shared/../UserGuide/CR_30_10_00.md) form.

A system administrator can configure notifications related to changes in the lead status. For more information, see [Using Business Events](../Shared/../UserGuide/SA_Using_Business_Events_Mapref.md).

During lead qualification, some statuses may not be needed: For example, in a small company, the same team members might work with leads that are both ready for sales and accepted by sales, and thus one status could be used for leads that are turned over to sales, instead of two.

**Parent topic:**[Qualifying Leads \(Sales\)](../UserGuide/CRM_Sales_Qualifying_Leads_by_Sales_Mapref.md)

