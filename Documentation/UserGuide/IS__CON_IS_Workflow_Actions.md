# Workflow Actions in Import and Export Scenarios {#_8b9187b0-5d02-4f3b-8358-eb92f6ecf0c0 .concept}

A workflow is a depiction of the ways the state of a record created on a particular Acumatica ERP form changes as a result of specific user interactions on the form and other events. A workflow action changes the state of an entity. For example, the status of an opportunity can be changed based on the actions a user has performed on this opportunity. For an Acumatica ERP form, a predefined workflow or a custom workflow can be defined in the system. For more information about workflows and workflow actions, see [Action Configuration: General Information](../DeveloperGuide/WorkflowUI_Actions_GeneralInfo.md).

To specify the particular state of a record by using an import or export scenario, you need to use workflow actions in the scenarios. In this topic, you can find information about the use of workflow actions in import and export scenarios.

**Attention:** Simple import scenarios cannot use workflow actions. For details about simple import scenarios, see [Simple Scenarios for Data Import](IS__con_Simplified_Import_Scenarios.md).

## Workflow Actions in a Mapping { .section}

To specify a workflow action in a mapping on the [Import Scenarios](SM_20_60_25.md) \(SM206025\), you click the magnifier button in the **Field or Action** column. In the Search box of the **Select - Field or Action** lookup table, which opens, you type the name of the action. This is the standard way to call actions in import and export scenarios.

Alternatively, you can type `<Action: Transition>` in the Search box and specify the type of transition that corresponds to the workflow action in the **Source Field or Value** column. With this approach, you can use a formula to specify the type of transition.

To specify a workflow action in a mapping on the [Export Scenarios](SM_20_70_25.md) \(SM207025\) form, you can use one of the following approaches:

-   Select the Summary object as the source object, and specify the action name in the **Field or Action** column. This is the standard way to call actions in export scenarios. For details, see [Actions in Import Scenarios](IS__con_Actions_in_Import_Scenarios.md).
-   Select the Summary object as the source object, select the `<Action: Transition>` action in the **Field or Action** column, and specify the type of transition that corresponds to the workflow action in the **Target Field or Value** column. With this approach, you can use a formula to specify the type of transition.

## Conditional Workflow Actions { .section}

To implement conditions in workflow actions, you use the `<Action: Transition>` action in the **Field or Action** column and a formula in the **Source Field or Value** column \(for an import scenario\).

Suppose that you want to import an invoice that has the *On Hold* status and that has multiple detail lines. Further suppose that when you create an invoice on an Acumatica ERP form, the status of this invoice is *Open*. That is, on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, the **Hold Documents on Entry** check box is cleared.

You enter the settings in the two rows on the **Mapping** tab of the [Import Scenarios](SM_20_60_25.md) \(SM206025\) form, as described in the following table.

|Field or Action|Node \(Target Object\)|Source Field or Value|
|---------------|----------------------|---------------------|
|*Status*|*Invoice Summary*|`=[Document.Status]`|
|*&lt;Action: Transition&gt;*|*Invoice Summary*|`=IIf([Document.Status]='H', '','PutOnHold')`|

To change the status of the invoice to *On Hold*, you need to invoke the *PutOnHold* action. If the invoice contains multiple detail lines, the system imports these lines one by one. If you invoke the *PutOnHold* action for the first detail line and then try to invoke this action for the second line, the system displays an error that the action is disabled \(because the invoice is already on hold\).

To continue importing the detail lines, you specify the formula \(see the table above\) to invoke the *PutOnHold* action only once for the invoice, when the status of this invoice is not yet *On Hold*. The formula makes the system check the status of the invoice, and if the status is not *On Hold*, the system changes it to *On Hold*.

## Workflow Actions with Dialog Boxes { .section}

If a workflow action displays a workflow dialog box with the parameters of the action, you can specify these parameters by using the `Transition Parameters` object as the target object in an import scenario. The parameters must be specified before the workflow action.

**Tip:** The `Transition Parameters` object is not available in export scenarios.

For example, to execute the *Accept* action on the [Leads](CR_30_10_00.md) \(CR301000\) form for a qualified lead, you enter the settings shown in the following table in the two rows on the **Mapping** tab of the [Import Scenarios](SM_20_60_25.md) \(SM206025\) form. The first row specifies the value in the **Details** dialog box, which opens when a user clicks **Accept**.

|Field or Action|Node \(Target Object\)|Source Field or Value|
|---------------|----------------------|---------------------|
|*Reason*|*Transition Parameters*|*='Qualified by Marketing'*|
|*&lt;Action: Transition&gt;*|*Lead Summary*|*='Accept'*|

**Parent topic:**[Configuring Scenario Mapping](../UserGuide/IS__mng_Scenario_Mapping.md)

