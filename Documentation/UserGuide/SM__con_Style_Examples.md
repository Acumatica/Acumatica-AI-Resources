# Wiki Style Examples {#_71ccf63b-a9d5-483f-b4ef-76055ed78919 .concept}

In Acumatica ERP, you can easily modify the styles used to display the articles in wikis and the styles used to print wiki articles.

## Definition of Wiki Help Style { .section}

```
.wiki
{
    color: black;
    background-color: white;
    font-family: Verdana, sans-serif;
    font-size-adjust: none;
    font-style: normal;
    font-variant: normal;
    font-weight: normal;
    line-height: normal;
    padding-left: 1em;
    padding-right: 1em;
    padding-top: 0.5em;
    padding-bottom: 1em;
    font-size: 9pt;
}

p
{
    line-height: 1.5em;
    margin: 0.4em 0 0.5em;
    font-size: 9pt;
}

table
{
    font-size: 9pt;
}


/*Links  */

a
{
    background: transparent none repeat scroll 0 0;
    color: #002BB8;
    text-decoration: none;
}

a:hover
{
    text-decoration: underline;
}
a.unknownlink
{
    color: #CC2200;
}

a.unknownlink:hover
{
    color: #D9671E;
    text-decoration: underline;
}
a.externallink
{
    background-image: url('../Icons/ExternalLink.gif');
    background-position: right;
    background-repeat: no-repeat;
    padding-right: 14px;
}

/*Lists*/
ol, ul
{
    line-height: 1.5em;
    list-style-image: none;
    margin: 0.3em 0 0 3em;
    padding: 0;
}

li
{
    margin-bottom: 0.1em;
}

ol.wikinumlist li.wikibullet dl.wikidefn dd.wikidefn
{
    margin: 0 0 0 0;
}

ul.wikibulletlist li.wikibullet dl.wikidefn dd.wikidefn
{
    margin: 0 0 0 0;
}


ol.wikinumlist li.wikibullet dl.wikidefn dd.wikidefn dl.wikidefn dd.wikidefn
{
    margin: 0.3em 0 0 3em;
}

ul.wikibulletlist li.wikibullet dl.wikidefn dd.wikidefn dl.wikidefn dd.wikidefn
{
    margin: 0.3em 0 0 3em;
}


/*Headers*/

.editsectionlink
{
    float: right;
    margin-top: 0.6em;
    margin-left: 0.6em;
}

h1, h2, h3, h4, h5, h6
{
    background: transparent none repeat scroll 0 0;
    border-bottom: 1px solid #AAAAAA;
    color: black;
    font-weight: normal;
    margin: 0;
    padding-bottom: 0.17em;
    padding-top: 0.5em;
}

h1.pagetitle
{
    font-size: 188%;
    line-height: 1.1em;
    margin-bottom: 0.1em;
    padding-bottom: 0;
    padding-top: 0;
}

.legend
{
    font-size: 90%;
    margin-bottom: 1.0em;
}

h1.wikiH1
{
    font-size: 150%;
    margin-bottom: 0.6em;
}

div.sH1
{
    margin-left: 2em;
    line-height: 1.5em;
}

h2.wikiH2
{
    font-size: 125%;
    font-weight: bold;
    margin-bottom: 0.3em;
}

div.sH2
{
    margin-left: 2em;
    line-height: 1.5em;
}

h3.wikiH3
{
    font-size: 100%;
    font-weight: bold;
    padding-bottom: 0em;
    border-bottom: medium none;
}

div.sH3
{
    margin-left: 0;
    line-height: 1.5em;
}

h4.wikiH4
{
    font-size: 95%;
    font-weight: bold;
    margin-bottom: 0em;
    border-bottom: medium none;
}

div.sH4
{
    margin-left: 0;
    line-height: 1.5em;
}

/*Images */
img
{
    border: none;
}

img.image
{
    border: solid 1px #CCCCCC;
}
img.format
{
    border: solid 1px;
    padding: 2px;
}

img.fileimg
{
    height: 16px;
    vertical-align: middle;
    margin-right: 5px;
}

div.imagedescription
{
    font-size: 8pt;
    font-style: italic;
    margin-top: 0.3em;
}

div.clear
{
    clear: both;
}

div.imageleft
{
    margin-left: 0px;
    margin-right: 8px;
    margin-top: 4px;
    margin-bottom: 4px;
    float: left;
    clear: left;
}

div.imageright
{
    margin-left: 8px;
    margin-right: 0px;
    margin-top: 4px;
    margin-bottom: 4px;
    float: right;
    clear: right;
}

div.imagecenter
{
    width: 98%;
    text-align: center;
}

table.imageauto
{
    border: solid 1px #CCCCCC;
    background-color: #F9F9F9;
    margin: 0.8em 0em 0.8em 0em;
    padding: 4px;
    clear: both;
}

td.imageauto
{
    background-color: #F9F9F9;
}

/*Toc */
.TocBox
{
    background-color: #F9F9F9;
    border: 1px solid #AAAAAA;
    font-size: 95%;
    padding: 5px;
    width: 100%;
}

/* Code, Pre */

code
{
    font-family: Courier New, Lucida Console, Monospace;
    background-color: #F0F0FF;
    padding-left: 0.3em;
    padding-right: 0.3em;
}

pre
{
    font-family: Courier New, Lucida Console, Monospace;
    line-height: 1.2em;
    padding: 0.4em;
    margin: 0.8em 0em 0.8em 0em;
    border: dashed 1px #CCCCCC;
    background-color: #F0F0FF;
}

.source-highlighted
{
    background-color: #F0F0FF;
}
.source-highlighted .nu
{
    color: brown;
}
.source-highlighted .kw
{
    color: blue;
}
.source-highlighted .cmt
{
    color: green;
}
.source-highlighted .sl
{
    color: brown;
}
.source-highlighted .br
{
    color: darkgreen;
}
.source-highlighted .add
{
    background: palegreen;
}
.source-highlighted .del
{
    background: pink;
}


/*Tables*/
.GrayBox
{
    border: solid 1px #CCCCCC;
    background-color: #F9F9F9;
    margin: 0.8em 0em 0.8em 0em;
    width: 99%;
    line-height: 1.5em;
}

table.GrayBox td
{
    background-color: #F9F9F9;
    padding: 0 0.6em 0 0;
}

table.GrayBox td.hintcell
{
    vertical-align: top;
    width: 24px;
    padding: 0.6em 0.6em 0.6em 0.6em;
}

table.GrayBox td.warncell
{
    vertical-align: top;
    padding: 0.6em 0.6em 0.6em 0.6em;
}

table.checklist
{
    background-color: #AAAAAA;
    border-spacing: 1px;
    line-height: 1.5em;
    empty-cells: show;
    margin: 1em 0 1em 0;
}

table.checklist th
{
    padding: 0.2em 0.4em;
    background-color: #EEEEEE;
    border: 0px solid #FFFFFF;
    color: #000000;
    font-weight: bold;
}
table.checklist td
{
    padding: 0.6em 0.6em 0.6em 0.8em;
    background-color: #FFFFFF;
    color: #000000;
    vertical-align: top;
}

table.GrayBox td
{
    background-color: #F9F9F9;
}

table#listtable
{
    background-color: #FFFFFF;
    line-height: 1.5em;
}

table.listtable th
{
    font-size: 14px;
    padding: 2px 2px 2px 6px;
    background-color: #9A9A9A;
    border: 0px solid #FFFFFF;
    color: #FFFFFF;
    font-weight: bold;
}

table.listtable td
{
    padding: 0.6em 0.6em 0.6em 0.6em;
}

table.listtable tr.oddline
{
    background-color: #F0F0F0;
}

table.listtable td.boldcol
{
    font-weight: bold;
    vertical-align: top;
} 
```

## Definition of Styles Used for Printing Wiki Articles { .section}

```
.wiki
{
    color: black;
    background-color: white;
    font-family: Verdana, sans-serif;
    font-size: 9pt;
    font-size-adjust: none;
    font-style: normal;
    font-variant: normal;
    font-weight: normal;
    line-height: normal;
    padding-left: 5px;
    padding-right: 10px;
    padding-top: 5px;
}

p
{
    line-height: 1.5em;
    margin: 0.4em 0 0.5em;
}

/*Links  */

a
{
    background: transparent none repeat scroll 0 0;
    color: #002BB8;
    text-decoration: none;
}

a:hover
{
    text-decoration: underline;
}
a.unknownlink
{
    color: #CC2200;
}

a.unknownlink:hover
{
    color: #D9671E;
    text-decoration: underline;
}
a.externallink
{
    background-image: url('../Icons/ExternalLink.gif');
    background-position: right;
    background-repeat: no-repeat;
    padding-right: 14px;
}

/*Lists*/
ol, ul
{
    line-height: 1.5em;
    list-style-image: none;
    margin: 0.3em 0 0 3em;
    padding: 0;
}

li
{
    margin-bottom: 0.1em;
}

ol.wikinumlist li.wikibullet dl.wikidefn dd.wikidefn
{
    margin: 0 0 0 0;
}

ul.wikibulletlist li.wikibullet dl.wikidefn dd.wikidefn
{
    margin: 0 0 0 0;
}


ol.wikinumlist li.wikibullet dl.wikidefn dd.wikidefn dl.wikidefn dd.wikidefn
{
    margin: 0.3em 0 0 3em;
}

ul.wikibulletlist li.wikibullet dl.wikidefn dd.wikidefn dl.wikidefn dd.wikidefn
{
    margin: 0.3em 0 0 3em;
}


/*Headers*/

.editsectionlink
{
    float: right;
    margin-top: 0.6em;
    margin-left: 0.6em;
}

h1, h2, h3, h4, h5, h6
{
    background: transparent none repeat scroll 0 0;
    border-bottom: 1px solid #AAAAAA;
    color: black;
    font-weight: normal;
    margin: 0;
    padding-bottom: 0.17em;
    padding-top: 0.5em;
}

h1.pagetitle
{
    font-size: 188%;
    line-height: 1.1em;
    margin-bottom: 0.1em;
    padding-bottom: 0;
    padding-top: 0;
}

.legend
{
    font-size: 90%;
}

h1.wikiH1
{
    font-size: 150%;
    margin-bottom: 0.6em;
}

div.sH1
{
    margin-left: 2em;
    line-height: 1.5em;
}

h2.wikiH2
{
    font-size: 125%;
    font-weight: bold;
    margin-bottom: 0.3em;
}

div.sH2
{
    margin-left: 2em;
    line-height: 1.5em;
}

h3.wikiH3
{
    font-size: 100%;
    font-weight: bold;
    padding-bottom: 0em;
    border-bottom: medium none;
}

div.sH3
{
    margin-left: 0;
    line-height: 1.5em;
}

h4.wikiH4
{
    font-size: 95%;
    font-weight: bold;
    margin-bottom: 0em;
    border-bottom: medium none;
}

div.sH4
{
    margin-left: 0;
    line-height: 1.5em;
}

/*Images */
img
{
    border: none;
}

img.image
{
    border: solid 1px #CCCCCC;
}
img.format
{
    border: solid 1px;
    padding: 2px;
}

img.fileimg
{
    height: 16px;
    vertical-align: middle;
    margin-right: 5px;
}

div.imagedescription
{
    font-size: 8pt;
    font-style: italic;
    margin-top: 0.3em;
}

div.clear
{
    clear: both;
}

div.imageleft
{
    margin-left: 0px;
    margin-right: 8px;
    margin-top: 4px;
    margin-bottom: 4px;
    float: left;
    clear: left;
}

div.imageright
{
    margin-left: 8px;
    margin-right: 0px;
    margin-top: 4px;
    margin-bottom: 4px;
    float: right;
    clear: right;
}

div.imagecenter
{
    width: 98%;
    text-align: center;
}

table.imageauto
{
    border: solid 1px #CCCCCC;
    background-color: #F9F9F9;
    margin: 0.8em 0em 0.8em 0em;
    padding: 4px;
    clear: both;
}

td.imageauto
{
    background-color: #F9F9F9;
}

/*Toc */
.TocBox
{
    background-color: #F9F9F9;
    border: 1px solid #AAAAAA;
    font-size: 95%;
    padding: 5px;
    width: 100%;
}

/* Code, Pre */

code
{
    font-family: Courier New, Lucida Console, Monospace;
    background-color: #F0F0FF;
    padding-left: 0.3em;
    padding-right: 0.3em;
}

pre
{
    font-family: Courier New, Lucida Console, Monospace;
    line-height: 1.2em;
    padding: 0.4em;
    margin: 0.8em 0em 0.8em 0em;
    border: dashed 1px #CCCCCC;
    background-color: #F0F0FF;
}

.source-highlighted
{
    background-color: #F0F0FF;
}
.source-highlighted .nu
{
    color: brown;
}
.source-highlighted .kw
{
    color: blue;
}
.source-highlighted .cmt
{
    color: green;
}
.source-highlighted .sl
{
    color: brown;
}
.source-highlighted .br
{
    color: darkgreen;
}
.source-highlighted .add
{
    background: palegreen;
}
.source-highlighted .del
{
    background: pink;
}


/*Tables*/
.GrayBox
{
    border: solid 1px #CCCCCC;
    background-color: #F9F9F9;
    margin: 0.8em 0em 0.8em 0em;
    width: 99%;
    line-height: 1.5em;
}

table.GrayBox td
{
    background-color: #F9F9F9;
    padding: 0 0.6em 0 0;
}

table.GrayBox td.hintcell
{
    vertical-align: top;
    width: 24px;
    padding: 0.6em 0.6em 0.6em 0.6em;
}

table.GrayBox td.warncell
{
    vertical-align: top;
    padding: 0.6em 0.6em 0.6em 0.6em;
}

table.checklist
{
    background-color: #AAAAAA;
    border-spacing: 1px;
    line-height: 1.5em;
    empty-cells: show;
    margin: 1em 0 1em 0;
}

table.checklist th
{
    padding: 0.2em 0.4em;
    background-color: #EEEEEE;
    border: 0px solid #FFFFFF;
    color: #000000;
    font-weight: bold;
}
table.checklist td
{
    padding: 0.6em 0.6em 0.6em 0.8em;
    background-color: #FFFFFF;
    color: #000000;
    vertical-align: top;
}

table.GrayBox td
{
    background-color: #F9F9F9;
}

table#listtable
{
    background-color: #FFFFFF;
    line-height: 1.5em;
}

table.listtable th
{
    font-size: 14px;
    padding: 2px 2px 2px 6px;
    background-color: #9A9A9A;
    border: 0px solid #FFFFFF;
    color: #FFFFFF;
    font-weight: bold;
}

table.listtable td
{
    padding: 0.6em 0.6em 0.6em 0.6em;
}

table.listtable tr.oddline
{
    background-color: #F0F0F0;
}

table.listtable td.boldcol
{
    font-weight: bold;
    vertical-align: top;
} 
```

**Parent topic:**[Managing Wikis](../UserGuide/DM__mng_Wikis.md)

