# Integration with LLM Providers: Creation of Agent LLM Connections

Before you can use AI Automation, you need to establish a connection between Acumatica ERP and your LLM provider. This connection contains your credentials, which the system will use to communicate with the model during agent processing.

In this topic, you’ll learn how to create and test this agent LLM connection.

## Configuration of Agent LLM Connections

You can create agents without an agent LLM connection; however, you need a connection to test them.

You configure the connections on the [Agent LLM Connections](ML_20_10_00.md) \(ML201000\) form, which is shown below. You specify the internal ID and display name of the connection, select an LLM provider, and specify connection parameters.


**Tip:** To load the up-to-date list of available providers, you click **Refresh**.

The list of parameters depends on the provider and the model you're using. You copy the needed values from the model’s page on your provider's website. You can also use custom connection parameters as described in [Integration with LLM Providers: Custom Connection Parameters](LLM_Providers_Custom_Parameters.md).

## Testing of the Connections

After the connection is configured, you test it. The system sends a request to the LLM provider, which verifies the connection data.

Once the system verifies the connection and its status becomes *Active* \(shown below\), you can create agents.


**Tip:** The lookup table on the [Agents](ML_20_20_00.md) \(ML202000\) form shows only connections that have been tested—that is, connections with the *Active* status.

**Parent topic:**[Integrating with LLM Providers](../UserGuide/LLM_Providers_Mapref.md)

