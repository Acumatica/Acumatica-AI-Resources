# Wiki Markup Reference

You use wiki markup to create Acumatica Wiki articles. When you edit the text, you view the markup and can directly manipulate it. When you view the article, the markup is hidden and the text is formatted based on your specifications in the markup.

This topic describes the text and paragraph style conventions used in wiki markup.

## Text Styles

To meet specific formatting needs, you can format your text using the markup styles listed in the table below.

|Style|Type as|View as|
|-----|-------|-------|
|Comment not visible in article|`<!-- Comment here-->`||

## Special Symbols

To insert a special symbols, you can use the corresponding HTML code. The following table shows the most common special symbols and their codes.

|Symbol|Code|Symbol|Code|Symbol|Code|Symbol|Code|
|------|----|------|----|------|----|------|----|

## Paragraph Styles

You can use spacing and headings to separate and organize paragraphs. Spacing between paragraphs make the text more readable, while headings provide visual cues that help users understand the structure of the article. Other styles, such as boxes and lists, make information easier to understand and remember.

To increase spacing between paragraphs when you're editing, insert two line breaks in the wiki text. Single line breaks are ignored.

The table below includes the paragraph styles you can use in wiki articles.

**Note:** All the paragraph styles listed below should be used at the beginning of the line.

<table><thead><tr><th>

Style

</th><th>

Type as

</th><th>

View as

</th></tr></thead><tbody><tr><td>

 

</td><td>

```
==First-Level 
Heading (H1)==
```

</td><td>


</td></tr><tr><td>

Second-Level Heading

</td><td>

```
===Second-Level 
Heading (H2)===
```

</td><td>


</td></tr><tr><td>

Third-Level Heading

</td><td>

```
====Third-Level 
Heading (H3)====
```

</td><td>


</td></tr><tr><td>

Fourth-Level Heading \(H4\)

</td><td>

```
=====Fourth-Level 
Heading (H4)=====
```

</td><td>


</td></tr><tr><td>

Solid line

</td><td>

```
----
```

</td><td>


</td></tr><tr><td>

Indented text

</td><td>

```
Text
:Indented text
```

</td><td>


</td></tr><tr><td>

Bulleted List

</td><td>

```
*Item 1
*Item 2 
**Item 2.1
```

</td><td>


</td></tr><tr><td>

Numbered List

</td><td>

```
#Item 1 
#Item 2
```

</td><td>


</td></tr><tr><td>

Mixed List

</td><td>

```
#Item 1 
#*Item 1.1
#Item 2
#*Item 2.1
```

</td><td>


</td></tr><tr><td>

Expandable Section

</td><td>

```
<nowiki>=^'''Section'''
This is the expandable 
section content.
^=</nowiki>
```

</td><td>


</td></tr><tr><td>

Text in a box

</td><td>

```
(((My box)))
```

</td><td>


</td></tr><tr><td>

Note

</td><td>

```
((({S:Hint}A note provides 
additional information 
relevant to the process 
being described.)))
```

</td><td>


</td></tr><tr><td>

Warning

</td><td>

```
((({S:Warn}A caution alerts 
the user of a possible data loss, 
breach of security, 
or other serious problems.)))
```

</td><td>


</td></tr><tr><td>

Code or markup text samples

</td><td>


</td><td>


</td></tr></tbody>
</table>

## Table of Contents

A table of contents helps you to quickly find information if the article is lengthy or includes many headings. You insert a table of contents, which contains links to the headings within it, by placing the `{TOC}` string in the preferred location within the wiki text.

**Parent topic:**[Managing Wikis](../UserGuide/DM__mng_Wikis.md)

