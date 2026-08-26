# Business Account Classes: Implementation Activity {#_79e56ae7-99ff-4501-9b56-42f51753228d .task}

The following implementation activity will show you how to create a business account class.

**Attention:** You will perform this activity by using the *U100* dataset. In *U100*, you can also view examples of CRM classes that have been already created and contain all additional settings. If you have configured a company with basic settings and you want to practice creating a CRM class in this company, use the *admin* user to complete the activity.

## Story { .section}

Suppose that you are an implementation consultant for the SweetLife Fruits &amp; Jams company.You need to create a new business account class, *BIGSTORE*, and make it the default class to be specified for each newly created business account. This class will be used for SweetLife's business accounts that represent supermarket chains.

## Process Overview { .section}

In this activity, you will do the following:

1.  Create a business account class on the [Business Account Classes](CR_20_80_00.md) \(CR208000\) form
2.  Specify the created class as the default business account class on the [Customer Management Preferences](CR_10_10_00.md) \(CR101000\) form

## System Preparation { .section}

Before you start creating a business account class, you should do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded.
2.  Sign in to the system as implementation consultant Kimberly Gibbs by using the following credentials:
    -   **Username**: *gibbs*
    -   **Password**: *123*
3.  Make sure that on the Company and Branch Selection menu, in the top pane of the Acumatica ERP screen, the *SweetLife Head Office and Wholesale Center* branch is selected.

## Step 1: Creating a Business Account Class { .section}

To create the *BIGSTORE* business account class, do the following:

1.  On the [Business Account Classes](CR_20_80_00.md) \(CR208000\) form, add a new record.
2.  In the Summary area, do the following:
    1.  In the **Business Account Class ID** box, enter the new class identifier: `BIGSTORE`.
    2.  In the **Description** box, type the following brief description of the class: `Chain of supermarkets`.
    3.  Make sure that the **Internal** check box is selected to hide all records of the class from the Self-Service Portal users.
3.  On the form toolbar, click **Save**.

You have created the new business account class.

## Step 2: Specifying the Default Business Account Class { .section}

To select the *BIGSTORE* business account class as the default class for newly created business accounts, do the following:

1.  Open the [Customer Management Preferences](CR_10_10_00.md) \(CR101000\) form.
2.  On the **General** tab \(**Data Entry Settings** section\), in the **Default Business Account Class** box, select *BIGSTORE*.
3.  On the form toolbar, click **Save**.

You have specified the default business account class. For each newly created business account, in the Summary area of the [Business Accounts](CR_30_30_00.md) \(CR303000\) form, the system will insert *BIGSTORE* into the **Business Account Class** box.

**Parent topic:**[Defining Business Account Classes](../UserGuide/CRM_Bus_Account_Classes_Mapref.md)

