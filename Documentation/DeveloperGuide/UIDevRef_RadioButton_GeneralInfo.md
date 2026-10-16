# Radio Button: General Information

A radio button is a small circle that a user can click to turn on or turn off an action, as shown in the following screenshot. Radio buttons are generally organized in groups in which a user is permitted to select only one of the radio buttons.


A group of radio buttons is defined by PXGroupBox with nested PXRadioButton elements in the Classic UI. In the Modern UI, you define a group of radio buttons by using the field tag with the control type specified in TypeScript or explicitly by using the qp-radio control.

## Learning Objectives

In this chapter, you will learn the following about radio buttons:

-   The design guidelines for radio buttons, including the naming conventions and layout recommendations
-   The proper configuration of radio buttons for specific cases, such as including an additional box next to a radio button option

## Applicable Scenarios

You configure radio buttons when a user needs to select one of the buttons from a set of mutually exclusive options and you want all options to be visible at once.

## UI Naming Conventions

The following table shows the UI naming conventions for radio buttons.

<table id="_089af7a6-2da4-42eb-9eba-f0d962e85451"><thead><tr><th>

Naming Convention

</th><th>

Example

</th></tr></thead><tbody><tr><td>

Use either of the following phrases as the names of a group of radio buttons:

 -   Noun phrases.

Use noun phrases if they satisfy the context—the name that precedes the group of radio buttons they follow and the meaning they are intended to convey.

-   Adverbs or prepositional phrases.

Use adverbs or prepositional phrases when the radio buttons should tell a user when or under what circumstances something should happen. Usually these radio buttons follow the verb phrase used as the name that precedes the group of radio buttons.


 The radio button names should be parallel with one another.

</td><td>


</td></tr></tbody>
</table>

## Recommendations for Organizing the Layout

The following table shows the recommendations for organizing the layout for radio buttons.

<table id="_dc7a3a65-d8fd-449d-9dd6-bf565a1ae406"><thead><tr><th>

Correct

</th><th>

Incorrect

</th></tr></thead><tbody><tr><td colspan="2">

If there are more than two radio buttons, list them vertically. Do not arrange radio buttons in multiple columns if there are more than two of them.

</td></tr><tr><td>


</td><td>


</td></tr><tr><td colspan="2">

If the area where you are going to place the control has enough space, the control is used often \(such as in a wizard or a dialog box\), and the list of options contains no more than five options, use radio buttons instead of a combo box to avoid a user spending extra time on opening the option list in the combo box, scanning the list, and selecting an option.

</td></tr><tr><td>


</td><td>


</td></tr></tbody>
</table>

**Parent topic:**[Radio Button \(Option Button\)](../DeveloperGuide/UIDevRef_RadioButton_Mapref.md)

