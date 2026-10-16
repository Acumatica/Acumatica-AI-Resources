# Integration with LLM Providers: Hiding of Sensitive Data

Some data in Acumatica ERP is sensitive and should not be sent to a large language model \(LLM\) as plain text. To keep sensitive data secure, you can use **data masking** in AI Automation. Here’s how it works:

-   Selected values are replaced with placeholders before they are sent to the LLM.
-   The real data remains in Acumatica ERP.
-   When the LLM returns placeholders in the result or tool call, Acumatica ERP restores the real values before saving or showing the result in the system.

## Selecting Masked Fields

You specify masked fields for only the `get_current` tool. In the **Get Current Entity Tool** section, select the row with this tool and use the **Masked Fields** box \(Item 1 below\) to add the fields that should be protected.

**Important:** In the **Select - Masked Fields** dialog box, select the check boxes for the fields of the lowest level of the hierarchy \(Item 2\).


After you select fields, they are shown in the **Masked Fields** box for the `get_current` tool \(shown below\).


**Important:** If you specify masked fields for the `get_current` tool, the agent cannot call this tool again after it invokes `patch_current`.

## Viewing Masked Values in Agent Results

When the agent runs, Acumatica ERP replaces selected field values with placeholders in the `${field_name}` format before sending tool results to the LLM \(shown below\). For fields of detail lines or related records, the placeholder can include an indexed path, such as `${Activities-1.Summary}`. This ensures each masked value can be restored to the correct row.


The LLM copies these placeholders when it needs to include masked values in a result or tool call. When Acumatica ERP receives a response, it restores the real values before saving the updated record.

On the **Result** tab, the system displays the unmasked values \(shown below\).


**Important:** The `${...}` notation is reserved for masking. If you use masked fields in your agents, any `${...}` pattern that the LLM sends through the `patch_current` tool is treated as a masking placeholder. If the placeholder isn’t recognized, the system rejects the update and doesn’t save the value. This means that regular text containing `${...}` can’t be saved in agents that use masked fields.

You can select fields of different data types for masking. When Acumatica ERP sends masked values to the LLM, the LLM sees only placeholders, not the underlying values. This means the LLM can carry a masked value forward, but it cannot analyze the hidden value itself.

For example, if a numeric field is masked, the LLM cannot calculate a 10% increase for that value because it cannot see the number. Calculations that require real numeric values should be performed inside Acumatica ERP, without relying on the LLM to do arithmetic on masked data.

## Using the Processing Log

To review how the agent was processed, use the **Processing Log** tab on the [Agents](ML_20_20_00.md) \(ML202000\) form.

This tab helps you review what was sent, which tools were called, what data was returned by tools, and whether errors occurred. This is also where you can confirm that masked fields are represented by placeholders before they reach the LLM.

For details, see [Integration with LLM Providers: Testing and Troubleshooting Agents](LLM_Providers_LLM_Prompts_Testing_Troubleshooting_Concept.md).

## Reviewing Generic Inquiries

Masked fields configured on the **Tools** tab **do not** protect sensitive columns returned by the *Generic Inquiry* tools. If an agent uses a *Generic Inquiry* tool, the data returned by the selected generic inquiry is sent to the LLM without any masking.

For this reason, make sure that generic inquiries used by AI Automation return only the columns the agent truly needs. Remove sensitive columns from the generic inquiry, use filters, and limit the number of returned records. If an agent has masked fields and uses a *Generic Inquiry* tool, Acumatica ERP displays a warning when you save the agent. The warning reminds you that generic inquiry results are not masked and that sensitive columns should be removed from the inquiry.

## Choosing the Right Model

Masking depends on the model preserving the `${...}` placeholders exactly as received. Smaller or older models may alter placeholders inconsistently, especially when the agent involves writing plain text, making grammar changes, or translating content.

We recommend that you use larger models that can handle placeholders reliably. This helps prevent cases where the model changes a placeholder in a way that prevents Acumatica ERP from restoring the original value.

**Parent topic:**[Integrating with LLM Providers](../UserGuide/LLM_Providers_Mapref.md)

