# DAC Schema Browser

The DAC Schema Browser page displays detailed information about the DAC that is selected on the page, including its relationships with other DACs. The page has a navigation pane with the names of all DACs available in the system, and you can select a DAC to view its details.

If you have the *Administrator*, *Report Designer*, or *Customizer* role, or you have access to the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form, you can open the DAC Schema Browser by doing one of the following:

-   Opening a generic inquiry on the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form and clicking the name of a DAC in the **Source Name** column on the **Data Sources** tab. This opens the DAC Schema Browser for the selected DAC.
-   Opening an Acumatica ERP form and clicking **Settings** &gt; **DAC Schema Browser** on the form title bar. This opens the DAC Schema Browser for the primary DAC of the current form, if the form has one.
-   Opening the Element Inspector for the needed element and clicking the link in the **Data Class** box. This opens the DAC Schema Browser for the selected DAC.
-   Typing *&lt;instance\_name&gt;/dacBrowser* in the address bar of the browser.
-   Clicking the **DAC Schema Browser** tile on the main Help Portal page.

The DAC Schema Browser page consists of the following parts, which are shown in the following screenshots:

1.  Search box
2.  DAC navigation menu
3.  Page title bar
4.  Main Information area
5.  Summary and Remarks area
6.  DAC fields
7.  Incoming references
8.  Outgoing references



## Page Title Bar

The page title bar contains both informational elements and links you can click to quickly navigate to the needed sections of the page. It contains the following elements.

<table id="_bddbf3cb-7898-4189-97d3-777c0afb2ba9"><thead><tr><th>

Element

</th><th>

Description

</th></tr></thead><tbody><tr><td>

DAC name

</td><td>

The name of the selected DAC.

</td></tr><tr><td>

Tags

</td><td>

Optional. The tags that indicate the properties of the selected DAC \(see [DAC and Field Tags](#_d36c0c10-292f-4eb7-8549-a73ce731b267)\).

</td></tr><tr><td>

Links to other sections

</td><td>

The *Definition*, *Fields*, *Incoming References*, and *Outgoing References* links. If you click any of these links, the system scrolls to the corresponding section on the page.

</td></tr><tr><td>

*Source Code*

</td><td>

A link that you can click to open the source code browser for the selected DAC.

</td></tr><tr><td>

*DAC Query*

</td><td>

A link that you can click to open a SQL query that the selected DAC executes.

</td></tr><tr><td>

*Source Data*

</td><td>

A link that you can click to open a new tab with a generic inquiry form showing all the data of the selected DAC.

 **Tip:** To open this inquiry form, you should have access to the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form.

 The columns of the generic inquiry form are displayed on the form in the following order:

 1.  The identity column of the database table
2.  The `DeletedDatabaseRecord` column if it has been added to the database table
3.  The key fields
4.  The rest of the columns in alphabetical order

</td></tr></tbody>
</table>

## Search Box and the DAC Navigation Menu

The left pane of the page contains a **Search** box and the DAC navigation menu.

The navigation menu has a tree structure in which DACs are listed below their namespaces. Bold type is used for the DAC whose details are being viewed on the page. Initially, all namespaces and DACs defined in the Acumatica ERP instance, including all customization projects published in the instance, are listed. However, if you have performed a search, the list includes only the DACs \(listed below their namespaces\) and namespaces that include the text string you have typed.

You use the **Search** box to locate a DAC by its name, its display name, or its namespace. You begin typing a text string, and as you type, the system narrows the list in the navigation menu based on the text you have typed. \(To view the full navigation menu again, you clear the search box.\)

## Main Information Area

In this area, you can view the following elements, which may or may not be displayed depending on the type of the selected DAC.

<table id="_9c6dd91e-1c6d-428f-ada3-e76f641ae4fa"><thead><tr><th>

Element

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**Base DAC**

</td><td>

A link to the base data access class. This element appears only if the selected DAC is based on another DAC.

</td></tr><tr><td>

**Display Name**

</td><td>

The DAC name that is displayed in the error messages and on the forms where user access is managed. This name appears only if an element corresponding to the DAC is displayed on the UI of the current form.

</td></tr><tr><td>

**Namespace**

</td><td>

The namespace of the selected DAC.

</td></tr><tr><td>

**Primary Screens**

</td><td>

The list of the forms whose primary view is based on the selected DAC. This element appears only for primary DACs.

 If you have access to a listed form, its form ID is displayed as a link to the form.

</td></tr><tr><td>

**Customization**

</td><td>

The customization projects that modify the selected DAC and the links to the customization projects. This element appears for only customized DACs.

</td></tr></tbody>
</table>

## Summary and Remarks Area

In this area, you can view a general description of the DAC and remarks about it, if this information has been specified in the XML comments in the code. If a DAC or its field has been added by publishing a customization project, the field description from this project is added under **Summary** as a separate paragraph, with the link to the customization project.

## List of DAC Fields

In the **Fields** table, you can view the list of all fields of the selected DAC. The fields are sorted alphabetically, except for primary keys, which are always listed at the top of the table. The table contains the following columns.

**Tip:** The elements in these columns may or may not be displayed, depending on the field type.

<table id="_36edfa19-5f0c-4d6d-828c-0cfe208dc2e6"><thead><tr><th>

Column

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**Name**

</td><td>

The name of the field, which is also a link that you can click to open the Field Details dialog box.

 The name may be preceded by a key icon or multiple key icons to indicate that the field is a primary key \(yellow key\), a foreign key \(black key\), or both types of keys.

</td></tr><tr><td>

Tag

</td><td>

Optional. The type of the field \(see [DAC and Field Tags](#_d36c0c10-292f-4eb7-8549-a73ce731b267)\).

</td></tr><tr><td>

**Type**

</td><td>

The type of the field.

</td></tr><tr><td>

**Display Name**

</td><td>

The name of the field as it is displayed in Acumatica ERP.

</td></tr><tr><td>

**Foreign Reference**

</td><td>

The link to the foreign DAC if the current field is a foreign key. When you hover over the link, a tooltip with the full DAC name is displayed.

</td></tr></tbody>
</table>

<table id="_8e8b0c23-9c7e-4189-b8c7-ea349699db25"><thead><tr><th>

Element

</th><th>

Description

</th></tr></thead><tbody><tr><td>

Header

</td><td>

A header with the following elements:

 -   Field name
-   Type \(*Field*\)
-   An optional tag or multiple tags \(see [DAC and Field Tags](#_d36c0c10-292f-4eb7-8549-a73ce731b267)\)

</td></tr><tr><td>

**Display Name**

</td><td>

The name of the field as it is displayed in Acumatica ERP.

</td></tr><tr><td>

**DAC**

</td><td>

The base DAC of the selected field.

</td></tr><tr><td>

**Type**

</td><td>

The type of the field.

</td></tr><tr><td>

**Foreign Reference**

</td><td>

The link to the foreign DAC if the current field is a foreign key.

</td></tr><tr><td>

**Customization**

</td><td>

The customization project or projects that modify the selected DAC. This element appears for only customized DACs.

</td></tr><tr><td>

**Summary**

</td><td>

A short field description, as specified in the XML comments in the code.

 For common fields that do not have XML comments specified for them, the system displays annotations.

</td></tr><tr><td>

**Remarks**

</td><td>

Additional information about the field, as specified in the XML comments in the code.

</td></tr></tbody>
</table>

## Incoming References

In this table, you can view the incoming references, which are the DACs that reference the selected DAC.

<table id="_c04ddb42-4fba-4eb2-b8c9-2bd44b69f55c"><thead><tr><th>

Column

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**Parent Key Fields**

</td><td>

The key field or fields of the selected DAC.

</td></tr><tr><td>

**Child DAC**

</td><td>

The name of the DAC that references the selected DAC. The name is also a link that you can click to open the page for the child DAC. When you hover over a link, a tooltip with the full DAC name is displayed.

</td></tr><tr><td>

**Child Key Fields**

</td><td>

The key field or fields that you should use to join the DACs.

</td></tr></tbody>
</table>

## Outgoing References

In the Outgoing References table, you can view a list of the outgoing references, which are the DACs that the selected DAC references.

<table id="table_t3h_jzq_rqb"><thead><tr><th>

Column

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**Child Key Fields**

</td><td>

The key field or fields of the DAC.

</td></tr><tr><td>

**Parent DAC**

</td><td>

The name of the DAC that references the selected DAC. The name is also a link that you can click to open the page for the parent DAC. When you hover over a link, a tooltip with the full DAC name is displayed.

</td></tr><tr><td>

**Parent Key Fields**

</td><td>

The key field or fields that you should use to join the DACs.

</td></tr></tbody>
</table>

## DAC and Field Tags

On a DAC Schema Browser page, DACs and their fields can be marked with one tag or multiple tags, which are described in the following table. A tag provides additional information about the type of the DAC or field.

<table id="_0b4e7c5e-5156-4c76-9ab5-34283e4b58a9"><thead><tr><th>

Tag

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**Obsolete**

</td><td>

A deprecated DAC or field.

</td></tr><tr><td>

**Nonexistent in DB**

</td><td>

A DAC or field that does not exist in the database \(such as a filter DAC or its field\).

</td></tr><tr><td>

**Hidden**

</td><td>

A hidden DAC or field.

</td></tr><tr><td>

**Nested**

</td><td>

A nested DAC or field.

</td></tr><tr><td>

**Customized**

</td><td>

A DAC or field that has been added or modified through the publication of one customization project or multiple projects.

</td></tr><tr><td>

**Projection**

</td><td>

A projection view DAC.

</td></tr><tr><td>

**Accumulator**

</td><td>

A DAC with the PXAccumulator attribute.

</td></tr><tr><td>

**Cascade Deletion**

</td><td>

A field of a DAC with the PXParent attribute.

</td></tr><tr><td>

**User-Defined**

</td><td>

A user-defined field.

</td></tr><tr><td>

**Name-Value**

</td><td>

A field of the NameValuePair type that has been added through the publication of any number of customization projects.

</td></tr><tr><td>

**Internal**

</td><td>

A DAC with the [PXInternalUseOnly](https://help.acumatica.com/(W(8))/Help?ScreenId=ShowWiki&pageid=26345e50-7294-7612-cb2e-7f188980624b) attribute.

 **Important:** Do not use internal DACs in your reports, generic inquiries, or customizations.

</td></tr><tr><td>

**Default Navigation**

</td><td>

A field with the PXSelector attribute.

 On a form, the box corresponding to this DAC is displayed as a link that you can click to open the record specified in the attribute.

</td></tr></tbody>
</table>

