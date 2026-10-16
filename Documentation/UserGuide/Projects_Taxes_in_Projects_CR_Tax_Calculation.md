# Taxes in Projects: Tax Calculation in Change Requests

In a two-tier change management workflow, you can view a complete cost breakdown for a project change—including taxes—before the change order is created and before the final billing.

## Supported Tax Types and Required Features

You can calculate sales tax or VAT for a change request by using the system’s internal tax functionality or through an external tax provider.

**Attention:**

-   Only taxes of the *Sales* or *VAT* type are supported for change requests.
-   The functionality depends on the features enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form:
    -   *VAT Reporting* for VAT calculation
    -   *External Tax Calculation Integration* for tax calculation through an external provider, such as Avalara AvaTax or Vertex

## Reviewing Taxes in Estimation Lines of a Change Request

You can review the tax category for the revenue part of each estimation line in the **Revenue Tax Category** column on the [Change Requests](PM_30_85_00.md) \(PM308500\) form. When you add a line, the system inserts the tax category based on the following priority:

1.  From the selected inventory item
2.  From the selected revenue task

The column is left empty if neither the item nor the task has a tax category. You can add a category.

If a tax category is selected in any line, you can view the calculated taxes in the boxes in the Summary area:

-   **Tax Total**: The total tax amount calculated for the change request
-   **Change Total**: The total amount of the change request, including tax

The amount in the **Price Total** box doesn't include taxes.

## Reviewing Taxes in Markup Lines of a Change Request

In a change request, markups let you include additional charges, such as overhead, profit, or administrative fees on top of the estimated revenue amount. When you add a line on the **Markups** tab of the [Change Requests](PM_30_85_00.md) \(PM308500\) form, the **Tax Category** column is filled in based on the following priority:

1.  From the selected inventory item
2.  From the selected project task

The column is left empty if neither the item nor the task has a tax category. You can add a category.

The **Amount Subject to Markup** column is calculated based on the estimation line amounts reduced by the amount of any inclusive taxes.

## Adjusting Taxes in a Change Request

You can review a change request’s calculated taxes on the **Taxes** tab of the [Change Requests](PM_30_85_00.md) \(PM308500\) form. In the **Tax Info** section of the tab, you can also view and edit the inserted tax zone.

Taxes are automatically recalculated when you modify:

-   The date of the change request
-   The amounts or tax categories in estimation lines
-   The markups or tax categories in markup lines
-   The tax settings on the **Taxes** tab

On this tab, you can also view and change the tax calculation mode if the *Net/Gross Entry Mode* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Tax Calculation by External Tax Providers

If your company uses an external tax provider, such as Avalara AvaTax or Vertex, it calculates a change request’s taxes on the [Change Requests](PM_30_85_00.md) \(PM308500\) form when you do any of the following:

-   Save the change request
-   Remove the change request from hold
-   Create the change order for the change request
-   Click the **Recalculate External Tax** command on the More menu

You can review the tax settings and the calculated taxes on the **Taxes** tab.

For details, see [Integrating Acumatica ERP with Avalara AvaTax](config_Avalara_Integration_Mapref.md) and [Integrating Acumatica ERP with Vertex Tax Provider](config_Vertex_Integration_Mapref.md).

## Viewing a Change Request’s Tax Details in the Related Change Order

When you create a change order from a change request, the tax-related settings are copied to the [Change Orders](PM_30_80_00.md) \(PM308000\) form:

-   The **Revenue Budget** tab: **Tax Category**
-   The **Taxes** tab: **Tax Zone**, **Tax Calculation Mode**, **Tax Exemption Number**, and **Tax Exemption Type**
-   The **Address** tab: Contact and address information

On the **Change Requests** tab, you can view the following values for the related change requests:

-   The total tax amount
-   The total amount of the change requests

These values may differ from the corresponding values in the original change requests because taxes are recalculated in the change order.

**Attention:**

-   Tax amounts aren't copied from a change request to a related change order, pro forma invoice, or AR invoice. Taxes are recalculated independently in each document, so the tax amounts in a change request may differ from those in the related change order or invoice.
-   Tax settings are copied from a change request to the related change order only when you create a change order directly from the change request. You do this by clicking **Create Change Order** on the [Change Requests](PM_30_85_00.md) \(PM308500\) form. If you add a change request to an existing change order by using the **Add Change Request** dialog box on the [Change Orders](PM_30_80_00.md) form, the tax settings aren't copied from the change request.

## Know the Limitations

-   Tax calculation applies only to the revenue part of the estimation and markup lines of change requests.
-   Only sales taxes and value-added taxes \(VATs\) are supported for change requests.
-   Retainage of taxes isn't supported for change requests.

**Parent topic:**[Working with Taxes in Projects](../UserGuide/Projects_Taxes_in_Projects_Mapref.md)

