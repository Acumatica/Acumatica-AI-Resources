# Custom Frontend Modern UI Controls: To Use AI to Implement a Custom UI Event Handler

This activity will walk you through the process of using AI to implement a custom UI event handler for a Modern UI form.

## Story

Suppose that you've implemented the Record Insights panel on the Repair Work Orders \(RS301000\) form for the Smart Fix company. The panel is a custom control that provides a high-level summary of the repair work order and helps users quickly understand the document’s current state.

The managers of Smart Fix now want to improve the usability of the table \(grid\) on the **Repair Items** tab. They want users to quickly notice repair item rows that may require additional attention, in addition to seeing the high-level summary in the Record Insights panel.

You'll use an AI assistant to help create a custom UI event handler that changes the CSS class of a row in the table on the **Repair Items** tab. The event handler will be implemented in a TypeScript extension of the Repair Work Orders form by using the @handleEvent decorator and the [`CustomEventType.GetRowCss`](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=3577810d-417e-0518-74be-587de1c13771) event.

You'll also review the AI-generated code before using it to make sure that it follows the Modern UI event-handler pattern.

## Process Overview

You’ll use AI to implement a custom UI event handler by performing the following steps:

1.  Reviewing the UI event-handler pattern
2.  Building the prompt for the AI assistant
3.  Prompting the AI assistant to generate the event handler
4.  Reviewing the AI-generated proposal
5.  Adding the event handler in a TypeScript extension file

## System Preparation

Before you begin performing the steps of this activity, be sure you've completed the following activities:

1.  [Custom Frontend Modern UI Controls: To Implement the Record Insights Panel](UIDev_CustomModernUIControls_Activity_CreateControl.md)
2.  [Custom Frontend Modern UI Controls: To Pass Data to the Record Insights Panel](UIDev_CustomModernUIControls_Activity_PassDataToControl.md)
3.  [Custom Frontend Modern UI Controls: To Test the Record Insights Panel](UIDev_CustomModernUIControls_Activity_TestControl.md)

## Step 1: Reviewing the UI Event-Handler Pattern

In this step, you'll review the Modern UI event-handler pattern that you'll ask the AI assistant to use.

In the Modern UI, you can handle UI events in frontend code to make runtime changes that aren't possible through built-in UI functionality. For example, you can use UI event handlers to change the CSS of a specific table row or cell, change the availability of a UI element, or calculate a value that’s displayed only on a form.

To implement a UI event handler, you use the [@handleEvent](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=74bcaf87-062e-0b68-05f7-222e51751a27) decorator. This decorator marks a method as a handler for a runtime event. The event type is specified by using a value from the [`CustomEventType`](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=3577810d-417e-0518-74be-587de1c13771) enum.

For example, the following code shows the general pattern for changing the CSS class of a row in a table.

```javascript
@handleEvent(CustomEventType.GetRowCss, { view: "Received" })
getReceivedRowCss(args: RowCssHandlerArgs<ReceiptSplitsForReceive>): string {
    // Return the CSS class name for the row or undefined if no class is needed.
}
```

The GetRowCss event lets frontend code return a CSS class name for a table row. If the event handler returns a class name, that class is applied to the row. If the handler returns `undefined`, no custom CSS class is applied.

In the remaining steps of this activity, you'll use AI to generate an event handler based on this pattern.

## Step 2: Building the Prompt for AI

In this step, you'll incrementally build the prompt that you'll send to the AI assistant. For better results, you’ll include the following in the prompt:

-   The implementation context
-   The business requirement
-   The specific event-handler pattern to use
-   The code or field names the AI assistant should use
-   The constraints that the generated code must follow
-   The expected format of the AI assistant’s response

Do the following:

1.  At the beginning of the prompt, explain which form you are customizing \(shown below\).

    ```
    We are working on an Acumatica Modern UI customization for the Repair Work Orders
    form (RS301000).
    
    The form has a RepairItems table (grid) that displays repair items for the current 
    repair work order.
    ```

    This implementation context tells the AI assistant which form and table are customizing.

2.  Describe what the AI assistant needs to do \(the business requirement\).

    ```
    Create an event handler that highlights repair item rows that require attention.
    
    For this activity, a row should be highlighted when the repair item price is
    greater than 15.
    ```

    The business requirement clearly defines the behavior that the AI assistant should implement—in this case, the criteria for a row to be highlighted.

3.  Tell the AI assistant which Modern UI event-handler pattern it should use.

    ```
    Use the Modern UI event-handler pattern with the handleEvent decorator.
    
    The event handler should use:
    @handleEvent(CustomEventType.GetRowCss, { view: "RepairItems" })
    The handler should return the name of a predefined CSS class when a row should be
    highlighted and return undefined when no custom CSS class should be applied.
    ```

    This information prevents the AI assistant from proposing unrelated event mechanisms.

4.  Tell the AI assistant which view and field to inspect.

    ```
    The event handler should target the RepairItems view.
    
    The row type is RSSVWorkOrderItem.
    
    Use the BasePrice field of the row to determine whether the row should be
    highlighted.
    ```

    This text gives the AI assistant the appropriate view and field-level context it needs to generate useful code.

5.  Add constraints that the AI assistant must follow.

    ```
    Follow these constraints:
    - Use @handleEvent and CustomEventType.GetRowCss.
    - Use RowCssHandlerArgs for the handler argument.
    - Do not add backend code.
    - Return a CSS class named bold-row when the row should be highlighted.
    - Return undefined when the row should not be highlighted.
    - Include any import statements that may be required.
    - The proposed code must be added in a TS extension file of the RS301000 form. 
      This requires adding the RS301000 and RSSVWorkOrderItem imports.
    - The handler code should be added in the RS301000_PhoneRepairShop_RepairItemsEvents
      screen extension class.
    ```

    These constraints prevent the AI assistant from suggesting changes outside the scope of this activity.

6.  Tell the AI assistant how to structure its response.

    ```
    Please propose the TypeScript changes needed.
    
    In your response, include:
    1. The required imports
    2. The event handler method
    3. A short explanation of how the handler works
    4. Any assumptions or risks that should be reviewed by a developer
    ```

    These instructions make the AI output easier to review.


## Step 3: Prompting AI to Generate the Event Handler

In this step, you'll send the completed prompt to the AI assistant.

Combine the prompt snippets from Step 2 into a single prompt as follows.

```
We are working on an Acumatica Modern UI customization for the Repair Work Orders
form (RS301000).

The form has a RepairItems table (grid) that displays repair items for the current repair
work order.

Create an event handler that highlights repair item rows that require attention.

For this activity, a row should be highlighted when the repair item price is
greater than 15.

Use the Modern UI event-handler pattern with the handleEvent decorator.

The event handler should use:
@handleEvent(CustomEventType.GetRowCss, { view: "RepairItems" })

The handler should return the name of a predefined CSS class when a row should be
highlighted and return undefined when no custom CSS class should be applied.

The event handler should target the RepairItems view.

The row type is RSSVWorkOrderItem.

Use the BasePrice field of the row to determine whether the row should be
highlighted.

Follow these constraints:
- Use @handleEvent and CustomEventType.GetRowCss.
- Use RowCssHandlerArgs for the handler argument.
- Do not add backend code.
- Return a CSS class named bold-row when the row should be highlighted.
- Return undefined when the row should not be highlighted.
- Include any import statements that may be required.
- The proposed code must be added in a TS extension file of the RS301000 form. 
  This requires adding the RS301000 and RSSVWorkOrderItem imports.
- The handler code should be added in the RS301000_PhoneRepairShop_RepairItemsEvents
  screen extension class.

Please propose the TypeScript changes needed.

In your response, include:
1. The required imports
2. The event handler method
3. A short explanation of how the handler works
4. Any assumptions or risks that should be reviewed by a developer
```

This prompt gives the AI assistant enough context to generate a useful UI event handler while keeping the proposed changes within the supported Modern UI event-handler pattern. The prompt also helps avoid the following common issues in AI-generated code in the context of our activity:

-   Adding unnecessary backend code
-   Returning a hard-coded style instead of a CSS class name

## Step 4: Reviewing the AI-Generated Code

In this step, you'll review the AI-generated code before applying any changes.

Do the following:

1.  Read the AI assistant’s response.
2.  Compare the generated code with the Modern UI event-handler pattern.
3.  Use the following checklist to review the proposed code:

    -   The proposal uses the `@handleEvent` decorator.
    -   The event type is `CustomEventType.GetRowCss`.
    -   The handler targets the `RepairItems` view.
    -   The handler uses `RowCssHandlerArgs`.
    -   The handler inspects the current row through the event arguments, using `args?.selector?.row` to get the current row.
    -   The handler returns `bold-row` when the row should be highlighted.
    -   The handler returns `undefined` when the row should not be highlighted.
    -   The proposal doesn't add backend code.
    -   The proposal includes or identifies the required imports.
    -   The proposal adds the code to the specified screen extension class.
    You should treat AI-generated code as a draft that requires review before you add it to the project.


## Step 5: Adding the Event Handler to the TypeScript Extension File

In this step, you'll add the approved custom UI event handler to a TypeScript extension file for the Repair Work Orders \(RS301000\) form. The original TypeScript or backend code of the form shouldn't need to be changed.

Do the following:

1.  In the `FrontendSources\screen\src\development\screens\RS\RS301000\extensions` folder of your instance, create a file named `RS301000_PhoneRepairShop_RepairItemsEvents.ts`.
2.  Add the following code to the file.

    ```javascript
    import {
      CustomEventType,
      handleEvent,
      RowCssHandlerArgs,
    } from "client-controls";
    
    import {
      RS301000,
      RSSVWorkOrderItem
    } from "src/customizationScreens/Company/screens/RS/RS301000/RS301000";
    
    export interface RS301000_PhoneRepairShop_RepairItemsEvents
      extends RS301000 {}
    
    export class RS301000_PhoneRepairShop_RepairItemsEvents {
      @handleEvent(CustomEventType.GetRowCss, { view: "RepairItems" as never})
       // "as never" works around a TypeScript inference issue with the decorator.
      // Runtime value is still "RepairItems".
        getRepairItemsRowCss(args: RowCssHandlerArgs<RSSVWorkOrderItem>): string {
            const item = args?.selector?.row;
            if (item != null && item.BasePrice.value > 15) {
                return "bold-row";
            }
            return undefined;
        }
    }
    ```

    In the code above, you’ve defined a TypeScript extension of the Repair Work Orders form. The `@handleEvent(...)` decorator marks the `getRepairItemsRowCss()` method as a handler for the `GetRowCss` event of the `RepairItems` view. The handler retrieves the current row from the event arguments. If the row has a `BasePrice` value greater than `15`, the handler returns the `bold-row` CSS class. Otherwise, it returns `undefined`, so no custom CSS class is applied.

    **Tip:** The `bold-row` CSS class is already defined in the `FrontendSources\screen\static\custom.scss` file of your instance. You can find the names of the available CSS classes in this file. You can also define your own classes in a CSS file for your form, such as in a file called `RS301000.css` for the Repair Work Orders form.

3.  Add the TypeScript extension file to the customization project by doing the following:
    1.  On the Customization Projects \(SM204505\) form, open the *PhoneRepairShop* customization project.
    2.  In the navigation pane of the Customization Project Editor, click **Modern UI Files**.
    3.  On the toolbar of the [Modern UI Files](../UserGuide/AU_20_46_00.md) page, click **Add New Record**.
    4.  In the **Add Files** dialog box, select the `RS301000_PhoneRepairShop_RepairItemsEvents.ts` file and click **Save**.
4.  Publish the customization project.

**Parent topic:**[Creating Custom Frontend Controls for the Modern UI](../DeveloperGuide/UIDev_CustomModernUIControls_Mapref.md)

