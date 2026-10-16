# Integration with LLM Providers: General Information

Employees often perform repetitive tasks in Acumatica ERP. With *AI Automation*, you can connect a large language model \(LLM\) to Acumatica ERP so that AI Automation can retrieve data from the current record, use supporting data sources, and update editable fields or detail lines on the source form.

You create agents that define the model's instructions, available tools, and expected results. An agent can use tools to get data from the target form and apply changes. It can also use tools to retrieve additional data for the model.

**Tip:** An agent can update a record only if the record can be edited manually on the target form.

Setting up AI Automation is quick and easy. You create an agent LLM connection to your LLM, define and test agents, decide whether sensitive fields must be masked, and review the execution and token statistics. When you activate most agents, AI Automation adds the agent command to the More menu of the target form. A user clicks this command to invoke the agent, and the LLM takes care of the rest.

The predefined *Expense Receipt Recognition* agent works differently. When you activate this agent, AI Automation makes it available in the Acumatica mobile app instead of adding a command to the target form in the website. For details, see [Expense Receipts: To Create an Expense Receipt by Using AI Automation](Expense_Receipts_To_Create_an_Expense_Receipt_by_Using_AI_Automation_Activity.md).

An agent action can also be invoked by a business event, an import scenario, or an automation workflow.

In an agentic workflow, the configured business process determines when an agent runs and what happens after it runs. The agent reads the available data, applies the judgment described in its instructions, and writes a result that a subsequent process step can use. For details, see [Integration with LLM Providers: Use of Agent Actions](LLM_Providers_Agent_Actions_Concept.md).

## Applicable Scenarios

You configure the agent LLM connection to an LLM provider in the following cases:

-   You’re a system administrator responsible for integration with external systems.
-   You’re a customizer who works on simple customizations.

## Preparation for the Integration

Before you begin creating agents for the LLM, make sure that the following is true:

-   You've enabled the *AI Automation* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. This feature is subject to licensing; please consult the Acumatica ERP sales policy for details.
-   You have an account with an LLM provider.
-   You've deployed an LLM on this provider's website.
-   Your organization's data handling policies permit sending potentially sensitive data to your LLM provider, as AI Automation does. The provider processes this data but doesn’t store it.

Acumatica ERP supports the following LLM providers:

-   Azure
-   Amazon Bedrock \(AWS\)
-   OpenAI
-   Anthropic

**Important:** LLM providers frequently update the list of available models. Models can be deprecated or retired with little notice, which may cause an existing agent LLM connection to stop working. To avoid errors, regularly check your provider’s documentation for model availability and expiration dates. Then review each agent LLM connection, update its settings accordingly, and test it to make sure that Acumatica ERP can connect to the LLM.

For OpenAI, you can’t create a connection by using your ChatGPT account. You need to use the OpenAI API.

## Solution Architecture

To connect to an LLM provider, Acumatica ERP routes AI Automation requests through the Acumatica Secure Cloud, which acts as a proxy. This proxy receives the request from Acumatica ERP, converts it to the provider’s API format, and forwards it to your selected LLM provider. The provider’s response returns through the same path and is written back into the Acumatica ERP database. The diagram below shows this high-level flow.


The proxy enables Acumatica ERP to connect to multiple LLM providers without changing your configuration for each provider’s API contract. The proxy doesn’t store, modify, or retain your data; it only maps requests and responses between Acumatica ERP and the provider.

You establish a direct relationship with your LLM provider \(API keys, terms, and data-use policies\). Acumatica ERP serves only as the integration layer and doesn’t access, broker, or store any data exchanged between you and your provider. You also control what data is sent to the provider. That data is not used to train Acumatica ERP generic models.

Before any data is sent, Acumatica ERP enforces existing access controls, user permissions, and audit logging. Only authorized users can configure or run agents. You can also mask sensitive field values retrieved from the current record by agent tools, as described in [Integration with LLM Providers: Hiding of Sensitive Data](LLM_Providers_Data_Masking.md).

**Parent topic:**[Integrating with LLM Providers](../UserGuide/LLM_Providers_Mapref.md)

