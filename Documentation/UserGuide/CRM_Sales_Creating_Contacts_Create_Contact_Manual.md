# Contacts: To Create a Contact Manually {#_8279058c-39a2-4228-8ebf-9e348fbeec8c .task}

The following activity demonstrates how to manually create a contact, review and update the settings of the newly created contact.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are David Chubb, a sales manager of the SweetLife Fruits &amp; Jams company.You have received a call from Thomas Jones, the bakery manager at Pro Muffin, a bakery that cooks pastries, usually with jam filling. Thomas is considering purchasing 100 jars of cherry jam. You have created the lead in the system, converted the lead to an opportunity, and started negotiating the deal. Thomas asks you to discuss the financial details of the deal with his colleague Tina Parker, a finance manager, and gives you her contact details. You need to create a contact in the system and associate the contact with the opportunity created for Pro Muffin.

## Configuration Overview { .section}

In the *U100* dataset, for the purposes of this activity, the following tasks have been performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Customer Management*: This feature provides the customer relationship management \(CRM\) functionality, including lead and customer tracking, as well as the handling of sales opportunities, contacts, marketing lists, and marketing campaigns.
    -   *Duplicate Validation* in the *Customer Management* group of features: This feature provides the duplicate validation functionality.
-   On the [Duplicate Validation](CR_10_30_00.md) \(CR103000\) form, duplicate validation settings have been specified.
-   On the [Contact Classes](CR_20_50_00.md) \(CR205000\) form, the *BAKERY* contact class has been created.
-   On the [Leads](CR_30_10_00.md) \(CR301000\) form, a lead record for the *Thomas Jones* lead has been created and converted to an opportunity as follows:
    1.  On the [Opportunities](CR_30_40_00.md) \(CR304000\) form, the *Sale of 100 jars of cherry jam to Pro Muffin* has been created.
    2.  On the [Business Accounts](CR_30_30_00.md) \(CR303000\) form, the *PROMUFFIN* business account has been created.
    3.  On the [Contacts](CR_30_20_00.md) \(CR302000\) form, the *Thomas Jones* contact has been created.

## Process Overview { .section}

In this activity, you will do the following:

1.  Manually create a contact by using the [Contacts](CR_30_20_00.md) \(CR302000\) form.
2.  Associate the newly created contact with an existing opportunity on the [Opportunities](CR_30_40_00.md) \(CR304000\) form.

## System Preparation { .section}

Before you start creating a contact manually, you should do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded
2.  Sign in to the system as sales manager David Chubb by using the following credentials:
    -   **Username**: *chubb*
    -   **Password**: *123*
3.  Make sure that on the Company and Branch Selection menu, in the top pane of the Acumatica ERP screen, the *SweetLife Head Office and Wholesale Center* branch is selected.

## Step 1: Creating a Contact Manually { .section}

To create a contact for Tina Parker, a finance manager at Pro Muffin, do the following:

1.  On the [Contacts](CR_30_20_00.md) \(CR302000\) form, add a new record.
2.  In the Summary area, in the **Contact Class** box, select *BAKERY*.
3.  On the **General** tab do the following:
    1.  In the **Contact** section, specify the contact settings as follows:
        1.  In the **First Name** box, type `Tina`.
        2.  In the **Last Name** box, type `Parker`.
        3.  In the **Account Name** box, type `Pro Muffin`.
        4.  In the **Job Title** box, type `Finance Manager`.
        5.  In the **Email** box, type `tina@promuffin.example.com`.
    2.  In the **Address** section, specify the address settings as follows:
        1.  In the **Address Line 1** box, type `4897 Mapleview Drive`.
        2.  In the **City** box, type `Philadelphia`.
        3.  In the **State** box, select *PA*.
        4.  In the **Postal Code** box, type `63463`.
        5.  In the **Country** box, select *US*.
4.  On the form toolbar, click **Save**.

You have created the *Tina Parker* contact in the system.

## Step 2: Associating the Contact with an Existing Opportunity { .section}

To associate the *Tina Parker* contact you have created with the opportunity that has been created for Pro Muffin, do the following:

1.  Open the opportunity *Sale of 100 jars of cherry jam to Pro Muffin* on the [Opportunities](CR_30_40_00.md) \(CR304000\) form.
2.  Open the **Relations** tab.
3.  Click **Add Row** on the table toolbar, and specify the following settings in the row:

    1.  **Role**: *Decision-Maker*
    2.  **Contact**: *Tina Parker*
    3.  **Add to CC**: Selected.

        With this check box selected, the *Tina Parker* contact's email address will be added to each email notification automatically sent to this contact.

    Notice that in the **Type** column, *Contact* has been inserted automatically. Only a record of the *Contact* type can be a *Decision-Maker*.

4.  On the form toolbar, click **Save**.

You have associated the *Tina Parker* contact with the opportunity created for Pro Muffin.

**Parent topic:**[Creating Contacts](../UserGuide/CRM_Sales_Creating_Contacts_Mapref.md)

