# Record Validation for Duplicates: To Validate a Lead for Duplicates {#_8154b2c7-c5bc-4690-87ff-0dca11f29d82 .task}

When you create a lead \(or another employee does so\), you may want to make sure that the lead has no duplicate leads in the system. If any duplicates have been found, you may want to eliminate a duplicate record. The following activity will show you how to validate a lead for duplicates.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are Bill Owen, a marketing manager of the SweetLife Fruits &amp; Jams company.You have contact information for two new leads: Jeanne Martinez, a consultant at the BeeJet Store; and John Kimmel, a purchasing manager at the Honeywind Store. Before you start working with the leads in the system, you need to validate the leads for duplicates.

## Configuration Overview { .section}

In the *U100* dataset, for the purposes of this activity, the following tasks have been performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Customer Management*: This feature provides the customer relationship management \(CRM\) functionality, including lead and customer tracking, and gives users the ability to manage sales opportunities, contacts, marketing lists, and campaigns.
    -   *Duplicate Validation* in the *Customer Management* group of features: This feature provides the duplicate validation functionality, which you can use to set up and perform automatic validation of lead and contact records for duplicates.
-   On the [Duplicate Validation](CR_10_30_00.md) \(CR103000\) form, the following settings have been specified:
    -   For the **Lead to Lead** pair of records, in the **Create on Entry** column, the *Warn* option has been selected for the *Email* matching field.
    -   For the **Lead to Contact** pair of records, in the **Create on Entry** column, the *Warn* option has been selected for the *Email* matching field.
-   On the [Leads](CR_30_10_00.md) \(CR301000\) form, the *Jeanne Martinez* lead has been created. \(You will create a duplicate of this lead.\)
-   On the [Contacts](CR_30_20_00.md) \(CR302000\) form, the *John K. Kimmel* contact has been created. \(You will create a lead that has duplicate settings of this contact.\)

## Process Overview { .section}

In this activity, you will do the following by using the [Leads](CR_30_10_00.md) \(CR301000\) form:

1.  Create a lead, validate the lead for duplicates, and merge the contact data of the newly created lead with the contact data of the existing lead. As a result, the system will save only one lead.
2.  Create another lead, validate the lead for duplicates, and associate the lead record with the existing contact record.

## System Preparation { .section}

Before you start validating leads for duplicates, you should do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded.
2.  Sign in to the system as marketing manager Bill Owen by using the following credentials:
    -   **Username**: *owen*
    -   **Password**: *123*
3.  Make sure that on the Company and Branch Selection menu, in the top pane of the Acumatica ERP screen, the *SweetLife Head Office and Wholesale Center* branch is selected.

## Step 1: Performing Duplicate Validation for a Lead That Has a Duplicate Lead { .section}

To create the *Jeanne Martinez* lead and validate this lead for duplicates, do the following:

1.  On the [Leads](CR_30_10_00.md) \(CR301000\) form, add a new record.
2.  On the **General** tab, specify the following contact information for the lead:
    -   **First Name**: `Jeanne`
    -   **Last Name**: `Martinez`
    -   **Account Name**: `BeeJet`
    -   **Job Title**: `Consultant`
    -   **Email**: `j.martinez@beejet.example.com`
    -   **Address Line 1**: `2467 Canterbury Drive`
    -   **City**: `New York`
3.  On the form toolbar, click **Save**. The system checks the lead for duplicates. Because a duplicate has been found, it opens the **Warning** dialog box, asking whether you want to save the lead.
4.  In the dialog box, click **Yes**, which closes the dialog box. Because a possible duplicate has been found, the system has inserted *Possible Duplicate* in the **Duplicate** box of the Summary area of the form, and the **Duplicates** tab has appeared on the form.

You have created and validated the *Jeanne Martinez* lead for duplicates. On the **Duplicates** tab, the duplicate lead record \(which had already been created\) is listed.

## Step 2: Merging Duplicate Leads { .section}

To merge two duplicate lead records that contain contact information of Jeanne Martinez, do the following:

1.  While you are still viewing the *Jeanne Martinez* lead on the [Leads](CR_30_10_00.md) \(CR301000\) form, open the **Duplicates** tab. In the **Records for Merging** table, notice a row that has summary information about the duplicate lead. The duplicate values of UI elements in this lead are highlighted.

    **Tip:** The **Records for Association** table in the lower part of the tab is empty, meaning that the lead does not have any contacts or business accounts with duplicate settings.

2.  In the only row of the **Records for Merging** table, click the *Jeanne Martinez* link to open the duplicate lead record in a new browser tab.
3.  On the [Leads](CR_30_10_00.md) form, open the **Activities** tab. Notice that the tab has the following rows:
    -   A row with the summary settings of an activity of the *Phone Call* type
    -   A row with the summary settings of the *Task* type
4.  Return to the browser tab that has the [Leads](CR_30_10_00.md) form with the *Jeanne Martinez* lead that you have just created.
5.  On the table toolbar of the **Records for Merging** table, click **Merge**. The **Merge Conflicts** dialog box opens.

    In the **Target Record** box, notice that *Current Record* is selected. The table in the dialog box lists the different field values in both the lead that you have just created and the duplicate lead that already exists in the system. The **Current Record** column contains the field values for the lead that you are currently viewing on the [Leads](CR_30_10_00.md) form. The **Duplicate Record** column contains the field values for the duplicate lead.

    Because in the **Target Record** box, *Current Record* is selected, the unlabeled check boxes are selected for all the non-empty field values of the lead that you are currently viewing on the form. You can select or clear check boxes as you need. The **Phone 1** field value is empty in the currently selected lead, and for this field value, the unlabeled check box is selected for the duplicate lead. The system will keep all the selected field values when the leads have been merged.

    **Tip:** In the **Target Record** box, if you select *Duplicate Record*, the unlabeled check boxes become selected for all the non-empty field values of the duplicate lead.

6.  Select the unlabeled check box left of the *BeeJet Store* field value. \(Suppose that you have checked that BeeJet Store is the correct name of the lead's company and you want to keep this name.\) Notice that the unlabeled check box left of the *BeeJet* field value becomes cleared.
7.  Select the unlabeled check box left of the *STORE* field value. This is the correct lead class for the lead because the company of Jeanne Martinez is a supermarket.
8.  Click **Resolve** to merge the duplicate leads and close the dialog box. The duplicate lead has been merged with the target one; the system has given the other duplicate lead record the *Disqualified* status.

    Notice that in the **Account Name** box of the **General** tab, the system has inserted *BeeJet Store*. In the Summary area, notice that the system has inserted *Validated* in the **Duplicate** box and in the **Lead Class** box, the system has inserted *STORE*. The **Duplicates** tab is no longer displayed on the form. On the **Activities** tab, notice that the table has the following rows that the system has copied from the duplicate lead:

    -   A row with the summary settings of the activity of the *Phone Call* type
    -   A row with the summary settings of the *Task* type

You have merged two duplicate leads into one record.

**Parent topic:**[Validating Records for Duplicates](../UserGuide/CRM_Mktg_Validating_Recs_Duplicates_Mapref.md)

