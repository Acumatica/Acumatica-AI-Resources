# To Configure Your Avalara AvaTax Account {#_da348cc2-b4ec-42a4-8cca-32e1d3474304 .task}

This topic outlines the general steps for configuring an Avalara AvaTax account.

**Important:** Please refer to the documentation from Avalara to complete the listed steps.

To set up your account in Avalara AvaTax, perform these steps:

1.  Create an organizational structure.

    Set up an organizational structure in Avalara AvaTax that mirrors the branch structure in your Acumatica ERP. Use the parent company, child company, and separate reporting entity properties to represent your organization's branches. Once the structure is created, associate each branch in Acumatica ERP with the corresponding company in Avalara AvaTax.

2.  Set up tax profiles.

    Create a tax profile in Avalara AvaTax for each company \(that is, each branch in Acumatica ERP\). Be sure to select the states where each company has a tax nexus to ensure accurate tax calculation.

3.  Map tax codes.

    Map the tax codes between Avalara AvaTax and Acumatica ERP. Depending on your Avalara AvaTax subscription and the stage of your Acumatica ERP setup, you can either use AvaTax system tax codes directly or map your existing Acumatica ERP tax categories to the AvaTax system tax codes. This mapping is managed on the Avalara website.

4.  *Optional:* Configure and maintain tax rules as needed. For example, define tax holidays for specific products during certain periods.

**Tip:** AvaTax gives you the ability to gather and store information about customer exemption certificates. For details, see [Exception Certificate Management: General Information](config_Exception_Certificate_Management_GeneralInfo.md).

**Parent topic:**[Integrating Acumatica ERP with Avalara Avatax](../UserGuide/config_Avalara_Integration_Mapref.md)

