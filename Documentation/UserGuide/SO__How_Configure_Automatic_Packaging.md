# To Configure Automatic Packaging {#_ea5a8ff7-323b-49f4-af19-8be80a0a69d3 .task}

To make sales order processing more effective, you can configure the system to automatically determine the optimal set of boxes for sales orders and for shipments to be sent via carriers, including integrated carriers.

Configuration includes the following major steps.

## Before You Proceed { .section}

Make sure the *Automatic Packaging* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## 1. Create the Weight and Volume UOMs { .section}

Start by compiling a list of the units of measure used in your system to measure weights and volumes for different stock items that are usually shipped via carriers.

Then make sure that all these UOMs are defined in the system on the [Units of Measure](CS_20_35_00.md) \(CS203500\) form. If any UOM is not listed among the predefined UOMs, define it. For details, see [Units of Measure: Implementation Activity](UOMs_Implem_Activity.md).

## 2. Specify the Base UOMs to Measure Weights and Volumes { .section}

Decide on the base unit of measure \(UOM\) to be used for weight and the base unit of measure to be used for volume in your system. After you have created the UOMS that you planned to use as the base UOMs for weights and volumes, you use the [Companies](CS_10_15_00.md) \(CS101500\) form to select these UOMs as the base weight and volume UOMs as follows:

1.  Open the [Companies](CS_10_15_00.md) form.
2.  In the **Weight UOM** box, specify the UOM to be used to measure the weights of the stock items.
3.  In the **Volume UOM** box, specify the UOM to be used to measure the volumes of the stock items.
4.  Click **Save** on the form toolbar.

## 3. Specify the Rule for Converting the Base UOM to the Carrier UOM for Weight { .section}

If integration with any carrier system is configured in your system, notice the UOM \(in the **UOM** box on the [Carriers](CS_20_77_00.md) \(CS207700\) form\) selected as the unit that is equal to the UOM specified for the carrier in the **Carrier Unit of Weight** box. Make sure that the conversion rules from the base weight UOM to the UOM \(which is equal to the carrier unit of weight\) are defined on the [Units of Measure](CS_20_35_00.md) \(CS203500\) form.

For more information on setting up integration with carriers, see [To Set Up Integration with FedEx REST](SO__How_Integrate_FedEx.md), and [To Set Up Integration with UPS REST](SO__How_Integrate_UPS.md).

## 4. Define the Boxes to Be Used for Shipping { .section}

To make it possible for the system to make packaging suggestions for sales orders, on the [Boxes](CS_20_76_00.md) \(CS207600\) form, list all the available boxes with their own weights \(which may include the weight of all packaging materials\) and their capacities for weight and volume. For each box that will be used for the integrated carrier, you must specify the box's linear dimensions \(height, width, and length\) because dimensions may affect the rates.

**Note:** By selecting the carrier's unit of weight, you also select the UOM to be used to specify the linear dimensions \(height, width, and length\) of boxes used by the carrier. If the carrier uses *SI Units \(Kilogram\)*, the UOM for linear dimensions is *centimeter*; if the carrier uses *US Units \(Pound\)*, the UOM is inch.

For carriers that are not integrated with your system, linear dimensions for boxes are optional, and because they can be used for information purposes only, the UOM for measurement can be selected arbitrary.

For details, see [To Define a Box](SO__How_Define_Carrier_Packages.md).

## 5. Create Ship via Codes and Assign Boxes { .section}

For each delivery service used by your organization, create a ship via code by using the [Ship via Codes](CS_20_75_00.md) \(CS207500\) form, specify the freight calculation method and freight rates, and create a list of boxes on the **Packages** tab. The rates of different carriers or different delivery services for boxes of the same capacity may vary significantly, and some services may be available for only packages with specific weights, volumes, or dimensions. For more details, see [To Create a Ship via Code](SO__How_Create_Ship_Via_Codes_NIC.md).

If your system is integrated with any carrier, also create a ship via code for each service method of each carrier that your organization uses, and assign the boxes. For details, see [To Create Ship via Codes for the Integrated Carrier](SO__How_Create_Ship_Via_Codes.md).

## 6. Configure Stock Items for Automatic Packaging { .section}

For each stock item, on the **Packaging Settings** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form, specify the weight and volume of the base unit and the packaging option that defines how this stock item should be packed:

-   By quantity, separately from other items
-   By weight, separately from other items
-   By weight, not necessarily separately from other items
-   By weight and volume, generally with other items
-   Manually

For detailed instructions, see [To Configure a Stock Item for Automatic Packaging](IN__how_Item_For_Packaging.md).

**Parent topic:**[Automatic Packaging for Local Carriers](../UserGuide/SO__con_Automated_Shipments_NICarriers.md)

