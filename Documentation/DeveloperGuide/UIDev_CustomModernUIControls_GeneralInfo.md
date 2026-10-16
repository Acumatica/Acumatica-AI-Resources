# Custom Frontend Modern UI Controls: General Information

Although the Modern UI provides a comprehensive set of frontend controls \(see the [UI Components](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=01fb46ae-afe8-4e38-8cde-b8ffe87970dc) guide\), some scenarios require interaction patterns or visual elements that aren’t available out of the box.

In these cases, you can create a custom frontend control for the Modern UI and use it on an Acumatica ERP form.

**Attention:** To create custom controls, you must be using Acumatica ERP 2026 R1 Service Pack 1 or later.

## Applicable Scenarios

-   A required UI behavior or visualization isn’t supported by the built-in Modern UI components.
-   A form requires a composite or a highly interactive widget that can’t be built by combining existing controls.
-   You want to standardize a custom interaction pattern across multiple Acumatica ERP forms.

## Structure of a Custom Control

You place custom controls in the `FrontendSources\screen\src\development\controls\` directory of your Acumatica ERP instance.

**Tip:** You can manually create the `\development\controls\` folders in the `FrontendSources\screen\src\` directory of your instance if they aren't already created.

In the `FrontendSources\screen\src\development\controls\` directory, you need to create a separate subfolder for each control, such as `FrontendSources\screen\src\development\controls\my-custom-control`

Within the subfolder, you create:

-   A TypeScript file that defines the control's logic
-   An HTML file that defines the template—that is, the rendered structure and visual behavior—of the control
-   An optional SCSS file that defines the styling of the control

**Attention:** All the files must have the same name, and each word in the filename must be separated by a hyphen, such as `my-custom-control.ts`, `my-custom-control.html`, and `my-custom-control.scss`. This naming follows the Aurelia convention for custom elements.

This modular structure helps keep the control reusable and independent of other components.

You use custom controls on the forms that you create or customize within a customization project. When you export the customization project, any custom controls that have been included in the project are exported with it and can be published on other instances. For details about including custom controls in a customization project, see the *Including a Custom Control in a Customization Project* section.

## Implementing a Control's Logic

You implement the logic of a custom control in the TypeScript file. In this file, you define the control’s behavior, state management, and framework integration. This file contains the client-side logic that governs how the control responds to user interaction, exposes configurable properties, and communicates with the backend \(graphs and DACs\).

**Attention:** The TypeScript class name for a control must match the control’s TypeScript file name, with two modifications:

-   You must remove any hyphens and convert the name to Pascal case \(capitalize the first letter of each word and use no spaces or separators between words\).
-   You must append the `CustomElement` suffix to the class name. For example, if the file name is `my-custom-control.ts`, the corresponding class name must be `MyCustomControlCustomElement`.

The following code shows an example of the implementation of a control's logic for a simplified custom button control called `my-custom-control`.

```javascript
import { EventAggregator } from "aurelia-event-aggregator";
import { bindable, Disposable } from "aurelia-framework";
import { autoinject, IScreenApiResult } from "client-controls";

export class MyCustomControlCustomElement {
    @bindable wide: boolean;

    pushed: boolean = false;
    buttonText: string = "My Custom Control";

    @autoinject
    public eventAggregator!: EventAggregator;

    private subscriptions: Disposable[] = new Array();

    attached() {
        this.subscriptions.push(
            this.eventAggregator.subscribe(
                "screen-updated",
                (screenData: IScreenApiResult) => {
                    this.buttonText = `Custom control for ${screenData.screenID}`;
                }
            )
        );
    }

    detached() {
        this.subscriptions.forEach(s => s?.dispose());
        this.subscriptions = [];
    }

    processClick() {
        this.pushed = !this.pushed;
    }
}
```

You follow Aurelia component conventions when implementing the control. The code example above demonstrates the use of the following:

-   **Bindable properties** \(`@bindable wide`\): Allow you to pass configuration values from the HTML layout file of the form in which you'll use the custom control.
-   **Lifecycle methods** \(`attached`, `detached`\): Allow you to initialize resources when the control is added to the Document Object Model \(DOM\) and clean up resources when it’s removed from the DOM
-   **Dependency injection** \(`@autoinject`\): Allows you to access Aurelia framework's services
-   **Event subscription**: Allows the control to react to application-level events

These mechanisms allow the control to integrate with the Modern UI lifecycle and behave consistently with built-in UI components during rendering, state updates, and cleanup.

**Tip:** In the preceding code example, the control updates its caption when the `screen-updated` event is raised and toggles its visual state when the control is clicked. The business logic remains in the backend; the control is responsible only for presentation and interaction.

## Defining a Control's HTML Template

You define the rendered structure and visual behavior of a control in the HTML template. The template binds to properties defined in the TypeScript class and connects user interactions to component logic.

The following example shows the template for `my-custom-control` control, whose logic was implemented in the preceding section.

```xml
<template>
  <require from="./my-custom-control.scss"></require>
   <button type="button"
        class="my-custom-control ${wide ? 'wide' : ''} ${pushed ? 'pushed' : ''}"
        click.capture="processClick($event)">
        ${buttonText}
    </button>
</template>
```

**Tip:** For interactive actions inside the custom control, you can use the qp-button component instead of a basic HTML `button` element so that the control follows Modern UI styling and behavior. For a full list of Modern UI components and instructions on how to use them, see the [UI Component Guide](UIDevRef_Guide.md).

In this template, you:

-   Load styles defined for the custom control
-   Apply CSS classes dynamically based on the control’s state
-   Bind user interaction to a method in the TypeScript class
-   Display content that reflects the current state of the control

This declarative structure ensures that presentation logic remains clearly separated from behavioral logic while still enabling reactive UI updates.

## Defining a Control's Styling

Optionally, you can define control-specific styling in an SCSS file. The following code shows the styling for `my-custom-control` control.

```css
.my-custom-control {
    background-color: yellow;
    color: #000;
    border-radius: 5px;
    border-width: 0;
    width: 200px;
    height: 100px;
}

.my-custom-control.wide {
    width: 400px;
}

.my-custom-control.pushed {
    background-color: orange;
}
```

## Including a Custom Control in a Customization Project

To include a custom control in a customization project, you perform the following general steps:

1.  Add the folder containing the files of your custom control in the `FrontendSources\screen\src\development\controls\` folder of your instance \(if you haven't already added it there\).
2.  On the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form of your Acumatica ERP instance, open the customization project in which you want to include the custom control.
3.  In the navigation pane of the Customization Project Editor, click **Modern UI Files** \(Item 1 below\). The [Modern UI Files](../UserGuide/AU_20_46_00.md) \(AU204600\) page opens.
4.  On the page toolbar, click **Add New Record** \(Item 2\).
5.  In the **Add Files** dialog box, select the files belonging to the custom control \(Item 3\) and click **Save** \(Item 4\).



## Using a Custom Control on a Form

To use a custom control on a form, you perform the following steps:

1.  In the HTML file that defines the layout of the form, add a `require` directive in the beginning of the file after the opening &lt;template&gt; tag. The following code shows an example that uses `my-custom-control`, which was created in the preceding sections.

    ```xml
    <template>
      <require from="controls/my-custom-control/my-custom-control"></require>
      ...
    <template>
    ```

    This directive loads the custom control so that it can be used on the form.

2.  Insert the control in the appropriate location in the HTML file. The following code shows an example.

    ```xml
    <qp-template>
      ...
      <my-custom-control wide.bind="true"></my-custom-control>
    <qp-template>
    ```

    **Tip:** While the above approach of adding a custom control to a form's original HTML code works, we recommend that you instead create an HTML extension of the form and add the custom control in this extension. This approach follows best practices because this way, you don't directly modify the original HTML code of the form. For details, see Step 4 in the [Custom Frontend Modern UI Controls: To Pass Data to the Record Insights Panel](UIDev_CustomModernUIControls_Activity_PassDataToControl.md) activity.

3.  Publish your customization project.

After you register the control in the form’s HTML layout file, the framework initializes it, binds it to form data, processes its events, and disposes of it, just as it does for built-in components.

## Best Practices for Custom Controls

When you’re creating custom controls, you should follow these best practices:

-   Keep business logic in the backend \(graphs and DACs\).
-   Use dependency injection to access the Aurelia framework's services.
-   Dispose of subscriptions in lifecycle cleanup methods.
-   Expose only the necessary properties through `@bindable`.
-   Ensure that the control remains reusable and loosely coupled.

By following these best practices, you extend the Modern UI in a structured and maintainable way.

**Parent topic:**[Creating Custom Frontend Controls for the Modern UI](../DeveloperGuide/UIDev_CustomModernUIControls_Mapref.md)

