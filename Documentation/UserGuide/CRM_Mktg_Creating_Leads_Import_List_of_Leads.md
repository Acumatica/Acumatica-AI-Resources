# Leads: To Import Leads from a Purchased List {#_5a4f3103-59ae-448f-a86e-7bff8448d77e .task}

The following activity demonstrates how to import a purchased list of leads to Acumatica ERP by using an import scenario.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are Bill Owen, a marketing manager of the SweetLife Fruits &amp; Jams company.SweetLife uses purchased lists as sources of leads. The lists are imported into Acumatica ERP so that all records are stored in a single place, managed, and classified. You have acquired a new purchased list, `PurchasedLeadsStores.xlsx`, which has the contact information of employees at stores and supermarkets. You need to import these leads from the Microsoft Excel file to Acumatica ERP.

## Configuration Overview { .section}

In the *U100* dataset, for the purposes of this activity, the following tasks have been performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS101000\) form, the *Customer Management* feature has been enabled.
-   On the [Lead Classes](CR_20_70_00.md) \(CR207000\) form, the *STORE* lead class has been added.
-   On the [Data Providers](SM_20_60_15.md) \(SM206015\) form, the *Import Leads from Excel* data provider has been added and configured.
-   On the [Import Scenarios](SM_20_60_25.md) \(SM206025\) form, the *Import Leads from Excel* import scenario has been configured. This scenario can be used for the import of leads from a Microsoft Excel file to Acumatica ERP. The *Import Leads from Excel* data provider is used for this import scenario. The imported leads will belong to the *STORE* lead class. For details, see [Configuring Import Scenarios](IS__mng_Configuring_Import_Scenarios.md).

## Process Overview { .section}

On the [Import by Scenario](SM_20_60_36.md) \(SM206036\) form, you will select the *Import Leads from Excel* import scenario and then upload to the system the Microsoft Excel file with the purchased list of leads. After that, you will prepare the data so that the system validates the rows of records, and then you will initiate the import process.

## System Preparation { .section}

Before you start importing leads from a purchased list to Acumatica ERP, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded.
2.  Sign in to the system as marketing manager Bill Owen by using the following credentials:
    -   **Username**: *owen*
    -   **Password**: *123*
3.  Make sure that on the Company and Branch Selection menu, in the top pane of the Acumatica ERP screen, the *SweetLife Head Office and Wholesale Center* branch is selected.
4.  Download the file [PurchasedLeadsStores.xlsx](Files/PurchasedLeadsStores.xlsx) to your computer.

## Step 1: Importing Leads from a Purchased List { .section}

To import leads from the purchased list in the [PurchasedLeadsStores.xlsx](Files/PurchasedLeadsStores.xlsx) file, do the following:

1.  Open the [Import by Scenario](SM_20_60_36.md) \(SM206036\) form.
2.  In the **Name** box of the Selection area, select *Import Leads from Excel*.
3.  On the More menu, under **Processing**, click **Clear Data** to make sure that the history of scenario execution and prepared data has been cleared.
4.  In the **Warning** dialog box, which opens, click **Yes**.
5.  On the form title bar, click **Files**.
6.  In the **Files** dialog box, which opens, do the following:
    1.  Click **Upload Files**.
    2.  In the window that opens, find the `PurchasedLeadsStores.xlsx` file.
    3.  Click Open. The window closes and the information about the uploaded file is displayed in the table of the **Files** dialog box.
    4.  Close the **Files** dialog box.
7.  On the form toolbar, click **Prepare**. The table on the **Prepared Data** tab becomes populated with the data from the uploaded file, with each row corresponding to a lead. In the Selection area of the form, notice that the **Number of Records** box contains *10*, which represents the number of leads that have been prepared to be imported in the system.
8.  On the form toolbar, click **Import** to initiate the import of the selected records. You will see a notification with a green vertical bar and a message indicating successful processing. Notice that in the table, for the imported records, the check boxes in the **Processed** column are selected.

You have imported leads from the `PurchasedLeadsStores.xlsx` file to the system. On the [Leads](CR_30_10_00.md) \(CR301000\) form, you can see all newly imported leads.

## Step 2: Reviewing the Data of a Newly Imported Lead { .section}

To review the data of the newly imported *Irene Baker* lead, do the following:

1.  Open the *Irene Baker* lead on the [Leads](CR_30_10_00.md) \(CR301000\) form.

    In the Summary area, notice that the following values are inserted in the boxes:

    -   **Status**: *New*
    -   **Lead Class**: *STORE*
    -   **Source**: *Purchased List*
2.  On the **General** tab, notice that the contact information from the `PurchasedLeadsStores.xlsx` file is inserted.
3.  On the **Additional Info** tab, notice that *Phone* is inserted in the **Contact Method** box.

You have reviewed the data of the newly imported lead and made sure that it has been correctly imported from the `PurchasedLeadsStores.xlsx` file.

**Parent topic:**[Creating Leads](../UserGuide/CRM_Mktg_Creating_Leads_Mapref.md)

