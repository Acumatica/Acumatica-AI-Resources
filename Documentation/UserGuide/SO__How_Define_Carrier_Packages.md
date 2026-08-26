# To Define a Box {#_aa25c84d-6b75-4488-9053-6de15aa38c25 .task}

To send shipments via different delivery services and carriers, including integrated carriers \(UPS, or FedEx\), you need to define the types of boxes used by each of the carriers. You can define boxes by using the [Boxes](CS_20_76_00.md) \(CS207600\) form.

## To Define a Box { .section}

1.  Open the [Boxes](CS_20_76_00.md) \(CS207600\) form.
2.  On the table toolbar, click **Add Row**.
3.  In the **Box ID** column, type a unique identifier for the box.
4.  In the **Description** column, specify a description for this box.
5.  In the **Box Weight** column, specify the weight of the box in the selected UOM.
6.  In the **Max. Weight** column, specify the maximum weight the box can hold.
7.  In the **Max Volume** column, specify the maximum volume that the box can hold.
8.  If the box will be used for shipping via an integrated carrier, specify the box's **Length**, **Width**, and **Height**.
9.  Make sure the **Active by Default** check box is selected for the box if boxes of this type are used for shipping by most of the carriers and should appear by default on the list of boxes used for any ship via code on the [Ship via Codes](CS_20_75_00.md) \(CS207500\) form.
10. Click **Save** on the form toolbar.

## Notes About the Procedure { .section}

The notes in this section describe the nuances of the UI elements available on the form, such as when an element is required and when it is not, and when the system fills in settings by default. This section can include other notes.

Note the following about this procedure:

-   The measurement system that is used by the integrated carrier is specified in the **Carrier Units** box on the [Carriers](CS_20_77_00.md) \(CS207700\) form. If the linear UOM specified for the carrier differs from the company’s linear UOM specified on the [Companies](CS_10_15_00.md) \(CS101500\) form, you must define conversion rules between these units of measure on the [Units of Measure](CS_20_35_00.md) \(CS203500\) form so that shipping rates can be calculated correctly.
-   For boxes to be used for shipping by delivery services that are not integrated carriers, you can specify the linear dimensions \(such as width, height,or length\) for informational purposes only; the values are not used in any calculations.

**Parent topic:**[Integration with Carriers](../UserGuide/CS__con_Integration_with_Carriers.md)

