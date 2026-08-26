# To Link a Bill Line to Landed Cost Document {#_70440a4e-ad41-45d6-a8cc-751224e9063b .task}

To link a particular line of an existing Accounts Payable bill to a line of landed cost document, you use the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

## To Link an Accounts Payable Bill to Landed Cost Document { .section}

1.  Open the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
2.  In the **Type** box, select *Bill*, and select the needed bill by its reference number.
3.  On the table toolbar of the **Document Details** tab, click a line with an empty inventory ID to which a landed cost should be linked, and click **Link Line** on the table toolbar. In the **Link Line** dialog box, which opens with the **Landed Cost** mode selected, select the unlabeled check box next to the landed cost line to be linked.
4.  Click **Add &amp; Close** to close the dialog box and link the selected line.
5.  Optional: Correct the **Ext. Cost** of the bill line, if needed.
6.  Click **Save** to save your changes.

## Notes About the Procedure { .section}

The notes in this section describe the nuances of the UI elements available on the form, such as when an element is required and when it is not, and when the system fills in settings by default. This section can include other notes.

Note the following about adding landed costs to a bill:

-   You can link a landed costs line to a line with empty **Inventory ID** only. Once you have linked a landed cost line, the description of a bill line changes to the description of the linked landed cost.
-   Each bill line can be linked to only one landed cost line.
-   The **Link Line** dialog box shows the lines of released landed cost documents for which the Accounts Payable bill wasn't created on release.
-   If the amount in the bill line differs from the amount in the landed cost line that you linked, the occurred difference is posted to the Landed Cost Variance account. For details, see [Adjusting the Landed Cost Variance](PO__con_LC_Postponed.md).

**Parent topic:**[Allocating Landed Costs](../UserGuide/PO__MNG_Landed_Costs.md)

