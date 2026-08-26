# Case Submittal to Internal Teams: General Information {#_bbff061a-8f51-4739-8a60-05dcb84ce3a7 .concept}

You can use internal cases \(also referred to as *internal support cases* or *internal tickets*\) to submit a requests, questions, problems, or other inquiry. Acumatica ERP gives you the ability to easily create and submit cases to an employee of an internal team.

This topic provides information about creating cases in Acumatica ERP and submitting them to internal teams in your company.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Become familiar with the ways of creating internal cases in Acumatica ERP for submittal to employees of internal teams
-   Create an internal case manually and assign the case to a member of an internal team

## Applicable Scenarios { .section}

You may want to learn how to submit cases to internal teams in Acumatica ERP in scenarios that include the following:

-   You are requesting that the member of the internal team perform a task for you or help you perform a task. For example, you might need a member of the legal team to draw up a contract, or an IT support engineer to configure a new element in Acumatica ERP.
-   You have a question for a member of the internal team. For example, you might be asking an IT employee whether an email you have received is suspicious or legitimate. As another example, you might be asking the internal human resources team about the employee review process.
-   You have a problem that is preventing productive work for you or your colleagues. For example, your employee's paychecks may not reflect her new salary and you need to report the issue to the internal payroll team. Or you may need an IT support engineer to help you access a system to which you have been denied access.

## Submittal of a Case to an Internal Team {#section_vv2_1y4_y4b .section}

In Acumatica ERP, you can submit a case to an internal team member in your company by selecting a case contact who is an employee of your company.

This ability depends on a setting in the case class selected for an internal case. On the [Case Classes](CR_20_60_00.md) \(CR206000\) form, a system administrator creates at least one case class for internal cases that are submitted by employees to company teams. On the **Details** tab of the [Case Classes](CR_20_60_00.md) form, for each case class, the system administrator selects the **Allow Selecting Employee as Case Contact** check box.

When you create an internal case on the [Cases](CR_30_60_00.md) \(CR306000\) form, in the **Case Class** box of the Summary area, you specify a case class that allows the selection of employees. Then you can select an employee of your company in the **Contact** box. When you select this employee, the employee's company name is inserted in the **Business Account** box. The employee can also be a subcontractor with a related company or if your organization consists of multiple related companies. If the company has multiple branches, the name of the branch is inserted instead of the company name.

## Creation of Cases to Internal Teams in Acumatica ERP { .section}

In Acumatica ERP, an internal case is a record created and viewed on the [Cases](CR_30_60_00.md) \(CR306000\) form that represents a new, open, or closed request from an employee and has a variety of settings.

You can create an internal case in any of the following places:

-   On the [Cases](CR_30_60_00.md) \(CR306000\) form of Acumatica ERP
-   On the New Support Case \(SP203000\) form of the Acumatica Self-Service Portal
-   On the Cases screen of the Acumatica mobile app
-   Through the Acumatica add-in for Outlook

When you are creating an internal case, you can enter, view, and modify \(if applicable\) the following case settings on the [Cases](CR_30_60_00.md) form:

-   In the Summary area, basic settings, such as the case’s ID, date reported, case class, contact, owner, status, reason, subject, and priority. You can also specify the severity of the case, which may also relate to a time requirement; the reaction time \(which determines the service level agreement\) corresponding to each severity level is defined by the case class. \(For details, see [Case Classes: Case Commitments](CRM_Case_Classes_Case_Severity_Response_Times.md).\)
-   On the **Details** tab, the description of the case.
-   On the **Attributes** tab, the list of attributes, if they have been defined for the case class on the [Case Classes](CR_20_60_00.md) form. Attributes may be used to help your company manage specific information that is useful for its business.
-   On the **Activities** tab, emails, tasks, events, and activities associated with the case. You can use this tab for viewing the activities that a person to whom the case is assigned performs.

**Parent topic:**[Submitting Cases to Internal Teams](../UserGuide/CRM_Support_Submitting_Cases_to_IT_Mapref.md)

