# Engineering Change Control: Implementation Checklist

The following sections provides details that you can use to ensure that engineering change control is configured properly.

## Implementation Checklist

We recommend that before you start using engineering change control, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

<table id="_1715bc1f-10ec-48d5-b995-104135f71423"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)

</td><td>

The *Engineering Change Control* feature is enabled under the *Manufacturing* group of features.

</td></tr><tr><td>

[Numbering Sequences](CS_20_10_10.md) \(CS201010\)

</td><td>

The numbering sequences have been created for the identifiers of engineering change requests and engineering change orders.

</td></tr><tr><td>

[BOM Preferences](AM_10_10_00.md) \(AM101000\)

</td><td>

The following settings have been specified on the **General** tab \(**Numbering Settings**\):-   The numbering sequence for ECRs in the **ECR Numbering Sequence** box
-   The numbering sequence for ECOs in the **ECO Numbering Sequence** box

</td></tr><tr><td>

[Email Templates](SM_20_40_03.md#) \(SM204003\)

</td><td>

The corresponding notification templates have been created if you want to inform users about any of the following events:-   An ECR or ECO has been created.
-   An ECR or ECO is waiting for an approval.
-   An ECR or ECO has been approved.
-   An ECR or ECO has been rejected.

</td></tr></tbody>
</table>

## Other Settings That Affect the Workflow

You can affect the workflow of engineering change control by doing any of the following on the [BOM Preferences](AM_10_10_00.md) \(AM101000\) form:

-   If you want to restrict the creation of new revisions of bills of material based on engineering change requests or engineering change orders so that the revisions can be created only by using an ECR or an ECO, you select the **Require ECR/ECO for New BOM Revisions** check box in the **Data Entry Settings** section of the **General** tab.
-   If you want to allow engineers to create engineering change orders without creating engineering change requests, you clear the **Require ECR Before Creating ECO** check box in the **Data Entry Settings** section of the **General** tab.
-   If you want to use approvals for engineering change requests, on the **ECR Approval** tab, you select the **Require ECR Approval** check box, and in the table, you add the needed approval map for ECRs, which is created on the [Assignment and Approval Maps](EP_20_55_00.md) \(EP205500\) form.
-   If you want to use approvals for engineering change orders, on the **ECO Approval** tab, you select the **Require ECO Approval** check box, and in the table, you add the approval map for ECOs, which is created on the [Assignment and Approval Maps](EP_20_55_00.md) form.

**Parent topic:**[Engineering Change Control](../UserGuide/MFG_ECC_Mapref.md)

