# To Set Up Integration with FedEx REST {#_3facd1eb-c78d-4582-9d2b-18522ddb4d4d .task}

Before you configure integration with FedEx, your organization should have an account with the carrier and a signed service agreement. The SmartPost service requires an additional service contract signed with FedEx. The settings for the plug-in are specified in accordance with the information available in the agreement.

FedEx provides the ability to use their services via FedEx REST API. To configure integration between Acumatica ERP and FedEx, you use the [Carriers](CS_20_77_00.md) \(CS207700\) form. On this form, specify a name to be used for this carrier in your system, select the *PX.FedExRestCarrier.FedExRestCarrier* plug-in developed for this integration, and enter the values for the plug-in parameters. Some parameters are used for authentication with the carrier's system, while others are used for printing carrier labels or enabling recipient notifications.

**Attention:** The FedEx integration can only be used for processing of domestic shipments.

## Creation of a Project in the FedEx Developer Portal { .section}

Before you start configuring the settings of the plug-in for FedEx in Acumatica ERP, you need to create a project in the FedEx Developer Portal. The project provides the API key and client secret that are required for the configuration of the plug-in.

**Attention:** Please note that the following section describes settings in a third-party product. The user interface of the third-party product is subject to change. We disclaim any responsibility for inaccuracies resulting from such changes.

To create a project in the FedEx Developer Portal, do the following:

-   Sign in to the [FedEx Developer Portal](https://developer.fedex.com/) using your username and password.
-   In the left pane, click **My Projects**.
-   In the right pane, click **Create a Project.**
-   In the **Tell us about your API needs** dialog box, select an appropriate option in the **I work for a company that** box and click **Next**.
-   On the **Step 1 - Select API\(s\)** page, select an appropriate API for your project.
-   In the list of available APIs, select the required APIs and click **Next**.
-   On the **Step 2 - Configure project** page, specify appropriate settings for your project and click **Next**.
-   On the **Step 3 - Confirm details** page, select the check boxes in the **Accept Terms** section and click **Create**.
-   In the confirmation box, click **Okay**.
-   On the **Production Key** tab, select your shipping account in the **Account number** box and click **Next**.

    The system generates an API key and client secret that you can use to set up the FedEx plug-in in Acumatica ERP.


## To Set Up Integration with FedEx { .section}

1.  Open the [Carriers](CS_20_77_00.md) \(CS207700\) form and add a new record.
2.  In the **Carrier ID** box, type an easy-to-remember name for the carrier to be integrated.
3.  Provide a description for this carrier.
4.  In the **Plug-in \(Type\)** box, select *PX.FedExRestCarrier.FedExRestCarrier*.
5.  Select the **Active** check box.
6.  In the **Carrier Units** box, select the measuring system used by the carrier: *SI Units \(Kilogram/Centimeter\)* or *US Units \(Pound/Inch\)*. Based on the selected option, one of the following pairs of boxes is shown on the form: **Kilogram** and **Centimeter**, or **Pound** and **Inch**.
7.  In the **Kilogram** and **Centimeter** boxes \(or in the **Pound** and **Inch** boxes, depending on the measuring system selected for the carrier\), select the units of measure defined in the system that correspond to the weight and linear units of measure used by the carrier.

    **Attention:** If you select a UOM other than the default weight or linear UOM, which is specified in the **Weight UOM** box or **Linear UOM** box on the [Companies](../Shared/../UserGuide/CS_10_15_00.md) \(CS101500\) form, use the [Units of Measure](../Shared/../UserGuide/CS_20_35_00.md) \(CS203500\) form to specify the conversion from the default weight or linear UOM of the company to the unit you have selected as the equivalent to the UOM used by the carrier.

8.  In the **Warehouse** box, specify a particular warehouse for which the carrier's rates are applicable, or leave the box empty if the carrier’s rates are applicable for all warehouses.
9.  On the **Plug-in Parameters** tab, do the following:
    -   For the **ACCOUNTID** parameter, enter the ID or number of the account your organization has with the carrier.
    -   For the **CLIENT ID** parameter, enter the API key that FedEx generates when you create a project in the FedEx Developer Portal.
    -   For the **CLIENT SECRET** parameter, enter the client secret that FedEx generates when you create a project in the FedEx Developer Portal.
    -   For the **LOGIN ENDPOINT** parameter, copy and paste one of the following URLs of the FedEx API services:
        -   For production environment: *https://apis.fedex.com/oauth/token*
        -   For sandbox environment: *https://apis-sandbox.fedex.com/oauth/token*
    -   For the **CANCEL ENDPOINT** parameter, copy and paste one of the following URLs of the FedEx canceling service:
        -   For production environment: *https://apis.fedex.com/ship/v1/shipments/cancel*
        -   For sandbox environment: *https://apis-sandbox.fedex.com/ship/v1/shipments/cancel*
    -   For the **RATE ENDPOINT** parameter, copy and paste one of the following URLs of the FedEx rate service:
        -   For production environment: *https://apis.fedex.com/rate/v1/rates/quotes*
        -   For sandbox environment: *https://apis-sandbox.fedex.com/rate/v1/rates/quotes*
    -   For **SHIP ENDPOINT** parameter, copy and paste one of the following URLs of the FedEx ship service:
        -   For production environment: *https://apis.fedex.com/ship/v1/shipments*
        -   For sandbox environment: *https://apis-sandbox.fedex.com/ship/v1/shipments*
    -   For the **SHIPPER FROM** parameter, leave the default *Company Branch* value if you want the system to get the shipper information from the company branch, or select *Warehouse* to make the system get the shipper information from the warehouse.
    -   For the **NOTIFY** parameter, select the check box if you want a notification to be sent to the recipient. Then on release of each shipment, the carrier's online service will generate a notification email to the email address of the contact specified for the shipment on the **Shipping** tab of the [Shipments](SO_30_20_00.md) \(SO302000\) form.
    -   For the **LIST RATES** parameter, select the check box if you want the carrier to provide general rates that are not based on your account along with the account-specific rates.
    -   For the **DROPOFF** parameter, select the appropriate method to be used by FedEx to pick up the packages:
        -   *CONTACT\_FEDEX\_TO\_SCHEDULE*
        -   *DROP\_AT\_FEDEX\_LOCATION*
        -   *USE\_SCHEDULED\_PICKUP*
        -   *ON\_CALL*
        -   *PACKAGE\_RETURN\_PROGRAM*
        -   *REGULAR\_STOP*
        -   *TAG*
    -   For the **LBL FORMAT** parameter, select the format of the shipping labels provided by the carrier service \(*DOC*, *EPL2*, *PDF*, *PNG*, *RTF*, *TEXT*, or *ZPLII*\).
    -   For the **LBL STOCK TYPE** parameter, select the stock type of the labels to be used.
    -   For the **LBL PRINT ORT** parameter, select one of the available options:
        -   *BOTTOM\_EDGE\_OF\_TEXT\_FIRST*
        -   *TOP\_EDGE\_OF\_TEXT\_FIRST*
    -   For the **POST ENDORS** parameter, select the appropriate endorsement type for FedEx SmartPost shipments from the following options:
        -   *ADDRESS\_CORRECTION*
        -   *CARRIER\_LEAVE\_IF\_NO\_RESPONSE*
        -   *CHANGE\_SERVICE*
        -   *FORWARDING\_SERVICE*
        -   *RETURN\_SERVICE*
    -   For the **POST HUBID** parameter, type the four-digit number that is an identifier of the USPS or FedEx hub to be used for delivery by FedEx SmartPost.
    -   For the **POST INDICIA** parameter, select the appropriate indicia type to be used by SmartPost:
        -   *MEDIA\_MAIL*
        -   *PARCEL\_RETURN*
        -   *PARCEL\_SELECT*
        -   *PRESORTED\_BOUNDED\_PRINTED\_MATTER*
        -   *PRESORTED\_STANDARD*
    -   For the **SIGNATURE** parameter, select the appropriate signature requesting option according to your service agreement:
        -   *ADULT*
        -   *DIRECT*
        -   *INDIRECT*
        -   *NO\_SIGNATURE\_REQUIRED*
        -   *SERVICE\_DEFAULT*
    -   For the**SIGN RELZ NO** parameter, enter the signature release number according to your service agreement.
    -   For the **ALCOHOL** parameter, select the check box if your company is a FedEx-approved shipper of alcohol.
    -   For the **ALCOHOL CONTENT ON LABEL** parameter, indicate on which label the information about alcohol shipment must be printed by selecting one of the following options:
        -   *CONTENT\_ON\_SHIPPING\_LABEL\_ONLY*
        -   *CONTENT\_ON\_SHIPPING\_LABEL\_PREFERRED*
        -   *CONTENT\_ON\_SUPPLEMENTAL\_LABEL\_ONLY*
    -   For the **ALCOHOL RECIPIENT TYPE** parameter, select the license type of the recipient of the alcohol shipments, which is one of the following options:
        -   *CONSUMER*
        -   *LICENSEE*
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

