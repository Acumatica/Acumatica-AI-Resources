# Modification of Inquiry Results: General Information {#_b0903394-3fed-4c7f-a55b-e8a740bb39d2 .concept}

A generic inquiry has a table \(also referred to as a *results grid*\) that displays the inquiry results. To modify the results of an existing inquiry, you use the **Results Grid** tab of the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form. On this tab, you define which data fields the system should display in the inquiry results \(that is, which columns will appear in the results grid\).

## Applicable Scenarios { .section}

-   You’ve found an existing generic inquiry whose results are similar to those you need but lack some details. You want to copy the existing generic inquiry and modify the results.
-   You are creating a generic inquiry and now need to define the inquiry results.

## Columns in Inquiry Results { .section}

You add a row to the table on the **Results Grid** tab of the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form for each column that should appear on the results grid. In the row, you select the data field whose values the system should display. On this tab, you can select data fields of the data access classes that you’ve added on the **Data Sources** tab.

Besides standard data fields, whose values are stored in the database, the lists of fields of the data access classes can include:

-   **Data fields whose values aren’t stored in the database.**

    If you use such a data field whose values aren’t stored in the database in your inquiry, this data field might return no data, depending on how this field is calculated in the source code.

-   **Data fields with the _\_Signed_ suffix.**

    These fields are copies of the corresponding fields without this suffix, with the value’s sign adjusted based on the document type. For example, if a return with replacement has only one line—an issue line of $100.00—and the *OrderTotal* field is –100.00, the *OrderTotal\_Signed* field returns 100.00.

-   **Attributes.**

    An attribute name has the `<Attribute ID>_Attributes` format. For example, suppose that a stock item has an attribute with the *INGREDIENT* ID, which is defined on the [Attributes](CS_20_50_00.md) \(CS205000\) form. To add this attribute to the generic inquiry results, you select the *INGREDIENT\_Attributes* field.

-   **User-defined fields.**

    A user-defined field name has the `Attribute<Attribute ID>` format. For example, suppose that a sales order has the **Interest** user-defined field, which corresponds to the *INTEREST* attribute. To include this user-defined field in the inquiry results, you select the *AttributeINTEREST* field.


## Column Visibility { .section}

You hide or reveal the columns shown on a generic inquiry form by using the **Visible** check box on the **Results Grid** tab of the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form:

-   The check box is selected by default when you add a new row on this tab. This means that the corresponding column is displayed in the results grid when a user opens the form for the first time.
-   If this check box is cleared, the column isn’t visible initially, but a user can make it visible by using the Column Configuration dialog box of the table on the inquiry form.

## Default Navigation {#section_otk_mbc_qrb .section}

For any column of the results grid of the generic inquiry form, you can turn on or turn off the default navigation—that is, the user's ability to click a link to navigate to the field’s default form. You do this by using the **Default Navigation** check box on the **Results Grid** tab of the [Generic Inquiry](../Shared/../UserGuide/SM_20_80_00.md) \(SM208000\) form.

**Attention:** Default navigation is available only for fields that have a default form specified in the source code. For example, for a row with a field that holds the reference number of an AR invoice, the default form is [Invoices and Memos](../Shared/../UserGuide/AR_30_10_00.md) \(AR301000\).

With the **Default Navigation** check box selected, values of these fields are shown as links in the inquiry results. When a user clicks such a link, the default form is opened in a pop-up window.

When you add a new row to the table on the **Results Grid** tab, the check box is selected by default.

## Use of Columns in Quick Searches { .section}

You can also use the **Use in Quick Search** check box, which is hidden by default, on the **Results Grid** tab of the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form. By selecting or clearing this check box, you determine which columns of the generic inquiry form are used when users perform quick searches in the form’s filtering area.

When you add a row on this tab, the check box is cleared by default, indicating that the system will ignore the values of the column while searching through the generic inquiry data. If the check box is selected, the system will search for the search string in the column’s values. As a user types in the Search box, then, the system filters the contents of the table to display only rows that contain the search string in any column used in the quick search.

You might use these check boxes, for example, to set up the system to search in only columns that hold information about the customer identifier, customer name, and document description. By using only the columns with this information, you avoid possible matches in other columns and give users the most relevant search results.

## Column Captions { .section}

You can change the default caption to be used on the generic inquiry form for any column. To do this, on the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form, you type the needed name in the **Caption** column of the corresponding row of the **Results Grid** tab. \(By default, this column is hidden.\)

## Quick Filters { .section}

You determine which columns are used as quick filters by default by selecting or clearing the **Quick Filter** check box, which is hidden by default, on the **Results Grid** tab of the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form. With this check box selected, the system adds a quick filter for the column to the filtering area of the resulting generic inquiry form.

## Column Width { .section}

If needed, you can specify the exact width of a column in pixels in the **Width \(px\)** column of the corresponding row of the **Results Grid** tab of the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form. If you don’t specify the width of a column, the system calculates the value automatically.

**Parent topic:**[Modifying Inquiry Results](../UserGuide/GI_Modifying_Inquiry_Results_Mapref.md)

