# To Create a Ship via Code {#_480f2b47-6ce4-4b3c-a69f-611066e3038d .task}

In Acumatica ERP, you can create a ship via code for each delivery service your organization uses and specify which boxes are used for this service and what the freight rates are.

You create ship via codes by using the [Ship via Codes](CS_20_75_00.md) \(CS207500\) form. Perform the following steps for each ship via code you need to define.

## To Create a Ship via Code { .section}

1.  Open the [Ship via Codes](CS_20_75_00.md) \(CS207500\) form.
2.  Enter the ship via code \(which is an alphanumerical string of up to 15 characters\) clearly identifying the specific delivery service.
3.  Enter a description of the code.
4.  Makes sure that the **External Plug-in** check box is cleared.
5.  On the **Details** tab, select the calendar that provides information about this carrier's work hours.
6.  Select the method to calculate the freight from the following options:
    -   *Per Unit*: To calculate the freight as the rate by weight.
    -   *Net*: To use flat rate.
    -   *Manual*: To specify the freight amount manually for each sales order in the **Freight Cost** box on the **Totals** tab of the [Sales Orders](SO_30_10_00.md) form.
7.  In the **Base Rate** box, if *Net* is selected as the calculation method, type the value of the flat-rate charge to be added to the freight amount. If *Per Unit* is selected as the calculation method, type the value of the per unit rate.
8.  On the **Freight Rates** tab, if *Net* is selected as the calculation method, specify the rate ranges as follows:
    1.  Click **Add Row** on the table toolbar to add a new rate range.
    2.  In the **Rate** column, specify the rate.
    3.  In the **Weight** column, specify the minimum weight to which the rate may be applied.
    4.  In the **Volume** column, specify the minimum volume to which the rate may be applied.
    5.  In the **Zone** column, specify the shipping zone to which the goods with the specified weight and volume are shipped.
9.  If integration with AvaTax is active, select the **Common Carrier** check box if the taxes associated with the address of the customer location must be applied. Clear the check box if the taxes associated with the address of the selling branch must be applied.
10. In the **Tax Category** box, select the tax category to be applied to the freight charges.
11. In the **Freight Sales Account** box, select an income account to record the freight sales.
12. In the **Freight Sales Sub.** box, select a subaccount to record the freight sales.
13. In the **Freight Expense Account** box, select an income account to record the freight expenses.
14. In the **Freight Expense Sub.** box, select a subaccount to record the freight expenses.
15. On the **Packages** tab, select each of the boxes to be used with this delivery service as follows:
    -   Click **Add Row** on the table toolbar to add information about a box.
    -   In the **Box ID** column, select a box that is used by the service method.
    -   Click **Save** on the form toolbar. The box information will appear in the appropriate columns.
16. Click **Save** on the form toolbar.

**Parent topic:**[Automatic Packaging for Local Carriers](../UserGuide/SO__con_Automated_Shipments_NICarriers.md)

