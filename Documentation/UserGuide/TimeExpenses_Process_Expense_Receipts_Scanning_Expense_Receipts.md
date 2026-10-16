# Expense Receipts: Receipt Recognition in the Mobile App

In the Acumatica mobile app, you can create an expense receipt manually. You can also recognize receipt files by using the *Image Recognition for Expense Receipts* feature or AI Automation.

With either recognition method, you need to review the recognized values and correct inaccurate or missing information before you continue processing the expense receipt.

## Recognition by Using the Image Recognition for Expense Receipts Feature

You can scan expense receipts in the Acumatica mobile app to simplify the process of creating records on the Expense Receipts screen. When you take a photo of a receipt from this screen, the system analyzes the photo, recognizes values in the photo, and maps them to fields on the Expense Receipts screen. If any of the fields are mapped incorrectly, you can correct the mapping.

To use this functionality, ensure that both of the following conditions are met:

-   A license that includes the *Image Recognition for Expense Receipts* feature and service keys has been obtained from Acumatica and applied in the system.
-   The *Image Recognition for Expense Receipts* feature has been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

If a license that does not meet these conditions is applied or the *Image Recognition for Expense Receipts* feature is not enabled, you can still create an expense receipt from a photo. However, this approach would not help you with data entry. Because recognition would not occur, the elements of the created expense receipt will contain empty or default values instead of recognized and mapped values.

## Recognition by Using AI Automation

If the *AI Automation*, *Expense Management*, and *Receipt Agent* features are enabled, the predefined *Expense Receipt Recognition* agent can recognize a receipt photo, image file, or PDF file.

**Important:** The *Image Recognition for Expense Receipts* feature must be disabled.

Before users can perform recognition, a user with the *Prompt Engineer* or *Administrator* role must select a tested agent LLM connection and test the agent with a sample receipt. For details on connections, see [Integration with LLM Providers: Creation of Agent LLM Connections](LLM_Providers_LLM_Connection_Creation_Concept.md).

**Parent topic:**[Processing Expense Receipts](../UserGuide/TimeExpenses_Process_Expense_Receipts_Mapref.md)

