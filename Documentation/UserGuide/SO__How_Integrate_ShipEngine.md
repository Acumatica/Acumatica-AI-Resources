# To Set Up Integration with ShipEngine

Before you configure integration with ShipEngine, your organization should have an account with the carrier and a signed service agreement. The settings for the plug-in are specified in accordance with the information available in this agreement.

To configure integration between Acumatica ERP and the ShipEngine service, which provides integration with multiple carriers, you use the [Carriers](CS_20_77_00.md) \(CS207700\) form. On this form, you specify a name to be used for this carrier in your system, select the plug-in, and specify one of the carriers connected to your ShipEngine account. Also, you can specify shipping and delivery settings.

**Attention:** Note the following:

-   The procedure below covers the most common usage scenarios. If you’re implementing a more complicated scenario and you encounter difficulties, contact Acumatica ERP technical support.
-   The vendor of the third-party software may change the user interface and settings. The labels you see in the UI may differ from the ones described in the procedure.
-   The procedure will be updated to describe new common scenarios and UI changes arise.

## To Configure a ShipEngine Account

1.  Open the [https://app.shipengine.com/\#/public/createaccount/?ref=acumatica](https://app.shipengine.com/#/public/createaccount/?ref=acumatica) link, and create a ShipEngine account.
2.  Sign in to the created ShipEngine account.
3.  On the **Connections** page, click **Add a Carrier** to connect a carrier to the ShipEngine account. \(The list of available carriers depends on the shipping origin country that you have specified when you created a ShipEngine account.\)
4.  On the **Partners** tab of the **Account Settings** page, click **Add a Partner**, and in the **Connect a Partner** dialog box, which opens, select Acumatica. The system displays the connection parameters that you will use for configuring the ShipEngine carrier in Acumatica ERP.

## To Set Up Integration with ShipEngine

1.  Open the [Carriers](CS_20_77_00.md) \(CS207700\) form.
2.  In the **Carrier ID** box, type a name for the ShipEngine carrier.
3.  Provide a description for this carrier.
4.  In the **Plug-in \(Type\)** box, select *PX.ShipEngineCarrier.ShipEngineCarrier*.
5.  Select the **Active** check box.
6.  In the **Carrier Units** box, select the measuring system used by the carrier: *SI Units \(Kilogram/Centimeter\)* or *US Units \(Pound/Inch\)*. Based on the selected option, one of the following pairs of boxes is shown on the form: **Kilogram** and **Centimeter**, or **Pound** and **Inch**.
7.  In the **Kilogram** and **Centimeter** boxes \(or in the **Pound** and **Inch** boxes, depending on the measuring system selected for the carrier\), select the units of measure defined in the system that correspond to the weight and linear units of measure used by the carrier.

    **Attention:** If you select a UOM other than the default weight or linear UOM, which is specified in the **Weight UOM** box or **Linear UOM** box on the [Companies](../Shared/../UserGuide/CS_10_15_00.md) \(CS101500\) form, use the [Units of Measure](../Shared/../UserGuide/CS_20_35_00.md) \(CS203500\) form to specify the conversion from the default weight or linear UOM of the company to the unit you have selected as the equivalent to the UOM used by the carrier.

8.  Optional: In the **Warehouse** box, specify a particular warehouse for which the carrier's rates are applicable, or leave the box empty if the carrier’s rates are applicable for all warehouses.
9.  On the **Plug-in Parameters** tab, specify the values of the parameters as follows:
    -   **SHIP ENGINE ACCOUNT**: Enter the ShipEngine Account ID that you have received in ShipEngine.
    -   **SHIP ENGINE CARRIER**: Select one of the carriers that you have connected to your ShipEngine account.
    -   **TEST MODE**: Select the check box if you want to use the carrier in test mode for the generation of sample labels. \(This setting applies to the Stamps.com carrier only.\)
    -   **LOG TRACE**: Select the check box if you want the system to record the requests and results of the web calls in the trace log.
    -   **SHIPPER FROM**: Select the source of the contact information of the shipper.
    -   **CONFIRMATION**: Select the delivery confirmation type according to your agreement with the carrier.
    -   **INSURANCE**: Select the appropriate insurance type.
    -   **LABEL FORMAT**: Select the format \(*ZPL*, *PNG*, or *PDF*\) to be used for printing labels on your printer.
    -   **INTERNATIONAL NON DELIVERY**: Select how the carrier should process non-delivered international shipments.
    -   **DUTY BILL TO PARTY**: Select the payer of customs charges for international shipments.

<table id="_e793801f-924c-43d1-91fb-49c8d29cfca8"><thead><tr><th>

ID

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**SHIP ENGINE ACCOUNT**

</td><td>

*21\*\*\*\*\*3*

</td></tr><tr><td>

**SHIP ENGINE CARRIER**

</td><td>

*USPS*

</td></tr><tr><td>

**TEST MODE**

</td><td>

Cleared

</td></tr><tr><td>

**LOG TRACE**

</td><td>

Selected

</td></tr><tr><td>

**SHIPPER FROM**

</td><td>

*Company Branch*

</td></tr><tr><td>

**CONFIRMATION**

</td><td>

*Delivery*

</td></tr><tr><td>

**INSURANCE**

</td><td>

*Carrier*

</td></tr><tr><td>

**LABEL FORMAT**

</td><td>

*PDF*

</td></tr><tr><td>

**INTERNATIONAL NON DELIVERY**

</td><td>

*Returntosender*

</td></tr><tr><td>

**DUTY BILL TO PARTY**

</td><td>

*Recipient*

</td></tr><tr><td>

**MULTI PACKAGE SUPPORT**

</td><td>

Selected

</td></tr><tr><td>

**LABEL MESSAGE SUPPORT**

</td><td>

Selected

</td></tr></tbody>
</table>

**Parent topic:**[Integration with Carriers](../UserGuide/CS__con_Integration_with_Carriers.md)

