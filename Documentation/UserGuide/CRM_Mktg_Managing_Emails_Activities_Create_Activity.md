# Emails and Activities: To Track a Phone Call {#_d7d48c72-60e2-4a9a-9167-4c7de00bae11 .task}

The following activity will demonstrate how to create an activity of the *Phone Call* type.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are Bill Owen, a marketing manager of the SweetLife Fruits &amp; Jams company.You are currently working on a purchased list of cold leads \(individuals or organizations who never contacted your organization or expressed any interest in your products or services\), which includes the *Tim Bonner* lead. You need to call Tim Bonner, who is a procurement manager at Store Spark in New York, make sure that the lead represents an actual person at the company. You then need to track the results of the phone call in the system.

## Configuration Overview { .section}

In the *U100* dataset, for the purposes of this activity, the following tasks have been performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Customer Management* feature has been enabled. This feature provides the customer relationship management \(CRM\) functionality, including lead and customer tracking, as well as the handling of sales opportunities, contacts, marketing lists, and campaigns.
-   On the [Leads](CR_30_10_00.md) \(CR301000\) form, the *Tim Bonner* lead has been added to the system.

## Process Overview { .section}

In this activity, you will create an activity of the *Phone Call* type on the **Activities** tab of the [Leads](CR_30_10_00.md) \(CR301000\) form.

## System Preparation { .section}

Before you start creating an activity, you should do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded.
2.  Sign in to the system as marketing manager Bill Owen by using the following credentials:
    -   **Username**: *owen*
    -   **Password**: *123*
3.  Make sure that on the Company and Branch Selection menu, in the top pane of the Acumatica ERP screen, the *SweetLife Head Office and Wholesale Center* branch is selected.

## Step: Creating an Activity of the Phone Call Type { .section}

To create an activity of the *Phone Call* type related to the *Tim Bonner* lead, do the following:

1.  On the [Leads](CR_30_10_00.md) \(CR301000\) form, open the *Tim Bonner* lead.

    **Tip:** To search for a record in a list of records, you can enter a keyword or phrase in the Search box of the table toolbar. The system will find all the records that match your search criteria and display these records in the table.

2.  On the More menu, under **Activities**, click **Create Phone Call**. The [Activity](CR_30_60_10.md) \(CR306010\) form opens in a pop-up window.

    **Tip:** You open the More menu by clicking the More button \(…\) on the form toolbar.

3.  In the **Summary** box, type a brief description of the activity: `A call to Tim Bonner`.
4.  Optional: If you want the activity to be hidden from the Self-Service Portal users, select the **Internal** check box.
5.  In the **Started On** box, specify the current date.
6.  Optional: In the text area of the **Description** tab, type your comments or any other information related to the phone call, for example: `Tim Bonner responded to the call and confirmed his interest in buying fruits and jams in the future.`
7.  On the form toolbar, click Save and Close.

You have added the results of the phone call to the system; notice that a row with the *Phone Call* type is added to the table on the **Activities** tab of the [Leads](CR_30_10_00.md) form for the lead.

**Parent topic:**[Managing Emails and Activities](../UserGuide/CRM_Mktg_Managing_Emails_Activities_Mapref.md)

