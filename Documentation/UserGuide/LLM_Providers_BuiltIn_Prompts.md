# Integration with LLM Providers: Use of Built-In Prompts {#_ed8663b7-3db6-4a8b-ac42-3366cd10edb5 .concept}

This topic describes the prompts that are available in the out-of-the-box system. It also contains examples of instructions that you can use.

## Built-In Prompts { .section}

The following prompts are available in an out-of-the-box system:

-   *Closure Notes*: Creates comprehensive closure notes that summarize the outcome of the case for knowledge management and auditing. The prompt uses the case's related records and logged activities to add text to the **Closure Notes** tab of the [Cases](CR_30_60_00.md) \(CR306000\) form.
-   *Stock Item Desc*: Uses inventory data to generate clear and professional product descriptions for the **Description** box and the tab of the same name on the [Stock Items](IN_20_25_00.md) \(IN202500\) form.
-   *Refine Reply*: Generates a reply to the most recent email by using the entire email thread on the [Email Activity](CR_30_60_15.md) \(CR306015\) form. It can generate a reply from scratch or refine an existing draft.

    **Tip:** When you make the prompt active on the [LLM Prompts](ML_20_20_00.md) \(ML202000\) form, the **Refine Reply** command is added to the [Email Activity](CR_30_60_15.md) \(CR306015\) form. You can open this form directly from a case by clicking **Create Email** on the **Activities** tab of the [Cases](CR_30_60_00.md) \(CR306000\) form.


To set up a built-in prompt for use in the system, do the following:

1.  Create an LLM connection on the [LLM Connections](ML_20_10_00.md) \(ML201000\) form.
2.  Specify this connection in the **LLM Connection** box on the [LLM Prompts](ML_20_20_00.md) \(ML202000\) form.
3.  Test the prompt.
4.  Select the **Active** check box and save the prompt.

## Instruction Examples { .section}

Below are examples of instructions for each section of a prompt.

|Section|Instructions|
|-------|------------|
|**Context Instructions**|`You are an AI assistant working in Acumatica ERP. Act as a marketing manager who works with products and services.`|
|**Task Description**|`Create a clear, professional product summary from the inventory information in the sections listed below.`|
|**Instructions with Input Data**|`Use the following fields in the description:`-   `Inventory Code: ((Item.InventoryCD))`
-   `Description: ((Item.Descr))`
-   `Inventory Class: ((Item.ItemClassID))`
-   `Current detailed description: ((Item.Body))`

|
|**Output Data Field**|`Generate both a short summary and a detailed HTML description with proper formatting and customer-relevant details:`1.  `@((Item.Descr))(string): A full HTML version with an appropriate structure (headings, paragraphs, lists), limited to a width of 800px. Include expanded, useful details for customer decision-making.`
2.  `@((Item.Body))(string): An expanded HTML version with clean formatting (headings, paragraphs, lists) and a width limit of 800px. The HTML should elaborate on the short version with customer-relevant information.`

|

By using the command related to this prompt, users can take 15 seconds to generate consistent, professional product descriptions—a process that previously took 15 minutes.

**Attention:**

-   Only the `(( ))` and `@(( ))` notations are supported in the prompt.
-   The generated command can modify only the output fields that you can edit manually on the form.

**Parent topic:**[Integrating with LLM Providers](../UserGuide/LLM_Providers_Mapref.md)

