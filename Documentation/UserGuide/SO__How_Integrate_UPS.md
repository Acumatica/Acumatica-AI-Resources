# To Set Up Integration with UPS REST {#_3ea9a187-b30c-4a25-960f-9ad0bd16628d .task}

Before you configure integration with UPS, your organization should have an account with the carrier and a signed service agreement. The SurePost service requires an additional service contract signed with USPS. The settings for the plug-in are specified in accordance with the information available in the agreement.

UPS provides the ability to use their services via the REST API. To configure integration between Acumatica ERP and UPS, you use the [Carriers](CS_20_77_00.md) \(CS207700\) form. On this form, you specify a name to be used for this carrier in your system, select the *PX.UpsRestCarrier.UpsRestCarrier* plug-in developed for this integration, and enter the values for the plug-in parameters. Some parameters are used for authentication with the carrier's system, while others are used for configuring shipping settings.

**Attention:** The UPS integration can only be used for processing of domestic shipments and shipments to Canada.

## Creation of an App in the UPS Developer Portal {#_7d26231d-2277-44c1-89c0-bbcd3c80e243 .section}

Before you start configuring the settings of the plug-in for UPS in Acumatica ERP, you need to create an app in the UPS Developer Portal. The app provides the client ID and client secret that are required for the configuration of the plug-in. You also use the app to define UPS endpoints that you will use for processing of shipments with a UPS carrier.

**Attention:** Please note that the following section describes settings in a third-party product. The user interface of the third-party product is subject to change. We disclaim any responsibility for inaccuracies resulting from such changes.

To create an app, do the following:

1.  Sign in to the [UPS Developer Portal](https://developer.ups.com/catalog?loc=en_US) by using your username and password.
2.  In the upper right part of the page, click **My Apps**.
3.  In the bottom part of the page, click **Add Apps**,
4.  On the **Which of these scenarios best describes you** page, do the following:
    1.  In the **I need API credentials because** box, select *I want to integrate UPS technology into my business*.
    2.  In the **Choose an account to associate with this credentials** box, select the account ID of your UPS account. You can also add an existing account or create a new one.
    3.  Select the **I agree, and confirm I have the authority to agree on behalf of my organization, to the UPS API ACCESS AGREEMENT, which contains important terms governing use of UPS technologies and information like limiting UPS’s liability and how disputes with UPS will be handled** check box.
    4.  Click **Next**.
5.  On the **Who should we contact?** page, do the following:
    1.  In the **Primary Contact** section, specify the following required settings:
        -   **First Name**
        -   **Last Name**
        -   **Country or Territory.**

            This is the country or territory where you are going to use the UPS shipping services.

        -   **Street Address**
        -   **City**
        -   **State**
        -   **ZIP Code**
        -   **Email**

            This is the email specified in your UPS account.

        -   **Phone**
    2.  Click **Next**.
6.  On the **Apps Details** page, do the following:
    1.  In the **App Name** box, specify the name of your app in the UPS Developer Portal.
    2.  In the **Add Products** pane, add the following products besides the Authorization \(OAuth\) product, which is added by default:
        -   **Rating**
        -   **Shipping**
        -   **Time in Transit**
    3.  Click **Save**.

The UPS portal creates your app and shows the list of apps on the **My Apps** page. You can click the name of the app to view and copy the client ID and client secret that you will use for the configuration of the UPS plug-in.

For more details about the settings of your account in the UPS Developer Portal, see [Getting Started with UPS APIs](https://developer.ups.com/get-started).

## To Specify Plug-in Settings for UPS { .section}

1.  Open the [Carriers](CS_20_77_00.md) \(CS207700\) form and add a new record.
2.  In the **Carrier ID** box, type an easy-to-remember name for the carrier to be integrated.
3.  Provide a description for this carrier.
4.  In the **Plug-in \(Type\)** box, select *PX.UpsRestCarrier.UpsRestCarrier*.
5.  Select the **Active** check box.
6.  In the **Carrier Units** box, select the measuring system used by the carrier: *SI Units \(Kilogram/Centimeter\)* or *US Units \(Pound/Inch\)*. Based on the selected option, one of the following pairs of boxes is shown on the form: **Kilogram** and **Centimeter**, or **Pound** and **Inch**.
7.  In the **Kilogram** and **Centimeter** boxes \(or in the **Pound** and **Inch** boxes, depending on the measuring system selected for the carrier\), select the units of measure defined in the system that correspond to the weight and linear units of measure used by the carrier.

    **Attention:** If you select a UOM other than the default weight or linear UOM, which is specified in the **Weight UOM** box or **Linear UOM** box on the [Companies](../Shared/../UserGuide/CS_10_15_00.md) \(CS101500\) form, use the [Units of Measure](../Shared/../UserGuide/CS_20_35_00.md) \(CS203500\) form to specify the conversion from the default weight or linear UOM of the company to the unit you have selected as the equivalent to the UOM used by the carrier.

8.  In the **Warehouse** box, specify a particular warehouse for which the carrier's rates are applicable, or leave the box empty if the carrier’s rates are applicable for all warehouses.
9.  On the **Plug-in Parameters** tab, do the following:
    -   If you need to get certification from UPS to use its API in production, prepare the certification files. To generate the files for certification with this carrier, click **Prepare Certification Files** on the table toolbar of the **Plug-in Parameters** tab.
    -   For **CLIENT ID**, enter the client ID that you obtain in your app in the UPS Developer Portal.

        **Attention:** For more information about the way to obtain a client ID and secret in the UPS Developer Portal, see [Configuration of Settings in the UPS Developer Portal](#_7d26231d-2277-44c1-89c0-bbcd3c80e243)

    -   For the **CLIENT SECRET** parameter, enter the client secret that you obtain in your app in the UPS Developer Portal.
    -   For the **LOGIN ENDPOINT** parameter, copy and paste one of the following URLs of the UPS service:
        -   For production environment: *https://onlinetools.ups.com/security/v1/oauth/token*
        -   For sandbox environment: *https://wwwcie.ups.com/security/v1/oauth/token*
    -   For the **RATE ENDPOINT** parameter, copy and paste one of the following URLs of the UPS rate service:
        -   For production environment: *https://onlinetools.ups.com/api/rating/v1/rate*
        -   For sandbox environment: *https://wwwcie.ups.com/api/rating/v1/rate*
    -   For the **TNT ENDPOINT** parameter, copy and paste one of the following URLs of the UPS time-in-transit service:
        -   For production environment: *https://onlinetools.ups.com/api/shipments/v1/transittimes*
        -   For sandbox environment: *https://wwwcie.ups.com/api/shipments/v1/transittimes*
    -   For the **SHIP ENDPOINT** parameter, copy and paste one of the following URLs of the UPS ship service:
        -   For production environment: *https://onlinetools.ups.com/api/shipments/v1/ship*
        -   For sandbox environment: *https://wwwcie.ups.com/api/shipments/v1/ship*
    -   For the **VOID ENDPOINT** parameter, copy and paste one of the following URLs of the UPS void service:
        -   For production environment: *https://onlinetools.ups.com/api/shipments/v1/cancel*
        -   For sandbox environment: *https://wwwcie.ups.com/api/shipments/v1/cancel*
    -   For the **ACCOUNTID** parameter, enter the identifier of the account your company has with the carrier.
    -   For the **NEGOTIATED** parameter, select the check box if your organization has special rates that should be used for calculating freight costs.
    -   For the **TEST MODE** parameter, select the check box to test the integration.
    -   For the **LABEL FORMAT** parameter, select the format \(*EPL*, *SPL*, *ZPL*, *GIF*, or *STARPL*\) to be used for printing labels on your printer.
    -   For the **PICKUP TYPE** parameter, select the appropriate option according to the agreement:
        -   *Daily Pickup*
        -   *Customer Counter*
        -   *One-Time Pickup*
        -   *On-Call Air*
        -   *Suggested Retail Rates*
        -   *Letter Center*
        -   *Air Service Center*
    -   For the **SUREPOST END** parameter, select one of the following USPS endorsement options for SurePost shipments delivered by the USPS:
        -   *Return Service Requested*
        -   *Forwarding Service Requested*
        -   *Address Service Requested*
        -   *Change Service Requested*
    -   For the **SUREPOST SUB** parameter, select the appropriate type of packages \(less than 1 lb\) for shipments by SurePost:
        -   *Irregular*
        -   *Machinable*
    -   For the **SIGNATURE** parameter, select the appropriate signature request option according to the agreement:
        -   *System Default*
        -   *Delivery Confirmation*
        -   *Delivery Confirmation Signature Required*
        -   *Delivery Confirmation Adult Signature Required*
    -   For the **SIGN RELZ NO** parameter, enter the signature release \(DCIS\) number according to your service agreement.
    -   For the **NOTIFY** parameter, select the check box if you want notifications to be sent to the recipients. Then on release of each shipment, the carrier's online service will generate a notification email to the email address of the contact specified for the shipment on the **Shipping** tab of the [Shipments](SO_30_20_00.md) \(SO302000\) form.
    -   For the **SHIPPER FROM** parameter, leave the default *Company Branch* value if you want the system to get the shipper information from the company branch, or select *Warehouse* to make the system get the shipper information from the warehouse.
    -   For the **TRACKING URL** parameter, leave the default value if you want the system to use the predefined URL to form the tracking link to a package in the shipment.
10. On the **Customer Accounts** tab, add all customers that have accounts with the carrier and should be billed for the shipments they receive via this carrier. For each customer you add, do the following:
    -   Make sure the **Active** check box is selected.
    -   In the **Customer ID** column, select the customer by its ID.
    -   In the **Customer Location** column, select the customer location to receive shipments via the carrier.
    -   In the **Billing Type** column, select the party, which is responsible for paying shipping costs
    -   In the **Carrier Billing Account** column, enter the billing account of the customer or third-party company in the system of the carrier.
    -   If you have selected *Third-Party* in the **Billing Type** column, in the **Billing Country** column, specify the country ID of the carrier's billing account.
    -   If you have selected *Third-Party* in the **Billing Type** column, in the **Billing Country** column, specify the postal code of the carrier's billing account.
11. Click **Save** on the form toolbar.

**Parent topic:**[Integration with Carriers](../UserGuide/CS__con_Integration_with_Carriers.md)

