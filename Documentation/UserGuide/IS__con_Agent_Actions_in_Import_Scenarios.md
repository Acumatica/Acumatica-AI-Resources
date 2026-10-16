# Agent Actions in Import Scenarios

If the *AI Automation* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, an import scenario can invoke an AI Automation agent action for each record that the scenario creates or updates.

You configure the agent on the [Agents](ML_20_20_00.md) \(ML202000\) form for the form whose records it processes. The system registers the agent action under an internal name that consists of `LLMAction_` followed by the agent ID.

## Agent Action in the Mapping

On the **Mapping** tab of the [Import Scenarios](SM_20_60_25.md) \(SM206025\) form, the agent action does not appear in the lookup table for the **Field or Action** column because it is registered when the target form runs. You manually enter the internal action name in angle brackets, such as `<LLMAction_LEAD-QUALIFY>`. In the **Target Object** column, you specify the container of the primary view of the target form.

## Order of Actions

For each imported record, the mapping must run the following actions in this order:

1.  The *Save* action, which creates or updates the record so that the agent has a current record to process
2.  The agent action, which reads the current record and writes its results to it
3.  The *Save* action again, which saves the values written by the agent

For all three rows, you select the **Commit** check box and select *For Each Record* in the **Execute Action** column. The **Commit** check box ensures that the commands preceding the agent action are applied before the agent runs.

## Configuration Considerations

If the import scenario maps source fields to fields that the agent writes, leave the corresponding values empty in the source data. Otherwise, the import scenario may overwrite the values written by the agent.

Each record processed by the import scenario causes a separate request to the LLM, and the import waits for each request to finish. Therefore, use a small number of records when you first test the import scenario. You can review the requests on the [AI Automation History](ML_40_00_00.md) \(ML400000\) form.

**Parent topic:**[Configuring Import Scenarios](../UserGuide/IS__mng_Configuring_Import_Scenarios.md)

