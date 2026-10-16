# Tab: General Information

A tab is a control that looks like a bookmark with a textual title, as shown in the following screenshot. A tab is usually located in a group of tabs, which is called *tab bar*. Users click tabs to navigate between multiple views within a single window.


A tab is defined by PXTabItem in the Classic UI and by the [qp-tab](https://help.acumatica.com/(W(8))/Help?ScreenId=ShowWiki&pageid=aac6d7aa-e2f9-aac3-838d-db12a2bcd4e3) that is nested in the qp-tabbar tag in the Modern UI. A tab bar is defined by PXTab in the Classic UI and by [qp-tabbar](https://help.acumatica.com/(W(8))/Help?ScreenId=ShowWiki&pageid=7660d36c-0c00-81dd-ef46-0640b84a7cb1) in the Modern UI.

## Learning Objectives

In this chapter, you will learn the following information about a tab:

-   The design guidelines for a tab, including the naming conventions and layout recommendations
-   The proper configuration of a tab for specific cases, such as conditional visibility of the tab
-   A detailed description of each property of API elements that are related to a tab

## Applicable Scenarios

You configure a tab in the following cases:

-   You want to keep a clear distinction between various sets of information, so that a user can easily switch between different contexts within the same Acumatica ERP form.
-   You need to guide a user through a step-by-step workflow and simplify complex tasks. You organize a layout with multiple tabs where each tab represents a sequential stage.

## Tab ID

An ID of a tab in HTML consists of two parts, the `tab` prefix and the semantic name. An ID of a tab bar has the `tabs` prefix and the semantic name. The semantic name describes the purpose of the element. For example, a tab that displays invoices may have the `tabInvoices` ID, and the whole tab bar that displays the settings of an sales order may have the `tabsSOOrder` ID, as the following code shows.

```
<qp-tabbar id="tabsSOOrder">
  <qp-tab id="tabInvoices">
  </qp-tab>
</qp-tabbar>
```

## UI Naming Conventions

The following table shows the UI naming conventions for tabs.

<table id="_089af7a6-2da4-42eb-9eba-f0d962e85451"><thead><tr><th>

Naming Convention

</th><th>

Example

</th></tr></thead><tbody><tr><td>

Use a noun or noun phrase.

</td><td>


</td></tr><tr><td>

Use a name that is as short as possible while maintaining clarity. That is, the tab name should clearly distinguish the tab’s content from the content of other tabs on the form.

</td><td>


</td></tr><tr><td>

For tabs that contain lists or tables with links to related records, use the plural form of the related record's name.

</td><td>


</td></tr><tr><td>

For tabs with standard content, use the following standard names:-   **General**: The core information about a record
-   **Details**: The detail lines of the record
-   **Addresses**: The addresses and contact information related to the record
-   **Financial**: The financial settings of the record
-   **Shipping**: The shipping settings of the record
-   **Mailing &amp; Printing**: The mailing and printing settings that can be used for the record, class, or functional area
-   **Taxes**: The taxes applied to the record
-   **Discounts**: The discounts applied to the record
-   **Approvals**: The history of approvals for the record
-   **Activities**: Activities related to the record

</td><td>


</td></tr></tbody>
</table>

## Recommendations for Organizing Layout

The following table shows the recommendations for organizing the layout for tabs.

<table id="_dc7a3a65-d8fd-449d-9dd6-bf565a1ae406"><thead><tr><th>

Correct

</th><th>

Incorrect

</th></tr></thead><tbody><tr><td colspan="2">

Do not create a form with one tab. Instead of a single tab, use a container with a title, such as a table with a title.

</td></tr><tr><td>


</td><td>


</td></tr></tbody>
</table>

**Parent topic:**[Tab](../DeveloperGuide/UIDevRef_Tab_Mapref.md)

