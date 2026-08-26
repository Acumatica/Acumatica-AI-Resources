# Dialog Boxes in Import Scenarios {#_31b9ed23-1068-47b8-b9e6-42f5a29e67e7 .concept}

When you update specific fields on some forms under certain circumstances, the system displays confirmation dialog boxes: dialog boxes where you need to specify an answer \(by clicking a button\) to a question in order to proceed.

For example, when you update the **Customer Class** value on the [Customers](AR_30_30_00.md) \(AR303000\) form for an existing customer, the system displays a **Warning** dialog box with the **Yes** and **No** buttons and the following text: *Please confirm if you want to update current customer settings with the customer class defaults. Otherwise, original settings will be preserved*. You click **Yes** to proceed with changing the customer class.

## Confirmation Dialog Boxes { .section}

In the import scenario mapping, when you need to specify an answer to a question that appears in a dialog box if the data is entered manually, you use the `<Dialog Answer>` command of the Summary object. You must insert this command directly before you map the field that causes the appearance of the dialog box. For the dialog answer, you select the proper answer from the options available in the **Source Field or Value** column on the **Mapping** tab of the [Import Scenarios](SM_20_60_25.md) \(SM206025\) form. The system selects the **Commit** check box for the dialog answer command automatically.

You can use the Summary object as the target object of the dialog answer command, because the dialog answer is shared between all objects of an Acumatica ERP form. You may need to use another object as the target object of the dialog answer command if you want to overwrite the answer that is specified by the dialog answer command of the Summary object.

Below are the settings in the two rows you enter on the **Mapping** tab to update the customer class of an existing customer record. The first row contains the instruction to click **Yes** in the confirmation dialog box.

|Field or Action|Node \(Target Object\)|Source Field or Value|
|---------------|----------------------|---------------------|
|*&lt;Dialog Answer&gt;*|*Customer Summary*|*='Yes'*|
|*Customer Class*|*General Info -&gt; Financial Settings*|*CUSTOMER CLASS*|

**Parent topic:**[Configuring Scenario Mapping](../UserGuide/IS__mng_Scenario_Mapping.md)

