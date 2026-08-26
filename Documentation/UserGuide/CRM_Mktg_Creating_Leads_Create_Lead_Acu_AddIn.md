# Leads: To Create a Lead by Using the Acumatica Add-In for Outlook {#_a52f6a45-288a-417e-ab9e-41103dab6691 .task}

The following activity demonstrates how to create a lead by using the Acumatica add-in for Outlook and quickly update the lead's information in the system.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are Bill Owen, a marketing manager of the SweetLife Fruits &amp; Jams company.You receive an email from Stephanie Andrews, a purchasing manager at Muffin Secret bakery. In the email, Stephanie requests for the detailed price list of the SweetLife Fruits &amp; Jams. Bill needs to register the lead in the system for further communication.

## Configuration Overview { .section}

In the *U100* dataset, for the purposes of this activity, the following features have been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

-   *Customer Management*
-   *Outlook Integration* in the *Third-Party Integrations* group of features

The Acumatica add-in for Outlook should be installed for your Microsoft Outlook application. For details, see [Using the Acumatica Add-In for Outlook](OU_00_00_00.md).

## Process Overview { .section}

In this activity, you will create a new lead in the system by using the Acumatica add-in for Outlook and quickly edit the lead's contact information on the [Leads](CR_30_10_00.md) \(CR301000\) form.

## System Preparation { .section}

Before you start creating a new lead in the system by using the Acumatica add-in for Outlook, you should do the following:

1.  Make sure that the Acumatica ERP instance has been hosted over HTTPS or ask a system administrator to perform this task for you. For more information, see [Preparation for the Acumatica ERP Installation: System Environment](INST_Preparing_Installation_System_Environment.md).
2.  Install the Acumatica add-in for Outlook in your Microsoft Outlook application. For details, see [Using the Acumatica Add-In for Outlook](OU_00_00_00.md).
3.  Launch the Microsoft Outlook app or Outlook on the web.
4.  Click the Acumatica button.
5.  Sign in to the system as a marketing manager Bill Owen by using the following credentials:
    -   **Username**: *owen*
    -   **Password**: *123*

## Step 1: Creating a Lead by Using the Acumatica Add-In for Outlook { .section}

To create a new lead by using the Acumatica add-in for Outlook, do the following:

1.  Select an email from the lead.

    **Tip:** You can select any email from your incoming mail.

2.  Click the Acumatica button.
3.  On the Acumatica add-in for Outlook form, which opens, click **Create Lead**.
4.  In the **Info** section, which appears on the add-in for Outlook form, notice that the values in the **First Name**, **Last Name**, and **Email** boxes have been populated with the information from the email.
5.  Optional: In the **Info** section, specify the information as follows:

    **Tip:** You do not usually need to manually specify a lead's first name, last name, and email address \(though you can correct these values as needed\), but because you cannot have an email from the lead specified in this activity, we recommend that you correct the lead's contact information.

    1.  In the **First Name** box, type `Stephanie`.
    2.  In the **Last name** box, type `Andrews`.
    3.  In the **Email** box, type `s.andrews@muffin.secret.example.com`.
    4.  In the **Position** box, type the lead's job title or position: `Purchasing Manager`.
    5.  In the **Account Name** box, type `Muffin Secret`.
    6.  In the **Source** box, select the source of the lead: *Other*.
    7.  In the **Country** box, select the country of the lead: *US*.
6.  Click **Create Lead** to create the lead in the system.

    **Tip:** You can click **View Lead** to view the lead record on the [Leads](CR_30_10_00.md) \(CR301000\) form, which may open in a pop-up window or in a new browser tab, and add or change the lead data if needed.


You have created a new lead in the system by using the Acumatica add-in for Outlook.

## Step 2: Updating the Lead's Information by Using the Acumatica Add-In for Outlook { .section}

Suppose that you have scanned the email from Stephanie Andrews once again and noticed her company address. You need to quickly add this address to the system.

To update the lead's information by using the Acumatica add-in for Outlook, do the following:

1.  While you are still viewing the lead's contact details on the Acumatica add-in for Outlook form, click **View Lead**. The [Leads](CR_30_10_00.md) \(CR301000\) form opens.
2.  In the **Address** section on the **General** tab, do the following:
    1.  In the **Address Line 1** box, type `2359 Southern Street`.
    2.  In the **City** box, type `New York`.
3.  On the form toolbar, click **Save** to save your changes.
4.  Close the [Leads](CR_30_10_00.md) \(CR301000\) form.

You have updated the lead's information in the system by using the Acumatica add-in for Outlook.

**Parent topic:**[Creating Leads](../UserGuide/CRM_Mktg_Creating_Leads_Mapref.md)

