# Lead Qualification by Sales Teams: To Disqualify a Lead {#_7e307e86-2f3f-4ff8-bffa-36038578fe4b .task}

The following activity demonstrates how to disqualify a lead in Acumatica ERP.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are Bill Owen, a marketing manager of the SweetLife Fruits &amp; Jams company. You have launched an advertising campaign to promote a new series of commercial juicers. The audience is a group of leads that have shown interest in these juicers. During the campaign, you have sent emails with the product descriptions and a survey to gauge the audience's interest in the products. John Livier, the head of the client services department at the Snow Park Restaurant, responded to your survey that the company is no longer interested in commercial juicers. Thus, you need to disqualify the *John Livier* lead.

## Configuration Overview { .section}

In the *U100* dataset, for the purposes of this activity, the following tasks have been performed:

-   On the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\) form, the *Customer Management* feature has been enabled.
-   On the [Lead Classes](../Shared/../UserGuide/CR_20_70_00.md) \(CR207000\) form, the *CAFE* class, which defines SweetLife's leads representing employees from cafes and restaurants, has been created.
-   On the [Leads](../Shared/../UserGuide/CR_30_10_00.md) \(CR301000\) form, the *John Livier* lead has been created.

## Process Overview { .section}

In this process activity, you will disqualify a lead on the [Leads](../Shared/../UserGuide/CR_30_10_00.md) \(CR301000\) form.

## System Preparation { .section}

Before you start disqualifying a lead, you should do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as marketing manager Bill Owen by using the following credentials:
    -   **Username**: *owen*
    -   **Password**: *123*
2.  Make sure that on the Company and Branch Selection menu, in the top pane of the Acumatica ERP screen, the *SweetLife Head Office and Wholesale Center* branch is selected.

## Step: Disqualifying a Lead { .section}

To disqualify the *John Livier* lead, do the following:

1.  Open the *John Livier* lead record on the [Leads](../Shared/../UserGuide/CR_30_10_00.md) \(CR301000\) form.

    **Tip:** To search for a record in a list of records, you can enter a keyword or phrase in the Search box of the table toolbar. The system will find all the records that match your search criteria and display these records in the table. For details, see [Searching in Acumatica ERP](../Shared/../UserGuide/GS_Searching_in_Acumatica_ERP_Mapref.md).

2.  On the More menu, under **Processing**, click **Disqualify**.

    **Tip:** You open the More menu by clicking the More button \(…\) on the form toolbar.

3.  In the **Details** dialog box, which opens, select the reason and confirm that you want to disqualify the lead as follows:
    1.  In the **Reason** box, select *No Interest*.
    2.  Click **OK**.

        The system closes the dialog box and changes the status of the lead to *Disqualified*. Most of the settings in the Summary area and on the **General**, **Additional Info**, **Attributes**, **Campaigns**, and **Opportunities** tabs have become unavailable for editing.


You have disqualified the lead.

**Parent topic:**[Qualifying Leads \(Sales\)](../UserGuide/CRM_Sales_Qualifying_Leads_by_Sales_Mapref.md)

