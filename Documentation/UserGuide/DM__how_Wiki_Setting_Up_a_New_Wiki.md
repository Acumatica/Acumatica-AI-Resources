# To Add a Wiki {#_c82c0ace-03e7-421c-9ca5-bc13270f4bb0 .task}

You can create new wikis to meet the evolving needs of your organization. You can use a wiki to easily share often-used content, such as an employee manual or internal processing instructions, that you need to change with minimal lag time. By using a wiki, you can also organize collaboration on a multi-participant project, such as a business plan or budget, that needs to be managed across distance and time.

Whatever the purpose of your wiki, you can set it up easily by using the [Wiki](SM_20_20_05.md) \(SM202005\) form, as described below.

## Before You Proceed { .section}

Before you create a new wiki, you need to plan its use, usually in cooperation with other affected parties. You probably have already considered the most basic questions:

-   Who will use the wiki?
-   How will these employees use it?
-   What kind of information will it contain?
-   Who will perform the writing, reviewing, and administering?

Before you begin setting up the wiki, you need to consider other questions as well, including the following:

-   What type of articles will the wiki consist of? In Acumatica Wiki, a wiki can consist of basic wiki articles or web pages.
-   What categories will the wiki articles be placed into? Categories designate the type of content.
-   What products will the wiki articles be applied to?
-   What roles will have access rights for approving and publishing the wiki?
-   What roles will have access rights for the wiki? What access rights should they have?
-   Do you want the system to save versions of articles, either globally or for only particular articles?

Also, you will need to define the style \(that is, the look and formatting\) that will be used for all articles in the wiki. The style is defined by a file with the `.css` extension. For examples of styles, see [Wiki Style Examples](../Shared/../UserGuide/SM__con_Style_Examples.md).

## To Add a Wiki { .section}

To create a wiki, you use the [Wiki](../Shared/../UserGuide/SM_20_20_05.md) \(SM202005\) form. You can complete the setup of a wiki all at once or in stages, skipping the optional steps. To add a wiki and specify the required settings for it, do the following:

1.  Open the [Wiki](../Shared/../UserGuide/SM_20_20_05.md) \(SM202005\) form.
2.  In the **ID** box of the **General** section, enter the unique identifier of the wiki, and in the **Name** box, enter a name for the wiki.
3.  In the **Approval** section, do the following:
    1.  Use the **Hold on Edit** check box to specify whether created articles should have the *Hold* status by default:
        -   Clear the check box \(the default setting\) to have the *Published* status assigned to new articles and to published articles each time they are edited, whether or not an article is versioned.
        -   Select the check box to have the *Hold* status assigned to new articles as well as to published articles each time they are edited. If the article is versioned, once it is saved with the **Hold** check box selected, a new version with the *Hold* status is created and the published version is still available to users with *View Only* access rights. If the article is not versioned, the published article is overwritten by a new version with the *Hold* status and is not available to users with *View Only* access rights.
    2.  Use the **Require Approval** check box to specify the necessity of the approval of the selected wiki by the approval group:
        -   Clear the **Require Approval** check box, which is selected by default, if the selected wiki is not subject to approval.
        -   Select the **Require Approval** check box if the selected wiki is subject to approval. In the **Approval Group** box, select the wiki approval group, and in the **Approver ID** box, select the user in this group who is responsible for approving the articles.

            For more information about wiki approvals, see [Wiki Approval Procedures](../Shared/../UserGuide/DM__con_Wiki_Configuring_Approval_Procedures.md).

4.  In the **Modern UI** section, do the following:
    1.  Select the **Show on Help Dashboard** check box to display a card for the selected wiki on the Help dashboard.
    2.  In the **Sequence** box, specify the whole or decimal number that defines the sequential position of the wiki on the Help dashboard.

        **Tip:** Acumatica ERP doesn't verify the sequence number that you specify for each wiki. We recommend that you use different sequence numbers for different wikis to avoid unexpected results.

    3.  Optional: In the **Default Article** box, select the article to be displayed by default when a user clicks **Explore** on the wiki card on the Help dashboard. If no article is selected here, the first article of the selected wiki is displayed by default.
    4.  On the **Wiki Settings** tab, in the **Dashboard Description** box, type an explanation of the content of the wiki, which will be used on the wiki card on the Help dashboard. In the description box, you can enter 255 characters, but we recommend that you enter no more than 160 characters so that your description fits the wiki card displayed on the Help dashboard.
5.  In the **Classic UI** section, do the following:
    1.  In the **Site Map Location** box, select the node of the site map in which the wiki will be located.
    2.  In the **Site Map Title** box, type the title of wiki on the site map.
6.  On the **Wiki Settings** tab, apply the appropriate style options for the wiki by doing the following:
    1.  In the **Style** box of the **Look and Feel** section, select the prepared file with the CSS styles intended for displaying the articles of the wiki in a browser. If you specify no file, the browser-specific default styles will be used.
    2.  In the **Print Style** box, select the prepared file with the CSS styles that define how a printed article of the wiki should look. If no file is specified, the browser-specific default styles will be used.
    3.  In the **Article Type** box, select the type of articles that will make up the content of the wiki. The following options are available:
        -   *Article*: The basic type of articles. This type of articles may contain various content \(text, tables, graphics, and links\). Usually this type is used for Help articles.
        -   *KB Article*: The type of article especially designed for Knowledge Base articles. This type of articles may contain the same content as basic articles. Additionally, users can rate the articles and leave their feedback for a particular article, which gives you the ability to collect statistics and information on how helpful the articles are.
7.  Skip the **Template**, **Print Template**, **Header**, and **Footer** boxes until you create wiki templates.

    **Note:** You can apply templates to the wiki only after you create them for the selected wiki. For more information, see [To Create a Wiki Template](../Shared/../UserGuide/DM__how_Wiki_Creating_Template.md) and [To Apply Templates to a Wiki](../Shared/../UserGuide/DM__how_Wiki_Adding_Template.md).

8.  Optional: In the **Miscellaneous** section of the **Wiki Settings** tab, do the following:
    1.  In the **Default Site Map Tag** box, select the tag to be used by default for new articles. \(This step can be performed later, when at least one tag has been created.\)
    2.  In the **Public Virtual Path** box, specify the web address of the wiki on a local website to be used for access outside of your local network.
9.  On the form toolbar, click **Save** to save the settings you've specified for the wiki so far.
10. Only if you have selected the node of the site map in which the wiki will be located in the **Site Map Location** box \(which causes the system to generate user roles and access rights for the selected wiki\), on the **Access Rights** tab, configure the access rights for the wiki by doing the following in the table:
    1.  In the **Access Rights** column of the first row, select the proper option for the selected role. The following options, listed from the most restrictive access rights to the broadest ones, are available:

        **Note:** These access rights apply to all items \(folders and articles\) within the wiki unless you set different access rights for particular items within it; for more information, see [Wiki Access Management](../Shared/../UserGuide/SM__con_Wiki_Access_Setup.md).

        -   *Revoked*: For users with the role, doesn't allow any access to the wiki and the articles and folders within it, including viewing these items.
        -   *View Only*: Allows users with the role to view all published articles and folders within the wiki.
        -   *Edit*: Allows users with the role to edit the articles and folders in the wiki.
        -   *Insert*: Allows users with the role to edit and create new articles and folders in the wiki.
        -   *Publish*: Allows users with the role to edit, create, and directly publish articles and folders \(or initiate the approval process for publishing, if this approval is required for the wiki\) in the wiki.
        -   *Delete*: Allows users with the role to delete articles and folders within the wiki, in addition to the rights at lower levels of access.
    2.  Repeat the previous substep for each additional row with a role listed.
    3.  On the form toolbar, click **Save** to change the access rights for the roles.
11. Optional: On the **Tags** tab, create the list of tags to be used to mark the versions of articles in the wiki. To create the tags, do the following:

    **Tip:** Tags can be created at any time and are not required for initial wiki setup.

    1.  In the table toolbar, click **Add Row** to add a new blank row to the table.
    2.  In the **Description** box, type a descriptive name for the tag.
    3.  Repeat the two previous substeps for each tag you want to add.
    4.  On the form toolbar, click **Save**.

**Parent topic:**[Managing Wikis](../UserGuide/DM__mng_Wikis.md)

