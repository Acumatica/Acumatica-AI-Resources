# Label: General Information {#_ae3520fb-ce64-463c-9bf8-e00b7fb398d7 .concept}

A label is a text that precedes a field value. You can specify a field to occupy the width of a label. Any tag can be used as a label, including `qp-label`.

## Learning Objectives { .section}

In this chapter, you will learn the following about a label:

-   The design guidelines for the label, including the naming conventions and layout recommendations
-   The proper configuration of a label for specific cases, such as adding a single label for multiple controls

## Applicable Scenarios { .section}

You configure a label in the following cases:

-   You need to add a label for multiple UI controls located in a single line.
-   You need to add explanatory text \(at least one sentence\) before a UI element such as a table

## Label ID { .section}

An ID of a label in HTML consists of two parts, the `label` prefix and the semantic name separated by a hyphen. The semantic name repeats or summarizes the label text. For example, if a label contains a sentence and precedes a table on the **Billing** tab of a form, it may have the `label-Billing` ID, as the following code shows.

```
<qp-label id="label-Billing" caption="..."/>
```

## UI Naming Conventions { .section}

For labels that precede one or multiple UI elements, you use the naming conventions for this type of element.

For labels that contain a whole sentence, use general rules of the language.

**Parent topic:**[Label](../DeveloperGuide/UIDevRef_Label_Mapref.md)

