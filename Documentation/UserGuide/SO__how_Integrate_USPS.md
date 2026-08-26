# To Set Up Integration with USPS via Stamps.com {#_b69938b2-9680-46e1-992f-3582b6023eea .task}

Before you configure integration with USPS by using the Stamps.com plug-in, your organization should have an account and a signed service agreement with Stamps.com. The settings for the plug-in are specified in accordance with the information available in the agreement. To configure integration between Acumatica ERP and USPS, you use the [Carriers](CS_20_77_00.md) \(CS207700\) form.

## To Set Up Integration with USPS via Stamps.com { .section}

1.  Open the [Carriers](CS_20_77_00.md) \(CS207700\) form.
2.  In the **Carrier ID** box, type the unique identifier for the carrier to be integrated.
3.  In the **Description** box, type the brief information about the carrier.
4.  In the **Plug-in \(Type\)** box, select *PX.StampsCarrier.StampsCarrier*.
5.  Select the **Active** check box.
6.  In the **Carrier Units** box, select the measuring system used by the carrier: *SI Units \(Kilogram/Centimeter\)* or *US Units \(Pound/Inch\)*. Based on the selected option, one of the following pairs of boxes is shown on the form: **Kilogram** and **Centimeter**, or **Pound** and **Inch**.
7.  In the **Kilogram** and **Centimeter** boxes \(or in the **Pound** and **Inch** boxes, depending on the measuring system selected for the carrier\), select the units of measure defined in the system that correspond to the weight and linear units of measure used by the carrier.

    **Attention:** If you select a UOM other than the default weight or linear UOM, which is specified in the **Weight UOM** box or **Linear UOM** box on the [Companies](../Shared/../UserGuide/CS_10_15_00.md) \(CS101500\) form, use the [Units of Measure](../Shared/../UserGuide/CS_20_35_00.md) \(CS203500\) form to specify the conversion from the default weight or linear UOM of the company to the unit you have selected as the equivalent to the UOM used by the carrier.

8.  Optional: In the **Warehouse** box, specify a particular warehouse for which the carrier's rates are applicable, or leave the box empty if the carrier’s rates are applicable for all warehouses.
9.  On the **Plug-in Parameters** tab, do the following:
    -   For the **ENDPOINT** parameter, enter *https://swsim.stamps.com/swsim/swsimv135.asmx*.
    -   For the **LOGIN** parameter, type the login to be used to sign in to your organization's Stamps.com account.
    -   For the **PASSWORD** parameter, type the password to be used to sign in to your organization's Stamps.com account.
    -   For the **STAMPS CUSTOMER** parameter, specify the customer identifier in Stamps.com, which is required for USPS audits, aviation security, and insurance purchases.
    -   For the **TEST MODE** parameter, select the check box if you want to use the carrier in test mode for the generation of sample labels.
    -   For the **LOG TRACE** parameter, select the check box if you want the system to record the requests and results of the web calls in the trace log.
    -   For the **SHIPPER FROM** parameter, select the source of the contact information of the shipper.
    -   For the **NOTIFY** parameter, select the check box if you want the system to send a notification to the recipient on the release of each shipment.
    -   For the **LABEL FORMAT** parameter, specify the type of data stream or bitmap to be returned for a label.
    -   For the **PACKAGE TYPE** parameter, specify the package type specific to USPS.
    -   For the **ROTATION DEGREE** parameter, specify the degree of counter-clockwise rotation of the label if you want the system to rotate the label.
    -   If you selected *PDF* as the **LABEL FORMAT** parameter, for the **PAPER SIZE** parameter, select the paper size for labels.
    -   If you have selected *GIF*, *JPG*, or *PNG* as the **LABEL FORMAT** parameter, for the **IMAGE DPITYPE** parameter, select the resolution of labels.
    -   If you use a thermal printer to print labels, for the **ELTRON DPITYPE** parameter, select the appropriate resolution.
    -   For the **CERTIFIED MAIL** parameter, select the check box if you want to use the USPS Certified Mail service.
    -   For the **REGISTERED MAIL** parameter, select the check box if you want to use the USPS Registered Mail service.
    -   For the **CONFIRMATION** parameter, specify the delivery confirmation type.
    -   If you want to use insurance, for the **INSURANCE** parameter, select the type of insurance.
    -   For the **RETURN RECEIPT** parameter, select the check box to use the USPS Return Receipt service.
    -   For the **RETURN RECEIPT ELECTRONIC** parameter, select the check box to use the Electronic Return Receipt service.
    -   For the **RETURN RECEIPT MERCHANDISE** parameter, select the check box to request the Return Receipt for Merchandise service.
    -   For the **INCLUDE RECEIPT** parameter, select the check box if you want to include the receipt in each label.
    -   For the **PAY ON PRINT** parameter, select the check box if you want to use the pay-on-print return labels.
    -   If you selected the **PAY ON PRINT** check box, for the **RETURN LABEL EXPIRATION DAYS** parameter, specify the number of days until the expiration of the return label URL.
    -   For the **TRACKING URL** parameter, leave the default value if you want the system to use the predefined URL to form the tracking link to a package in the shipment.
10. Click **Save** on the form toolbar.

**Parent topic:**[Integration with Carriers](../UserGuide/CS__con_Integration_with_Carriers.md)

