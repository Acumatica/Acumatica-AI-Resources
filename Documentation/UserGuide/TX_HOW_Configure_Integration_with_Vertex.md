# To Set Up Integration With Vertex Tax Calculation {#_5afe84d2-efb3-43f3-b53e-f129cda8ae41 .task}

To set up integration between Acumatica ERP and Vertex tax calculation service, you need to do the following:

-   Set up the connection on the [Tax Providers](TX_10_20_00.md) \(TX102000\) form.
-   Set up a tax agency to be used for the Vertex tax calculation integration on the [Vendors](AP_30_30_00.md) \(AP303000\) form.
-   Create a tax zone on the [Tax Zones](TX_20_60_00.md) \(TX206000\) form that will be used with this special tax agency.
-   Create tax categories to be associated with the Vertex tax codes on the [Tax Categories](TX_20_55_00.md) \(TX205500\) form.
-   Specify appropriate settings for the customers on the [Customers](AR_30_30_00.md) \(AR303000\) form.
-   Assign tax categories to stock items and non-stock items on the [Stock Items](IN_20_25_00.md) \(IN202500\) and [Non-Stock Items](IN_20_20_00.md) \(IN202000\) forms.

These subprocedures are described below.

## Before You Proceed { .section}

Before you configure the integration with Vertex tax calculation in Acumatica ERP, make sure of the following:

-   Your Vertex account is configured. For details, see [To Configure Your Vertex Account](TX__HOW_Setting_Up_Vertex_Integration.md).
-   The *External Tax Calculation Integration* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## To Set Up the Connection Between Acumatica ERP and Your Vertex Account { .section}

1.  Open the [Tax Providers](TX_10_20_00.md) \(TX102000\) form.
2.  On the form toolbar, click **Add New Record**.
3.  In the **Provider ID** box of the Summary area, type the identifier to be used for the provider.
4.  In the **Description** box, enter a description of the provider.
5.  In the **Plug-In \(Type\)** box, select the built-in Vertex plug-in.
6.  Select the **Active** check box to activate the connection.
7.  On the **Plug-In Parameters** tab, in the **Value** column for the *Account ID* parameter, type your username in Vertex.
8.  In the **Value** column for the *Password* parameter, type your password in Vertex.
9.  In the **Value** column for the *TrustedID* parameter, type the *Trusted ID* identifier your company uses for connecting to Vertex.
10. In the **Value** column for the *URL* parameter, type the URL to be used to connect to Vertex tax calculation service.
11. In the **Value** column for the *Request Timeout \(sec\)* parameter, type the number of seconds for the connection timeout.
12. In the **Value** column for the *Log Trace* parameter, select the check box, if you want the system to save the requests and results of the calls to the trace logs.
13. On the form toolbar, click **Test Connection** to test the connection.

    **Tip:** If the connection is successful, you will see a **Test Connection** message confirming the validity of your credentials.

14. On the **Company Code Mapping** tab, click **Add Row** on the table toolbar to add a new row.
15. In the **Branch** column of the new row, select a branch by its ID to map it to the corresponding company that you have created in the Vertex Account.
16. In the **Company Code** column, type the company name that you have created in Vertex for this branch.
17. Repeat Steps 13–15 for each branch.
18. Click **Save**.

## To Set Up a Tax Agency { .section}

**Tip:** In Acumatica ERP, a tax agency is defined as a vendor.

1.  Open the [Vendors](AP_30_30_00.md) \(AP303000\) form.
2.  In both the **Vendor ID** and **Vendor Name** boxes, type `VERTEX` \(or another name that complies with the formatting rules defined by the *VENDOR* segmented key\).
3.  On the **General Info** tab \(in the **Main Address** section\), in the **Country** box, enter *US*.
4.  In the **Financial Settings** section, in the **Vendor Class** box, select a vendor class that has been defined for tax agencies \(if you have defined such a class\) or any other appropriate class.
5.  In the **Vendor Properties** section, select the **Vendor Is Tax Agency** check box. \(Notice that the **Tax Agency Settings** tab appears.\)
6.  On the **GL Accounts** tab, specify the general ledger accounts and subaccounts that will be used for this vendor.

    **Tip:** Default accounts and subaccounts are displayed if they have been specified for the vendor class that you have selected on the  **General Info**  tab; however, you can select other accounts and subaccounts.

7.  Click **Save**.

## To Create the Needed Tax Zone { .section}

1.  Open the [Tax Zones](TX_20_60_00.md) \(TX206000\) form.
2.  Type `VERTEX` in the **Tax Zone ID** box, and then type a description.
3.  Select the **External Tax Provider** check box; the **Provider ID** and **Tax Agency ID** boxes appear on the form.
4.  In the **Provider ID** box, select the Vertex tax provider.
5.  In the **Tax Agency ID** box, select the tax agency you created for this integration.
6.  Click **Save**.

## To Create Tax Categories for Tax Codes { .section}

1.  Open the [Tax Categories](TX_20_55_00.md) \(TX205500\) form.
2.  On the form toolbar, click **Add New Record**.
3.  In the **Tax Category ID** box, type an Vertex code, and in the **Description** box, provide a description.
4.  Click **Save**.
5.  Repeat Steps 2–4 for each required tax code.

## To Specify the Needed Settings for Each Customer { .section}

1.  Open the [Customers](AR_30_30_00.md) \(AR303000\) form.
2.  Select a customer for which sales taxes should be calculated by Vertex Tax.

    **Tip:** Each customer has at least one automatically created location.

3.  On the **Locations** tab, click the link of one of the listed customer locations \(or the only customer location, if only one is listed\).
4.  On the **General Info** tab of the [Account Locations](CR_30_30_10.md) \(CR303010\) form, which opens in a pop-up window, in the **Tax Zone** list, select *Vertex*.
5.  In the **Tax Registration ID** box, enter the customer's tax registration number.
6.  If this customer location is tax exempt, in the **Tax Exemption Number** box, enter the tax exemption number.
7.  In the **Tax Exemption Type** box, select the option that corresponds to this location.
8.  On the form toolbar, click **Save and Close**.
9.  For each additional location, repeat Steps 4–8.

## To Assign Tax Categories to Each Stock Item or Non-Stock Items { .section}

1.  Open the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.
2.  Select the stock or non-stock item by its inventory ID.
3.  On the **General** tab, in the **Tax Category** box, select the appropriate tax category for the selected item.
4.  Click **Save** on the form toolbar.

**Parent topic:**[Integrating Acumatica ERP with Vertex Tax Provider](../UserGuide/config_Vertex_Integration_Mapref.md)

