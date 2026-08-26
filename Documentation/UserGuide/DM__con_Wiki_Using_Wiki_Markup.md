# Wiki Markup Reference {#_8cdcf471-10a7-4533-b343-b15613df5242 .concept}

You use wiki markup to create Acumatica Wiki articles. When you edit the text, you view the markup and can directly manipulate it. When you view the article, the markup is hidden and the text is formatted based on your specifications in the markup.

This topic describes the text and paragraph style conventions used in wiki markup.

## Text Styles { .section}

To meet specific formatting needs, you can format your text using the markup styles listed in the table below.

|Style|Type as|View as|
|-----|-------|-------|
|Bold|`'''Bold text'''`|![](Images/Using_Wiki_Markup_bold.png)|
|Italic|`''Italic text''`|![](Images/Using_Wiki_Markup_italic.png)|
|Bold and italic|`'''''Bold and italic text'''''`|![](Images/Using_Wiki_Markup_bold_and_italic.png)|
|Underlined|`__Underlined Text__`|![](Images/Using_Wiki_Markup_underline.png)|
|Strikethrough|`--Strikethrough text--`|![](Images/Using_Wiki_Markup_strikethru.png)|
|Subscript|`X<sub>2</sub>`|![](Images/Using_Wiki_Markup_sub.png)|
|Superscript|`X<sup>2</sup>`|![](Images/Using_Wiki_Markup_sup.png)|
|Fixed-width|`<tt>Enter</tt>`|![](Images/Using_Wiki_Markup_fixed_width.png)|
|Code listing or markup|\{\{Enter\}\}|![](Images/Using_Wiki_Markup_enter.png)|
|Increased font size|`<big> Big font text </big>`|![](Images/Using_Wiki_Markup_big_font.png)|
|Decreased font size|`<small> Small font text </small>`|![](Images/Using_Wiki_Markup_small_font.png)|
|Ignored wiki markup|`<nowiki>--no strikethrough--</nowiki>`|![](Images/Using_Wiki_Markup_no_strikethru.png)|
|Comment not visible in article|`<!-- Comment here-->`||

## Special Symbols { .section}

To insert a special symbols, you can use the corresponding HTML code. The following table shows the most common special symbols and their codes.

|Symbol|Code|Symbol|Code|Symbol|Code|Symbol|Code|
|------|----|------|----|------|----|------|----|
|![](Images/Using_Wiki_Markup_trademark.png)|`&trade;`|![](Images/Using_Wiki_Markup_curly_open.png)|`&#0123;`|![](Images/Using_Wiki_Markup_ang_open.png)|`&lt;`|![](Images/Using_Wiki_Markup_undersc.png)|`&#95;`|
|![](Images/Using_Wiki_Markup_copyright.png)|`&copy;`|![](Images/Using_Wiki_Markup_curly_close.png)|`&#0125;`|![](Images/Using_Wiki_Markup_ang_close.png)|`&gt;`|![](Images/Using_Wiki_Markup_pipe.png)|`&#124;`|
|![](Images/Using_Wiki_Markup_reg_trdmark.png)|`&reg;`|![](Images/Using_Wiki_Markup_sqr_open.png)|`&#91;`|![](Images/Using_Wiki_Markup_dbl_angl_open.png)|`&laquo;`|![](Images/Using_Wiki_Markup_number.png)|`&#35;`|
|![](Images/Using_Wiki_Markup_cent.png)|`&cent;`|![](Images/Using_Wiki_Markup_sqr_close.png)|`&#93;`|![](Images/Using_Wiki_Markup_dbl_angl_close.png)|`&raquo;`|![](Images/Using_Wiki_Markup_star.png)|`&#42;`|
|![](Images/Using_Wiki_Markup_euro.png)|`&euro;`|![](Images/Using_Wiki_Markup_dash.png)|`&#45;`|![](Images/Using_Wiki_Markup_lquot.png)|`&ldquo;`|![](Images/Using_Wiki_Markup_backslash.png)|`&#92;`|
|![](Images/Using_Wiki_Markup_yen.png)|`&yen;`|![](Images/Using_Wiki_Markup_ndash.png)|`&#8211;`|![](Images/Using_Wiki_Markup_rquot.png)|`&rdquo;`|![](Images/Using_Wiki_Markup_lsquo.png)|`&lsquo;`|
|![](Images/Using_Wiki_Markup_pound.png)|`&pound;`|![](Images/Using_Wiki_Markup_mdash.png)|`&#8212;`|![](Images/Using_Wiki_Markup_para.png)|`&para;`|![](Images/Using_Wiki_Markup_rsquo.png)|`&rsquo;`|

## Paragraph Styles { .section}

You can use spacing and headings to separate and organize paragraphs. Spacing between paragraphs make the text more readable, while headings provide visual cues that help users understand the structure of the article. Other styles, such as boxes and lists, make information easier to understand and remember.

To increase spacing between paragraphs when you're editing, insert two line breaks in the wiki text. Single line breaks are ignored.

The table below includes the paragraph styles you can use in wiki articles.

**Note:** All the paragraph styles listed below should be used at the beginning of the line.

|Style|Type as|View as|
|-----|-------|-------|
| |```
==First-Level 
Heading (H1)==
```

|![](Images/Using_Wiki_Markup_h1.png)|
|Second-Level Heading|```
===Second-Level 
Heading (H2)===
```

|![](Images/Using_Wiki_Markup_h2.png)|
|Third-Level Heading|```
====Third-Level 
Heading (H3)====
```

|![](Images/Using_Wiki_Markup_h3.png)|
|Fourth-Level Heading \(H4\)|```
=====Fourth-Level 
Heading (H4)=====
```

|![](Images/Using_Wiki_Markup_h4.png)|
|Solid line|```
----
```

|![](Images/Using_Wiki_Markup_line.png)|
|Indented text|```
Text
:Indented text
```

|![](Images/Using_Wiki_Markup_indent.png)|
|Bulleted List|```
*Item 1
*Item 2 
**Item 2.1
```

|![](Images/Using_Wiki_Markup_bullet_list.png)|
|Numbered List|```
#Item 1 
#Item 2
```

|![](Images/Using_Wiki_Markup_num_list.jpg)|
|Mixed List|```
#Item 1 
#*Item 1.1
#Item 2
#*Item 2.1
```

|![](Images/Using_Wiki_Markup_mixed_list.jpg)|
|Expandable Section|```
<nowiki>=^'''Section'''
This is the expandable 
section content.
^=</nowiki>
```

|![](Images/Using_Wiki_Markup_expander.jpg)|
|Text in a box|```
(((My box)))
```

|![](Images/Using_Wiki_Markup_box.jpg)|
|Note|```
((({S:Hint}A note provides 
additional information 
relevant to the process 
being described.)))
```

|![](Images/Using_Wiki_Markup_note.jpg)|
|Warning|```
((({S:Warn}A caution alerts 
the user of a possible data loss, 
breach of security, 
or other serious problems.)))
```

|![](Images/Using_Wiki_Markup_caution.jpg)|
|Code or markup text samples|![](Images/Using_Wiki_Markup_code.png)|![](Images/Using_Wiki_Markup_code_example.png)|

## Table of Contents { .section}

A table of contents helps you to quickly find information if the article is lengthy or includes many headings. You insert a table of contents, which contains links to the headings within it, by placing the `{TOC}` string in the preferred location within the wiki text.

**Parent topic:**[Managing Wikis](../UserGuide/DM__mng_Wikis.md)

