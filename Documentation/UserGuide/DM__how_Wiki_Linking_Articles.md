# To Add a Link {#_0b5561b7-5bda-4623-9bf6-6af08f49298a .task}

You can create links to places in the current article, to other articles in the same wiki, and to external websites. These links help users quickly access additional information they might need.

## To Navigate Within an Article { .section}

With a lengthy article, you might want to give users the ability to quickly navigate within the article. To do this, you first insert anchors to mark the beginnings of sections and other positions in the article to which you want to redirect users. You then insert anchor links, which users can click to easily navigate to the defined anchors.

To define an anchor, do the following:

1.  Open the article.
2.  On the wiki toolbar, click **Edit Current Article** to open the article in the Wiki Editor form.
3.  Click the place within the article where you want to create the anchor.
4.  Add the anchor by using the following general syntax:

    ```
    [Anchor|#*AnchorID*]
    ```

    where *AnchorID* is the unique identifier you define for the anchor within the article. It can include any combination of numbers and uppercase and lowercase letters. For example, you can use sequential numbers or abbreviated versions of section names as IDs.


You can create as many anchors as you like in the article, but each *Anchor ID* must be unique.

After you have added the anchor, you can insert as many links to the anchor as you need. To insert an anchor link, do the following:

1.  With the article still open in the Wiki Editor form, click the place within the article where you want to add the anchor link.
2.  Add the anchor link by using the following syntax:

    ```
    [#*AnchorID*|*LinkText*]
    ```

    where *AnchorID* is the identifier that you defined for the anchor, and *LinkText* is the text to be displayed as the link. The user clicks this link to navigate to the anchor.


For example, to enable users to return to the top of the article from a place within the article, create an anchor at the top of an article by adding the following syntax at the beginning of the article:

```
[Anchor|#Top]
```

Then add the following syntax to the article in the place where you want to create the link to the top of the article:

```
[#Top|Return to the top]
```

Now, each time users click the `Return to the top` link, they navigate to the top of the article.

## To Add Links to Articles and Websites { .section}

You use wiki links to give users the ability to quickly access other articles within the Acumatica ERP instance.

To add a link to another article, do the following:

1.  Open the article to which you want to add the link.
2.  Open the article for editing. Do one of the following:
    -   On the wiki toolbar, click **Edit Current Article** to open the entire article in the Wiki Editor form.
    -   Click **Edit** to the right of the section to which you want to add the link.
3.  On the formatting toolbar, click **Link**. This opens the **Wiki Link Editor** dialog box.
4.  In the **Wiki Link Editor** dialog box, specify the link parameters:
    -   To configure a link to another article, do the following:
        1.  In the Link Type box under the **Wiki text** box, select **Article**.
        2.  In the box to the right of the Link Type box, select the article you want to add a link to.
        3.  Optional: In the **Caption** box, type the text of the link, which the user will click to navigate to the article.
    -   To configure a link to an external web site, do the following:
        1.  In the Link Type box under the **Wiki text** box, select **URL**.
        2.  In the box to the right of the Link Type box, type or paste the URL of the external website.
        3.  In the **Caption** box, type the text of the link.
5.  Click anywhere in the **Wiki text** box to update the link, and then copy the link.
6.  Click **OK** to close the dialog box.
7.  Click the position in the text where you want the link to be, and then paste the link.
8.  In the formatting toolbar, click **Save**.

    **Tip:** If you opened the article in the Wiki Editor form, alternatively, you can click **Save** in the Wiki Editor form toolbar to save your changes and exit the editing mode.

9.  Check the link displayed in the article by clicking the link text.

In Acumatica Wiki, you use the following basic format for a link:

```
[ArticleID|LinkText]
```

where *ArticleID* is the identifier of the article, and *LinkText* is the text of the link. The user clicks on this word or phrase to navigate to the article for which you specify the identifier.

Here are some examples of wiki links:

-   `[Glossary]`: This text is displayed as a link.
-   `[Glossary|This is a link to the Glossary]`: This link is displayed with a custom link text \([This is a link to Wiki Overview](SM__con_Wiki_Management.md); clicking the link opens the Wiki Overview article.
-   `[~/Pages/GL/GL202500.aspx|Chart of Accounts]`: This link redirects the user to a form in the General Ledger functional area of Acumatica ERP.

By using external links, you can redirect users to external websites and mail-to links. Here are some examples of external links:

-   `[http://google.com]`: The system displays this link as a string with the external link icon: [http://google.com/](http://google.com/).
-   `[mail@server.com]`: The system displays this text as a mail-to link: [mail@server.com](mail@server.com).
-   `[mail@server.com|Contact us]`: The system displays this string as a mail-to link with a custom link text: [Contact us](../UserGuide/mail@server.com).

**Parent topic:**[Wiki Content Procedures](../UserGuide/DM__mng_Wiki_How_To.md)

