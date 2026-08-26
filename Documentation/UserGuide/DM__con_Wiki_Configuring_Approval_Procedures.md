# Wiki Approval Procedures {#_7617ea9f-48ba-4bd6-9492-0eb87800d7ee .concept}

Articles in a wiki must be published to be seen by all users. An organization may require articles to be approved by authorized employees before they may be published. In Acumatica ERP, you can configure approval procedures by using roles and wiki functionality, as described below.

## Approval by Using Roles { .section}

In Acumatica ERP, access to any wiki is determined by the roles assigned to users. You can use roles to facilitate the approval of wiki articles by performing the following steps:

-   Configure a role for wiki authors that has access to the required wiki folders \(or the entire wiki\) at the *Insert* level. Users who have this role assigned will be able to create new articles and edit existing ones, but will not be able to publish articles.
-   Configure a role for wiki publishers, and give the role access to the required wiki folders \(or the entire wiki\) at the *Publish* level. Users assigned to this role will be able to publish the articles after they approve of article content. Assign this role to users qualified to approve and publish articles.
-   On the [Wiki](SM_20_20_05.md) \(SM202005\) form, make sure that the **Require Approval** check box is cleared for the wiki for which approval will be performed through roles.

A user with the wiki publisher role can publish an article by opening the Wiki Editor form for the article, clearing the **Hold** check box, and saving the article.

## Approval by Using Wiki Functionality { .section}

You can also use built-in wiki functionality to enable wiki article approval. To make approval required for a specific wiki, do the following:

1.  On the **Configuration** tab, click **Document Management**. In the left pane, click **Manage** &gt; **Wiki** to open the [Wiki](SM_20_20_05.md) \(SM202005\) form.
2.  In the Summary area, in the **ID** box, select the wiki.
3.  Select the **Hold on Entry** check box to assign *Hold* status to any article after it has been edited. If the article has versions, a new version with the *Hold* status is created and the last published version is still available to users with *View Only* access. If the article is not versioned, a new version with the *Hold* status overwrites the published article; this new version is not available to users with *View Only* access rights.
4.  Select the **Require Approval** check box.
5.  In the **Approval Group** box, select the workgroup to perform approvals for articles in the wiki. The default user of the group is initially specified as the approver, but you can select another member of the group in the **Approver ID** box.

    **Note:** You can configure the wiki approval groups by using the [Company Tree](EP_20_40_61.md) \(EP204061\) form.

6.  In the form toolbar, click **Save**.

To begin the process of publishing an article, the user who created or edited the article clears the **Hold** check box in the Summary area of the **Contents** tab of the Wiki Editor form. This changes the article status to *Pending*. The approver periodically finds articles with the *Pending* status for viewing and editing by using the [Wiki Articles](SM_20_20_25.md) \(SM202025\) form. The approver can view and edit any listed articles.

This form also lets the approver process one or more articles. The approver can add keywords, change the parent folder, assign a category, and approve or reject the article. When the article is processed, its status changes as follows:

-   If approved, the article has the *Published* status, and the **Approved** check box \(visible on the **Content** tab when the article is open in the Wiki Editor form\) is selected for it.
-   If rejected, the article has the *On Hold* status, and the **Rejected** check box \(also on the **Content** tab\) is selected for it.

## Escalation { .section}

An article becomes escalated if its approval was requested but the article was not approved within the wait time specified for the workgroup assigned to approve articles in the wiki. Escalated articles become visible to users of the workgroup that is positioned at one level higher on the company tree. Escalated articles can be approved by the user they were initially assigned to or by a user from the group to which the approval was escalated.

**Parent topic:**[Managing Wikis](../UserGuide/DM__mng_Wikis.md)

