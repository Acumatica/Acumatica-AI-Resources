# Leads: To Create a Lead Manually {#_9e2b4088-31ac-4de8-b0ab-84e12a2d22e3 .task}

The following activity demonstrates how to create a lead manually in Acumatica ERP.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are Bill Owen, a marketing manager of the SweetLife Fruits &amp; Jams company. You have received a call from Sam Collins, the bakery manager of Muffin Secret, a bakery that cooks pastries, usually with jam filling. Sam would like to purchase 50 jars each of apple, orange, and cherry jam and wonders what discount he can obtain from the SweetLife if he chooses to buy the jams.

## Configuration Overview { .section}

In the *U100* dataset, for the purposes of this activity, the following tasks have been performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Customer Management* feature has been enabled. This feature provides the customer relationship management \(CRM\) functionality, including lead and customer tracking, and gives users the ability to manage sales opportunities, contacts, marketing lists, and campaigns.
-   On the [Lead Classes](CR_20_70_00.md) \(CR207000\) form, the *BAKERY* class, which defines SweetLife's leads that represent bakery employees, has been created.

## Process Overview { .section}

In this activity, you will create a lead on the [Leads](CR_30_10_00.md) \(CR301000\) form.

## System Preparation { .section}

Before you start creating leads manually, you should do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded.
2.  Sign in to the system as marketing manager Bill Owen by using the following credentials:
    -   **Username**: *owen*
    -   **Password**: *123*
3.  Make sure that on the Company and Branch Selection menu, in the top pane of the Acumatica ERP screen, the *SweetLife Head Office and Wholesale Center* branch is selected.
4.  Make sure that on the [Customer Management Preferences](CR_10_10_00.md) \(CR101000\) form, in the **Default Lead Class** box, *BAKERY* is specified. If it is not, select this lead class, and save your changes.

## Step: Creating a Lead Manually { .section}

To create a lead manually, do the following:

1.  On the [Leads](CR_30_10_00.md) \(CR301000\) form, add a new record.
2.  In the Summary area, do the following:
    1.  In the **Description** box, add: `The bakery manager submitted an inquiry on the corporate website about a discount for 150 jars of apple, orange, and cherry jam`.
    2.  In the **Source** box, select *Web*.
3.  In the Summary area, in the **Lead Class** box, make sure that the *BAKERY* class is selected.
4.  On the **General** tab, specify the following contact information for the lead:
    1.  **First Name**: `Sam`
    2.  **Last Name**: `Collins`
    3.  **Account Name**: `Muffin Secret`
    4.  **Job Title**: `Bakery Manager`
    5.  **Email**: `s.collins@muffin.secret.example.com`
    6.  **Business 1**: `+1 (212) 509-6005`
    7.  **Address Line 1**: `2359 Southern Street`
    8.  **City**: `New York`
    9.  **Country**: `United States of America`
5.  On the form toolbar, click **Save**.

You have created the lead in the system. On the [Leads](CR_30_10_00.md) form, you can see *Sam Collins* in the **Lead** box and *New* in the **Status** box.

**Parent topic:**[Creating Leads](../UserGuide/CRM_Mktg_Creating_Leads_Mapref.md)

