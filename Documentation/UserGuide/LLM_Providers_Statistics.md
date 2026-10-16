# Integration with LLM Providers: Collection of Statistics

LLM providers charge based on the number of tokens that a model processes. A token is a small unit of text. Because AI Automation agents can use tool calling, a single agent execution can include multiple requests to the LLM and multiple tool responses.

Acumatica ERP records token statistics so that you can review both the values calculated by the system and the token values reported by the LLM provider.

## Acumatica ERP Tokens and Provider Tokens

The system shows two values for token usage:

-   **The value calculated by Acumatica ERP**: The values that are based on the request and response content.
-   **The value reported by the provider**: The tokens consumed, as reported by the LLM provider that processed the request. Each provider uses its own tokenization \(converting text into tokens\), so this value may differ from the value calculated by Acumatica ERP. This difference is expected.

Providers also differ in what they report: Some return only input and output tokens; some also return total tokens. Some providers report provider-specific categories, such as *reasoning*, *cached content*, *tool use*, or other model-specific token types. Acumatica ERP does not show these separately, and they may or may not be included in the provider-reported total. For this reason, a provider total does not always equal input plus output, and some provider-specific usage may remain beyond what Acumatica ERP records.

Acumatica ERP brings the main provider values into the system for convenience. The LLM provider always remains the source of truth for actual token usage and billing. For complete usage details, refer to your provider's dashboards.

## Reviewing Token Usage

**While Testing an Agent**

You test an agent on the [Agents](ML_20_20_00.md) \(ML202000\) form: Select an example record, click **Test Agent**, and then open the **Processing Log** tab. The log divides the execution into the first request, the tool-calling steps, and the completed message thread, so that you can see what consumed tokens.

Each **Request to LLM** section shows the value calculated by Acumatica ERP for that request \(shown below\).


After processing completes, the **Agent Processing Completed** section \(see below\) shows the totals for the entire execution in the following two rows:

-   **Acumatica ERP Tokens** displays input, output, and total tokens calculated by the system.
-   **LLM Provider Tokens** shows input, output, and total tokens consumed and reported by the LLM provider.


The sections for individual requests show only the value calculated by Acumatica ERP. The value reported by the provider appears in the totals for the execution on this form and on the [AI Automation History](ML_40_00_00.md) \(ML400000\) form.

**Tip:** Some providers do not report total tokens. In that case, the provider total is left blank rather than calculated.

**Over Time**

You view statistics for all agent LLM connections, agents, and agent commands on the [AI Automation History](ML_40_00_00.md) \(ML400000\) form, shown below. Each time you perform an operation in AI Automation, the system adds a corresponding record to the table. The **Type** column indicates the type of each record:

-   *Connection Test*: Testing of an agent LLM connection on the [Agent LLM Connections](ML_20_10_00.md) \(ML201000\) form
-   *Agent Test*: Testing of an agent on the [Agents](ML_20_20_00.md) \(ML202000\) form
-   *Action*: Execution of an agent action by a user, a business event, an import scenario, or an automation workflow

In addition to the columns with the values calculated by Acumatica ERP, the form includes the following provider columns \(shown below\):

-   **Provider's Input Tokens**
-   **Provider's Output Tokens**
-   **Provider's Total Tokens**


## Interpreting Blank or Different Token Values

Token values depend on whether the request reached the provider and whether the provider returned usage information:

-   If a request did not reach the provider—for example, because of invalid credentials, a missing endpoint, or a connection failure—the value calculated by Acumatica ERP may be zero. In that case, the provider values may also be blank.
-   If the provider processed the request but did not return usage details, the system still shows its value while the provider values remain blank.

A blank provider value does not necessarily mean zero usage. It may mean that the provider did not report that value. A zero value means the provider reported zero.

## Keeping Data and Token Use Under Control

Use token statistics to identify agents or generic inquiries that send too much data to the LLM. If token usage is high, review whether the agent retrieves unnecessary fields, returns too many records, or includes more *Generic Inquiry* tools than the task requires.

When a business event, import scenario, or other configured process runs an agent for multiple records, each record causes a separate agent execution and separate LLM requests. Consider the expected number of records when you estimate processing time and token use.

For details about configuring focused generic inquiries, see [Integration with LLM Providers: Creation of Agents](LLM_Providers_LLM_Prompts_Creation_Concept.md). For details about sensitive data in generic inquiries, see [Integration with LLM Providers: Hiding of Sensitive Data](LLM_Providers_Data_Masking.md).

**Parent topic:**[Integrating with LLM Providers](../UserGuide/LLM_Providers_Mapref.md)

