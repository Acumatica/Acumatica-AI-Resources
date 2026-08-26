# Cases: General Information {#_b737d65e-c600-4bc7-8b35-65efcf4498ec .concept}

Cases \(also referred to as *support cases* or *tickets*\) help your company track customer requests, questions, problems, and other inquiries submitted by email, phone, website, or live chat and find the solutions requested by your customers. Acumatica ERP gives you the ability to easily create and track cases based on your customers' requests. This topic provides information about creating cases in Acumatica ERP.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Become familiar with the ways of creating cases in Acumatica ERP
-   Develop a general understanding of case settings
-   Create a case manually

## Applicable Scenarios { .section}

You may want to learn how to create cases in Acumatica ERP in scenarios that include the following:

-   You have received a request from your customer about your company's products or services and need to create a case in the system.
-   Your customer has created a case on the Acumatica Self-Service Portal, and you need to solve the customer's problem related to the product or service that your company offers.

## Creation of Cases in Acumatica ERP {#_fda5d304-351f-4677-bd89-e9c46da1e073 .section}

In Acumatica ERP, a case is a record created and viewed on the [Cases](CR_30_60_00.md) \(CR306000\) form that represents a new, open, or closed request from a customer or employee. The case has a variety of settings, such as the customer, the status of the case, and the user responsible for the case \(that is, the owner of the case\).

A case can be created in any of the following ways:

-   By a user manually entering the case data on the [Cases](CR_30_60_00.md) form.
-   By a customer using the Acumatica Self-Service Portal.
-   By an employee using the Acumatica Self-Service Portal.
-   By a user through the Acumatica mobile app.
-   By a user through the Acumatica add-in for Outlook.
-   Through import scenarios to import lists of cases on the [Import by Scenario](SM_20_60_36.md) \(SM206036\) form. You can use the predefined *Import Cases from Excel* import scenario.

## Settings of a Case { .section}

You can enter, view, and modify \(if applicable\) the following case settings on the [Cases](CR_30_60_00.md) \(CR306000\) form:

-   In the Summary area, basic settings, such as the case’s ID, date reported, case class, customer, contact, owner, status, reason, subject, and priority. You can also specify the severity of the case, which may also relate to a time requirement. If the *Case Commitments* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can track fulfillment times of the company's commitments \(which determine the service level agreement\) corresponding to each severity level that are defined by the case class. \(For details, see [Case Classes: Case Commitments](CRM_Case_Classes_Case_Severity_Response_Times.md).\)

    In the **Contact** box, you can select a case contact among contacts and employees. You can select an employee as a case contact for a case of a class if on the [Case Classes](CR_20_60_00.md) \(CR206000\) form, the **Allow Selecting Employee as Case Contact** check box is selected for the class.

-   On the **Details** tab, the description of the case.
-   On the **Additional Info** tab, the customer settings, such as the workgroup, billing settings \(billable time and billable overtime\), time-related settings \(total work hours and overtime hours spent on the case\) and the activity statistics. For details about billing, see [Case Management: Billable Cases](CRM_Support_Managing_Cases_Billable_Cases.md). You can also track the commitment-related settings \(initial response due, response due, resolution due, and the activity marked as including a solution for the case\) that appear on the tab if the *Case Commitments* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form. For details, see [Case Management: Tracking of Case Commitment Times](CRM_Support_Managing_Cases_Tracking_Commitments_Time.md).

    You can also specify a contract or default contract if the *Contract Management* feature has been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. Contract cases require specifying a contract on entry, and standalone cases require specification of the customer and the customer's case class, which determines the default contract. For details, see [Case Management: Billable Cases](CRM_Support_Managing_Cases_Billable_Cases.md).

-   On the **Attributes** tab, the list of attributes, if they have been defined for the case class on the [Case Classes](CR_20_60_00.md) form. Attributes may be used to help your company manage specific information that is useful for its business, such as the industry or number of employees in a customer company.
-   On the **Activities** tab, emails, tasks, events, and activities associated with the case. You can use this tab as a starting point for adding activities and for viewing the activities that have been performed.
-   On the **Related Cases** tab, the list of cases that block, depend on, are duplicates of, or are otherwise associated with this particular case \(if any\). For details, see [Case Management: General Information](CRM_Support_Managing_Cases_GeneralInfo.md).
-   On the **Relations** tab, the list of records related to the case. You can also use this tab to quickly create an entity associated with the case. For details, see [Managing Relations](CRM_Managing_Relations_Mapref.md).
-   On the **Closure Notes** tab, the case-related information. You can add, edit, and delete the information on this tab at any time.

## The Initial Activity of a Case { .section}

At the moment of a case’s creation, the system checks whether the case has been created based on an initial activity, such as an incoming email. If no initial activity is found, the system automatically creates an activity of the *System* type on the [Activity](CR_30_60_10.md) \(CR306010\) form and associates it with the case.

The system uses the date and time of the initial activity’s creation to calculate the period of time for fulfilling the case’s commitments. For details about case commitments, see [Case Management: Tracking of Case Commitment Times](CRM_Support_Managing_Cases_Tracking_Commitments_Time.md).

## Ability to Add User-Defined Fields to CRM Forms { .section}

User-defined fields are site-specific elements that have been defined to track information deemed as important to the organization. An administrator and customizer—a user with particular access rights in the system—can add user-defined fields to CRM forms such as [Leads](../Shared/../UserGuide/CR_30_10_00.md) \(CR301000\), [Contacts](../Shared/../UserGuide/CR_30_20_00.md) \(CR302000\), and [Business Accounts](../Shared/../UserGuide/CR_30_30_00.md) \(CR303000\) form. For details, see [Adjustment of the Acumatica ERP UI: Managing User-Defined Fields](../Shared/../UserGuide/GS_Personalization_UI_User_Defined_Fields.md).

.

## Copying of User-Defined Fields Between Records { .section}

While viewing a record on some entry forms, you can create new records—such as CRM records \(for example, opportunities or business accounts\), project quotes, customers, and vendors—from the original record. If both records have user-defined fields, the system copies each field’s values only if both records have this field defined on their entry forms. For details, see [Adjustment of the Acumatica ERP UI: Managing User-Defined Fields](../Shared/../UserGuide/GS_Personalization_UI_User_Defined_Fields.md).

The system copies user-defined field values similarly when a user creates a new record by copying the current one, such as:

-   A sales quote created by copying an existing one on the **Quotes** tab of the [Opportunities](../Shared/../UserGuide/CR_30_40_00.md) form or by clicking **Copy Quote** on the More menu of the [Sales Quotes](../Shared/../UserGuide/CR_30_45_00.md) form
-   A project quote created by clicking **Copy** on the More menu of the [Project Quotes](../Shared/../UserGuide/PM_30_45_00.md) \(PM304500\) form

**Parent topic:**[Creating Cases](../UserGuide/CRM_Support_Creating_Cases_Mapref.md)

