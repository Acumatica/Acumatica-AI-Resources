# DAC Schema Browser {#_bad16648-2ba8-4bb7-bc24-19239d09cf81 .reference}

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

![](Images/DAC_Schema_Browser_Overview_Part1.png "Parts of the DAC Schema Browser (top of the page)")

![](Images/DAC_Schema_Browser_Overview_Part2.png "Parts of the DAC Schema Browser (bottom of the page)")

## Page Title Bar {#_65a16cc6-a98d-435c-ad1b-a4938dedc17e .section}

The page title bar contains both informational elements and links you can click to quickly navigate to the needed sections of the page. It contains the following elements.

|Element|Description|
|-------|-----------|
|DAC name|The name of the selected DAC.|
|Tags|Optional. The tags that indicate the properties of the selected DAC \(see [DAC and Field Tags](#_d36c0c10-292f-4eb7-8549-a73ce731b267)\).|
|Links to other sections|The *Definition*, *Fields*, *Incoming References*, and *Outgoing References* links. If you click any of these links, the system scrolls to the corresponding section on the page.|
|*Source Code*|A link that you can click to open the source code browser for the selected DAC.|
|*DAC Query*|A link that you can click to open a SQL query that the selected DAC executes.|
|*Source Data*|A link that you can click to open a new tab with a generic inquiry form showing all the data of the selected DAC.

 **Tip:** To open this inquiry form, you should have access to the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form.

 The columns of the generic inquiry form are displayed on the form in the following order:

 1.  The identity column of the database table
2.  The `DeletedDatabaseRecord` column if it has been added to the database table
3.  The key fields
4.  The rest of the columns in alphabetical order

|

## Search Box and the DAC Navigation Menu {#_2509b8e6-f545-45b5-9b50-9de345e339dc .section}

The left pane of the page contains a **Search** box and the DAC navigation menu.

The navigation menu has a tree structure in which DACs are listed below their namespaces. Bold type is used for the DAC whose details are being viewed on the page. Initially, all namespaces and DACs defined in the Acumatica ERP instance, including all customization projects published in the instance, are listed. However, if you have performed a search, the list includes only the DACs \(listed below their namespaces\) and namespaces that include the text string you have typed.

You use the **Search** box to locate a DAC by its name, its display name, or its namespace. You begin typing a text string, and as you type, the system narrows the list in the navigation menu based on the text you have typed. \(To view the full navigation menu again, you clear the search box.\)

## Main Information Area {#_e143fc9c-04a4-4b03-b63f-360c219351c6 .section}

In this area, you can view the following elements, which may or may not be displayed depending on the type of the selected DAC.

|Element|Description|
|-------|-----------|
|**Base DAC**|A link to the base data access class. This element appears only if the selected DAC is based on another DAC.|
|**Display Name**|The DAC name that is displayed in the error messages and on the forms where user access is managed. This name appears only if an element corresponding to the DAC is displayed on the UI of the current form.|
|**Namespace**|The namespace of the selected DAC.|
|**Primary Screens**|The list of the forms whose primary view is based on the selected DAC. This element appears only for primary DACs.

 If you have access to a listed form, its form ID is displayed as a link to the form.

|
|**Customization**|The customization projects that modify the selected DAC and the links to the customization projects. This element appears for only customized DACs.|

## Summary and Remarks Area {#_317dd0f2-c040-4cab-87bc-87e6da3b936e .section}

In this area, you can view a general description of the DAC and remarks about it, if this information has been specified in the XML comments in the code. If a DAC or its field has been added by publishing a customization project, the field description from this project is added under **Summary** as a separate paragraph, with the link to the customization project.

## List of DAC Fields {#_f8b04310-d12b-44af-84c8-0601b6a1abaa .section}

In the **Fields** table, you can view the list of all fields of the selected DAC. The fields are sorted alphabetically, except for primary keys, which are always listed at the top of the table. The table contains the following columns.

**Tip:** The elements in these columns may or may not be displayed, depending on the field type.

|Column|Description|
|------|-----------|
|**Name**|The name of the field, which is also a link that you can click to open the Field Details dialog box.

 The name may be preceded by a key icon or multiple key icons to indicate that the field is a primary key \(yellow key\), a foreign key \(black key\), or both types of keys.

|
|Tag|Optional. The type of the field \(see [DAC and Field Tags](#_d36c0c10-292f-4eb7-8549-a73ce731b267)\).|
|**Type**|The type of the field.|
|**Display Name**|The name of the field as it is displayed in Acumatica ERP.|
|**Foreign Reference**|The link to the foreign DAC if the current field is a foreign key. When you hover over the link, a tooltip with the full DAC name is displayed.|

|Element|Description|
|-------|-----------|
|Header|A header with the following elements:

 -   Field name
-   Type \(*Field*\)
-   An optional tag or multiple tags \(see [DAC and Field Tags](#_d36c0c10-292f-4eb7-8549-a73ce731b267)\)

|
|**Display Name**|The name of the field as it is displayed in Acumatica ERP.|
|**DAC**|The base DAC of the selected field.|
|**Type**|The type of the field.|
|**Foreign Reference**|The link to the foreign DAC if the current field is a foreign key.|
|**Customization**|The customization project or projects that modify the selected DAC. This element appears for only customized DACs.|
|**Summary**|A short field description, as specified in the XML comments in the code.

 For common fields that do not have XML comments specified for them, the system displays annotations.

|
|**Remarks**|Additional information about the field, as specified in the XML comments in the code.|

## Incoming References {#_78f4dba6-4d73-4a4a-af02-c8cbed268f24 .section}

In this table, you can view the incoming references, which are the DACs that reference the selected DAC.

|Column|Description|
|------|-----------|
|**Parent Key Fields**|The key field or fields of the selected DAC.|
|**Child DAC**|The name of the DAC that references the selected DAC. The name is also a link that you can click to open the page for the child DAC. When you hover over a link, a tooltip with the full DAC name is displayed.|
|**Child Key Fields**|The key field or fields that you should use to join the DACs.|

## Outgoing References {#section_r3h_jzq_rqb .section}

In the Outgoing References table, you can view a list of the outgoing references, which are the DACs that the selected DAC references.

|Column|Description|
|------|-----------|
|**Child Key Fields**|The key field or fields of the DAC.|
|**Parent DAC**|The name of the DAC that references the selected DAC. The name is also a link that you can click to open the page for the parent DAC. When you hover over a link, a tooltip with the full DAC name is displayed.|
|**Parent Key Fields**|The key field or fields that you should use to join the DACs.|

## DAC and Field Tags {#_d36c0c10-292f-4eb7-8549-a73ce731b267 .section}

On a DAC Schema Browser page, DACs and their fields can be marked with one tag or multiple tags, which are described in the following table. A tag provides additional information about the type of the DAC or field.

|Tag|Description|
|---|-----------|
|**Obsolete**|A deprecated DAC or field.|
|**Nonexistent in DB**|A DAC or field that does not exist in the database \(such as a filter DAC or its field\).|
|**Hidden**|A hidden DAC or field.|
|**Nested**|A nested DAC or field.|
|**Customized**|A DAC or field that has been added or modified through the publication of one customization project or multiple projects.|
|**Projection**|A projection view DAC.|
|**Accumulator**|A DAC with the PXAccumulator attribute.|
|**Cascade Deletion**|A field of a DAC with the PXParent attribute.|
|**User-Defined**|A user-defined field.|
|**Name-Value**|A field of the NameValuePair type that has been added through the publication of any number of customization projects.|
|**Internal**|A DAC with the [PXInternalUseOnly](https://help.acumatica.com/(W(8))/Help?ScreenId=ShowWiki&pageid=26345e50-7294-7612-cb2e-7f188980624b) attribute.

 **Important:** Do not use internal DACs in your reports, generic inquiries, or customizations.

|
|**Default Navigation**|A field with the PXSelector attribute.

 On a form, the box corresponding to this DAC is displayed as a link that you can click to open the record specified in the attribute.

|

**Parent topic:**[Customization Forms](../UserGuide/CU__CU_Form_Reference.md)

