# Conditional Properties: General Information {#_4b92ada5-1251-47dd-8cab-aaa68f501680 .concept}

In the Customization Project Editor, you can configure the properties of any field or action to depend on conditions. As a result, depending on whether the condition is met, any of the following may be true of the UI element that corresponds to the field or action:

-   It may appear on the form.
-   It may be required.
-   It may be available for editing.
-   A default value may be filled in.
-   A different name may be used.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Define different kinds of conditions
-   Specify conditions for the properties of UI elements

## Applicable Scenarios { .section}

You configure conditions in the following cases:

-   You need certain elements on a form to be available if a condition is met.
-   You need to mark certain form elements as required if a condition is met.
-   You need to change the name of an element or specify its default value based on some condition.
-   You need to show at least one element on the form conditionally.

## Configuration of Conditions { .section}

In the Customization Project Editor, you can change the following properties of the field or action underlying any UI element conditionally:

-   **Hidden**: You can make the element visible or invisible.
-   **Required**: You can make the element required or optional.
-   **Disabled**: You can make the element available or unavailable for editing.
-   **Display Name**: You can specify the name of the element as it is displayed on the form.
-   **Default Value**: You can specify the default value of the corresponding element on the UI \(if the element is a box or check box\). This value will be inserted for the element when a user adds a new record if the condition is met.

    You can enter the needed value for the element or select one of the values available in the database. You can also use the Formula Editor to specify values that depend on the values of other elements, such as `Type` or `Status`.

-   List of combo box values: If the element is a combo box, you can specify the set of values that are available for selection in the box.

To make these properties dependent on a condition, you first define the condition on the [Conditions](../UserGuide/AU_20_10_10.md) page. If the UI element is a button or command \(or both\), you specify the condition as a property for the underlying action on the [Actions](../UserGuide/AU_20_10_50.md) page. If the element is a box, check box, or option button, you specify the condition as a property for the underlying field on the [Fields](../UserGuide/AU_20_10_60.md) page.

If a condition checks the value of only one field, it is referred to as a *simple condition*. If a condition checks the values of more than one field, it is referred to as a *complex condition*.

Before you start defining a condition, you need to learn the internal name of the element or elements that will be used in this condition. The names of the elements on the UI usually match their internal names defined in the source code, but sometimes the UI name of the element is different. You use the [Element Inspector](../UserGuide/AU_ElementInspector.md) to learn the internal names of elements, as described in [Form Layout: General Information](CustomizationProjects_ConfiguringFormLayout_GeneralInfo.md).

**Parent topic:**[Defining Conditional Properties](../CustomizationPlatform/CustomizationProjects_DisplayingElementsConditions_Mapref.md)

