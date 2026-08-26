# Configuring Case Management in the Self-Service Portal: General Information {#_9d45c60b-3355-4cf8-9087-d48766e85d01 .concept}

In the Acumatica Self-Service Portal, your customers can use cases \(also referred to as *support cases* or *tickets*\) to communicate with your company. Through cases, these customers can submit requests, complaints, and questions about products and services that they have bought or are considering buying. By using the Self-Service Portal, they can easily submit, view, and track cases, as well as attach any files and notes related to a case.

This chapterprovides information about configuring case management in the Self-Service Portal and the flow of data between the Self-Service Portal and Acumatica ERP instances.

## Learning Objectives { .section}

In this chapter, you will do the following:

-   Become familiar with case processing in the Self-Service Portal
-   Develop an understanding of the tasks that must be performed for the configuration of case management in the Self-Service Portal
-   Configure basic case management functionality in the Self-Service Portal
-   Verify that the case management functionality in the Self-Service Portal has been correctly configured

## Applicable Scenarios { .section}

You may need to configure case management in the Self-Service Portal in the following cases:

-   You are an implementation consultant, and you need to initially configure the Acumatica ERP instance and the Self-Service Portal.
-   You are an implementation consultant who has already implemented the Acumatica ERP instance and the Self-Service Portal. You need to configure case management in the Self-Service Portal because this is a new process in your company.

## Workflow of the Case Management Implementation in the Self-Service Portal {#section_vv2_1y4_y4b .section}

To prepare the system for case management implementation, you perform the following general steps:

1.  You perform the initial configuration of the Self-Service Portal. For details, see [Configuring the Self-Service Portal: General Information](config_SSP_Admin_GeneralInfo.md).
2.  You set up access for users to the Self-Service Portal. For details, see [Managing Access to the Self-Service Portal: General Information](config_SSP_Admin_Managing_Access_to_SSP_GeneralInfo.md).
3.  In Acumatica ERP, on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you enable the following features:
    -   *Case Management*: This feature gives customer support personnel the ability to create support cases, assign cases to owners, and process cases.
    -   *Case Management on Portal*: This feature gives your customers the ability to add cases and track case processing through the Self-Service Portal.
    -   *Financials on Portal*: This feature gives your customers the ability to view the documents associated with their company accounts in Acumatica ERP.
4.  In Acumatica ERP, on the [Case Classes](CR_20_60_00.md) \(CR206000\) form, you make sure that the needed case classes have been created. For the case classes that should be available for selection to customer contacts in the Self-Service Portal, the **Internal** check box in the Summary area has been cleared.
5.  In Acumatica ERP, on the [Contact Classes](CR_20_50_00.md) \(CR205000\) form, you make sure that the needed contact classes have been created. For the contact classes that should be available for selection to customer administrators in the Self-Service Portal, the **Internal** check box in the Summary area of the form has been cleared.
6.  In Acumatica ERP, on the [Business Account Classes](CR_20_80_00.md) \(CR208000\) form, you make sure that the needed business account classes have been created. For the business account classes that should be available for selection to customer administrators in the Self-Service Portal, the **Internal** check box in the Summary area of the form has been cleared.
7.  In Acumatica ERP, on the [Attributes](CS_20_50_00.md) \(CS205000\) form, you make sure that the needed attributes for case classes have been created. For the attributes that should be available for selection to customer contacts in the Self-Service Portal, the **Internal** check box in the Summary area of the form has been cleared.
8.  In the Self-Service Portal, on the Portal Preferences \(SP800000\) form, you specify the basic case management settings, as described in [Configuring Case Management in the Self-Service Portal: Implementation Activity](config_SSP_Admin_Configuring_Case_Management_in_SSP_Implem_Activity.md).

## Case Processing in the Self-Service Portal { .section}

In the Self-Service Portal, the customer contacts can do the following while working with the cases:

-   Create a case on the New Case \(SP203000\) form.
-   View the information provided in a case, check the progress of the case, enter additional information, and close the case on the Case Details \(SP203010\) form.
-   View the list of open cases on the Open Cases \(SP204000\) form. A customer contact can narrow the range of open cases listed by the creator and the contract \(if applicable\).
-   View the list of closed cases on the Closed Cases \(SP204010\) form. A customer contact can narrow the range of closed cases listed by the creator and the contract \(if applicable\).

In the Self-Service Portal, as a case is processed, the case may be assigned one of the following statuses:

-   *New*: A customer has submitted the new case to the support team.
-   *Open*: The support team is working on the case.
-   *Pending Customer*: The support team is waiting for information or a response from the customer who has reported the case.
-   *Closed*: The support team has resolved and closed the case.
-   *Released*: The support team has resolved the case and released it, which causes a case-related invoice to be created.

Support teams usually process cases based on their priority. A case may be assigned to a case owner \(that is, the representative of a support team who is responsible for resolving the case\). The system inserts the status of the case based on actions by the customer or the support team members. When a case owner starts working on a case, the owner changes the status of a case from *New* to *Open*. You can see the status of a particular case in the Summary area of the Case Details \(SP203010\) form, and the statuses of cases in the tables on the Open Cases \(SP204000\) and Closed Cases \(SP204010\) forms.

When a case is updated or a support representative requests additional information, the contact who has reported the case will get an email notification if notifications have been configured in Acumatica ERP by system administrator. Also, a customer contact can monitor the case by using the Open Cases \(SP204000\) form.

When a case has the *Open* status, on the Case Details \(SP203010\) form, the customer contact can add any new or additional information to the case at any time, if needed. The customer contact clicks the **Add Comment** action on the form toolbar to open the **New Comment** dialog box, in which the customer contact can add comments and attach files. When the customer contact saves a new comment, the system lists the comment on the **Activities** tab of the form. The **Case Description** tab is unavailable for editing.

If a support representative has changed the status of a case to *Pending Customer*, this means that input from the customer contact is required. For example, the support team may need the contact who has reported the case to verify that the desired result has been achieved, or additional information may be needed. If a case has this status, the customer contact needs to check the case for details and find out what the support representative needs from the customer.

A customer contact can close the case in the Self-Service Portal, if needed.

## Closing of a Case in the Self-Service Portal { .section}

When a support team finishes working on a case, they set the case status to *Closed*. The case can be closed with one of the following reasons, which a Self-Service Portal user can view on the Case Details \(SP203010\) form or the Closed Cases \(SP204010\) form:

-   *Resolved*: The contact who has reported the case has approved the decision or reply \(depending on the initial request\) of the support team.
-   *Duplicate Of*: A similar case exists in the system.
-   *Canceled*: The case has been canceled by the support team.
-   *Rejected*: The support team cannot process the case for some reason \(for example, because a third-party product is involved\).
-   *Abandoned*: The support team could not resolve the issue because the customer has not responded or provided the information requested by the support team.
-   *Closed on Portal*: The customer contact who has reported the case has closed the case in the Self-Service Portal.

## Template-Based Emails Related to Cases { .section}

You can configure Acumatica ERP to automatically send template-based emails related to cases. For example, you might set up the system to send an email to a customer who has submitted a case when the case has been closed. For details, see [Business Events: Subscribers](SA_Using_Business_Events_Subscribers_Concept.md).

**Parent topic:**[Configuring Case Management in the Self-Service Portal](../UserGuide/config_SSP_Admin_Configuring_Case_Management_in_SSP_Mapref.md)

