# Integration with LLM Providers: To Create an Agent LLM Connection

This activity will walk you through the process of agent LLM connection creation.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story

Suppose that you are a system administrator, and you've been tasked with establishing a connection between your Acumatica ERP instance and your LLM provider. You need to create an agent LLM connection and make sure it works.

## Process Overview

By using the [Agent LLM Connections](ML_20_10_00.md) \(ML201000\) form, you will create an agent LLM connection, specify its connection parameters, and test it.

## System Preparation

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as security expert Kimberly Gibbs by using the *gibbs* username and the *123* password.
2.  Make sure that the *AI Automation* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
3.  Make sure you have access to the information on the LLM model’s page on your provider's website.

## Step: Creating an Agent LLM Connection

To create a connection to your LLM provider, do the following on the [Agent LLM Connections](ML_20_10_00.md) \(ML201000\) form:

1.  Add a new record and specify the following settings for it:
    -   **Connection ID**: `LLMConnection`
    -   **Connection Name**: `Provider Connection`

        **Tip:** Alternatively, you can copy the name from the model’s page on your provider's website.

2.  In the **LLM Provider** box, select the name of the LLM provider that you’re going to use.

    **Tip:** Click **Refresh** to the right of this box to load the up-to-date list of available providers.

    Notice that the system has added certain parameters to the **Connection Parameters** table.

3.  Copy the value of each of these parameters from the model’s page on your provider's website and paste it to the **Value** column.
4.  On the form toolbar, click **Save**.
5.  On the form toolbar, click **Test Connection**.

    The system tests the connection, and the connection status changes to *Active*. This means that you can use the connection in your agents.


**Parent topic:**[Integrating with LLM Providers](../UserGuide/LLM_Providers_Mapref.md)

