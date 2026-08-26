# Submittals: General Information {#_24a07321-14a8-4bdc-b20f-f96aacd3a8e0 .concept}

The submittal functionality in Acumatica ERP Construction Edition is used to organize the tracking of the approval of the submittals related to documents and materials before they are fabricated and delivered for use in the project. With up-to-the minute knowledge of the progress and status of these approvals, you can ensure that the work on the project site uses approved specifications and materials.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Configure submittal types
-   Create a submittal in the system
-   Define the people that will take part in processing a submittal and their submittal roles
-   Process submittal-related activities
-   Create a new revision of a submittal
-   Close the completed submittal

## Applicable Scenarios { .section}

You process a submittal when you want to track the process of verifying a document or material that is necessary for a particular construction project.

## Submittal Types {#section_tkk_fc3_s4b .section}

If you need to categorize the submittals, you can create submittal types on the **Submittals** tab on the [Project Management Preferences](PJ_10_10_00.md) \(PJ101000\) form. In the **Submittal Types** table, the *Schedules* type is predefined. In the table, you add the necessary types of submittals; you can then filter the existing submittals by these types on the *Submittals \(PM3060PL\)* form.

## Submittal Roles {#section_q2y_lvk_4pb .section}

For each submittal, you can specify the people who perform functions in the processing of this particular submittal. You assign each specified person one of the following submittal roles:

-   Owner: A person who enters the submittal.
-   Submitter: A person who submits the documents or materials.
-   Approver: A person who reviews or needs to approve the submitted documents or materials. You can define multiple approvers for the submittal, if needed.
-   Reviewer: A person who reviews the submitted documents or materials for informational purposes. You can define multiple reviewers for the submittal, if needed.

## Submittal Processing Workflow { .section}

You enter, modify, and process submittals on the [Submittals](PJ_30_60_00.md#) \(PJ306000\) form. The processing of a submittal in the system includes the following general steps:

1.  Entry of the submittal: The owner enters the submittal in the system. The submittal has the *New* status.

    If the owner already has the submittal documents or materials, the owner can act as a submitter and then submit the documents for approval.

2.  Specification of the people to be involved in this submittal: The owner enters the submitter, approver, and, optionally, reviewer who will work on this submittal.
3.  Opening of the submittal: When the submittal is ready, the owner indicates that the processing of the submittal has been started by opening the submittal in the system. The system assigns the submittal the *Open* status.
4.  Requesting that documents or materials be submitted:

    The owner sends an email to the submitter indicating that this person needs to submit documents or materials.

5.  Submitting of documents or materials: The submitter submits the documents or materials to be approved.
6.  Approval of documents or materials: The owner sends the submitted documents or materials for approval to the person defined as the reviewer. The approver approves or rejects the submitted documents or materials.
7.  Creation of a new submittal revision \(optional\): If the submittal has been rejected by the approver because a revised or additional version of the submitted documents or materials is needed, the owner closes the rejected submittal revision \(that becomes a closed revision with a revision ID of *0*\) and creates a new revision. The first revision of a particular submittal is assigned a revision ID of *1*, and this ID is incremented by 1 for each subsequent revision of this submittal.

    The new revision has the same submittal ID as the original submittal and the *New* status. The system also copies details from the original submittal to the **Details** and **Submittal Workflow** tabs. For the new revision the process of submitting and approving documents and materials starts from the beginning.

8.  Informational review of the documents and materials \(optional\): After the submittal has been approved, the owner sends the submitted documents or materials for review to the reviewer.
9.  Closing of the submittal: The owner indicates that the processing of the submittal has been completed by closing the submittal in the system. The submittal has the *Closed* status.

## Entry of a Submittal {#section_bxw_cvk_4pb .section}

When you create a new submittal \(acting as the owner\), in the Summary area of the [Submittals](PJ_30_60_00.md#) \(PJ306000\) form, you specify the applicable project and a short description of the submittal; optionally, you can also specify the submittal type and the project task and cost code to which the submittal relates. You can also specify the specification reference number, the related section in the specification, the date by which the submittal process must be finished, and the date when the documents and materials are required on site. On the **Description** tab, you can provide a more complete description of the submittal.

On the **Submittal Workflow** tab, you add a row for each person that will take part in processing this submittal. For each person, you specify the following details:

-   Contact information. You select a contact from the list of existing contacts or click **Add Row** on the table toolbar of the lookup table \(which navigates you to the [Contacts](CR_30_20_00.md#) \(CR302000\) form where you can add a new contact.\)
-   Submittal role \(*Submitter*, *Approver*, or *Reviewer*\).
-   Optionally, the number of days that are scheduled for the review or the provision of the submitted document or materials.

When you save the new submittal, the system assigns it the *New* status and automatically specifies *0* in the **Revision ID** box to indicate that this submittal is newly created and has no revisions. In the **Date Created** box, the system inserts the current business date by default. The system also inserts your employee name in the **Owner** box \(to indicate that you have created this submission\) and in the **Ball in Court** box to indicate that you are currently responsible for taking action on this submittal.

When you have specified the summary settings and defined the people involved in the submittal workflow, you open the submittal by clicking **Open** on the form toolbar of the [Submittals](PJ_30_60_00.md#) form. The system changes the submittal's status to *Open*.

## Submitting Documents {#section_cxw_cvk_4pb .section}

To notify a person in the workflow about the need to perform a particular action, you send an email to each responsible person in the submittal by selecting the **Email To** check box on the **Submittal Workflow** tab of the [Submittals](PJ_30_60_00.md#) \(PJ306000\) form and clicking the **Email** button on the form toolbar. The system opens the [Email Activity](CR_30_60_15.md#) \(CR306015\) form in a pop-up window with the email address of this person or these people inserted in the **To** box. When you send the email, the system adds a row for this email on the **Activities** tab.

After you have sent an email to a submitter, in the corresponding row on the **Submittal Workflow** tab, you select *Pending* in the **Status** column. The system automatically changes the contact or employee in the **Ball in Court** box of the Summary area to the submitter contact; this indicates the party that currently require to perform the next action for the submitted document or material. The system also specifies the due date in the row based on the values in the **Start Date** and **Days for Review** columns in this row.

Once the person responsible for the submittal replies, the incoming email appears on the **Activities** tab of the [Submittals](PJ_30_60_00.md#) form. You change the status of the row on the **Submittal Workflow** tab to *Completed* and the reason in the Summary area to *Submitted* \(and attach the provided document to the submittal, if applicable\).

## Approval or Rejection of Submitted Documents {#section_exw_cvk_4pb .section}

When the necessary documents or materials have been submitted, you send an email to the approver \(or multiple approvers\) of the submittal; you also attach the submittal to the email if it is in the form of a file. \(Physical materials are instead delivered to approvers.\)

When the approver or approvers have the needed document or material, you specify *Pending Approval* in the **Reason** box of the Summary area of the [Submittals](PJ_30_60_00.md#) \(PJ306000\) form and change the status of the row of the approver to *Pending* on the **Submittal Workflow** tab. The system inserts the name of the approver in the **Ball in Court** box in the Summary area; if you have changed the status to *Pending* for multiple approvers on the **Submittal Workflow** tab, the system uses the name of the first approver listed in the table. For each approver with the *Pending* status on the **Submittal Workflow** tab, the system also inserts the date in the **Start Date** column and calculates the date in the **Due Date** column if a number of days for review is specified for the applicable approvers.

Once an approver replies to the email, the incoming email appears on the **Activities** tab of the [Submittals](PJ_30_60_00.md#) form. If the approver approves the submitted documents, you change the status of the row on the **Submittal Workflow** tab to *Approved* \(and attach the provided materials to the submittal, if necessary\).

If an approver rejects the submitted documents and asks for changes to be made in the submitted documents or materials, you change the status of the row on the **Submittal Workflow** tab to *Rejected*, and proceed to closing the submittal and creating a new submittal revision.

## Reviewing of Submittal Documents {#section_fxw_cvk_4pb .section}

After the submitted documents or materials have been approved, you send an email with the documents to the informational reviewer \(or multiple reviewers\), and on the [Submittals](PJ_30_60_00.md#) \(PJ306000\) form, change the status of the corresponding rows on the **Submittal Workflow** tab to *Pending*.

The system inserts the employee name of the reviewer in the **Ball in Court** box in the Summary area; if you have changed the status to *Pending* for multiple reviewers on the **Submittal Workflow** tab, the system uses the name of the first such person listed in the table. For each reviewer with the *Pending* status on the **Submittal Workflow** tab, the system also inserts the date in the **Start Date** column and calculates the date in the **Due Date** column if a number of days for review is specified for the applicable reviewer.

Once a reviewer has completed the review and replies to the email, the incoming email appears on the **Activities** tab of the [Submittals](PJ_30_60_00.md#) form. You change the status of the corresponding row on the **Submittal Workflow** tab to *Completed*.

## Closing of a Submittal {#section_hxw_cvk_4pb .section}

Based on the replies received from approvers and reviewers, you close the submittal by clicking **Close** on the form toolbar of the [Submittals](PJ_30_60_00.md#) \(PJ306000\) form. In the **Details** dialog box, which opens, you specify the closure date in the **Date Closed** box, and one of the following closure reasons in the **Reason** box:

-   *Approved*: The submittal was approved with no concerns.
-   *Approved as Noted*: The submittal was approved with some concerns.
-   *Rejected*: The submittal did not fit the requirements.
-   *Revise and Resubmit*: The submittal was rejected with some comments that should be taken into consideration. After the needed changes are made, the new revision of this submittal could be approved.

After you click **OK** in the dialog box, the system inserts the specified reason in the **Reason** box and assigns the submittal revision the *Closed* status. If the submittal processing has not yet been completed, you create a new revision of this submittal by clicking the **Create Revision** button on the More menu, and proceed with submittal process for the new revision.

**Parent topic:**[Processing Submittals](../UserGuide/Construction_Submittals_Mapref.md)

