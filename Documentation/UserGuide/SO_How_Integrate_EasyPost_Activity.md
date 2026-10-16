# To Set Up Integration with EasyPost

EasyPost is a shipping API carrier service that incorporates multiple carriers in one place. Before configuring the integration with EasyPost, your organization must have an account with the carrier service and a signed service agreement. Afterward, you must obtain the production and test API keys, which are required for the configuration of the integration in Acumatica ERP. For details on API keys, refer to the [Authentication and Key Management](https://docs.easypost.com/docs/authentication) in the documentation of the carrier service.

To configure integration between Acumatica ERP and EasyPost, you use the [Carriers](CS_20_77_00.md) \(CS207700\) form. On this form, you specify a name to be used for this carrier in your system. Then you select the *PX.EasyPostCarrier.EasyPostCarrier* plug-in developed for this integration and enter the values for the plug-in parameters. Some parameters are used for authentication with the carrier's system, while others are used for configuring shipping settings.

Some EasyPost carriers available in Acumatica ERP support only domestic shipping. Other carriers support both domestic and international shipping. For an international shipment, the carrier service can generate a commercial invoice and attach it to the shipment in Acumatica ERP. A commercial invoice is a document that facilitates the customs clearance of international shipments. You need to perform the initial configuration of the commercial invoice at the carrier service. In the parameters of an EasyPost carrier in the system, you can modify additional settings of the commercial invoice for specific carriers. For more information about the commercial invoices at EasyPost, refer to the [Commercial Invoice Guide](https://docs.easypost.com/guides/commercial-invoice-guide).

On the form toolbar of the [Carriers](CS_20_77_00.md) form, you can click **Retrieve Service Methods** to retrieve the latest service methods available for your account. The service methods appear on the **Service Methods** tab. For each method retrieved from the carrier service, the system selects the **Provider-Defined** check box.

## To Set Up Integration with EasyPost

1.  Open the [Carriers](CS_20_77_00.md) \(CS207700\) form and add a new record.
2.  In the **Carrier ID** box, type an easy-to-remember name for the carrier to be integrated.
3.  Provide a description for this carrier.
4.  In the **Plug-in \(Type\)** box, select *PX.EasyPostCarrier.EasyPostCarrier*.
5.  Select the **Active** check box.
6.  In the **Carrier Units** box, select the measuring system used by the carrier: *SI Units \(Kilogram/Centimeter\)* or *US Units \(Pound/Inch\)*. Based on the selected option, one of the following pairs of boxes is shown on the form: **Kilogram** and **Centimeter**, or **Pound** and **Inch**.
7.  In the **Kilogram** and **Centimeter** boxes \(or in the **Pound** and **Inch** boxes, depending on the measuring system selected for the carrier\), select the units of measure defined in the system that correspond to the weight and linear units of measure used by the carrier.

    **Attention:** If you select a UOM other than the default weight or linear UOM, which is specified in the **Weight UOM** box or **Linear UOM** box on the [Companies](../Shared/../UserGuide/CS_10_15_00.md) \(CS101500\) form, use the [Units of Measure](../Shared/../UserGuide/CS_20_35_00.md) \(CS203500\) form to specify the conversion from the default weight or linear UOM of the company to the unit you have selected as the equivalent to the UOM used by the carrier.

8.  In the **Warehouse** box, specify a particular warehouse for which the carrier's rates are applicable, or leave the box empty if the carrier’s rates are applicable for all warehouses.
9.  On the **Plug-in Parameters** tab, do the following:
    -   For the **EASYPOST PRODUCTION API KEY** parameter, specify the production key of your EasyPost account if you need access to the production environment of the carrier service.
    -   For the **EASYPOST TEST API KEY** parameter, specify the test key of your EasyPost account if you need access to the test mode of the carrier service.
    -   For the **USE TEST KEY** parameter, select the check box if you want to use test mode at the carrier service. In test mode, the carrier service generates sample labels without real value. You will not be charged for those labels.
    -   For the **EASYPOST CARRIER** parameter, specify the ID of the carrier that you are going to use at the carrier service.
    -   For the **LOG TRACE** parameter, select the check box if you want the system to record the requests and results of the web calls in the trace log.
    -   For the **ADDRESS VERIFICATION** parameter, select *Basic Verification with EasyPost* if you want EasyPost to verify addresses when shipping labels are requested. Select one of the advanced verification options if you want the address to be verified before the shipping label is requested.
    -   For the **ADDRESS APPLICATION MODE** parameter, select *Apply Automatically* if you want the system to apply a corrected address without user interaction. Select *Confirm Before Applying* if you want to select the address to use when the verification service returns a corrected address. This parameter is available for editing only if an advanced verification option is selected.
    -   Select the **SKIP ADDRESS VERIFICATION** check box if you do not want the system to verify addresses for shipments that use this carrier. You can override this setting for an individual shipment.
    -   For the **SHIPPER FROM** parameter, select the source of information about the shipper's contact information from one of the following options:
        -   *Company Branch*: The system takes the shipper's contact information from the branch.
        -   *Warehouse*: The system takes the shipper's contact information from the warehouse.
    -   For the **CONFIRMATION** parameter, select the delivery confirmation type from one of the following options:
        -   *None* \(default\): No confirmation is requested.
        -   *No Signature*: The carrier requests the delivery confirmation without a signature.
        -   *Signature*: An unauthorized signature \(from someone at the delivery address\) is required for the shipment to be delivered.
        -   *Adult Signature*: Delivery requires a signature of the addressee only, who must be 21 years of age or older.
    -   For the **ALCOHOL** parameter, select the check box if your company is a FedEx- or UPS-approved shipper of alcohol.
    -   For the **INSURANCE** parameter, select the source of the insurance from one of the following options:
        -   *Carrier*: You buy the insurance from the carrier.
        -   *EasyPost*: You buy the insurance from the EasyPost carrier service.
    -   For the **LABEL FORMAT** parameter, select the format of the shipping labels provided by the carrier service \(*PDF*, *PNG*, *ZPL*, or *EPL2*\).
    -   For the **LABEL SIZE** parameter, select the size of the shipping label provided by the carrier service.
    -   For the **INTERNATIONAL NON DELIVERY** parameter, select the action performed by the carrier of the outbound shipment that cannot be delivered. You can select one of the following options:
        -   *Return*: The carrier makes an attempt to return the package to the shipper \(who may be subject to return shipping fees in this case\).
        -   *Abandon*: The carrier does not return the package to the shipper.
    -   For the **TERMS OF SALE** parameter, select the terms of sale. These terms define the responsibilities for paying for and managing the shipment, insurance, documentation, customs clearance, and other logistical activities. You can select one of the following options:
        -   *CFR - Cost and Freight*
        -   *CIP - Carriage and Insurance Paid To*
        -   *CPT - Carriage Paid To*
        -   *DAP - Delivered at Place*
        -   *DAT - Delivered at Terminal*
        -   *DDP - Delivered Duty Paid*
        -   *DDU - Delivered Duty Un-Paid*
        -   *EXW - Ex Works*
        -   *FCA - Free Carrier*
        -   *FAS - Free Alongside Ship*
        -   *FOB - Free on Board*
    -   For the **USE SHIPPER ID** parameter, select this check box if you need the system to send a tax registration ID to the EasyPost carrier service. The carrier service inserts this ID into the commercial invoice, which it generates for international shipments.
    -   For the **LETTERHEAD** parameter, select one of the letterhead options of the commercial invoice provided by the carrier service for the FedEx international shipments.
    -   For the **SIGNATURE** parameter, select one of the signatures for the commercial invoice provided by the carrier service for the FedEx international shipments.
    -   For the **FULFILLER ORDER ID FIELD** parameter, select a sales order field that the carrier service will add to the fulfillment order of the Amazon Marketplace Web Service.
    -   For the **FULFILLED ORDER ITEMID FIELD** parameter, select a data field of a column on the **Details** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form. The carrier service will add the value of this column to the fulfillment order of the Amazon Marketplace Web Service.
    -   For the **ENDORSEMENT SERVICE** parameter, select one of the available endorsement services for failed deliveries at the carrier service. You can select one of the following options:
        -   *No Endorsement Service*
        -   *Address Service Required*
        -   *Forwarding Service Required*
        -   *Change Service Required*
        -   *Return Service Required*
        -   *Leave if no Response*
    -   For the **SCANFORM TIMEOUT** parameter, specify the timeout for the manifest generation for the DHL carrier at the EasyPost carrier service.
    -   For the **NUMBER OF SHIPMENTS PER BATCH** parameter, specify the maximum number of shipments that can be displayed simultaneously on the [Create Manifest](SO_50_60_00.md) \(SO506000\) form. This parameter applies only to the DHL carrier at the EasyPost carrier service.
    -   For the **INCLUDE FREIGHT PRICE** parameter, select the check box if you want to include the freight price in the commercial invoice for international shipments via EasyPost UPS and USPS.
    -   On the **Customer Accounts** tab, add all customers that have accounts with the carrier and should be billed for the shipments they receive via this carrier. For each customer you add, do the following:
        -   Make sure the **Active** check box is selected.
        -   In the **Customer ID** column, select the customer by its ID.
        -   In the **Customer Location** column, select the customer location to receive shipments via the carrier.
        -   In the **Billing Type** column, select the party that is responsible for paying shipping costs.
        -   In the **Carrier Billing Account** column, enter the billing account of the customer or third-party company in the system of the carrier.
        -   If you have selected *Third-Party* in the **Billing Type** column, in the **Billing Country** column, specify the country ID of the carrier's billing account.
        -   If you have selected *Third-Party* in the **Billing Type** column, in the **Billing Postal Code** column, specify the postal code of the carrier's billing account.
    -   Optional: On the **Service Methods** tab, add a row for each service method you need to add manually. For each row you add, do the following:
        -   In the **Service Code** column, specify the code of the service method.
        -   In the **Service Name** column, specify the name of the service method.
    -   Click **Save** on the form toolbar.

**Parent topic:**[Integration with Carriers](../UserGuide/CS__con_Integration_with_Carriers.md)

