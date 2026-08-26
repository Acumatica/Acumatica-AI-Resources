# Record Validation for Duplicates: To Validate Multiple Leads for Duplicates {#_c674b31f-65a9-43c0-a7d0-30939e7fe04f .task}

The following activity demonstrates how to validate multiple records—such as leads, contacts, and business accounts—for duplicates.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are Bill Owen, a marketing manager of the SweetLife Fruits &amp; Jams company.You have imported to the system a new purchased list of leads that contains the contact information of bakery, cafe, restaurant, and store employees. You need to check these leads for duplicates.

## Configuration Overview { .section}

In the *U100* dataset, for the purposes of this activity, the following tasks have been performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Customer Management*: Provides the customer relationship management \(CRM\) functionality, including lead and customer tracking, and gives users the ability to manage sales opportunities, contacts, marketing lists, and campaigns
    -   *Duplicate Validation* in the *Customer Management* group of features: Provides the duplicate validation functionality, which you can use to set up and perform automatic validation of lead, business account, and contact records for duplicates
-   On the [Duplicate Validation](CR_10_30_00.md) \(CR103000\) form, validation settings have been specified. For details, see [Duplicate Validation](../ImplementationGuide/config_CRM_Duplicate_Validation_Mapref.md).
-   On the [Leads](CR_30_10_00.md) \(CR301000\) form, lead records have been created, including the *Rita Orozco* lead.
-   On the [Import by Scenario](SM_20_60_36.md) \(SM206036\) form, a list of lead records that includes duplicates, including the *Margarita Orozco* lead, has been imported from a Microsoft Excel file to the system, which is done.

## Process Overview { .section}

In this activity, you will do the following:

1.  Identify possible duplicates for newly imported lead records by using the [Validate Records](CR_50_34_30.md) \(CR503430\) form.
2.  View the possible duplicate lead records on the **Duplicates** tab of the [Leads](CR_30_10_00.md) \(CR301000\) form.

## System Preparation { .section}

Before you start validating records for duplicates, you should do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded.
2.  Sign in to the system as marketing manager Bill Owen by using the following credentials:
    -   **Username**: *owen*
    -   **Password**: *123*
3.  Make sure that on the Company and Branch Selection menu, in the top pane of the Acumatica ERP screen, the *SweetLife Head Office and Wholesale Center* branch is selected.

## Step 1: Validating All Leads for Duplicates { .section}

To validate all leads for duplicates, do the following:

1.  Open the [Validate Records](CR_50_34_30.md) \(CR503430\) form.
2.  In the Selection area of the form, select the **Validate All Records** option button.
3.  On the form toolbar, click **Process All** to start the duplicate validation process. The **Processing** dialog box opens, showing the progress and, as soon as the processing has completed, the results of duplicate validation.
4.  When the duplicate validation process has been completed, click **Close** to close the dialog box. In the table, notice that in the **Duplicate** column, either *Validated* or *Possible Duplicate* is inserted.

You have validated all records for duplicates, including leads. On the [Leads](CR_30_10_00.md) \(CR301000\) form, in the **Duplicate** box of the Summary area, the system has inserted the appropriate option for each lead: *Validated* or *Possible Duplicate*.

**Tip:** If a lead has the *Disqualified* or *Converted* status, it is excluded from the duplicate validation process, and the option in the **Duplicate** box does not change for this lead.

Now you can view possible duplicate records, which you will do in the following step. For details, see [Record Validation for Duplicates: To Validate a Lead for Duplicates](CRM_Mktg_Validating_Recs_Duplicates_Validating_Lead.md).

## Step 2: Viewing Possible Duplicate Records { .section}

In the previous step, you have validated all leads in the system for duplicates. Now you need to view the list of leads that have possible duplicates; you will check the **Duplicate** setting of the *Rita Orozco* lead.

To view possible duplicates, do the following:

1.  Open the Leads \(CR3010PL\) form, which shows a table with the leads that are defined in the system.

    **Tip:** If you need to change the order of columns in the table \(or any other table\), you can drag a column by its header to the new location.

2.  In the table, click the column header of the **Duplicate** column.
3.  In the Quick Filter menu, which opens, create a filter to view only records with a **Duplicate** setting of *Possible Duplicate* as follows:

    1.  Clear the **Select All** check box to clear the selection of all the options.
    2.  Select *Possible Duplicate*.
    3.  Click **Apply** to close the dialog box and view the filtered list of records.
    The table now lists only the records that have a **Duplicate** setting of *Possible Duplicate*.

4.  Find the *Rita Orozco* record, which has *Captain Crunchy Bakery* in the **Account Name** column.
5.  In the row with the *Rita Orozco* record, click the link in the **Display Name** column.
6.  On the [Leads](CR_30_10_00.md) \(CR301000\) form, which opens, open the **Duplicates** tab.

In the **Records for Merging** table, you can view the duplicate lead *Margarita Orozco*. The identical contact information of the duplicate lead is highlighted. Now you can merge duplicate leads, as described in [Record Validation for Duplicates: To Validate a Lead for Duplicates](CRM_Mktg_Validating_Recs_Duplicates_Validating_Lead.md).

**Parent topic:**[Validating Records for Duplicates](../UserGuide/CRM_Mktg_Validating_Recs_Duplicates_Mapref.md)

