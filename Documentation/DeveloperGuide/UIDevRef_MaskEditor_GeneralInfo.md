# Mask Editor: General Information

The mask editor control represents a text box with an input mask.

A mask editor is defined by PXMaskEdit in the Classic UI. In the Modern UI, you define a mask editor by using the field tag with the control type specified in TypeScript or explicitly by using the [qp-mask-editor](https://help.acumatica.com/(W(1))/Help?ScreenId=ShowWiki&pageid=9c53af8a-8482-f47c-67a3-38f734076d6f) control.

## Learning Objectives

In this chapter, you will learn the following about the mask editor:

-   The common usages of the mask editor
-   The proper configuration of the mask editor

## Applicable Scenarios

You configure the mask editor when you want to ensure that a user enters a text value correctly based on a predefined format \(mask\). For example, you might want the user to enter a postal code that consists of two letters and four numerical digits.

## Configuration of a Mask Editor

To configure a mask editor, you need to specify the control type in TypeScript as follows:

-   If the control is a text box inside a template, use the fieldConfig decorator, as shown in the following code.

    ```javascript
    @fieldConfig({controlType: "qp-mask-editor"})
    PostalCode: PXFieldState<PXFieldOptions.CommitChanges>;
    ```

-   If the control is a column in a table, use the columnConfig decorator, as shown in the following code.

    ```javascript
    @columnConfig({
      width: 200,
      editorType: "qp-mask-editor",
      editorConfig: { emptyChar: "0"} })
    StartIPAddress: PXFieldState;
    ```


**Tip:** You do not need to specify the control type as `"qp-mask-editor"` if the mask is applied as a part of the selector control.

**Parent topic:**[Mask Editor](../DeveloperGuide/UIDevRef_MaskEditor_Mapref.md)

