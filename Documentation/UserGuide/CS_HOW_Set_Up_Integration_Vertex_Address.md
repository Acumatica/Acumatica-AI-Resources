# To Set Up Integration with a Vertex Address Validation Provider {#_51e01be5-7c50-44bb-802e-927547e2bc99 .task}

The following topic will walk you through the process of setting up integration with the Vertex address validation plug-in.

## Before You Proceed { .section}

To get access to the service, you need to obtain the following from Vertex:

-   A subscription to the Vertex Cloud service
-   The unique identifier \(Trusted ID\) for your organization's account in Vertex Cloud
-   The username and password to access your Vertex Cloud account.

Before you configure the integration with Vertex address validation plug-in in Acumatica ERP, make sure that the *Address Validation Integration* feature is enabled in your system on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## To Set Up an Address Validation Provider { .section}

1.  Open the [Address Providers](CS_10_30_00.md) \(CS103000\) form.
2.  On the form toolbar, click **Add New Record**.
3.  In the **Provider ID** box, type the identifier to be used for the provider.
4.  In the **Description** box, enter the description of the provider.
5.  In the **Plug-In \(Type\)** box, select the built-in Vertex address validation plug-in.
6.  Select the **Active** check box to activate the connection.
7.  On the **Plug-In Parameters** tab, in the **Value** column for the *Account ID* parameter, type your username in Vertex Cloud.
8.  In the **Value** column for the *Password* parameter, type your password in Vertex cloud.
9.  In the **Value** column for the *TrustedID* parameter, type the *Trusted ID* identifier your company uses for connecting to Vertex cloud.
10. In the **Value** column for the *URL* parameter, type the URL to be used to connect to Vertex Address Cleansing.
11. In the **Value** column for the *Request Timeout \(sec\)* parameter, type the number of seconds for the connection timeout.
12. On the form toolbar, click **Test Connection** to test the connection.

    **Tip:** If the connection is successful, you will see a **Test Connection** message confirming the validity of your credentials.

13. Click **Save**.

## To Set Up Address Verification { .section}

1.  Open the [Countries/States](CS_20_40_00.md) \(CS204000\) form.
2.  In the **Country ID** box of the Summary area, select *US*.
3.  In the **Address Verification Plug-In** box, select the Vertex address validation plug-in you set up in the previous subprocedure.
4.  Click **Save**.

**Parent topic:**[Integrating Acumatica ERP with Address Validation Providers](../UserGuide/CS__con_Integration_with_Address_Providers.md)

