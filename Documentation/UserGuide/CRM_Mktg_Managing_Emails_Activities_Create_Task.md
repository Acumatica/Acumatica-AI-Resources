# Emails and Activities: To Create a Task {#_b4040799-f2e5-402d-98b2-c22376163699 .task}

The following activity will demonstrate how to create a task.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are David Chubb, a sales manager of the SweetLife Fruits &amp; Jams company.Donna Coleman, a buyer at Yummy Supplies supermarket, is searching for a new supplier of fresh fruit and would like to meet you in order to discuss the company’s products and services. You need to prepare for the meeting with Donna and to create a task in the system that records the progress and the results of the preparation.

## Configuration Overview { .section}

In the *U100* dataset, for the purposes of this activity, the following tasks have been performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Customer Management* feature has been enabled. This feature provides the customer relationship management \(CRM\) functionality, including lead and customer tracking, as well as the handling of sales opportunities, contacts, marketing lists, and campaigns.
-   On the [Leads](CR_30_10_00.md) \(CR301000\) form, the *Donna Coleman* lead has been added to the system.

## Process Overview { .section}

In this activity, you will create a task on the **Activities** tab of the [Leads](CR_30_10_00.md) \(CR301000\) form.

## System Preparation { .section}

Before you start creating a task, you should do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded
2.  Sign in to the system as sales manager David Chubb by using the following credentials:
    -   **Username**: *chubb*
    -   **Password**: *123*
3.  Make sure that on the Company and Branch Selection menu, in the top pane of the Acumatica ERP screen, the *SweetLife Head Office and Wholesale Center* branch is selected.

## Step: Creating a Task { .section}

To create a task related to the *Donna Coleman* lead, do the following:

1.  On the [Leads](CR_30_10_00.md) \(CR301000\) form, open the *Donna Coleman* lead.

    **Tip:** To search for a record in a list of records, you can enter a keyword or phrase in the Search box of the table toolbar. The system will find all the records that match your search criteria and display these records in the table.

2.  On the More menu, under **Activities**, click **Create Task**. The [Task](CR_30_60_20.md) \(CR306020\) form opens in a pop-up window. Notice that in the **Related Entity** box of the **Details** tab, the *Donna Coleman* lead is specified.

    **Tip:** You open the More menu by clicking the More button \(…\) on the form toolbar.

3.  In the Summary area, specify the following settings:
    -   **Summary**: `Preparing for the meeting with D. Coleman`
    -   **Status**: *Processing*
    -   **Priority**: *Normal*
    -   **Start Date**: The current date
    -   **Due Date**: The current date
    -   **Completion \(%\)** \(The percent of the task completion\): `5`
4.  In the text area of the **Description** tab, type: `Prepare current price list and any discounts we can offer`.
5.  On the **Details** tab, in the **Category** box, select *Green*.

    **Tip:** Organizations can use these informational categories as they deem appropriate to help users prioritize tasks. For SweetLife, the *Green* category and highlighting in green means that the task is a usual planned work activity. The categories that can be used for events are defined on the [Event and Task Categories](EP_20_40_40.md) \(EP204040\) form. The *Green* is one of the predefined categories, but others can be added to the form and selected for tasks.

6.  On the form toolbar, click Save and Close. The system closes the [Task](CR_30_60_20.md) form and returns you to the [Leads](CR_30_10_00.md) form.
7.  Open the **Activities** tab. Notice that a row with the *Task* type is added to the table on the **Activities** tab of the [Leads](CR_30_10_00.md) form for the lead.

**Parent topic:**[Managing Emails and Activities](../UserGuide/CRM_Mktg_Managing_Emails_Activities_Mapref.md)

