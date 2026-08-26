# To Set Up Integration with an Avalara Address Validation Provider {#_ac445ae6-333d-4b2f-9430-965534c1c65e .task}

The following topic will walk you through the process of setting up integration with the Avalara Address Validation plug-in.

## Before You Proceed { .section}

Before you configure the integration with Avalara Address Validation plug-in in Acumatica ERP, make sure that the *Address Validation Integration* feature is enabled in your system on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## To Set Up an Address Validation Provider { .section}

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

## To Set Up Address Verification { .section}

1.  Open the [Countries/States](../Shared/../UserGuide/CS_20_40_00.md) \(CS204000\) form.
2.  In the **Country ID** box of the Summary area, select *US*.
3.  In the **Address Verification Plug-In** box, select the Avalara address validation plug-in you set up.
4.  On the form toolbar, click **Save**.

**Parent topic:**[Integrating Acumatica ERP with Address Validation Providers](../UserGuide/CS__con_Integration_with_Address_Providers.md)

