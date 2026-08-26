# Integration with Carriers {#_ac936fae-1e11-4077-a934-a0c39f290ec8 .concept}

Large carriers operating over a broad geographical area—such as FedEx, Stamps.com, UPS, EasyPost, and Pacejet—provide shipping solutions to clients with whom they have service agreements. A user can access the carrier's system, enter package details, get actual rates, print authorized labels for shipments, and track the delivery of shipments. If you configure integration with the carrier, your users do not need to enter the same information into both Acumatica ERP and the carrier's system.

The functionality of integrating with carriers is available only if the *Shipping Carrier Integration* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Carrier-Specific Plug-ins and Their Parameters { .section}

Before you configure integration with a carrier, your company should have an account with the carrier and a signed service agreement. For each of the plug-ins, you specify parameters that are specific to the carrier, including the account number and password for authorization with the carrier's system. Such services as *FedEx SmartPost* and *UPS SurePost* require additional service contracts to be signed with the respective carriers. These services employ the USPS for final delivery of low-weight packages to customers in the residential areas.

To configure integration with a carrier, you use the [Carriers](CS_20_77_00.md) \(CS207700\) form. On this form, you specify a name to be used for this carrier in your system, select the appropriate plug-in, and enter the values for the parameters, which are specific to the plug-in you have selected. Some parameters are used for authentication with the carrier's system, while others are used to print carrier labels. All plug-ins include a parameter that can be used if recipient's signature is required to confirm shipments.

Acumatica ERP provides the following plug-ins for integration with nationwide and worldwide carriers through the carriers' APIs:

-   `PX.ShipEngineCarrier.ShipEngineCarrier`: For use with the ShipEngine service
-   `PX.UpsRestCarrier.UpsRestCarrier`: For use with UPS via the OATH 2.0 authorization method of the REST API

    **Note:** This plug-in does not support international shipments.

-   `PX.FedExRestCarrier.FedExRestCarrier`: For use with FedEx via REST API

    **Note:** This plug-in does not support international shipments.

-   `PX.StampsCarrier.StampsCarrier`: For use with USPS
-   `PX.EasyPostCarrier.EasyPostCarrier`: For use with EasyPost
-   `PX.PacejetCarrier.PacejetCarrier`: For use with Pacejet

**Tip:** Plug-ins for other carriers can be developed on request.

For more information, see [To Set Up Integration with FedEx REST](SO__How_Integrate_FedEx.md), [To Set Up Integration with UPS REST](SO__How_Integrate_UPS.md), [To Set Up Integration with USPS via Stamps.com](SO__how_Integrate_USPS.md), and [To Set Up Integration with ShipEngine](SO__How_Integrate_ShipEngine.md).

## Ship via Codes Based on Carrier Service Methods { .section}

Generally, carriers provide multiple service methods. Each service method has its own rates and time frame for delivery. In Acumatica ERP, for each service method of the integrated carrier to be used by your company, you can define a ship via code by using the [Ship via Codes](CS_20_75_00.md) \(CS207500\) form. Then, when a user creates a sales order, the user can easily select the appropriate carrier and its service method by specifying the appropriate ship via code.

You also can specify for each ship via code whether shipment confirmation for each box is required and whether at least one package \(box\) is required to confirm a shipment. For details, see [To Create Ship via Codes for the Integrated Carrier](SO__How_Create_Ship_Via_Codes.md).

## Use of Customer Accounts with Carriers { .section}

You can set up billing of the customers, rather than your company, for shipping if the customers provide information about their accounts with the carrier. On the **Customer Accounts** tab of the [Carriers](CS_20_77_00.md) \(CS207700\) form, create a list of customers with their locations and their accounts with the integrated carrier. Only customers with the **Active** check box selected on the [Customers](AR_30_30_00.md) \(AR303000\) form can be billed by the carrier. For each customer, you can view the list of customer accounts with carriers on the **Delivery Settings** tab of the [Customers](AR_30_30_00.md) form.

## Automatic Packaging { .section}

For effective integration with carriers, you can configure the system to automatically suggest packaging options for sales orders and then for shipments based on item quantities, weights, or volumes. To use this functionality, you need to enable the *Automatic Packaging* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

For more information, see [Automatic Packaging for Integrated Carriers](SO__con_Automated_Shipments.md).

## Freight Calculation { .section}

Once integration with carriers is configured, the system will be able to automatically evaluate freight cost on shipping the sales orders via integrated carriers. On the **Shipping** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, for each sales order, you can click the **Shop for Rates** button to view the estimated freight costs for the specified packages if they are sent by different methods of the selected carrier available for this particular shipment. You can then select the most appropriate ship via code for this shipment.

The freight that a system calculates for a sales order is approximate. The full freight amount you charge your customers may include not only the freight cost, but also insurance, handling, packaging, and premium freight amounts defined by your shipping terms, which is received from the carrier when a shipment for the sales order is being processed. Thus, the final freight charges calculated for the shipment may differ from those calculated for the sales order.

For details on defining and calculating freight, see [Freight Calculation](CS__con_Freight_Calculation.md).

-   **[Automatic Packaging for Integrated Carriers](../UserGuide/SO__con_Automated_Shipments.md)**  

-   **[Carrier Labels and Tracking Numbers](../UserGuide/SO__con_Carriers_Label.md)**  

-   **[Integration with Carriers: Pacejet Implementation Checklist](../UserGuide/OrderMgmt_Pacejet_Implem_Checklist.md)**  

-   **[To Set Up Integration with EasyPost](../UserGuide/SO_How_Integrate_EasyPost_Activity.md)**  

-   **[To Set Up Integration with FedEx REST](../UserGuide/SO__How_Integrate_FedEx.md)**  

-   **[To Set Up Integration with UPS REST](../UserGuide/SO__How_Integrate_UPS.md)**  

-   **[To Set Up Integration with ShipEngine](../UserGuide/SO__How_Integrate_ShipEngine.md)**  

-   **[To Set Up Integration with USPS via Stamps.com](../UserGuide/SO__how_Integrate_USPS.md)**  

-   **[To Validate Addresses](../UserGuide/SO__How_Validate_Addresses.md)**  

-   **[To Define a Box](../UserGuide/SO__How_Define_Carrier_Packages.md)**  

-   **[To Create Ship via Codes for the Integrated Carrier](../UserGuide/SO__How_Create_Ship_Via_Codes.md)**  

-   **[To Configure a Stock Item for Automatic Packaging](../UserGuide/IN__how_Item_For_Packaging.md)**  


**Parent topic:**[Configuring Carriers, Packaging, and Freight](../UserGuide/SO__CNF_Int_Carriers.md)

