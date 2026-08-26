# Opportunity Classes: Implementation Activity {#_4f65d29b-7bc7-4bc8-9f02-9b4d6d9e822c .task}

In the following implementation activity, you will learn how to create an opportunity class.

**Attention:** You will perform this activity by using the *U100* dataset. In *U100*, you can also view examples of CRM classes that have been already created and contain all additional settings. If you have configured a company with basic settings and you want to practice creating a CRM class in this company, use the *admin* user to complete the activity.

## Story { .section}

Suppose that you are an implementation consultant for the SweetLife Fruits &amp; Jams company.You need to create a new opportunity class, *RENEW*, and make it the default class to be specified for each newly created opportunity. This class will be used for SweetLife's renewal opportunities with long-term customers.

## Process Overview { .section}

In this activity, you will do the following:

1.  Create an opportunity class on the [Opportunity Classes](CR_20_90_00.md) \(CR209000\) form
2.  Define an opportunity stage for the opportunity class on the [Opportunity Classes](CR_20_90_00.md) form.
3.  Select the created opportunity class as the default class on the [Customer Management Preferences](CR_10_10_00.md) \(CR101000\) form

## System Preparation { .section}

Before you start creating an opportunity class, you should do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded.
2.  Sign in to the system as implementation consultant Kimberly Gibbs by using the following credentials:
    -   **Username**: *gibbs*
    -   **Password**: *123*
3.  Make sure that on the Company and Branch Selection menu, in the top pane of the Acumatica ERP screen, the *SweetLife Head Office and Wholesale Center* branch is selected.

## Step 1: Creating an Opportunity Class { .section}

To create the *RENEW* opportunity class, do the following:

1.  On the [Opportunity Classes](CR_20_90_00.md) \(CR209000\) form, add a new row.
2.  In the Summary area, do the following:
    1.  In the **Opportunity Class ID** box, enter the new class identifier: `RENEW`.
    2.  In the **Description** box, type the following brief description of the class: `Renewal opportunities with long-term customers`.
    3.  Make sure that the **Internal** check box is selected to hide all records of the class from the Self-Service Portal users.
3.  On the **Details** tab, select the **Show Activities from Source Lead** check box. In this case, the system will show the list of activities of the source lead, which are displayed on the **Activities** tab of the [Leads](CR_30_10_00.md) \(CR301000\) form, on the **Activities** tab of the [Opportunities](CR_30_40_00.md) \(CR304000\) form for an opportunity of the class.
4.  In the **Stages** section of the **Details** tab, in the **Active** column, select the check box for the *Won* stage.
5.  On the form toolbar, click **Save**.

You have created the new opportunity class.

## Step 2: Defining Opportunity Stages { .section}

To define opportunity stages for the *RENEW* opportunity class, do the following:

1.  While you are still viewing the *RENEW* opportunity class on the [Opportunity Classes](CR_20_90_00.md) \(CR209000\) form, in the**Stages** section of the **Details** tab, do the following:

    1.  In the **Active** column, select the check boxes for the following predefined stages:
        -   *Development*
        -   *Solution*
        -   *Proof*
        -   *Negotiation*
    2.  Make sure that the check boxes are cleared for the following predefined stages:
        -   *Prospect*
        -   *Nurture*
        -   *Qualification*
    For the renewal opportunities with existing customers in your company, these stages are not needed.

2.  In the **Probabilities** column, review the values for each active stage.
3.  In the **Sort Order** column, review the values for each active stage.
4.  On the form toolbar, click **Save**.

You have defined the stages for the *RENEW* opportunity class.

## Step 3: Specifying the Default Opportunity Class { .section}

To select the *RENEW* opportunity class as the default class for newly created opportunities, do the following:

1.  Open the [Customer Management Preferences](CR_10_10_00.md) \(CR101000\) form.
2.  On the **General** tab \(**Data Entry Settings** section\), in the **Default Opportunity Class** box, select *RENEW*.
3.  On the form toolbar, click **Save**.

You have specified the default opportunity class. For each newly created opportunity, in the Summary area of the [Opportunities](CR_30_40_00.md) \(CR304000\) form, the system will insert *RENEW* into the **Opportunity Class** box.

**Parent topic:**[Defining Opportunity Classes](../UserGuide/CRM_Opportunity_Classes_Mapref.md)

