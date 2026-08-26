# Taxes in Projects: Tax Calculation in Change Orders {#_37297ca5-3a6d-4732-be17-caa20aa2a68d .concept}

In construction, change orders are legally binding amendments to project agreements. To keep contractors and customers aligned and to avoid disputes, it’s critical to clearly communicate both the total revenue impact and the calculated taxes.

## Supported Tax Types and Required Features { .section}

You can review the full financial impact of a change order—including taxes—before you send it to the customer. You can calculate sales tax or VAT for a change order by using the system’s internal tax functionality or through an external tax provider.

**Attention:**

-   Tax calculation applies only to revenue budget lines of change orders.
-   Only taxes of the *Sales* or *VAT* type are supported for change orders.
-   The functionality depends on the features enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form:
    -   *VAT Reporting* for VAT calculation
    -   *External Tax Calculation Integration* for tax calculation through an external provider, such as Avalara AvaTax or Vertex

## Reviewing Taxes in Change Orders { .section}

When taxes have been configured, you can specify a tax category in the **Tax Category** column on the **Revenue Budget** tab of the [Change Orders](PM_30_80_00.md) \(PM308000\) form for each line. Taxes are calculated for only the revenue budget lines with a tax category specified.

If sales taxes or VATs are configured, you can review calculated taxes on the **Taxes** tab of the [Change Orders](PM_30_80_00.md) form. In the **Tax Info** section, you can view \(and change, if needed\) the tax zone. In the Summary area of the form, you can view the following amounts of the change order:

-   **Revenue Budget Change Amount**: The revenue amount before taxes for exclusive taxes or the revenue amount with taxes for inclusive taxes
-   **Revenue Budget Tax Total**: The calculated tax amount
-   **Revenue Budget Change Total**: The total revenue amount, including tax

Note that the amounts in the **Gross Margin Amount** and **Gross Margin \(%\)** boxes are calculated based on the revenue amounts before taxes. This calculation ensures more accurate profitability analysis.

**Tip:** On the **Taxes** tab, you can also view and change the tax calculation mode if the *Net/Gross Entry Mode* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

Taxes are automatically recalculated on the [Change Orders](PM_30_80_00.md) form when you modify:

-   The amounts or tax categories in change order lines on the **Revenue Budget** tab
-   The tax settings on the **Taxes** tab

## Calculating Retained Taxes { .section}

Suppose that your customer retains a part of the amount of invoices prepared for change orders. To reflect this, you’ve enabled the *Retainage Support* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

Retained amounts are calculated on the **Revenue Budget** tab of the [Change Orders](PM_30_80_00.md) \(PM308000\) form. If you specify the retainage percent for revenue budget lines, the system calculates:

-   The retained taxable amount and retained tax amount on the **Taxes** tab if the **Retain Taxes** check box is selected on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form
-   The retained revenue change amount in the **Revenue Retainage Total** box of the Summary area

**Attention:** Retainage of taxes isn't supported if you use an external tax provider.

## Applying Taxes Calculated by External Tax Providers { .section}

Your company may be calculating taxes by using an external tax provider, such as Avalara AvaTax or Vertex. Taxes are calculated for a change order on the [Change Orders](PM_30_80_00.md) \(PM308000\) form when you do any of these:

-   Save the change order
-   Release the change order
-   Click the **Recalculate External Tax** command on the More menu

You can review the tax settings and the calculated taxes on the **Taxes** tab.

For details, see [Integrating Acumatica ERP with Avalara Avatax](config_Avalara_Integration_Mapref.md) and [Integrating Acumatica ERP with Vertex Tax Provider](config_Vertex_Integration_Mapref.md).

## Viewing the Calculated Taxes for a Project { .section}

Suppose that you've created a new project task from a change order on the [Change Orders](PM_30_80_00.md) \(PM308000\) form. You've added a taxable revenue budget line and specified the retainage percentage in this line.

When you take this change order from hold, the system will:

-   Create a new project budget line
-   Copy the retainage percent and tax category to the **Tax Category** and **Retainage \(%\)** columns on the **Revenue Budget** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form

On the **Change Orders** tab, you can review these amounts for each change order:

-   **Revenue Budget Change Amount**: The revenue amount before taxes for exclusive taxes or the revenue amount with taxes for inclusive taxes
-   **Revenue Budget Tax Total**: The tax amount calculated for the change order
-   **Revenue Budget Change Total**: The change order amount, including tax

## Reversing a Change Order with Taxes { .section}

When you reverse a change order, all tax-related settings are copied from the original change order to the reversing change order—the one that’s reversing the original order. These settings include:

-   The tax zone
-   The tax categories
-   Address information
-   The tax exemption number and tax exemption type if the customer is tax exempt
-   The tax calculation mode if the *Net/Gross Entry Mode* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form

Line amounts on the **Revenue Budget** tab of the [Change Orders](PM_30_80_00.md) \(PM308000\) form become negative, and taxes are automatically recalculated on these negative amounts. This results in negative tax values that reverse the tax impact of the original change order.

**Parent topic:**[Working with Taxes in Projects](../UserGuide/Projects_Taxes_in_Projects_Mapref.md)

