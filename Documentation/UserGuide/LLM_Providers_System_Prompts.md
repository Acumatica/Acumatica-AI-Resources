# Integration with LLM Providers: Use of System Instructions

When you use AI Automation across many business workflows, you need to keep agents consistent and aligned with your company's policies. Reusable system instructions help you centralize security, safety, and governance guidance across your agents.

In this topic, you'll learn how to create and use system instructions.

## Overview of System Instructions

You define system instructions once and make them available to prompt engineers, who can then insert and adapt the text directly in their agents. This promotes more consistent responses, supports compliance efforts, and speeds up agent creation across the system.

Suppose that you previously added general instructions—such as *Maintain a professional tone* and *Don't expose personal data*—to each agent manually. These instructions were easy to forget or to phrase inconsistently.

With reusable system instructions, you can maintain a centralized library that includes the following:

-   **Safety instructions** to help users avoid harmful or unintended outcomes
-   **Security instructions** that cover topics like access control and data confidentiality
-   **General instructions** that can be reused—such as general communication principles, roles, and the response format

This approach ensures that every new agent starts with a standard baseline, while still giving prompt engineers enough flexibility to tailor agents to specific business cases.

For agents that use tool calling, system instructions can also define rules for how the model calls tools, retrieves current-record data, and applies updates. Review the default tool-calling instructions before making an agent active.

Each new agent includes all active system instructions marked as default. These instructions can include general behavior rules and tool-calling rules.

-   Rules that the LLM must follow when calling tools to safely retrieve and update records
-   General instructions that describe the LLM's behavior

These default instructions give the LLM the rules it needs to retrieve the current record and apply updates safely. Review them before adding your own instructions, especially if the agent updates detail lines. You can leave the default instructions as is or modify them for your scenario.

You can assign the following roles for working with these instructions:

-   *Security Expert*: Creates system instructions and reviews, tests, and approves agents created by prompt engineers
-   *Prompt Engineer*: Creates agents and inserts system instructions into these agents

With these roles assigned to the appropriate users, agent preparation typically follows this process:

1.  A security expert creates and maintains system instructions on the [Agent System Instructions](ML_20_30_00.md) \(ML203000\) form.
2.  A prompt engineer uses the [Agents](ML_20_20_00.md) \(ML202000\) form to:
    -   Compose agent instructions
    -   Insert system instructions where needed
    -   Test agents by using real data
3.  The security expert reviews, tests, and approves the agents created by the prompt engineer.

## Creating System Instructions

You create system instructions on the [Agent System Instructions](ML_20_30_00.md) \(ML203000\) form, as shown below. The form includes the predefined *Execution-Rules* instructions, which are added to every new agent, and the *Data-Masking* instructions, which are added when masked fields are added to an agent.

You enter the text of a set of instructions in the **Instructions** section of the form. You then select the **Active** check box to make this set of instructions available for selection on the [Agents](ML_20_20_00.md) \(ML202000\) form. If you select the **Default** check box \(also shown below\), the system automatically adds this set of instructions to each new agent created on the [Agents](ML_20_20_00.md) form.


**Tip:** You can select the **Active** and **Default** check boxes for multiple sets of instructions. Adding new default instructions does not affect the existing agents.

If there are multiple default instructions, the system inserts all of them into the agent.

## Inserting System Instructions into Agents

As a prompt engineer, you do the following when you create and test an agent on the [Agents](ML_20_20_00.md) \(ML202000\) form.

When you add tools for a new agent, the system automatically adds default system instructions to this agent. Each instruction is shown in its own collapsible block \(Item 1 below\), so that you have enough space to describe the agent's business purpose and execution steps in the **Business Instructions** section \(Item 2\).


**Tip:** You can edit or delete the attached copy. These changes don’t affect the original system instructions.

To edit an attached instruction, you expand its block and change the text \(shown below\). The changes apply only to the copy attached to the agent.


To add other active system instructions, you click **Insert Instructions** on the **Instructions** tab of the [Agents](ML_20_20_00.md) form \(Item 1 below\). In the dialog box, you preview and select one or more instructions \(Item 2\). To remove an instruction from the agent, delete its attached copy \(Item 3\).


As a security expert, you need to test the agents that the prompt engineer has created. You do this on the [Agents](ML_20_20_00.md) form. Because system instructions are a part of the agent, you can test them only in the context of a specific task and set of data. For details on how to test and troubleshoot agents, see [Integration with LLM Providers: Testing and Troubleshooting Agents](LLM_Providers_LLM_Prompts_Testing_Troubleshooting_Concept.md).

**Parent topic:**[Integrating with LLM Providers](../UserGuide/LLM_Providers_Mapref.md)

