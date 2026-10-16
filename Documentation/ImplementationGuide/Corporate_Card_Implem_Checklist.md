# Corporate Cards: Implementation Checklist

The following sections provide details you can use to ensure that the system is configured properly for creating corporate cards or card issuers.

## Implementation Checklist

We recommend that before you configure a corporate credit card or a card issuer, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

<table id="_75f5a845-9a95-409c-9ffd-7c022ec672dc"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form

</td><td>

Make sure that the *Expense Management* feature is enabled.

</td></tr><tr><td>

[Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\)

</td><td>

Make sure that the liability GL account for the corporate card has been created.

</td></tr><tr><td>

[Payment Methods](../UserGuide/CA_20_40_00.md) \(CA204000\)

</td><td>

Make sure that the necessary payment method for the corporate card have been created. Also, make sure that the following settings have been specified for the created payment methods:-   **Use in AP** \(Summary area\): Selected
-   **Not Required** \(**Additional Processing** section of the **Settings for Use in AP** tab\): Selected
-   **Require Unique Payment Ref.** \(**Payment Settings** section of the **Settings for Use in AP** tab\): Cleared

For more information on payment methods, see [Payment Methods for Vendors](../UserGuide/CA__CON_PMs_for_Vendors.md).

</td></tr><tr><td>

[Entry Types](../UserGuide/CA_20_30_00.md) \(CA203000\)

</td><td>

Ensure that the entry types to be used for cash accounts have been created. For details, see [Entry Types](../UserGuide/CA__CON_EntryTypes.md).

</td></tr><tr><td>

[Cash Accounts](../UserGuide/CA_20_20_00.md) \(CA202000\)

</td><td>

Verify that the necessary cash accounts have been created with the following settings:-   The **Clearing Account** check box is cleared.
-   The **Restrict Visibility with Branch** check box is cleared.
-   The **Use for Corporate Cards** check box is selected.
-   Optionally, the **Requires Reconciliation** check box is selected; if it is, a numbering sequence must be specified in the **Reconciliation Numbering Sequence** box.

For more information, see [Cash Account Configuration](../UserGuide/CA__CON_CashAccount_Definition.md).

</td></tr></tbody>
</table>

## Other Settings That Affect the Workflow

To change the format of corporate card identifiers, adjust the *CORPCC* numbering sequence on the [Numbering Sequences](../UserGuide/CS_20_10_10.md) \(CS201010\) form or create a new auto-numbered sequence and select this sequence in the **Corporate Card Numbering Sequence** box on the **General** tab \(**Numbering Settings** section\) of the [Cash Management Preferences](../UserGuide/CA_10_10_00.md) \(CA101000\) form. For more information on numbering sequences, see [Use of Numbering Sequences](../UserGuide/CS__con_Multiple_Numbering_Sequences.md).

## Validation of Configuration

To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in [Corporate Cards: To Configure a Vendor for a Corporate Card](Corporate_Card_Implem_Activity_CardIssuer.md).

**Parent topic:**[Corporate Cards](../ImplementationGuide/Corporate_Card_Mapref.md)

