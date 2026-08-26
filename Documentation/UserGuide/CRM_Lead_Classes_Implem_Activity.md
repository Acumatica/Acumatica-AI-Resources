# Lead Classes: Implementation Activity {#_595d851a-6477-42a4-9190-db9b4b55008b .task}

The following implementation activity will show you how to create a lead class.

**Attention:** You will perform this activity by using the *U100* dataset. In *U100*, you can also view examples of CRM classes that have been already created and contain all additional settings. If you have configured a company with basic settings and you want to practice creating a CRM class in this company, use the *admin* user to complete the activity.

## Story { .section}

Suppose that you are an implementation consultant for the SweetLife Fruits &amp; Jams company, and you need to create a new lead class, *MALL*, and make it the default class to be specified for each newly created lead. This class will be used for SweetLife's leads that represent employees from large shopping centers.

## Process Overview { .section}

In this activity, you will do the following:

1.  Create a lead class on the [Lead Classes](CR_20_70_00.md) \(CR207000\) form
2.  Specify the new class as the default lead class on the [Customer Management Preferences](CR_10_10_00.md) \(CR101000\) form

## System Preparation { .section}

Before you start creating a lead class, you should do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded.
2.  Sign in to the system as implementation consultant Kimberly Gibbs by using the following credentials:
    -   **Username**: *gibbs*
    -   **Password**: *123*
3.  Make sure that on the Company and Branch Selection menu, in the top pane of the Acumatica ERP screen, the *SweetLife Head Office and Wholesale Center* branch is selected.

## Step 1: Creating a Lead Class { .section}

To create the *MALL* lead class, do the following:

1.  On the [Lead Classes](CR_20_70_00.md) \(CR207000\) form, add a new record.
2.  In the Summary area, do the following:
    1.  In the **Lead Class ID** box, enter the new class identifier: `MALL`.
    2.  In the **Description** box, type the following brief description of the class: `Large shopping centers`.
    3.  Make sure that the **Internal** check box is selected to hide all records of the class from the Self-Service Portal users.
3.  On the **Details** tab, in the **Conversion Settings** section, make sure that the **Require Account for Conversion to Opportunity** check box is selected. With this check box selected, a user can convert a lead of the class to an opportunity if a business account has been created for the lead or the user specifies the settings of a new account during the lead conversion.
4.  On the form toolbar, click **Save**.

You have created the new lead class.

## Step 2: Specifying the Default Lead Class { .section}

To select the *MALL* lead class as the default class for newly created leads, do the following:

1.  Open the [Customer Management Preferences](CR_10_10_00.md) \(CR101000\) form.
2.  On the **General** tab \(**Data Entry Settings** section\), in the **Default Lead Class** box, select the *MALL* lead class.
3.  On the form toolbar, click **Save**.

You have specified the default lead class. For each newly created lead, in the Summary area of the [Leads](CR_30_10_00.md) \(CR301000\) form, the system will insert *MALL* into the **Lead Class** box.

**Parent topic:**[Defining Lead Classes](../UserGuide/CRM_Lead_Classes_Mapref.md)

