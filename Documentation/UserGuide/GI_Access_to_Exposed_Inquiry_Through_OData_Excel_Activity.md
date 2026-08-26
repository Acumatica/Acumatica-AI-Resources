# Generic Inquiry Access Through OData: To Access an Exposed Inquiry in Microsoft Excel {#_9145f675-c897-42bf-9683-dcaee14f877c .task}

In this activity, you will learn how to access a generic inquiry that was exposed through OData in Microsoft Excel.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are a technical specialist in your company who is working on simple customizations, including those involving the creation, modification, and use of generic inquiries. An accountant of your company has asked to have access in Excel to the predefined Invoices and Memos \(AR3010PL\) generic inquiry form. This form, which is a list of records, has the *AR-Invoices and Memos* inquiry title and the *Invoices and Memos* site map title specified on the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form. The accountant uses Excel for building reports based on the data of this generic inquiry and wants the data to always be up to date.

You have exposed the requested generic inquiry, and now you need to verify that it can be accessed through Excel.

## Process Overview { .section}

On [Access Rights by User](SM_20_10_55.md) \(SM201055\) form, you will verify that your user account has sufficient access rights \(the *Delete* level\) to the predefined Invoices and Memos \(AR3010PL\) generic inquiry.

You will then open Microsoft Excel and import data from the exposed inquiry to a spreadsheet.

## System Preparation { .section}

Launch the Acumatica ERP website, and sign in to a tenant with the *U100* dataset preloaded as system administrator Kimberly Gibbs. You should sign in by using the *gibbs* username and the *123* password.

**Tip:** The *gibbs* user is assigned the *Administrator* role, which has sufficient access rights to manage the system configuration and to modify generic inquiries, advanced filters, pivot tables, and dashboards.

## Step 1: Verifying the Access Rights { .section}

To verify that your user account has the appropriate level of access rights to the exposed inquiry, do the following:

1.  Open the [Access Rights by User](SM_20_10_55.md) \(SM201055\) form.
2.  In the **Login** box, select your username, which is *gibbs*.
3.  In the **Hidden** node of the left pane, click **Invoices and Memos** with the *AR3010PL* screen ID.

    **Tip:** The system displays a tooltip with the screen identifier when you point to a node; this can help you find the needed form when multiple forms have the same name.

4.  In the right pane, verify that the **Access Rights** column has the *Delete* level of access rights.

    **Tip:** If a user account has multiple roles assigned to it, the user account’s level of access rights to a particular form is the most permissive level of the active roles.


## Step 2: Viewing a Generic Inquiry in Excel { .section}

To access the exposed inquiry through Microsoft Excel, do the following:

**Tip:** The instructions below apply to Microsoft Excel 2019; the details may differ for other versions. The version you use must be higher than Microsoft Excel 2007, which does not support connection to OData endpoints.

1.  Open an Excel workbook.
2.  In the **Data** ribbon tab, click **Get Data** &gt; **From Other Sources** &gt; **From OData Feed**.
3.  In the **OData Feed** wizard, do the following:
    1.  Click the **Basic** option button.
    2.  Enter the URL to the OData endpoint –*&lt;Acumatica ERP instance URL&gt;/t/&lt;TenantName&gt;/api/odata/gi*
    3.  Click **OK**.
    4.  On the next step of the wizard, go to the **Basic** tab, and enter your sign-in credentials, which are your Acumatica ERP username and password.

        **Tip:** Do not add the tenant name after your username.

    5.  Click **Connect**.

        Excel connects to the Acumatica ERP instance and obtains the list of exposed generic inquiries that are available for your Acumatica ERP user account.

4.  In the left pane of the **Navigator** dialog box, which opens, select the *AR-Invoices and Memos* generic inquiry. You can preview the data in the right pane of the dialog box.

    **Tip:** In this dialog box, for a generic inquiry with parameters, you can specify the values of the parameters.

5.  Click **Load**.

    The system connects to the server, downloads the data from your Acumatica ERP instance, and presents the data in the way you selected.

    **Tip:** The sorting order in the resulting Excel file may differ from the sorting order in Acumatica ERP because Excel applies sorting after the data is downloaded.

6.  To update the data, click **Refresh All** in the **Data** ribbon tab.

**Parent topic:**[Accessing the Exposed Inquiry Results Through OData](../UserGuide/GI_Access_to_Exposed_Inquiry_Through_OData_Mapref.md)

