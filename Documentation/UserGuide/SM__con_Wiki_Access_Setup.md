# Wiki Access Management {#_f0708bda-251d-45e2-823a-62a48f7df7eb .concept}

In Acumatica ERP, you configure all access, including access to the wiki, by using roles. Each role is collection of functions a user with the role may access. Acumatica ERP provides several built-in roles and a number of predefined roles with names and abilities that vary by reseller. Your company may need to redefine roles or create new roles to effectively separate employee duties in accordance with established internal policies.

Wiki access management involves configuring new roles, modifying existing roles, and assigning roles to users to allow them to perform the required tasks in the wikis.

## Role Setup { .section}

Generally, for roles whose users work with wikis, access should be configured to the following:

-   Particular wikis for which the roles will edit, publish, or create new articles \(which might include templates or announcements\).
-   Forms that users with the role will use to rename and move articles in the wiki site map, view and compare article versions, and publish articles.
-   Forms to create new roles or modify existing ones for wiki users and to configure approval procedures.

For example, a small or mid-sized company might have the following wiki-related roles, which differ by the level of access to wikis and by the tasks users with the role may perform:

-   **Internal User**: Users with this role can view system wikis \(that is, wikis delivered with the system\) and access their personal user settings. Such a role would be assigned to each internal user \(one who is employed by your company\) in the system. The rights of the role may be extended to provide access to other wikis that include public materials.
-   **Wiki Author**: These users can view and edit published and unpublished wiki articles, create new articles and folders, move articles between folders, and publish articles. The role may have access to system wikis \(if the company policy allows modification of these wikis\), to another wikis that contains the company internal instructions and manuals, or to other work documents.

    **Tip:** We recommend setting the *View Only* access to wikis delivered with the system. Modification of system wiki articles will prevent their update during upgrades. The system will update only articles that have not been modified.

-   **Wiki Administrator**: Users with this role manage the access rights other roles have to wikis, folders, and files. Users with the role may create new wikis and wiki styles and set up approval procedures for the publishing of articles. The role should have full access to all wikis.

Your company may create additional wikis for corporate use. When you create new wikis, wiki folders, and articles, the existing roles will not have access to them. You will need to establish proper access rights to those items by modifying existing roles or creating new ones.

## Access for Wiki Articles { .section}

You set the access each role has to the wikis available in your company by using the [Wiki Access by Role](SM_20_20_15.md) \(SM202015\) form. If the company has multiple wikis, you set access for each of the wikis separately. You can set access rights to a particular article or folder by using the **Access Rights** tab when you open the article in the Wiki Editor form.

The following levels of access rights are available for all items \(wikis, folders, or articles\) in all wikis. If a particular level of access rights is set for a wiki, by default, that level is inherited by all articles and folders in the wiki. You can, however, set different levels of access rights for articles and folders within the wiki.

|Option|Description|
|------|-----------|
|*Not Set*|If all roles has this level of access rights to a wiki, users with all roles have access to the new wiki. When another option is selected for at least one of the roles, this option denies access for roles that have not been explicitly set.|
|*Revoked*|If a role has this level of access rights to a wiki, users with the role are denied access to the entire wiki and its items; for such users, the wiki is not displayed in the navigation pane. Other \(more permissive\) levels of access set for articles within the wiki won't allow users with the role to view those items in the navigation pane; these users can access the items only by using direct links to the items.|
|*View Only*|If a role has this level of access rights to a wiki, a user with the role may view the published article, published articles within the folder, or published articles in the wiki, depending on the item to which the level is assigned. Access to the item is inherited by all articles within the item; if the item is an unpublished folder, a user with the role cannot see the published articles within it even if the role has permissive rights for these articles. If the role has the *View Only* level of access rights, the **Edit Current Article**, **Add New Article**, and **Delete Article** buttons are unavailable on the wiki toolbar for the user.|
|*Edit*|If a role has this level of access rights to a wiki, a user with the role may view and edit published and unpublished articles in the wiki. If a role has this level of access rights to an article in the wiki, users with the role may set higher and lower levels of access to the item. For folders and articles to which the user has this level of access, the **Add New Article** and **Delete Article** buttons are unavailable on the wiki toolbar for the user.|
|*Insert*|If a role has this level of access rights to a wiki, a user with the role can edit articles and folders, create new articles, and initiate the approval process for publishing if approval is required for the wiki. If a role has this level of access rights to an item within the wiki, users with the role may set higher and lower levels of access for the item. For folders and articles to which the user has this level of access, the **Add New Article** button is available and the **Delete Article** button is unavailable on the wiki toolbar for the user.|
|*Publish*|If a role has this level of access rights to a wiki, a user with the role may edit, create, and publish articles. If a role has this level of access rights to an item within a wiki, users with the role may set higher and lower levels of access to the item. For folders and articles to which the user has this level of access, the **Add New Article** button is available and the **Delete Article** button is unavailable on the wiki toolbar for the user.|
|*Delete*|If a role has this level of access rights to a wiki, a user with the role may modify the access other users have to articles using the article properties, as well as edit, create, publish, and delete articles. If a role has this level of access rights to an item within the wiki, users with the role may set any level of access to the article. For folders and articles to which the user has this level of access, all the buttons are available, including the **Delete Article** button.|

For users whose roles allow them to edit articles \(with *Edit* or higher access rights\), you may want to grant access to the following forms, so that these users can insert and update graphics within articles:

-   [Search in Files](SM_20_25_20.md) \(SM202520\)
-   [File Maintenance](SM_20_25_10.md) \(SM202510\)

**Tip:** You can set the access rights of the role by using the [Access Rights by Role](SM_20_10_25.md) \(SM201025\) form.

## Role Configuration for Wikis { .section}

When you configure a role for the users who will be working with wikis, you give access to:

-   The wiki management forms by using the [Access Rights by Role](SM_20_10_25.md) \(SM201025\), [Access Rights by Screen](SM_20_10_20.md) \(SM201020\), or [Wiki](SM_20_20_05.md) \(SM202005\) form.
-   The wiki articles by using the [Wiki Access by Role](SM_20_20_15.md) \(SM202015\) form. By using this form, a user will be able to configure access only to wikis this user has access to.

## Access to Help Topics { .section}

Although most wikis are created to be modified by multiple users, Acumatica ERP Help \(system wikis\) should be protected from unnecessary modifications. We recommend setting the *View Only* access to wikis delivered with the system. Modification of system wiki articles will prevent their update during upgrades. The system will update only articles that have not been modified.

## Access to Wiki Management Forms { .section}

Typically, content management may include the following tasks: creating articles or folders, editing the text, publishing the articles for other users to read, removing outdated materials, moving articles and folders, setting up a new wiki, and defining the styles. The users with any roles that performs such duties will require *Edit* \(or higher\) access rights to the following forms:

-   [Wiki Site Map](SM_20_20_10.md) \(SM202010\): Allows users with the role to move folders and articles between folders.
-   [Wiki](SM_20_20_05.md) \(SM202005\): Allows users with the role to create new wikis and specify access rights for existing wikis.
-   [Wiki Style Sheets](SM_20_20_30.md) \(SM202030\): Allows users with the role to define new styles and modify existing ones.

**Tip:** You can set the access rights of the role by using the [Access Rights by Role](SM_20_10_25.md) \(SM201025\) form.

For more information, see [Configuring User Roles](User_Roles_Mapref.md).

## Access to Wiki Administration { .section}

You might want to give users with a particular role the ability to perform wiki administration, which involves the following tasks:

-   Configuring the access rights other users have to wikis, specific wiki folders, and articles
-   Performing inquiries in the wikis
-   Setting up approval routes and configuring approval procedures
-   Creating new roles and configuring their access rights to forms in the Document Management module

The role should include access rights to the following forms:

-   [Users](SM_20_10_10.md) \(SM201010\): To create new user accounts
-   [User Roles](SM_20_10_05.md) \(SM201005\): To create new roles and assign them to users
-   [Access Rights by Role](SM_20_10_25.md) \(SM201025\) and [Access Rights by Screen](SM_20_10_20.md) \(SM201020\): To configure the access rights each role has to wikis, system forms that support wiki-related functionality and, if necessary, to the Document Management module forms
-   [Wiki](SM_20_20_05.md) \(SM202005\): To configure access rights each role has to wikis
-   [Wiki Access by Role](SM_20_20_15.md) \(SM202015\) form: To set the access of each role to wikis, their folders, and their articles

**Tip:** You can set the access rights for the role by using the [Access Rights by Role](SM_20_10_25.md) \(SM201025\) form.

**Parent topic:**[Managing Wikis](../UserGuide/DM__mng_Wikis.md)

