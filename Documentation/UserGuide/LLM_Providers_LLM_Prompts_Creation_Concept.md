# Integration with LLM Providers: Creation of Agents

Once you've connected to your LLM provider, you create agents that tell the model what to do and which tools it can call. In AI Automation, tools let the model retrieve data from the current record, update editable fields and detail lines, and use supporting data from generic inquiries.

After you activate most agents, AI Automation adds a command to the corresponding Acumatica ERP form. Users can click this command to process the current record—for example, to create product descriptions or update detail lines.

In this topic, you'll learn how to configure agent settings, add tools, connect tools to endpoints, write instructions, test agent results, and review the processing log.

## Creating an Agent

Agent creation focuses on the tools that the model can call and on the results produced by those tool calls. On the [Agents](ML_20_20_00.md) \(ML202000\) form, you define the agent, review the tools that are available for the target form, and test most agents by using a selected example record.

When you select a target form, the system automatically adds the following two tools to the **Tools** tab \(shown below\):

-   `get_current`: Retrieves the data of the current record.
-   `patch_current`: Applies updates to editable fields or detail lines of the current record.


Together, these tools let the LLM retrieve the current record and update its fields and detail lines.

The system adds detailed descriptions for the standard tools. These descriptions explain the tool arguments and valid values to the LLM. Edit a default description only if testing shows that a change is needed.

To protect sensitive data returned by the `get_current` tool, select the fields in the **Masked Fields** box. For details, see [Integration with LLM Providers: Hiding of Sensitive Data](LLM_Providers_Data_Masking.md).

**Important:** We recommend that you not remove the tools. If you need to rename a tool, use only lowercase letters and underscores; do not use spaces.

Keep in mind that an agent can update detail lines only if those lines can be edited manually on the target form. If updating or creating a line requires opening a dialog box, switching to another form, or working with read-only lines, the agent cannot update those lines.

## Connecting to the Endpoint

The endpoint controls which data the agent can use. When you select a target form, Acumatica ERP adds the tools that retrieve and update records on that form. Each tool is connected to an endpoint specified on the [Web Service Endpoints](SM_20_70_60.md) \(SM207060\) form and an entity of the target form. By default, the system uses the latest version of the *Default* endpoint and the primary entity of the selected form.

These endpoint settings also determine which fields you can insert into the agent instructions. When you click **Insert Data Field** &gt; **Field** on the **Instructions** tab, the displayed dialog box shows only the fields available through the selected endpoint. This helps you select fields that the LLM can retrieve and update.

If you need to add to your agent certain fields that aren't available through the *Default* endpoint, extend the endpoint and select the extended endpoint in the tool settings. For details, see [Custom Endpoints and Endpoint Extensions](../IntegrationDevelopmentGuide/IS__con_CB_Endpoint_Extensions.md).

**Important:** After you change an endpoint, update and save the settings of the `get_current` and `patch_current` tools in every agent that uses the endpoint. This rebuilds the tools with the current endpoint fields. Otherwise, fields added to the endpoint may not be available to the agent.

If the target form is included in the *Default* endpoint, the system populates the tool settings automatically. If the form isn't included, the system can't determine the settings on its own. You need to select the **Endpoint Name** and **Version** for both tools before tool names and field names become available in the instructions.

## Generic Inquiry Tools

You can add one or more tools of the *Generic Inquiry* type to the agent when it needs supporting data that is not available on the current record. Each *Generic Inquiry* tool retrieves data from a single published generic inquiry. To use multiple generic inquiries in the same agent, add one *Generic Inquiry* tool for each inquiry.

For each of the added tools, you specify the following settings:

-   **Tool Type**: *Generic Inquiry* \(Item 1 below\).
-   **Tool Name**: A unique name for the tool, such as `gi_sales` \(Item 2\). For tool names, use only lowercase Latin letters and underscores; do not use spaces.
-   **Tool Description**: A description that tells the LLM when to use the tool and what data it retrieves \(Item 3\). The model uses this description when deciding whether to call the tool.
-   **Generic Inquiry**: The generic inquiry that should be used as a source \(Item 4\). The lookup table includes only published generic inquiries that have a screen ID.


**Tip:** The *Generic Inquiry* tool retrieves only the data from the selected generic inquiry. It does not update the records returned by this inquiry.

## Choosing a Focused Generic Inquiry

Before adding a generic inquiry to an agent, make sure that the generic inquiry returns exactly the data the LLM needs—and no more.

On the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form, you can create a generic inquiry, copy an existing one, or use an existing one. The **Results Grid** tab defines which columns are available for agent processing. Include only the columns required for the analysis, because each additional column can increase token consumption and processing time. To exclude a column, clear the **Active** check box for it. For fields with formulas and other fields whose purpose may not be obvious, add meaningful captions to the **Caption** column, so that the LLM can better understand what each column represents.

Use the **Parameters**, **Conditions**, **Grouping**, and **Relations** tabs to narrow the returned records. Use the **Select Top _x_ records** box to limit the number of records that can be sent to the LLM. This keeps the agent focused and helps reduce token consumption.

When the agent needs totals, averages, date differences, or other calculated values, configure the generic inquiry to calculate them and return the results to the agent. The agent can then interpret the calculated values. Asking the LLM to calculate values across many returned records may produce unreliable results.

Before you can select the generic inquiry for a tool, the generic inquiry must be published and have a screen ID. If the inquiry is needed only as a data source and should not appear in search results or any menu, you can publish it without specifying a workspace or category. You can also control who can access the inquiry through access rights.

For details, see [Managing Generic Inquiries](SM__MNG_Managing_Generic_Inquiry.md), [Integration with LLM Providers: Hiding of Sensitive Data](LLM_Providers_Data_Masking.md), and [Integration with LLM Providers: Collection of Statistics](LLM_Providers_Statistics.md).

## Writing Instructions That Connect the Current Record and Inquiry Data

After adding the tools, write instructions that clearly tell the LLM when to call each tool and how to combine the returned data. Strong agent instructions should explain:

-   Which data from the current record to retrieve with the `get_current` tool
-   Which generic inquiry data to retrieve with the *Generic Inquiry* tool
-   Which fields of the current record or generic columns to use when matching records
-   What comparison, analysis, or generation the LLM should perform
-   Which fields of the current record should be updated with the `patch_current` tool

To insert a tool name, click **Insert Data Field** &gt; **Tool** on the tab toolbar of the **Instructions** tab. When you need to insert a field, click **Insert Data Field** &gt; **Field**.

New agents include default system instructions, which are sent to the LLM before the agent instructions. You can edit or delete the copies attached to the agent without changing the original system instructions. To add other active system instructions, you click **Insert Instructions**. For details, see [Integration with LLM Providers: Use of System Instructions](LLM_Providers_System_Prompts.md).

**Tip:** You can also create agents that add notes to records on the target form.

## The Expense Receipt Recognition Agent

The predefined *Expense Receipt Recognition* agent recognizes values in an expense receipt file for use in the Acumatica mobile app. The mobile workflow uses this predefined agent; another agent cannot be used in its place.

On the [Agents](ML_20_20_00.md) \(ML202000\) form, you can change the agent name and button name, its instructions and field mappings, and the settings of the `patch_current` tool. The [Expense Receipt](EP_30_10_20.md) \(EP301020\) form is used as the target form and cannot be changed. You can edit the predefined agent, but you cannot delete it.

**Important:** On the **Instructions** tab, adjust the list in the **Available Expense Items** section to match the expense items used by your company.

The agent requires an agent LLM connection whose model supports image and file processing. You test this agent by uploading a receipt file instead of selecting an example record. \(For details, see [Integration with LLM Providers: Testing and Troubleshooting Agents](LLM_Providers_LLM_Prompts_Testing_Troubleshooting_Concept.md).\) When you activate the agent, it becomes available in the mobile app and does not add a command to the target form.

If your changes do not produce the expected results, you can use the **Reset to Default** command on the Clipboard menu of the [Agents](ML_20_20_00.md) form. The command restores the predefined instruction text, agent name, and default settings, and discards your changes.

For information about using this agent in the mobile app, see [Expense Receipts: To Create an Expense Receipt by Using AI Automation](Expense_Receipts_To_Create_an_Expense_Receipt_by_Using_AI_Automation_Activity.md).

## Planning Agent Results for Business Processes

Before writing instructions for an agent that will be used in a configured business process, decide where the agent will write its result. Depending on the target form and its endpoint entity, the agent can write the result to any of the following:

-   A standard field of the target form
-   A user-defined field that has been mapped to the endpoint entity
-   An attribute of the class of the record, for a form that supports classes and attributes
-   The note of the current record, particularly for text that is too long for a field
-   An activity of a record that has activities
-   A field added by a customization project and exposed through the endpoint entity

If a business event or an workflow will evaluate the result, instruct the agent to write one value from a fixed set of values. Predictable values can be used reliably in trigger conditions and workflow conditions.

An agent works with the current record on its target form; it cannot create a new record on that form. The configured process must create the record or specify an existing record before invoking the agent.

For information about invoking agent actions from configured processes, see [Integration with LLM Providers: Use of Agent Actions](LLM_Providers_Agent_Actions_Concept.md).

**Parent topic:**[Integrating with LLM Providers](../UserGuide/LLM_Providers_Mapref.md)

