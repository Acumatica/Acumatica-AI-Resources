# Filtering Area

A table on an Acumatica ERP form, tab, or dialog box can have a filtering area, which you can use to filter the objects in the table. The filtering area, shown below, can include table-specific filters, quick filters configured on the fly, the Search box, and buttons that you use to edit, save, and remove table filters.


## Elements of the Filtering area

The following table describes the standard elements of the filtering area. A filtering area can include some or all of those elements. If a filtering area includes table-specific filters, they are described in the form reference help topic.

<table id="_bbc1776e-25a2-4531-bb05-0870fddd41c1"><thead><tr><th>

Element

</th><th>

Icon

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**Filter List**

</td><td align="center">


</td><td>

A drop-down menu that lists your personal and shared filters.

</td></tr><tr><td>

**Filter Settings**

</td><td align="center">


</td><td>

A button you can click to display or hide the additional area where you can configure the current filter or create a new one. After you create and save a filter, it will be displayed in the Filter List drop-down menu.

 The button is highlighted if the records in the table are already filtered.

 For more information about filtering, see [Filters](IB_Filters.md).

</td></tr><tr><td>

**Search**

</td><td align="center">


</td><td>

A box in which you can type a word, a part of a word, or multiple words. As you type, the system filters the contents of the table to display only rows that contain the string you have typed in any column.

</td></tr><tr><td>

**View List**

</td><td align="center">


</td><td>

A drop-down menu that allows you to switch between data representations—for example, between table and pivot views.

</td></tr><tr><td>

Quick Filter buttons

</td><td>

 

</td><td>

Buttons that you can click to define quick filter criteria, specify the sorting order, or remove the Quick Filter button for the respective data fields. You can filter the data in the table on the fly by specifying the value of the quick filter, as described in [Filtering and Sorting Capabilities: To Create a Simple Filter](../UserGuide/GS_Filtering_and_Sorting_Process_Activity.md) in the Getting Started Guide.

 You can add multiple quick filter buttons by dragging table headers to the filtering area or by using the **Add Quick Filter** button.

</td></tr><tr><td>

**Add Quick Filter**

</td><td align="center">



</td><td>

Opens the **Add Quick Filter** dialog box, where you can add more Quick Filter buttons for data fields or open the Advanced Filter editor.

</td></tr><tr><td>

**Save Filter**

</td><td align="center">

 

</td><td>

Opens the **Save Filter As** dialog box, where you specify the name of the new filter and save the filter.

 This button is visible only when the filter you're creating has not been saved.

</td></tr><tr><td>

**...** &gt; **Save As**

</td><td align="center">


</td><td>

Opens the **Save Filter As** dialog box, where you specify a new name for the currently displayed filter and save this filter with the new name.

</td></tr><tr><td>

**...** &gt; **Open Advanced Filter**

</td><td align="center">


</td><td>

Opens the **Advanced Filter** dialog box, where you can visually and intuitively specify complex filtering criteria.

 For more information on designing advanced filters, see [Managing Advanced Filters](../UserGuide/GI_Reusable_Filters_Mapref.md).

</td></tr><tr><td>

**...** &gt; **Edit Filter**

</td><td align="center">


</td><td>

Opens the **Save Filter As** dialog box, where you can modify the properties of the existing filter.

 This button is available if the currently displayed filter was previously saved and you have the rights to edit it.

 **Tip:** You have the rights to edit a filter if it is not shared, or if it is shared and the user account you’re signed in to has access to editing shared filters—that is, to the [Filters](../UserGuide/CS_20_90_10.md) \(CS209010\) form.

</td></tr><tr><td>

**...** &gt; **Delete Filter**

</td><td align="center">


</td><td>

Removes the current saved filter.

 This button is available if the currently displayed filter was previously saved and you have the rights to delete this filter.

 **Tip:** You have the rights to edit a filter if it is not shared, or if it is shared and the user account you’re signed in to has access to editing shared filters—that is, to the [Filters](../UserGuide/CS_20_90_10.md) \(CS209010\) form.

</td></tr></tbody>
</table>

## Save Filter As Dialog Box

In the **Save Filter As** dialog box, you specify the name of the filter configured in the filtering area and save the filter. The dialog box opens when you click **Save Filter**, **Save As**, or **Edit Filter** in the filtering area

<table id="_4ca60d03-7fdd-49b5-a01f-a248d0777c14"><thead><tr><th>

Element

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**Name**

</td><td>

The name of the saved filter. This name is displayed as the name of the tab with the filtered records on the form.

</td></tr><tr><td>

**Shared**

</td><td>

A check box that you select to share the saved filter. If the check box is cleared, the filter will be visible only to you.

 This check box is available only if you have access to editing shared filters—that is, to the [Filters](../UserGuide/CS_20_90_10.md) \(CS209010\) form.

 The system displays all shared quick filters on the [Filters](../UserGuide/CS_20_90_10.md) \(CS209010\) form.

</td></tr><tr><td>

**Default**

</td><td>

A check box that you select to apply this filter each time you open the form. When editing an existing filter, you can clear this check box to apply some another filter each time you open the form.

</td></tr><tr><td colspan="2">

The dialog box has the following buttons.

</td></tr><tr><td>

**Save**

</td><td>

Closes the dialog box and creates a new saved filter. This button is displayed when you’re creating a new filter.

</td></tr><tr><td>

**Apply**

</td><td>

Closes the dialog box and applies the changes to an existing filter. This button is displayed when you’re editing an existing filter.

</td></tr><tr><td>

**Cancel**

</td><td>

Closes the dialog box without saving any changes.

</td></tr></tbody>
</table>

