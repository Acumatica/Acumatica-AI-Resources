# To Update Access Rights to an Article {#_833a9c92-93a9-44d8-9578-3088473d1eb5 .task}

In Acumatica ERP, you configure access rights for roles rather than for individual users, and you assign users to roles. By default, access rights for an article or folder are inherited from the parent folder, but you can change access rights to an article or folder, as described below.

**Note:** Only users with the *Delete* level of access to the article can manage access to the article.

To quickly change access rights for a particular article or folder, do the following:

1.  Open the article.
2.  On the wiki toolbar, click **Edit Current Article** to open the Wiki Editor form.
3.  On the **Access Rights** tab, modify the access rights of each role to the article or leave them as they are inherited from the parent folder. For each role, select one of the following options, listed from the most restrictive to the broadest access rights:
    -   *Inherited*: Defines the access to the article by the type of access specified for the parent folder.
    -   *Revoked*: Denies users with the role any access to the article.
    -   *View Only*: Allows users with the role to view the article text but not to make changes.
    -   *Edit*: Allows users with the role to make changes to the article text.
    -   *Insert*: Gives users the *View* and *Edit* rights, as well as the ability to create new articles in the same parent folder.
    -   *Publish*: Allows users with the role to publish the article and any subarticles within it, in addition to granting the *Insert* rights.
    -   *Delete*: Allows users with the role to delete the article and its subarticles, in addition to granting the *Publish* rights.
4.  On the Wiki Editor form toolbar, click **Save**.

**Parent topic:**[Wiki Content Procedures](../UserGuide/DM__mng_Wiki_How_To.md)

