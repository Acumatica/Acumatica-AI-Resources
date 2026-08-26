# Wiki Overview {#_567615ad-a883-413b-9d94-a36ed313a4d9 .concept}

By using Acumatica ERP wikis, users can create, edit, and share information. Organizations can easily create specialized wikis for sharing information within project teams, within and across departments, or with external users. Wiki users can share policy and procedure manuals, employee manuals, business plans, individual plans, task lists, and other frequently updated documents. Also, users can attach files in any format to wiki articles.

Acumatica ERP wikis facilitate efficient content management practices. With Acumatica ERP wikis, digital content consists of articles organized logically within folders. Employees can easily:

-   Set up wikis.
-   Structure articles and folders within wikis to best fit users' needs.
-   Write and edit articles with ease and flexibility.
-   Track changes.
-   Implement preferred review procedures and standards before each article is published.

The Document Management module provides advanced functionality for wiki management.

## Help Wiki { .section}

Acumatica ERP provides a predefined wiki, Help, that includes the complete set of online documentation. As with any other wiki, the Help wiki can be modified, if needed. However, we strongly recommend that you restrict the ability to modify this wiki.

## User-Defined Wikis { .section}

Acumatica ERP supports user-created wikis. You can create a new wiki by using the [Wiki](SM_20_20_05.md) \(SM202005\) form. The functionality of the wiki is defined by the article type you select for the wiki \(the *Article* type or *KB Article* type\). You can also specify the access rights the roles have to the entire wiki. For more information about the process of adding a wiki, see [To Add a Wiki](DM__how_Wiki_Setting_Up_a_New_Wiki.md)

## Display of a Wiki in Acumatica ERP { .section}

In the user interface of Acumatica ERP, users with the appropriate level of access rights can add a wiki card to a Help dashboard. This capability makes information from the wiki available for other users, depending on the access rights defined for them on the **Access Rights** tab of the selected wiki. Alternatively, you can hide a wiki displayed on the Help dashboard if users no longer use it. For more information on how to add a wiki card to the Help dashboard or hide it on this dashboard, see [To Display and Hide a Wiki in the UI](DM__how_Wiki_Dispaying_in_the_Modern_UI.md).

## User-Defined Wiki Templates { .section}

In Acumatica ERP, users that have the *Insert*, *Publish*, and *Delete* levels of access rights can create templates for wiki articles to make it easier for users to quickly create articles with the needed formatting. Wiki templates are used to define the default style and components of the article, its header, and its footer within the selected wiki. You create and save these templates in the wiki you want to apply them to.

Templates are defined in the system as articles, and the system recognizes templates among other articles by the specific ID defined for them. To create the template for the article and the printing template, you type `ContainerTemplate:` before the template ID. To create the templates for headers and footers, you type `GenTemplate:` before the template ID. Do not use spaces in these IDs. For more information, see [To Create a Wiki Template](DM__how_Wiki_Creating_Template.md).

You use the [Wiki](SM_20_20_05.md) \(SM202005\) form to apply a template to the wiki. For more information, see [To Apply Templates to a Wiki](DM__how_Wiki_Adding_Template.md)

## Presentation of Wiki Articles { .section}

You can use Cascading Style Sheets \(CSS\) to specify how the articles in the wiki will be displayed and printed. For style examples, see [Wiki Style Examples](../Shared/../UserGuide/SM__con_Style_Examples.md).

## Access to Wikis { .section}

In Acumatica ERP, you configure access to all system entities, including wikis, by using roles. To allow users to view published articles or modify wikis, among other tasks, you have to create appropriate roles and configure each role to have the needed access rights for wikis. For more information on setting up the access that roles have to wikis, see [Wiki Access Management](SM__con_Wiki_Access_Setup.md).

## Wiki Content Management { .section}

The management of wiki content may consist of multiple phases: creating new articles, editing the article text, publishing the articles so other users can read them, and removing outdated materials. Acumatica Wiki supports all the phases that apply in your organization.

You can edit the article as a whole, including its properties, or make content edits to a particular section of the article.

For more information, see [Wiki Content Procedures](DM__mng_Wiki_How_To.md).

## Wiki Markup { .section}

In Acumatica ERP, to format the text of the articles, you use wiki markup, a straightforward syntax that uses special markup elements. For more information, see [Wiki Markup Reference](DM__con_Wiki_Using_Wiki_Markup.md).

## Wiki Article Approval { .section}

In most organizations, certain phases of content management involve the collaboration of multiple workgroups. For example, consider an article created by one author and edited by other users of the same group. Before the article can be published, your organization may require approval by one workgroup or multiple workgroups. In Acumatica ERP, you can configure approval procedures to ensure that articles are approved by authorized employees before they are published. For more information, see [Wiki Approval Procedures](DM__con_Wiki_Configuring_Approval_Procedures.md).

## Categories for Wiki Articles { .section}

You can use categories to mark the type of content that wiki articles contain. Categories, along with other features, help readers find necessary information when they perform searches. You can add and delete categories and select articles included in a category. For more information on managing categories, see [To Use Categories in Wikis](DM__how_Wiki_Using_Categories.md).

## Products for Wiki Articles { .section}

You can mark the articles that apply to different products. Products, along with other features, help readers find necessary information when they perform searches. You can add and delete products and select the articles that apply to the product. For more information on managing categories and products, see [To Use Products in Wikis](DM__how_Wiki_Using_Products.md).

## Visibility in Acumatica ERP of a Wiki Article Created on the Self-Service Portal { .section}

You can create a wiki article on Self-Service Portal and display it in Acumatica ERP. For example, suppose that you have added a FAQ article on Self-Service Portal and would like to make it visible to the support engineers of your organization who use Acumatica ERP.

To make a wiki article created on Self-Service Portal visible in Acumatica ERP, you do the following:

1.  Select the wiki that contains the article you want to display in Acumatica ERP.
2.  Add the wiki to the Acumatica ERP site map.
3.  Set up access rights to the wiki and the article for users who may need to view them during their work.

For the detailed procedure, see [To Make a Wiki Article Visible in Acumatica ERP](DM__how_Display_Wiki_Article_Created_on_Portal.md).

**Parent topic:**[Managing Wikis](../UserGuide/DM__mng_Wikis.md)

