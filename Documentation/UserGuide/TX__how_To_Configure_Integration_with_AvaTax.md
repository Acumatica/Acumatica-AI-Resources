# To Set Up Integration With AvaTax {#_48365fae-9e8e-4340-ab06-32df1cadc241 .task}

To set up integration between Acumatica ERP and Avalara AvaTax, you need to perform the following general steps, each of which is described in its own section of this topic:

1.  Set up the connection on the [Tax Providers](TX_10_20_00.md) \(TX102000\) form.
2.  Enable the *Address Validation Integration* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, and configure address verification on the [Countries/States](CS_20_40_00.md) \(CS204000\) form.
3.  Set up a tax agency to be used for the AvaTax integration on the [Vendors](AP_30_30_00.md) \(AP303000\) form.
4.  Create a tax zone on the [Tax Zones](TX_20_60_00.md) \(TX206000\) form that will be used with this special tax agency.
5.  Create tax categories to be associated with the AvaTax tax codes on the [Tax Categories](TX_20_55_00.md) \(TX205500\) form.
6.  Specify the appropriate settings for the customers on the [Customers](AR_30_30_00.md) \(AR303000\) form.
7.  Assign tax categories to stock items and non-stock items on the [Stock Items](IN_20_25_00.md) \(IN202500\) and [Non-Stock Items](IN_20_20_00.md) \(IN202000\) forms.

**Important:** Before you start configuring the integration with Avalara AvaTax in Acumatica ERP, make sure of the following:

-   Your Avalara AvaTax account has been configured. For details, see [To Configure Your Avalara AvaTax Account](TX__how_Setting_Up_Avalara_Integration.md).
-   The *External Tax Calculation Integration* feature has been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Connecting Acumatica ERP to Your AvaTax Account { .section}

To establish a connection between Acumatica ERP and your AvaTax account, do the following:

1.  On the [Tax Providers](TX_10_20_00.md) \(TX102000\) form, add a new record.
2.  In the **Provider ID** box of the Summary area, type the identifier to be used for the provider.
3.  In the **Description** box, enter a description of the provider.
4.  In the **Plug-In \(Type\)** box, select the built-in Avalara plug-in.
5.  Select the **Active** check box to activate the connection.
6.  On the **Plug-In Parameters** tab, in the **Value** column for the *Account Number* parameter, type your account number in AvaTax.
7.  In the **Value** column for the *License Key* parameter, type the license key your company uses for connecting to AvaTax.
8.  In the **Value** column for the *URL* parameter, type the URL to be used to connect to AvaTax.
9.  In the **Value** column for the *Request Timeout \(sec\)* parameter, type the number of seconds for the connection timeout.
10. In the **Value** column for the *Send Sales Account* and *Check Address Before Calculating Tax* parameters, select the check boxes; also, if required, in the **Value** column for the *Inclusive Tax* parameter, select the check box.
11. In the **Value** column for the *Log Trace* parameter, select the check box if you want the system to save the requests and results of the calls to the trace logs.
12. On the form toolbar, click **Test Connection** to test the connection.

    **Tip:** If the connection is successful, you will see a **Test Connection** message confirming the validity of your credentials.

13. On the **Company Code Mapping** tab, click **Add Row** on the table toolbar to add a new row.
14. In the **Branch** column of the new row, select a branch by its ID to map it to the corresponding company that you have created in the AvaTax account.
15. In the **Company Code** column, type the company name that you have created in AvaTax for this branch.
16. Repeat Instructions 13–15 for each branch.
17. On the form toolbar, click **Save**.

## Configuring an Address Validation Provider { .section}

To set up an address validation provider in Acumatica ERP, do the following:

1.  On the [Address Providers](../Shared/../UserGuide/CS_10_30_00.md) \(CS103000\) form, add a new record.
2.  In the **Provider ID** box, type the identifier to be used for the provider.
3.  In the **Description** box, enter the description of the provider.
4.  In the **Plug-In** box, select the built-in Avalara address validation plug-in.
5.  Select the **Active** check box to activate the connection.
6.  On the **Plug-In Parameters** tab, in the **Value** column for the *Account Number* parameter, type your account number in AvaTax.
7.  In the **Value** column for the *License Key* parameter, type the license key your company uses for connecting to AvaTax.
8.  In the **Value** column for the *URL* parameter, type the URL to be used to connect to AvaTax.
9.  In the **Value** column for the *Request Timeout \(sec\)* parameter, type the number of seconds for the connection timeout.
10. On the form toolbar, click **Test Connection** to test the connection.

    **Tip:** If the connection is successful, you will see a **Test Connection** message confirming the validity of your credentials.

11. On the form toolbar, click **Save**.

## Setting Up Address Verification { .section}

To set up address verification in Acumatica ERP, do the following:

1.  Open the [Countries/States](../Shared/../UserGuide/CS_20_40_00.md) \(CS204000\) form.
2.  In the **Country ID** box of the Summary area, select *US*.
3.  In the **Address Verification Plug-In** box, select the Avalara address validation plug-in you set up.
4.  On the form toolbar, click **Save**.

## Setting Up a Tax Agency { .section}

To set up a tax agency in Acumatica ERP, do the following:

**Tip:** In Acumatica ERP, a tax agency is defined as a vendor.

1.  On the [Vendors](AP_30_30_00.md) \(AP303000\) form, add a new record.
2.  In the **Vendor ID** box, type `AVALARA` \(or another name that complies with the formatting rules defined by the *VENDOR* segmented key\).
3.  In the **Vendor Class** box, select a vendor class that has been defined for tax agencies \(if you have defined such a class\) or any other appropriate class.
4.  On the **General** tab \(in the **Account Address** section\), in the **Country** box, select *US*.
5.  In the **Vendor Properties** section, select the **Vendor Is Tax Agency** check box. Notice that the **Tax Agency** tab appears.
6.  On the **GL Accounts** tab, specify the general ledger accounts and subaccounts that will be used for this vendor.

    **Tip:** Default accounts and subaccounts \(if subaccounts are used in your system\) are displayed if they have been specified for the vendor class that you have selected in the Summary area; however, you can select other accounts and subaccounts.

7.  On the form toolbar, click **Save**.

## Creating a Tax Zone { .section}

To create a tax zone to be used for the AvaTax service, do the following:

1.  On the [Tax Zones](TX_20_60_00.md) \(TX206000\) form, add a new record.
2.  In the **Tax Zone ID** box, type `AVALARA`.
3.  Select the **External Tax Provider** check box; the **Provider ID** and **Tax Agency ID** boxes appear on the form.
4.  In the **Provider ID** box, select the Avalara tax provider.
5.  In the **Tax Agency ID** box, select the tax agency you created for this integration.
6.  On the form toolbar, click **Save**.

## Creating Tax Categories for Tax Codes { .section}

To create a tax category or multiple categories for use with the integration, perform the following instructions:

1.  On the [Tax Categories](TX_20_55_00.md) \(TX205500\) form, add a new record.
2.  In the **Tax Category ID** box, type an AvaTax code, and in the **Description** box, provide a description.
3.  On the form toolbar, click **Save**.
4.  Repeat Instructions 1–3 for each required tax code.

## Specifying the Customer Settings { .section}

To specify the settings related to Avalara integration for a customer, do the following:

1.  Open the [Customers](AR_30_30_00.md) \(AR303000\) form.
2.  Select a customer for which sales taxes should be calculated by AvaTax.

    **Tip:** Each customer has at least one automatically created location.

3.  On the **Locations** tab, click the link of one of the listed customer locations \(or the only customer location, if only one is listed\).
4.  On the **Shipping** tab of the [Customer Locations](AR_30_30_20.md) \(AR303020\) form, which opens in a pop-up window, in the **Tax Zone** box, select *Avalara*.
5.  In the **Tax Registration ID** box, enter the customer's tax registration number.
6.  If this customer location is tax exempt, in the **Tax Exemption Number** box, enter the tax exemption number.
7.  In the **Tax Exemption Type** box, select the appropriate tax exemption reason.
8.  On the form toolbar, click **Save**, and close the pop-up window.
9.  For each additional location, repeat Instructions 4–8.

## Assigning Tax Categories to Stock Items and Non-Stock Items { .section}

To assign a specific tax category to each needed stock and non-stock item, do the following:

1.  Open the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.
2.  Select a stock or non-stock item by its inventory ID.
3.  On the **General** tab, in the **Tax Category** box, select the appropriate tax category for the item.
4.  On the form toolbar, click **Save**.

**Parent topic:**[Integrating Acumatica ERP with Avalara Avatax](../UserGuide/config_Avalara_Integration_Mapref.md)

