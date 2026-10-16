# Formatting Toolbar

Formatting is available on Acumatica ERP forms in which the details area or tab has a text area with a rich text editor. In the text area, you can add detailed information about some record or text to be used in some other way \(for example, in a message or an email\). The formatting toolbar has buttons you can use to edit text, change the typographical treatment of the text, and format it. You can also click buttons to add files and insert images.

The formatting toolbar is located above the text area \(see the screenshot below\) and may include standard and form-specific buttons.


You use the standard buttons on the formatting toolbar to write and edit text, use the clipboard, and format the text in the text area.

## Standard Formatting Toolbar Buttons

The following table lists the standard buttons that a formatting toolbar might include.

<table id="table_rth_k5g_l3"><thead><tr><th>

Button

</th><th>

Icon

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**Style**

</td><td align="center">


</td><td>

Applies the selected style to the text. The following styles are available: *Paragraph*, *Header1*, *Header2*, *Header3*, *Header4*, *Header5*, *Header6*, *Preformatted*, and *Quote*.

</td></tr><tr><td>

**Font**

</td><td align="center">


</td><td>

Applies the selected font to the text.

</td></tr><tr><td>

**Font Size**

</td><td align="center">


</td><td>

Applies the selected font size to the text.

</td></tr><tr><td>

**Bold**

</td><td align="center">


</td><td>

Marks the selected text in bold style.

</td></tr><tr><td>

**Italic**

</td><td align="center">


</td><td>

Marks the selected text in italic style.

</td></tr><tr><td>

**Underline**

</td><td align="center">


</td><td>

Marks the selected text as underlined.

</td></tr><tr><td>

**Strike Through**

</td><td align="center">


</td><td>

Marks the selected text as strike through.

</td></tr><tr><td>

**Font Color**

</td><td align="center">


</td><td>

Changes the color of the selected text to the color you click.

</td></tr><tr><td>

**Text Highlight Color**

</td><td align="center">


</td><td>

Highlights the selected text in the color you click.

</td></tr><tr><td>

**Align Text**

</td><td align="center">


</td><td>

Aligns the selected text as follows:

 -   **Align Text Left**: Aligns the text to the left with a ragged right margin.
-   **Center**: Centers the text.
-   **Align Text Right**: Aligns the text to the right with a ragged left margin.
-   **Justify**: Aligns the text evenly between the left and right margins.

</td></tr><tr><td>

**Ordered List**

</td><td align="center">


</td><td>

Starts an ordered list or converts the selected text to an ordered list.

</td></tr><tr><td>

**Unordered List**

</td><td align="center">


</td><td>

Starts an unordered list or converts the selected text to an unordered list.

</td></tr><tr><td>

**Increase Indent**

</td><td align="center">


</td><td>

Moves the paragraph farther away from the margin.

</td></tr><tr><td>

**Decrease Indent**

</td><td align="center">


</td><td>

Moves the paragraph closer to the margin.

</td></tr><tr><td>

**Insert Link**

</td><td align="center">


</td><td>

Opens the **Insert Link** dialog box, which you can use to insert any links into the text area. The dialog box is described in the [Insert Link Dialog Box](#insert_link) section of this topic.

</td></tr><tr><td>

**Insert Image**

</td><td align="center">


</td><td>

Opens the **Insert Image** dialog box, which you can use to insert an image into the text area. The dialog box is described in the [Insert Image Dialog Box](#insert_image) section of this topic.

</td></tr><tr><td>

**Insert Table**

</td><td align="center">


</td><td>

Opens a dialog box in which you specify the number of rows and columns for the table.

</td></tr><tr><td>

**Tables**

</td><td align="center">

 

</td><td>

Displays a toolbar that contains the following buttons:-   **Insert Row Before**: Inserts the row before the selected one.
-   **Insert Row After**: Inserts the row after the selected one.
-   **Insert Column Before**: Inserts the column before the selected one.
-   **Insert Column After**: Inserts the column after the selected one.
-   **Move Row Up**: Moves the selected row up.
-   **Move Row Down**: Moves the selected row down.
-   **Delete Row**: Deletes the selected row.
-   **Move Column Left**: Moves the selected column to the left.
-   **Move Column Right**: Moves the selected column to the right.
-   **Delete Column**: Deletes the selected column.
-   **Delete Table**: Deletes the selected table.

This toolbar appears if you select a table in the working area.

</td></tr><tr><td>

**Select Macro to Insert**

</td><td align="center">


</td><td>

Provides the following options:

 -   *Table of Contents*: Inserts a table of contents, which contains all headers of the current document.
-   *File list*: Inserts a control that lists all the files attached to the article.
-   *Warning*: Inserts a warning box.
-   *Info*: Inserts an info box.
-   *Code*: Opens the dialog box for inserting code.
-   *Subarticles*: Inserts a table of contents, which contains all the subarticles linked to the current article.

</td></tr><tr><td>

**Insert Data Field**

</td><td align="center">


</td><td>

Provides the following options:

 -   **Data Field**: Displays a list of available data fields for selection.

This button can be used to insert a field value in a notification related to a business event..

-   **Previous Data Field**: Displays a list of data fields whose previous values can be inserted in the text area.

This button can be used to insert a previous field value in a notification related to a business event. The system will insert the placeholder with the `PREV` function, for example `PREV((CRCase_status))`.


 For details on the business events, see [Using Business Events](../UserGuide/SA_Using_Business_Events_Mapref.md).

</td></tr><tr><td>

**Language**

</td><td align="center">


</td><td>

Gives you the ability to select a language, and then enter the text for this language. The box displays a list of available languages. In Acumatica ERP instances with multiple active locales, the system automatically determines the default language by a translation that a user specified in the text area—for example, a description of a stock item on the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form—by using the algorithm described in [The Order of the Languages in the Box](UIG__CON_TranslationBoxes.md#_a8f85339-7996-465f-b4be-43ee1b833cb7).

 You can select another language in this box. If there’s a translation of the text for the selected language in the Acumatica ERP database, it will be displayed in the text area. If there’s no translation of the text for a required language in the Acumatica ERP database, you can enter it in the text area.

 This box appears only if both of the following are true:

 -   Multiple locales are specified on the [System Locales](../UserGuide/SM_20_05_50.md) \(SM200550\) form.
-   One language is selected as the default one in the **Select Languages for Multilingual Text Boxes** dialog box on this form.

</td></tr><tr><td>

**Delete**

</td><td align="center">


</td><td>

Deletes the text specified in the text area for the language selected in the language box.

 This box appears only if both of the following are true:

 -   Multiple locales are specified on the [System Locales](../UserGuide/SM_20_05_50.md) \(SM200550\) form.
-   One language is selected as the default one in the **Select Languages for Multilingual Text Boxes** dialog box on this form.

</td></tr><tr><td>

**View**

</td><td align="center">


</td><td>

Displays a list of view modes. The following options are available:

 -   **Visual**: Opens the editor view, where you can input and format the text.
-   **HTML**: Opens the editor in HTML view, where you can input multiple HTML elements.

**Tip:** We recommend that you use the **Visual** view to avoid misprints in HTML tags.

-   **Plain text**: Opens the plain text view, in which all the formatting is removed. You can edit the text without formatting.
-   **Preview**: Opens the preview mode, where you can view the content as it will look.

</td></tr><tr><td>

**Undo**

</td><td align="center">


</td><td>

Cancels the most recent changes you have made.

</td></tr><tr><td>

**Redo**

</td><td align="center">


</td><td>

Restores the changes you canceled by clicking **Undo**.

</td></tr></tbody>
</table>

## Insert Link Dialog Box

You use this dialog box to insert links to forms, wiki articles, and external websites into the text area. You click one of the tabs in the dialog box and then use the elements on the tab to add a link to the selected object into your text.

**Tip:** When you edit an existing link, the name of the dialog box changes to **Edit Link**.

The tabs of this dialog box are documented below. Some common elements are shown at the bottom of all the tabs; you can find the descriptions of these elements after the descriptions of the tabs and their tab-specific elements.

|Element|Description|
|-------|-----------|
|**URL Address**|The URL of the website.|
|**Text**|The text of the link that will be displayed in the working area.|

<table id="_d08985bb-7424-491e-8ab7-c5f6aa648711"><thead><tr><th>

Element

</th><th>

Description

</th></tr></thead><tbody><tr><td colspan="2">

The top part of the tab has the following elements.

</td></tr><tr><td>

Search

</td><td>

A box where you enter the search string.

</td></tr><tr><td colspan="2">

The working area of the tab has a table that initially displays all wiki articles available in the system. If you enter a search string, the table shows all articles whose titles contain the search string.

 The table toolbar has only standard buttons.

 The table contains the following columns.

</td></tr><tr><td>

**Name**

</td><td>

The title of a topic in the online Help or an article in a custom wiki.

</td></tr><tr><td>

**Module**

</td><td>

The title of the chapter \(in the online Help or an article in a custom wiki\) in which the topic or article is located.

</td></tr><tr><td>

**Created At**

</td><td>

The date when the topic or article was created.

</td></tr></tbody>
</table>

<table id="_209aab32-f7a5-4128-8525-d1cb78bbae1e"><thead><tr><th>

Element

</th><th>

Description

</th></tr></thead><tbody><tr><td colspan="2">

The top part of the tab has the following elements.

</td></tr><tr><td>

Search

</td><td>

A box in which you enter the search string.

</td></tr><tr><td colspan="2">

The working area of the tab has a table that initially displays all screens \(forms\) available in the system. If you enter a search string, the table shows all screens whose names contain the search string.

 The table toolbar has only standard buttons.

 The table contains the following columns.

</td></tr><tr><td>

**Title**

</td><td>

The name of the form.

</td></tr><tr><td>

**Screen ID**

</td><td>

The ID of the form.

</td></tr><tr><td>

**Module**

</td><td>

The name of the functional area of the system to which the form belongs.

</td></tr></tbody>
</table>

<table id="table_cpf_vdk_wvb"><thead><tr><th>

Buttons

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**Unlink**

</td><td>

Removes the link.

 This button appears if you edit the added link.

</td></tr><tr><td>

**Wrap Around**

</td><td>

Wraps the selected text.

 This button appears only if you’ve selected some text in the working area.

</td></tr><tr><td>

**Insert**

</td><td>

Inserts the link into the text area and closes the dialog box.

 **Tip:** This button changes to **Apply** when you edit an existing link.

</td></tr><tr><td>

**Cancel**

</td><td>

Cancels the adding of the link and closes the dialog box.

</td></tr></tbody>
</table>

## Insert Image Dialog Box

You use this dialog box for inserting images into the text area. The dialog box contains tabs that you can use to insert an image from any of the following sources: your device, the system, or the web. After going to the tab that represents the source of the image, you use the elements on the tab to select and insert the needed images.

The tabs of this dialog box are documented below. Some common elements are shown at the bottom of all the tabs; you can find the descriptions of these elements after the descriptions of the tabs and their tab-specific elements.

<table id="_a4b35158-92a4-4fbf-9fc5-6872e16271ef"><thead><tr><th>

Element

</th><th>

Description

</th></tr></thead><tbody><tr><td colspan="2">

The top part of the tab has the following elements.

</td></tr><tr><td>

Upload Files

</td><td>

A box in which you select the image file for uploading.

</td></tr><tr><td colspan="2">

The working area of the tab shows all files that have been uploaded.

</td></tr></tbody>
</table>

<table id="_a5ce4ccc-cdd8-4032-b1cb-924896c85344"><thead><tr><th>

Element

</th><th>

Description

</th></tr></thead><tbody><tr><td colspan="2">

The top part of the tab has the following elements.

</td></tr><tr><td>

Search

</td><td>

An untitled box in which you enter a search string.

</td></tr><tr><td colspan="2">

The working area of the tab shows all images that are stored in the system and that match the search string you specified.

</td></tr></tbody>
</table>

<table id="_3007c6c7-9973-4b76-ab14-00a60c94c27e"><thead><tr><th>

Element

</th><th>

Description

</th></tr></thead><tbody><tr><td colspan="2">

The top part of the tab has the following elements.

</td></tr><tr><td>

**URL Address**

</td><td>

The URL to the image.

</td></tr><tr><td colspan="2">

The tab has a working area that shows the image after you have entered its URL.

</td></tr></tbody>
</table>

|Element|Description|
|-------|-----------|
|**Insert**|Inserts the image into the text area and closes the dialog box.|
|**Cancel**|Cancels the adding of the image and closes the dialog box.|

**Tip:** In the Acumatica ERP instance, all emails that have embedded images encoded by the `base64` algorithm are processed in the following way \(without affecting the display of the email\):

1.  The `base64` attachment is extracted from the email.
2.  The extracted attachment is saved as a file.
3.  The file is attached to the email.
4.  The link to the attached file is inserted into the email body.

