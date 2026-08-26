# Opportunities: To Create an Opportunity by Using the Acumatica Add-In for Outlook {#_339a4ade-dbf1-413f-9157-0cb14658f188 .task}

The following activity demonstrates how to create an opportunity by using the Acumatica add-in for Outlook and quickly update the opportunity information in the system.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are David Chubb, a sales manager of the SweetLife Fruits &amp; Jams company. You have received an email from Julia May, who is a new pastry cook at Allen's Bakery \(SweetLife's customer\). Julia would like to extend the contract with SweetLife and purchase 10 jars each of orange and cherry jam and wonders if she can buy the jams with the 10 percent discount.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, for the purposes of this activity, the following tasks have been performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Customer Management* feature has been enabled: This feature provides the customer relationship management \(CRM\) functionality, including lead and customer tracking, as well as the handling of sales opportunities, contacts, marketing lists, and campaigns.
-   The *ABAKERY* business account has been created in the system on the [Business Accounts](CR_30_30_00.md) \(CR303000\) form and extended as a customer.
-   The *PRODUCT* opportunity class has been created on the [Opportunity Classes](CR_20_90_00.md) \(CR209000\) form.
-   The *ORJAM32* and *CHERJAM32* stock items have been created on the [Stock Items](IN_20_25_00.md) \(IN202500\) form.

## Process Overview { .section}

In this activity, you will create a new contact and opportunity in the system by using the Acumatica add-in for Outlook and add the information about products to be sold and discounts to the opportunity on the [Opportunities](CR_30_40_00.md) \(CR304000\) form.

## System Preparation { .section}

Before you start creating a new contact and opportunity in the system by using the Acumatica add-in for Outlook, you should do the following:

1.  Make sure that the Acumatica ERP instance has been hosted over HTTPS or ask a system administrator to perform this task for you. For more information, see [Preparation for the Acumatica ERP Installation: System Environment](INST_Preparing_Installation_System_Environment.md).
2.  Install the Acumatica add-in for Outlook for your Microsoft Outlook application. For details, see [Using the Acumatica Add-In for Outlook](OU_00_00_00.md).
3.  Launch the Microsoft Outlook app or Outlook on the web.
4.  Click the Acumatica button.
5.  Sign in to the system as a sales manager by using the following credentials:
    -   **Username**: *chubb*
    -   **Password**: *123*

## Step 1: Creating a Contact by Using the Acumatica Add-In for Outlook { .section}

To create a new contact by using the Acumatica add-in for Outlook, do the following:

1.  Select the email from the sender.

    **Tip:** You can select any email from your incoming mail.

2.  Click the Acumatica button.
3.  On the Acumatica add-in for Outlook form, which opens, click **Create Contact**.
4.  In the **Info** section, which appears on the form, notice that the values in the **First Name**, **Last Name**, and **Email** boxes have been populated with the information from the email.
5.  In the **Info** section, specify the settings as follows:

    **Tip:** You do not usually need to manually specify a contact's first name, last name, and email address \(although you can correct these values as needed\), but because you cannot have an email from the actual contact in this example, we recommend that you correct the contact information.

    1.  In the **First Name** box, type `Julia`.
    2.  In the **Last Name** box, type `May`.
    3.  In the **Email** box, type `j.may@abakery.example.com`.
    4.  In the **Position** box, type the contact's job title or position: `Pastry Cook`.
    5.  In the **Account** box, select *ABAKERY*. Notice that the system has inserted the *Allen's Bakery* value in the **Account Name** box and the *US* value in the **Country** box.

        **Tip:** By selecting this account, you have associated the new contact with the existing SweetLife customer.

    6.  In the **Source** box, select the source of the contact: *Other*.
6.  Click **Create Contact** to create the contact in the system. Notice that the **View Contact**, **View Account**, **Log Activity**, **Create Case**, and **Create Opportunity** buttons have appeared on the form.

    **Tip:** If needed, you can click **View Contact** to view the contact record on the [Contacts](CR_30_20_00.md) \(CR302000\) form, which may open in a new browser tab or in a pop-up window, and add or change the data of the contact.


## Step 2: Creating an Opportunity by Using the Acumatica Add-In for Outlook { .section}

To create a new opportunity by using the Acumatica add-in for Outlook, do the following:

1.  While you are still viewing the *Julia May* contact on the Acumatica add-in for Outlook form, click **Create Opportunity**.
2.  In the **New Opportunity Details** section, which appears on the form, notice that the values in the **Class ID**, **Subject**, and **Stage**, **Estimation**, and **Branch** boxes have been populated with the information from the email.
3.  In the **New Opportunity Details** section, specify the settings as follows:
    1.  In the **Class ID** box, make sure that *PRODUCT* is selected.
    2.  In the **Subject** box, type `Sale of orange and cherry jams to Allen's Bakery`.
    3.  In the **Stage** box, select *Negotiation*.
4.  Click **Create Opportunity** to create an opportunity in the system. Wait until the system completes the operation. Notice that the **Info** section that holds the settings of the *Julia May* contact appears on the form.
5.  Click **View Opportunity**. The system opens on the [Opportunities](CR_30_40_00.md) \(CR304000\) form.

## Step 3: Updating the Opportunity's Information by Using the Acumatica Add-In for Outlook { .section}

Now you need to add the information about the jams to be sold to the *ABAKERY* customer to the opportunity.

To update the opportunity's settings by using the Acumatica add-in for Outlook, do the following:

1.  While you are still viewing the *Sale of orange and cherry jams to Allen's Bakery* opportunity on the [Opportunities](CR_30_40_00.md) \(CR304000\) form, on the **Activities** tab, notice that a row with the *Email* type is added to the table for the email from the *Julia May* contact.
2.  On the **Details** tab, add two rows with the details of the items to be sold as follows:
    -   Row 1:

        -   **Inventory ID**: *ORJAM32*
        -   **Quantity**: `10`
        -   **Discount, %**: `10`
    -   Row 2:

        -   **Inventory ID**: *CHERJAM32*
        -   **Quantity**: `10`
        -   **Discount, %**: `10`
3.  On the form toolbar, click **Save**.
4.  Close the [Opportunities](CR_30_40_00.md) \(CR304000\) form.

You have updated the opportunity information in the system by using the Acumatica add-in for Outlook.

**Parent topic:**[Creating Opportunities](../UserGuide/CRM_Sales_Creating_Opportunities_Mapref.md)

