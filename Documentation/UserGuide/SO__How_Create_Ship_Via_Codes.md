# To Create Ship via Codes for the Integrated Carrier {#_72b79bef-5f03-4822-90a1-25eda30d8164 .task}

In Acumatica ERP, you can create multiple ship via codes for an integrated carrier, each based on a service method provided by the carrier and used by your company. You create ship via codes by using the [Ship via Codes](CS_20_75_00.md) \(CS207500\) form. Perform the following steps for each ship via code you define.

## To Create a Ship via Code for the Carrier { .section}

1.  Open the [Ship via Codes](CS_20_75_00.md) \(CS207500\) form.
2.  Enter the ship via code, which is an alphanumerical string of up to 15 characters. Consider using *UPS*, or *FedEx* plus a string indicating the specific service method.
3.  Enter a description of the code.
4.  Select the **External Plug-in** check box to indicate that the ship via code is associated with an integrated carrier. The elements used for integrated carriers appear on the form.
5.  Select the **Active** check box.
6.  On the **Details** tab, do the following:
    -   Select the calendar that provides information about this carrier's work hours.
    -   Specify the carrier whose service method will be used under this code.
    -   Select the service method this code is based on.
    -   Make sure the **Common Carrier** check box is selected.
    -   Optional: Select the **Confirmation for Each Box Is Required** check box to help reduce errors on shipments.
    -   Optional: Select the **At Least One Package is Required** check box if a shipment should have at least one package.
    -   In the **Tax Category** box, select the tax category to be applied to the shipping and handling fees for shipments performed under this code.
    -   In the **Freight Sales Account** box, select the income account to be used to record the freight sales \(the shipping and handling fees\).
    -   If the *Subaccounts* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, in the **Freight Sales Sub.** box, select the subaccount to be used to record the freight sales.
    -   In the **Freight Expense Account** box, select the income account to be used to record the freight expenses.
    -   If the *Subaccounts* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form, in the **Freight Expense Sub.** box, select the subaccount to record the freight expenses.
7.  On the **Packages** tab, do the following for each of the boxes to be used by this carrier with this service method:
    -   Click **Add Row** on the table toolbar to add a row with information about a box.
    -   In the **Box ID** column, select a box that is used by the carrier with this service method.
    -   In the **Carrier's Package** column, provide the identifier used for this box by the carrier.
    -   Click **Save** on the form toolbar. The system inserts the settings of the box in the appropriate columns.

**Parent topic:**[Integration with Carriers](../UserGuide/CS__con_Integration_with_Carriers.md)

