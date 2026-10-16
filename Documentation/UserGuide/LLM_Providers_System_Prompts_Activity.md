# Integration with LLM Providers: To Create System Instructions

This activity will walk you through the process of adding system instructions.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story

Suppose that you are a security expert in your company, and you need to make sure that every agent follows certain guidelines. You will create default system instructions that the system will insert into each agent that a prompt engineer creates.

## Process Overview

On the [Agent System Instructions](ML_20_30_00.md) \(ML203000\) form, you will add new instructions. On the [Agents](ML_20_20_00.md) \(ML202000\) form, create an agent and make sure that the system instructions are inserted into it automatically. You will also insert these instructions into a built-in agent.

## System Preparation

Before you begin creating system instructions, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as security expert Kimberly Gibbs by using the *gibbs* username and the *123* password.
2.  Make sure that the *AI Automation* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Step 1: Creating System Instructions

To create system instructions, do the following:

1.  On the [Agent System Instructions](ML_20_30_00.md) \(ML203000\) form, add a new record and specify the following settings:
    -   **Instruction Name**: `DEFAULTINSTR`
    -   **Description**: `Default System Instructions`
2.  In the **Instruction** section, enter the following text after **\#\# System Instruction**:

    ```
    Follow the task-specific instructions exactly as written.
    
    Use only the supplied record data and directly supported inferences.
    Do not invent facts, names, dates, quantities, root causes, commitments, or business decisions.
    If required information is missing, stay neutral and avoid guessing.
    
    Keep the output focused on the requested business purpose.
    Exclude anything that is not needed to complete the target output fields.
    
    Prefer clear, direct, business-appropriate language.
    Use correct American English grammar, spelling, and punctuation.
    ```

3.  In the Summary area, select the **Active** check box.

    This setting will make the instructions available for selection on the [Agents](ML_20_20_00.md) \(ML202000\) form.

4.  Select the **Default** check box.

    This setting will make the system insert the instructions into each new agent.

5.  On the form toolbar, click **Save**.

## Step 2: Adding System Instructions to an Agent

To add the created instructions to an agent, do the following on the [Agents](ML_20_20_00.md) \(ML202000\) form:

1.  Add a new record, select a form in the **Target Form** box, and make sure that the **Instructions** tab contains the system instructions that you've created in the previous step.

    **Tip:** You can modify or delete these instructions.

2.  Open the record with the *REFINE-REPLY* agent ID.
3.  On the **Instructions** tab, click **Insert Instructions**.
4.  In the dialog box that opens, select the *DEFAULTINSTR* row, and click **Insert**.

    The system instructions are added to the agent.

5.  On the form toolbar, click **Save**.

**Parent topic:**[Integrating with LLM Providers](../UserGuide/LLM_Providers_Mapref.md)

