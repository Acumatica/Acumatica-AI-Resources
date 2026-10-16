# Integration with LLM Providers: Testing and Troubleshooting Agents

After you configure an agent, test it before you make it available to users. Testing helps you answer two questions: *What changed?* and *why did it change that way?* For most agents, you select an example record for testing. For the predefined *Expense Receipt Recognition* agent, you upload a receipt image or PDF file instead.

During a test that uses an example record, the system does not change data in the database for the selected record. Keep in mind that tokens are consumed during each test. Also, select only records that can be updated manually on the related target form.

## **Agents That Use the get\_current and patch\_current Tools**

For an agent that uses the standard `get_current` and `patch_current` tools, the **Result** tab summarizes the model's intended updates and shows changed values. These updates can include elements of the Summary area and detail lines.

Use the **Result** tab to understand what the model *intended* to update and what actually happened:

-   The execution summary \(Item 1 below\) shows what entity was updated.
-   The before-and-after differences \(Item 2\) show which fields the model changed and how.
-   If detail lines have been updated, the system organizes changes into sections under **Details** \(Item 3\) so that you can review them line by line.
-   If a field was empty before the update, the before value is blank.
-   If some requested updates failed because of errors, the affected parts are shown without the after value, so that you can tell something did not work as expected.
-   If certain records have been created as part of the update, they have the *Added* label.


When reviewing results, confirm that the agent updated the right scope \(records or columns of the detail line\). You can also spot-check the detail lines; for example, expand the **Details** section for the lines that should match certain conditions. If the **Result** tab shows no meaningful differences, refine the instructions, such as the filter or the fields to update.

The **Processing Log** tab provides the execution details, including the data sent, tools called, timing, and token consumption. You can use this information to troubleshoot and refine your instructions.

**Tip:** If the **Result** tab is empty but the system displays a message that processing has completed successfully, check the **Processing Log** tab for the reason.

The **Processing Log** tab breaks execution into the following readable sections, which are also shown in the screenshots below.

<table id="table_kpz_s1b_5jc"><thead><tr><th>

Section

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**Agent Processing Started**

</td><td>

The first request sent to the model, including agent instructions, tool schemas, and tool descriptions \(Item 1\).

</td></tr><tr><td>

**Tool-calling** steps

</td><td>

The tools that were called, the order of calls, and the messages that were involved \(Item 2\).

</td></tr><tr><td>

**Agent Processing Completed**

</td><td>

The entire thread with the messages from both Acumatica ERP and the LLM \(Item 3\).

</td></tr></tbody>
</table>




To make troubleshooting easier, each message box includes the Copy button, and step sections can be expanded and collapsed. Here are the steps you can take when troubleshooting:

-   If the agent didn't update any lines, go to the **Agent Processing Started** section and check whether the `patch_current` tool has sent any information to the LLM.
-   Review the tool-calling steps to see which tools were invoked, in what order, and whether the model requested the right data before attempting updates.
-   Compare the tool description or schema shown in the log with what the model requested and how the tools responded. Look for mismatches, such as incorrect filtering, missing requested data, or differences in field names. Then adjust the agent's instructions and test it again.
-   Use the timing and token details to see whether an agent is becoming too expensive to iterate on and which steps are consuming the most tokens.

## Agents That Use the Generic Inquiry Tools

Testing is especially important when an agent uses more than one data source. Here, too, you use the **Result** tab to see what the model intended to update \(see below\). For agents that use the *Generic Inquiry* tool, pay special attention to whether the model called the inquiry tool, which columns it requested, and which records the tool returned.


The **Processing Log** tab \(see the screenshots below\) shows the tool calls, call order, messages sent between Acumatica ERP and the LLM, timing, token consumption, and errors.



If the selected generic inquiry is unavailable, deleted, unpublished, or inaccessible to the user who runs the test or invokes the agent command, the system displays an error. Errors are also displayed if the agent requests a column that doesn't exist. These errors are shown to the LLM during tool calling and on the **Processing Log** tab.

Access rights affect the results in two ways:

-   If the user doesn't have access to the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form, the system displays an error when they invoke the agent command.
-   If the user has partial access to the underlying data, the LLM returns an answer based only on the data available to that user.

    For example, the user may have access to the generic inquiry form but not to all of its data sources. The answer may be incomplete, but it reflects the same data the user would see when performing the task manually.


For an agent that uses the *Generic Inquiry* tool, review the **Processing Log** tab to verify the tool input schema, the generic inquiry columns requested by the LLM, the data returned by the generic inquiry, and any errors.

For details on token statistics, see [Integration with LLM Providers: Collection of Statistics](LLM_Providers_Statistics.md).

## Testing the Agent Command

After you've tested the agent, you need to test the new command. This command is shown on the More menu of the corresponding form. You can mark the new command as a favorite to also display it as a button on the form toolbar. This change affects only your user account.

When you click the command or button, the system performs the operation described in the agent. If you aren’t satisfied with the generated results, you can:

-   Edit the affected boxes or detail lines manually
-   Review the processing log and adjust agent instructions.

**Tip:** The underlying action for the added command can be customized, as any other action of the form can. For details, see [Actions on Forms: General Information](../CustomizationPlatform/CustomizationProjects_AddingActions_GeneralInfo.md), [Action Configuration: General Information](../DeveloperGuide/WorkflowUI_Actions_GeneralInfo.md), and [Workflow Actions: General Information](../DeveloperGuide/WorkflowAPI_Actions_GeneralInfo.md).

## Testing the Expense Receipt Recognition Agent

For most agents, the test input is an example record selected from the database. For the predefined *Expense Receipt Recognition* agent, the **Example Record** box is replaced with an upload area. You can upload one PDF, JPG, or JPEG file at a time. The maximum file size is 5 MB, and no preview of the uploaded file is available.

**Important:** Make sure that the PDF, JPG, and JPEG file types have been added on the [File Upload Preferences](SM_20_25_50.md) \(SM202550\) form.

The agent LLM connection selected for the agent must use a model that supports image and file processing. If the model does not support the uploaded file, the system displays the error returned by the LLM provider.

After you run the test, the **Result** tab displays the extracted field names and values. The **Processing Log** tab displays the LLM response and processing details, which you can review when the recognition result is not as expected. Testing the agent does not create or update an expense receipt.

After you have tested the agent, select the **Active** check box and save your changes to make the agent available in the Acumatica mobile app. For information about using the agent in the mobile app, see [Expense Receipts: To Create an Expense Receipt by Using AI Automation](Expense_Receipts_To_Create_an_Expense_Receipt_by_Using_AI_Automation_Activity.md).

## Reviewing Agent Executions in Business Processes

The **Result** and **Processing Log** tabs on the [Agents](ML_20_20_00.md) \(ML202000\) form show the results of the agent tests that you start by clicking **Test Agent**. These tabs do not show later executions of the agent action by users or configured processes.

To review these executions, use the [AI Automation History](ML_40_00_00.md) \(ML400000\) form. This form shows all agent runs, including runs in which the agent did not write any values. If a business event invoked the agent, use the [Business Event History](SM_50_20_30.md) \(SM502030\) form to also review whether the event was triggered and how each subscriber was processed.

**Parent topic:**[Integrating with LLM Providers](../UserGuide/LLM_Providers_Mapref.md)

