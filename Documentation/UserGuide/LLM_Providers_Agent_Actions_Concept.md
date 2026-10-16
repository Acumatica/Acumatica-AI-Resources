# Integration with LLM Providers: Use of Agent Actions

An agent can be a step in a business process whose sequence is configured in advance. The business event, import scenario, or automation workflow determines when the agent runs and what happens next. The agent reads the current record and supporting data, applies the judgment described in its instructions, and writes its result to the current record.

A typical agentic workflow has the following sequence:

1.  A data change, a schedule, a user action, an import, or another configured action starts the process.
2.  The process invokes the agent action, and the agent writes its result.
3.  A subsequent business event or workflow step evaluates the result and runs another agent, a notification, a task, or another configured action.

## Invocation of Agent Actions

When select the **Active** check box for an agent active on the [Agents](ML_20_20_00.md) \(ML202000\) form, the system adds an action to the target form. A user can invoke the action by clicking the command whose caption is specified in the **Button Name** box. The action can also be invoked by any of the following configurations:

-   A business event triggered by a record change, a schedule, or a user action on a generic inquiry form. For details, see [Business Events: General Information](SA_Using_Business_Events_GeneralInfo.md).
-   An import scenario that invokes the action for each record it creates or updates. For details. see [Agent Actions in Import Scenarios](IS__con_Agent_Actions_in_Import_Scenarios.md).
-   A workflow that makes the agent action available for a particular state, performs it automatically, or uses it to trigger a transition. For details, see [Action Configuration: General Information](../DeveloperGuide/WorkflowUI_Actions_GeneralInfo.md)

The internal name of the action consists of `LLMAction_` followed by the agent ID. Import scenarios and workflow settings use this internal name. Business events use the caption specified in the **Button Name** box.

## Agent Results in Business Processes

The process can react to a value that the agent writes to the current record. If the value will be used in a business event trigger or a workflow condition, instruct the agent to write one of a fixed set of values. For example, an agent can write one value when no further review is needed and another value when the record requires attention.

**Important:** A business event is triggered only when the monitored field value changes. If the agent writes the value that the field already contains, the event is not triggered.

## Process Design Considerations

An agent works with the current record on its target form; it cannot create a new record on that form. The configured process must create the record or specify an existing record before invoking the agent.

An agent can update editable fields and detail lines that are available through the endpoint entity, but it cannot invoke another action of the target form. Configure other form actions as separate steps of the business event, import scenario, or workflow.

When a process runs the agent for multiple records, the system starts a separate agent execution for each record. Each execution can send multiple requests to the LLM. Consider the number of records when estimating processing time and token use.

**Parent topic:**[Integrating with LLM Providers](../UserGuide/LLM_Providers_Mapref.md)

