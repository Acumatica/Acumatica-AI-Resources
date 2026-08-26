# Contact Classes: Implementation Activity {#_b3781a17-37b1-4bfd-9de3-94086cb3cdfe .task}

The following implementation activity will show you how to create a contact class.

**Attention:** You will perform this activity by using the *U100* dataset. In *U100*, you can also view examples of CRM classes that have been already created and contain all additional settings. If you have configured a company with basic settings and you want to practice creating a CRM class in this company, use the *admin* user to complete the activity.

## Story { .section}

Suppose that you are an implementation consultant for the SweetLife Fruits &amp; Jams company.You need to create a new contact class, *OFFICE*, and make it the default class to be specified for each newly created contact. This class will be used for SweetLife's contacts that represent employees from business organizations that regularly order company products and services.

## Process Overview { .section}

In this activity, you will do the following:

1.  Create a contact class on the [Contact Classes](CR_20_50_00.md) \(CR205000\) form
2.  Specify the created class as the default contact class on the [Customer Management Preferences](CR_10_10_00.md) \(CR101000\) form

## System Preparation { .section}

Before you start creating a contact class, you should do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded.
2.  Sign in to the system as implementation consultant Kimberly Gibbs by using the following credentials:
    -   **Username**: *gibbs*
    -   **Password**: *123*
3.  Make sure that on the Company and Branch Selection menu, in the top pane of the Acumatica ERP screen, the *SweetLife Head Office and Wholesale Center* branch is selected.

## Step 1: Creating a Contact Class { .section}

To create the *OFFICE* contact class, do the following:

1.  On the [Contact Classes](CR_20_50_00.md) \(CR205000\) form, add a new record.
2.  In the Summary area, do the following:
    1.  In the **Contact Class ID** box, enter the new class identifier: `OFFICE`.
    2.  In the **Description** box, type the following brief description of the class: `Business organizations that make recurrent orders`.
    3.  Make sure that the **Internal** check box is selected to hide all records of the class from the Self-Service Portal users.
3.  On the form toolbar, click **Save**.

You have created the new contact class.

## Step 2: Specifying the Default Contact Class { .section}

To select the *OFFICE* contact class as the default class to be inserted for newly created contacts, do the following:

1.  Open the [Customer Management Preferences](CR_10_10_00.md) \(CR101000\) form.
2.  On the **General** tab \(**Data Entry Settings** section\), in the **Default Contact Class** box, select *OFFICE* contact class.
3.  On the form toolbar, click **Save**.

You have specified the default contact class. For each newly created contact, in the Summary area of the [Contacts](CR_30_20_00.md) \(CR302000\) form, the system will insert *OFFICE* into the **Contact Class** box.

**Parent topic:**[Defining Contact Classes](../UserGuide/CRM_Contact_Classes_Mapref.md)

