# Custom Frontend Modern UI Controls: To Implement the Record Insights Panel

This activity will walk you through the process of implementing a custom frontend control.

## Story

Suppose that the Smart Fix company wants to make it easier for managers to find information on its custom data entry forms in the Modern UI. Their managers often need to quickly understand a record’s status, identify issues, and determine the next action without scanning the entire form.

You plan to address this need by implementing a reusable custom control—the Record Insights panel—that can be embedded in multiple forms. The control should display:

-   A title and status badge
-   A warning message \(if applicable\)
-   A collapsible status details section, which shows a message with additional details about the record’s status and next steps
-   A left border whose color indicates the record’s current status

This control should react to record updates and follow Modern UI development best practices, which are described in [Custom Frontend Modern UI Controls: General Information](UIDev_CustomModernUIControls_GeneralInfo.md).

In the [Custom Frontend Modern UI Controls: To Pass Data to the Record Insights Panel](UIDev_CustomModernUIControls_Activity_PassDataToControl.md) activity, you'll add this control to the Repair Work Orders \(RS301000\) form. The following screenshot shows what this control will look like on the form.


## Process Overview

You'll create a custom frontend control by performing the following steps:

1.  Creating the folder structure for the custom control
2.  Implementing the control's logic in TypeScript
3.  Defining the HTML template
4.  Adding styling for the control
5.  Including the control in a customization project

## System Preparation

Before you begin performing the steps of this activity, do the following:

1.  Prepare an Acumatica ERP instance by performing the [Test Instance for Customization: To Deploy an Instance with a Custom Form That Implements a Workflow](../StudioDeveloperGuide/CodeCustomization_PrepareInstance_Activity_DeployInstanceT240.md) prerequisite activity.
2.  In the `FrontendSources\screen\src\` folder of your instance, create the `development` folder, and within it, create the `controls` folder.

## Step 1: Creating the Folder Structure

In this step, you'll create the folder and files for the custom control as follows:

1.  In the `FrontendSources\screen\src\development\controls\` folder, create a subfolder named `record-insights-panel`.
2.  Inside this folder, create the following files:
    -   `record-insights-panel.ts`
    -   `record-insights-panel.html`
    -   `record-insights-panel.scss`

## Step 2: Implementing the Control's Logic

In this step, you'll implement the logic of the custom control. The control should expose configurable properties, manage its internal state, react to application events, and handle user interaction. The TypeScript file is where you define behavior, bindable properties, lifecycle methods, and subscriptions to framework services, as described in [Custom Frontend Modern UI Controls: General Information](UIDev_CustomModernUIControls_GeneralInfo.md).

To implement the control's logic, you do the following:

1.  In the `record-insights-panel.ts` file, add the following import directives and create a class for the custom control.

    **Tip:** The naming convention for the class name is the name of the control \(with the first letter of each word in the name capitalized and no spaces or characters between words\) followed by the `CustomElement` suffix.

    ```javascript
    import { EventAggregator } from "aurelia-event-aggregator";
    import { bindable, Disposable } from "aurelia-framework";
    import { autoinject, IScreenApiResult } from "client-controls";
    
    export class RecordInsightsPanelCustomElement {
    }
    ```

    In this code, you import the types and decorators that the control will use:

    -   `@bindable`: Is used to expose configurable properties
    -   `Disposable`: Is used to store event subscriptions so that they can later be cleaned up
    -   `EventAggregator`: Lets the control react to application-level events
    -   `@autoinject`: Is used for dependency injection
    -   `IScreenApiResult`: Provides the type of the payload received from the `screen-updated` event
2.  In the `RecordInsightsPanelCustomElement` class, define the properties that can be configured when the control is used on a form as follows.

    ```javascript
    export class RecordInsightsPanelCustomElement {
        @bindable title: string = "Record Insights Panel";
        @bindable status: string = "";
        @bindable warningMessage: string = "";
        @bindable details: string = "";
        @bindable collapsed: boolean = false;
        @bindable accent: string = "neutral";
    }
    ```

    These bindable properties make the control reusable. When the control is placed on a form, the form can pass different values to the control for its title, status, warning message, status details, button caption, and style of the left border and the status badge's text and background color.

3.  Add the fields that the control will use internally and declare the injected `EventAggregator` as follows.

    ```javascript
    export class RecordInsightsPanelCustomElement {
      ...
      screenCaption: string = "";
      lastScreenUpdate: string = "";
      hasWarning: boolean = false;
    
      @autoinject
      public eventAggregator!: EventAggregator;
      private subscriptions: Disposable[] = [];
        
    }
    ```

    In the code above, you’ve declared the following fields and properties:

    -   `screenCaption`: Stores the screen identifier that will be displayed in the control
    -   `lastScreenUpdate`: Stores the time when the control most recently received a screen update event
    -   `hasWarning`: Determines whether the warning section should be shown
    -   `eventAggregator`: Is injected so that the control can subscribe to application events
    -   `subscriptions`: Stores subscriptions that must be disposed of when the control is removed from the page
4.  Add the lifecycle methods that will initialize the control when it’s attached to the Document Object Model \(DOM\) and clean up resources when it’s detached, as shown below.

    ```javascript
    export class RecordInsightsPanelCustomElement {
      ...
      attached() {
          this.hasWarning = !!this.warningMessage?.trim();
    
          this.subscriptions.push(
              this.eventAggregator.subscribe(
                  "screen-updated",
                  (screenData: IScreenApiResult) => {
                      this.screenCaption = `Screen ${screenData.screenID}`;
                      this.lastScreenUpdate = new Date().toLocaleTimeString();
                  }
              )
          );
      }
    
      detached() {
          this.subscriptions.forEach(s => s?.dispose());
          this.subscriptions = [];
      }
    }
    ```

    In the `attached()` method in the code above, the control does the following:

    -   Determines whether the warning section should initially be displayed
    -   Subscribes to the `screen-updated` event so that it can update its screen context whenever the form changes
    In the `detached()` method, the control disposes of all subscriptions. This cleanup helps prevent unused subscriptions from consuming resources after the control is removed.

5.  Add the methods that will respond to property changes and button clicks, as shown below.

    ```javascript
    export class RecordInsightsPanelCustomElement {
      ...
      warningMessageChanged(newValue: string) {
          this.hasWarning = !!newValue?.trim();
      }
    
      toggleDetails() {
          this.collapsed = !this.collapsed;
      }
    
      dismissWarning() {
          this.warningMessage = "";
          this.hasWarning = false;
      }
    }
    ```

    In the code above, you’ve implemented the following methods to define the interactive behavior of the control:

    -   `warningMessageChanged()`: Updates the `hasWarning` flag whenever the `warningMessage` bindable property changes
    -   `toggleDetails()`: Expands or collapses the status details
    -   `dismissWarning()`: Hides the warning section
6.  Add a computed property that returns the CSS class for the selected style of the left border of the panel, as shown below.

    ```javascript
    export class RecordInsightsPanelCustomElement {
      ...
      get statusClass(): string {
          switch ((this.accent || "").toLowerCase()) {
              case "success":
                  return "accent-success";
              case "warning":
                  return "accent-warning";
              case "danger":
                  return "accent-danger";
              default:
                  return "accent-neutral";
          }
      }
    }
    ```

    The `statusClass` getter method converts the value of the `accent` property into a CSS class name. The template uses this class to apply the proper color to the panel’s left border.

7.  Add a similar computed property that returns the CSS class for the selected style of the status badge \(the visual element representing the status property\), as shown in the following code.

    ```javascript
    export class RecordInsightsPanelCustomElement {
      ...
      get badgeClass(): string {
            switch ((this.accent || "").toLowerCase()) {
                case "success":
                    return "badge-success";
                case "warning":
                    return "badge-warning";
                case "danger":
                    return "badge-danger";
                default:
                    return "badge-neutral";
            }
        }
    }
    ```

    The `badgeClass` getter method converts the value of the `accent` property into a CSS class name. The template uses this class to apply the proper colors to the text and background of the status badge.

    The complete code of the `record-insights-panel.ts` file should look as follows.

    ```javascript
    import { EventAggregator } from "aurelia-event-aggregator";
    import { bindable, Disposable } from "aurelia-framework";
    import { autoinject, IScreenApiResult } from "client-controls";
    
    export class RecordInsightsPanelCustomElement {
        @bindable title: string = "Record Insights Panel";
        @bindable status: string = "";
        @bindable warningMessage: string = "";
        @bindable details: string = "";
        @bindable collapsed: boolean = false;
        @bindable accent: string = "neutral";
    
        screenCaption: string = "";
        lastScreenUpdate: string = "";
        hasWarning: boolean = false;
    
        @autoinject
        public eventAggregator!: EventAggregator;
    
        private subscriptions: Disposable[] = [];
    
        attached() {
            this.hasWarning = !!this.warningMessage?.trim();
    
            this.subscriptions.push(
                this.eventAggregator.subscribe(
                    "screen-updated",
                    (screenData: IScreenApiResult) => {
                        this.screenCaption = `Screen ${screenData.screenID}`;
                        this.lastScreenUpdate = new Date().toLocaleTimeString();
                    }
                )
            );
        }
    
        detached() {
            this.subscriptions.forEach(s => s?.dispose());
            this.subscriptions = [];
        }
    
        warningMessageChanged(newValue: string) {
            this.hasWarning = !!newValue?.trim();
        }
    
        toggleDetails() {
            this.collapsed = !this.collapsed;
        }
    
        dismissWarning() {
            this.warningMessage = "";
            this.hasWarning = false;
        }
    
        get statusClass(): string {
            switch ((this.accent || "").toLowerCase()) {
                case "success":
                    return "accent-success";
                case "warning":
                    return "accent-warning";
                case "danger":
                    return "accent-danger";
                default:
                    return "accent-neutral";
            }
        }
    
        get badgeClass(): string {
            switch ((this.accent || "").toLowerCase()) {
                case "success":
                    return "badge-success";
                case "warning":
                    return "badge-warning";
                case "danger":
                    return "badge-danger";
                default:
                    return "badge-neutral";
            }
        }
    }
    ```


## Step 3: Defining the HTML Template

In this step, you'll define the HTML template of the custom control, which determines how the control is rendered and connects the UI to the TypeScript logic. The template binds to the properties defined in the TypeScript class and connects user interaction to the control logic.

Do the following:

1.  In the `record-insights-panel.html` file, define the template and include the SCSS file, as shown below. You'll define the contents of this file in the next step.

    ```xml
    <template>
        <require from="./record-insights-panel.scss"></require>
    </template>
    ```

2.  Add the main container of the control by adding a `section` element within the `template` tag, as shown below.

    ```xml
    <template>
        <require from="./record-insights-panel.scss"></require>
    
        <section class="record-insights-panel ${statusClass}">
        </section>
    </template>
    ```

    The `section` element is the outer wrapper of the control. Its `class` attribute includes a fixed class, `record-insights-panel`, and a dynamic class, `${statusClass}`, which is returned by the computed property in the TypeScript file.

3.  Within the `section` tag, add the header area, which will display the title, status badge, screen information, and the button to expand or collapse the details section. The following code shows these changes.

    ```xml
    <section class="record-insights-panel ${statusClass}">
            <header class="panel-header">
                <div class="panel-header-main">
                    <div class="panel-title-row">
                        <h3 class="panel-title">${title}</h3>
                        <span if.bind="status" class="status-badge ${badgeClass}">
                          ${status}
                        </span>
                    </div>
    
                    <div class="panel-subtitle">
                        <span if.bind="screenCaption">${screenCaption}</span>
                        <span if.bind="lastScreenUpdate">
                           • Updated ${lastScreenUpdate}
                        </span>
                    </div>
               </div>
    
              <qp-button
                class="toggle-button"
                caption.bind="collapsed ? 'Show Details' : 'Hide Details'"
                click.capture="toggleDetails()">
              </qp-button>
            </header>
    </section>
    ```

    **Tip:** For interactive actions inside the custom control, you can use the qp-button component \(as is done in the code above\) instead of a basic HTML `button` element so that the control follows standard Modern UI styling and behavior.

    In the code above:

    -   `${title}` displays the title passed into the control.
    -   The status badge is shown only when `status` has a value.
    -   The subtitle shows screen information that is updated in response to the `screen-updated` event.
    -   The qp-button caption changes depending on whether the panel is expanded or collapsed.
    -   The qp-button calls `toggleDetails()` when clicked.
4.  After the `header` tag, add a `div` tag that will display a warning message when one is present, as the following code shows.

    ```xml
    <section>
      <header>
        ...
      </header>
      <div if.bind="hasWarning" class="warning-box">
        <span>${warningMessage}</span>
        <qp-button
          class="dismiss-button"
          caption="Dismiss"
          click.capture="dismissWarning()">
        </qp-button>
      </div>
    </section>
    ```

    The warning section is shown only when `hasWarning` is `true`. The displayed message comes from the `warningMessage` property, and the qp-button calls `dismissWarning()` to hide the warning.

5.  After the `div` for the warning message section, add the body of the control, which will contain the status details \(see below\).

    ```xml
    <section>
      <header>
        ...
      </header>
      <div if.bind="hasWarning" class="warning-box">
        ...
      </div>
      <div if.bind="!collapsed" class="panel-body">
          <div if.bind="details" class="details-block">${details}</div>
      </div>
    </section>
    ```

    The status details will be displayed only when the collapsible section is expanded. The status details are shown only if the `details` property has a value.

    The complete code of the `record-insights-panel.html` file should look as follows.

    ```xml
    <template>
        <require from="./record-insights-panel.scss"></require>
    
        <section class="record-insights-panel ${statusClass}">
            <header class="panel-header">
                <div class="panel-header-main">
                    <div class="panel-title-row">
                        <h3 class="panel-title">${title}</h3>
                        <span if.bind="status" class="status-badge ${badgeClass}">
                           ${status}
                        </span>
                    </div>
    
                    <div class="panel-subtitle">
                        <span if.bind="screenCaption">${screenCaption}</span>
                        <span if.bind="lastScreenUpdate">
                            • Updated ${lastScreenUpdate}
                        </span>
                    </div>
                </div>
    
                <qp-button
                    class="toggle-button"
                    caption.bind="collapsed ? 'Show Details' : 'Hide Details'"
                    click.capture="toggleDetails()">
                </qp-button>
            </header>
    
            <div if.bind="hasWarning" class="warning-box">
                <span>${warningMessage}</span>
                <qp-button
                    class="dismiss-button"
                    caption="Dismiss"
                    click.capture="dismissWarning()">
                </qp-button>
            </div>
    
            <div if.bind="!collapsed" class="panel-body">
                <div if.bind="details" class="details-block">${details}</div>
            </div>
        </section>
    </template>
    ```


## Step 4: Defining the Styling

In this step, you'll define the appearance of the custom control. The SCSS file contains the styles that control the layout, spacing, and visual emphasis of the panel.

In the `record-insights-panel.scss` file, add the following code.

```css
.record-insights-panel {
    position: relative;
    box-sizing: border-box;
    border: 1px solid #d6d9de;
    border-left-width: 5px;
    border-radius: 8px;
    padding: 14px 16px;
    margin: 0 0 16px 0;
    background: #fff;
}

.record-insights-panel.accent-warning {
    border-left-color: #b26a00;
}

.record-insights-panel.accent-success {
    border-left-color: #2e8540;
}

.record-insights-panel.accent-danger {
    border-left-color: #c62828;
}

.record-insights-panel.accent-neutral {
    border-left-color: #7a869a;
}

.panel-header {
    display: flex;
    justify-content: space-between;
    align-items: flex-start;
    gap: 16px;
}

.panel-header-main {
    flex: 1 1 auto;
    min-width: 0;
}

.panel-title-row {
    display: flex;
    align-items: center;
    gap: 8px;
    margin-bottom: 6px;
}

.panel-title {
    margin: 0;
    font-size: 16px;
    font-weight: 600;
    line-height: 1.25;
}

.panel-subtitle {
    font-size: 12px;
    line-height: 1.4;
    color: #5f6b7a;
}

.status-badge {
    display: inline-block;
    padding: 2px 8px;
    border-radius: 999px;
    font-size: 12px;
    font-weight: 600;
    line-height: 1.2;
    white-space: nowrap;
}

.badge-neutral {
    background: #eef2f7;
    color: #5f6b7a;
}

.badge-success {
    background: #e6f4ea;
    color: #2e8540;
}

.badge-warning {
    background: #fff4db;
    color: #b26a00;
}

.badge-danger {
    background: #fdecea;
    color: #c62828;
}

.warning-box {
    margin-top: 12px;
    padding: 10px 12px;
    background: #fff4db;
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 12px;
}

.panel-body {
    margin-top: 12px;
}

.details-block {
    margin: 0;
    line-height: 1.5;
}

.toggle-button,
.dismiss-button {
    white-space: nowrap;
}
```

In the code above, you've used the classes as follows to define the visual structure of the control:

-   `.record-insights-panel` class: Defines the main container layout and appearance.
-   `accent-*` classes: Apply different visual states by changing the color of the panel’s left border. These classes are applied dynamically from the TypeScript code.
-   `.panel-header` class and related classes: Organize the layout of the header by using flexbox.
-   `.status-badge` class: Styles the status text as a badge. The `badge-*` classes apply different visual states by changing the text and background colors for the status badge.
-   `.warning-box` class: Highlights warning messages.
-   `.details-block`, `.toggle-button`, and `.dismiss-button` classes: Provide layout adjustments for the collapsible content and the qp-button components.

By separating the styling into this file, you ensure that the control remains reusable and visually consistent across forms.

## Step 5: Including the Control in the Customization Project

In this step, you’ll include the files you’ve created for the custom control in the *PhoneRepairShop* customization project.

Do the following:

1.  On the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form of your Acumatica ERP instance, open the *PhoneRepairShop* customization project.
2.  In the navigation pane of the Customization Project Editor, click **Modern UI Files** \(Item 1 below\). The [Modern UI Files](../UserGuide/AU_20_46_00.md) \(AU204600\) page opens.
3.  On the page toolbar, click **Add New Record** \(Item 2\).
4.  In the **Add Files** dialog box, select the files belonging to the custom control \(Item 3\) and click **Save** \(Item 4\).



**Parent topic:**[Creating Custom Frontend Controls for the Modern UI](../DeveloperGuide/UIDev_CustomModernUIControls_Mapref.md)

