# Inquiry Transfer: To Export and Import an Existing Inquiry as XML File {#_a9522553-3ecc-49bc-b1af-a67d1a781157 .task}

In this activity, you will learn how to export an existing inquiry as an XML file and then import the inquiry.

## Story { .section}

Suppose that you are a technical specialist in your company who is working on simple customizations. Further suppose that your company uses multitenant configuration, and that the predefined Invoices and Memos \(AR3010PL\) generic inquiry form was deleted from one tenant by mistake. The accounting department that uses the tenant has asked you to recover the inquiry form. You have decided to transfer the predefined generic inquiry form from one tenant of your company to another.

## Process Overview { .section}

To perform this activity, you need two tenants to be configured in your system: the one from which you export the generic inquiry form, and the one to which you import the generic inquiry form. You will configure these tenants during system preparation. \(For more information on managing tenants, see [Managing Tenants by Using the Web Interface](SA_Managing_Tenants_Using_Web_Mapref.md).\) On one tenant, you will export the Invoices and Memos \(AR3010PL\) generic inquiry form as an XML file by using the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form. Then on another tenant, you will import the XML file with the inquiry.

## System Preparation {#_8cb1d156-615f-45bc-bdeb-8cde5c9b8992 .section}

Before you perform the steps of this activity, make sure that the following tasks have been performed:

1.  You have installed an Acumatica ERP instance with two tenants that have the *U100* dataset. \(Although you can name these tenants as you wish, in this activity, they will be referred to as *U1* and *U2* for simplicity.\) A system administrator can perform this task for you.
2.  You have signed in to the Acumatica ERP tenant *U1* with the following credentials:

    -   Username: *gibbs*
    -   Password: *123*
    **Tip:** User *gibbs* is assigned the *Administrator* role, which has sufficient access rights to manage system configuration.


## Step 1: Exporting the Existing Generic Inquiry { .section}

To export the generic inquiry, do the following:

1.  Open the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form.
2.  In the **Inquiry Title** box, select *AR-Invoices and Memos*.
3.  On the form toolbar, click **Clipboard** &gt; **Export as XML**.
4.  Perform the necessary steps, which depend on your browser and settings, to download the `AR-Invoices and Memos.xml` file with the exported data.

The file is downloaded to the folder that is configured in your browser as a default folder.

## Step 2: Importing the Generic Inquiry { .section}

To import the generic inquiry, do the following:

1.  In the right corner of the top pane on the Acumatica ERP screen, click the User menu button, and select **Sign Out**.
2.  Sign in to Acumatica ERP tenant *U2* with the following credentials:
    -   Username: *gibbs*
    -   Password: *123*
3.  Open the [Generic Inquiry](SM_20_80_00.md) form.
4.  On the form toolbar, click **Clipboard** &gt; **Import from XML**.
5.  In the **Upload XML File** dialog box, click **Choose File**, and select the `AR-Invoices and Memos.xml` file to import.
6.  Click **Upload** to upload the file to the system.

The system saves the generic inquiry automatically.

**Parent topic:**[Transferring an Inquiry](../UserGuide/GI_Transferring_Inquiry_Mapref.md)

