# Contacts: To Create a Contact by Using the Acumatica Add-In for Outlook {#_d3d2da45-e1a4-458b-811d-817a289dd4b2 .task}

The following activity demonstrates how to create a contact by using the Acumatica add-in for Outlook and quickly update the contact information in the system.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are David Chubb, a sales manager of the SweetLife Fruits &amp; Jams company. You have received an email from Alison Campbell, a new senior buyer at the Cakeado cafe, a SweetLife customer. Alison will be responsible for ordering fruits in SweetLife. In the email, Alison introduces herself and requests a detailed price list for fruit. You need to create the contact in the system for further communication and tracking.

## Configuration Overview { .section}

In the *U100* dataset, for the purposes of this activity, the following features have been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

-   *Customer Management*
-   *Outlook Integration* in the *Third-Party Integrations* group of features

## Process Overview { .section}

In this activity, you will create a new contact in the system by using the Acumatica add-in for Outlook and make minor changes to the contact information on the [Contacts](CR_30_20_00.md) \(CR302000\) form.

## System Preparation { .section}

Before you start creating a new contact in the system by using the Acumatica add-in for Outlook, you should do the following:

1.  Make sure that the Acumatica ERP instance has been hosted over HTTPS or ask a system administrator to perform this task for you. For more information, see [Preparation for the Acumatica ERP Installation: System Environment](INST_Preparing_Installation_System_Environment.md).
2.  Install the Acumatica add-in for Outlook for your Microsoft Outlook application. For details, see [Using the Acumatica Add-In for Outlook](OU_00_00_00.md).
3.  Launch the Microsoft Outlook app or Outlook on the web.
4.  Click the Acumatica button.
5.  Sign in to the system as a sales manager by using the following credentials:
    -   Username: *chubb*
    -   Password: *123*

## Step 1: Creating a Contact by Using the Acumatica Add-In for Outlook { .section}

To create a new contact by using the Acumatica add-in for Outlook, do the following:

1.  Select the email from the sender.

    **Tip:** You can select any email from your incoming mail.

2.  Click the Acumatica button.
3.  On the Acumatica add-in for Outlook form, which opens, click **Create Contact**.
4.  In the **Info** section, which appears on the form, notice that the values in the **First Name**, **Last Name**, and **Email** boxes have been populated with the information from the email.
5.  In the **Info** section, specify the settings as follows:

    **Tip:** You do not usually need to manually specify a contact's first name, last name, and email address \(although you can correct these values as needed\), but because you cannot have an email from the actual contact in this example, we recommend that you correct the contact information.

    1.  In the **First Name** box, type `Alison`.
    2.  In the **Last Name** box, type `Campbell`.
    3.  In the **Email** box, type `a.campbell@cakeado.example.com`.
    4.  In the **Position** box, type the contact's job title or position: `Senior Buyer`.
    5.  In the **Account** box, select *CAKEADO*. Notice that the system has inserted the *Cakeado Cafe* value in the **Account Name** box and the *US* value in the **Country** box.

        **Tip:** By selecting this account, you have associated the new contact with the existing SweetLife customer.

    6.  In the **Source** box, select the source of the lead: *Other*.
6.  Click **Create Contact** to create the contact in the system. Notice that the **View Contact**, **Log Activity**, **Create Case**, and **Create Opportunity** buttons have appeared on the form.

    **Tip:** If needed, you can click **View Contact** to view the contact record on the [Contacts](CR_30_20_00.md) \(CR302000\) form, which opens in a pop-up window, and add or change the data of the contact.


You have created a new contact in the system by using the Acumatica add-in for Outlook.

## Step 2: Updating the Contact's Information by Using the Acumatica Add-In for Outlook { .section}

Suppose that you have scanned the email from Alison Campbell once again and noticed her mobile phone number. You need to add this number to the system on the fly.

To update the contact's information by using the Acumatica add-in for Outlook, do the following:

1.  While you are still viewing the contact settings on the Acumatica add-in for Outlook form, click **View Contact**. The [Contacts](CR_30_20_00.md) \(CR302000\) form opens in a pop-up window.
2.  In the **Contact** section on the **Details** tab, do the following:
    1.  In the **Cell** box, type `212-555-0188`.
3.  On the form toolbar, click **Save**.
4.  Close the pop-up window.

You have updated the contact information of the contact *Alison Campbell* in the system by using the Acumatica add-in for Outlook.

**Parent topic:**[Creating Contacts](../UserGuide/CRM_Sales_Creating_Contacts_Mapref.md)

