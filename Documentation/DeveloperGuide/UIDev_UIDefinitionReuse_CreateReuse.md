# Reusing of UI Definitions: Creation of a Reusable UI Definition {#_600bd1a0-08bd-41ec-9fcf-a1d295a5e12c .concept}

To create a reusable definition. you need to do the following:

1.  Define the TypeScript file with view classes and an optional screen class.
2.  Define the layout of the reusable component in the HTML template.

The sections below describe how to create reusable definitions depending on whether you’re reusing an entire screen or only specific components.

## Defining the Reusable Definition for a Whole Screen { .section}

To define a reusable UI definition based on a whole screen:

1.  In a TypeScript file, declare an `abstract` class that extends the PXScreen class, as shown below.

    ```language-javascript
    export abstract class BarcodeProcessingScreen extends PXScreen {
    }
    ```

2.  In the abstract class, define the views and logic that will be reused, as the following example shows.

    ```language-javascript
    import { ScanInfo, ScanLogs } from "./views";
    
    export abstract class BarcodeProcessingScreen extends PXScreen {
        @viewInfo({ containerName: "Scan Information" })
        Info = createSingle(ScanInfo);
     
        @viewInfo({ containerName: "Scan Logs" })
        Logs = createCollection(ScanLogs);
     
        @handleEvent(CustomEventType.GetRowCss, { view: 'Logs' })
        getLogsRowCss(args: RowCssHandlerArgs) {
            if (args?.selector?.row?.MessageType.value === 'ERR') {
                return 'excessedLine startedLine';
            }
            else if (args?.selector?.row?.MessageType.value === 'WRN') {
                return 'startedLine';
            }
     
            return undefined;
        }
    }
    ```

3.  If you need to create view classes, define them as usual. The following code shows the definition of the view class that’s used in the previous code example.

    ```
    export class ScanInfo extends PXView {
    	Mode: PXFieldState<PXFieldOptions.Disabled>;
    	Message: PXFieldState<PXFieldOptions.Disabled>;
    	MessageSoundFile: PXFieldState<PXFieldOptions.Disabled>;
    	Instructions: PXFieldState<PXFieldOptions.Disabled>;
    	Prompt: PXFieldState<PXFieldOptions.Disabled>;
    }
    ```


For details about inserting the reusable UI definition of a whole screen, see [Use of the Whole UI Definition of a Form](UIDev_UIDefinitionReuse_GeneralInfo.md#section_mtk_lsq_qgc).

## Defining the Reusable Definition for Part of a Screen { .section}

To define a reusable definition that contains independent components, such as a dialog box or a fieldset, without a screen class:

1.  Define the view classes for the controls that are displayed in the reusable component.

    ``` {#codeblock_yfx_nsq_qgc}
    export class ChangeIDParameters extends PXView {
    	@fieldConfig({controlType: "qp-mask-editor"})
    	CD: PXFieldState;
    }
    ```

2.  If needed, define an abstract class and initialize the view there.

    ``` {#codeblock_zfx_nsq_qgc}
    export abstract class ChangeIDBase {
    	@viewInfo({ containerName: "Specify New ID" })
    	ChangeIDDialog = createSingle(ChangeIDParameters);
    }
    ```

    **Note:** You don’t need to define the abstract class and initialize the view there if you’re providing a view as a parameter. The fields in the uninitialized view should be identical to the fields in the actual view provided as a parameter.


For details about inserting the reusable UI definition that defines part of a screen, see [Use of a Reusable UI Definition That Defines Part of a Form](UIDev_UIDefinitionReuse_GeneralInfo.md#section_syr_lsq_qgc).

## Defining the HTML Template { .section}

In the HTML file with the same name as the TypeScript file, you define the reusable HTML code, as shown in the following example.

```language-xml
<template>
	<require from="screens/barcodeProcessing/styles.css"></require>

	<qp-template id="HeaderView_formHeader" name="7-10-7" wg-container 
	    class="equal-height">
		<qp-fieldset id="main" view.bind="HeaderView" slot="A">
			<field name="Barcode"
				control-type="qp-barcode-input"
				config-sound-control.bind="Info.MessageSoundFile"
				config-submit-command.bind="Scan">
			</field>
		</qp-fieldset>

		<qp-fieldset id="secondary" view.bind="HeaderView" slot="B" 
		    class="no-label">
			<field name="Message" config-rows.bind="3"></field>
		</qp-fieldset>

		<qp-fieldset id="third" view.bind="HeaderView" slot="C" 
                 class="no-label">
			<field name="ProcessingSucceeded"
				config.bind="{
					label: '',
					renderStyle: 'button',
					checkImages: { normal: 'main@Success' },
					uncheckImages: { normal: 'main@Fail' }
				}"
				config-class.bind="'ProcessingStatusIcon'">
			</field>
		</qp-fieldset>

		<qp-fieldset id="info" view.bind="Info">
			<field name="MessageSoundFile" show.bind="false"></field>
		</qp-fieldset>
	</qp-template>

	<qp-tabbar id="mainTab">
		<qp-tab id="tabLogs" caption="Scan Log">
			<qp-grid id="gridLogs" wg-container="grid4" view.bind="Logs">
			</qp-grid>
		</qp-tab>
	</qp-tabbar>
</template>
```

This code implements a Summary area with three columns and a tab bar with a single tab.

You can also define the layout in the nested template tag and later insert it by using the ref attribute—for example, inside a qp-tab tag. In this case, don’t use hyphens in the template ID because TypeScript will try to parse it as a mathematical statement. Instead of a hyphen, use an underscore, as shown in the following code.

```
<template>
  <template id="content_Approval">
  ...
  </template>
<template>
```

Then you can reuse the template, as shown below.

```
<qp-tab id="tab-Approval" caption="Approval" ref="content_Approval"></qp-tab>
```

**Note:** You can define the parameters of a reusable UI definition in the qp-include-parameters tag. For details, see [Reusing of UI Definitions: Reusable UI Definitions with Parameters](UIDev_UIDefinitionReuse_Params.md).

For details about adjusting the HTML template of a reusable UI definition, see [Adjusting of the Reusable UI Definition](UIDev_UIDefinitionReuse_GeneralInfo.md#section_kpt_wsq_qgc).

**Parent topic:**[Reusing a UI Definition](../DeveloperGuide/UIDev_UIDefinitionReuse_Mapref.md)

