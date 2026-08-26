# Applying Direct-Entry Taxes to Landed Cost Documents {#_e4fa9dcb-1371-4429-ac9e-3a2453a0cf1d .concept}

On the [Landed Costs](PO_30_30_00.md) \(PO303000\) form, you can create a landed cost document to which a direct-entry tax is applied. A direct-entry tax has the **Direct-Entry Tax** check box selected on the [Taxes](TX_20_50_00.md) \(TX205000\) form. For details, see [Direct Tax Payment: General Information](Taxes_Paying_Tax_Directly_GeneralInfo.md).

For a direct-entry tax to be applied, all of the following conditions should be met:

-   The landed cost document belongs to a tax zone in which the direct-entry tax is included.
-   The line of the landed cost document has the *None* allocation method specified on the **Landed Costs** tab.
-   The tax category selected in the document line contains the direct-entry tax and has the **Exclude Listed Taxes** check box cleared on the [Tax Categories](TX_20_55_00.md) \(TX205500\) form.

For a direct-entry tax, the following columns are filled in by the system and cannot be edited on the **Taxes** tab of the [Landed Costs](PO_30_30_00.md) form: **Taxable Amount**, **Tax Amount**, and **Tax Rate**.

You cannot manually delete a direct-entry tax from the **Taxes** tab of the [Landed Costs](PO_30_30_00.md) form by selecting its row and clicking **Delete Row** on the table toolbar. To delete a direct-entry tax, you should change the tax category for the document line on the **Landed Costs** tab or delete the document line with the tax on the same tab.

When a bill is created for a line of the landed cost document to which a direct-entry tax is applied, on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, the **Taxable Amount** for this tax is *0* and the **Tax Amount** \(shown on the **Taxes** tab\) equals the line amount.

**Parent topic:**[Allocating Landed Costs](../UserGuide/PO__MNG_Landed_Costs.md)

