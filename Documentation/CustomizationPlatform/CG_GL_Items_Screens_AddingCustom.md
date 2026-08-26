# To Add a New Custom Form to a Project {#_8c8ea690-7f06-4d4b-9f27-3c67db804008 .concept}

To add a new custom form to a customization project, perform the following actions:

1.  Open the customization project in the Customization Project Editor. \(See [To Open a Project](CG_GL_Project_Opening.md) for details.\)
2.  Click **Screens** in the navigation pane to open the [Screens](../UserGuide/AU_20_10_00.md) page.
3.  On the page toolbar, click **Create New Screen**.
4.  In the **Create New Screen** dialog box, which opens, specify the following settings to create the files for the new form:
    -   **Screen ID**: The unique identifier of the new form
    -   **Graph Name**: The name of the new class of the business logic code for the form \(also called *graph*\)
    -   **Graph Namespace**: The namespace to which the new business logic class should be added
    -   **Page Title**: The title of the new form
    -   **Template**: The form template that provides the default set of containers on the form
    -   **Create Modern UI Files**: Selected to create the necessary TypeScript and HTML files for the Modern UI version of the form
5.  Click **Create**.

    **Tip:** Before you start editing the created screen in the Screen Editor, you must publish the customization project.


For the new form, the system creates the following items and adds them to the customization project:

-   The `.aspx` and `.aspx.cs` files, which appear in the **Files** list of project items.
-   The `.ts` and `.html` files, which appear in the **Modern UI Files** list of project items.
-   The `.cs` file with the business logic code for the form, which appears in the **Code** list of project items.
-   The site map node, which appears in the **Site Map** list of project items.

    **Attention:**

    To give users the ability to navigate to the form in Acumatica ERP, you need to specify the position of the new form in the UI by using Menu Editing mode and update the *SiteMapNode* item on the [Site Map](../UserGuide/AU_20_80_00.md) page of the Customization Project Editor.

-   The *Page* item, with a name that corresponds to the new screen ID; this item appears in the **Screens** list of project items. This item contains the link to the new page content, which you can later develop by using the [Screen Editor](../UserGuide/AU_20_45_20.md).
-   The access rights for the page, which appear in the **Access Rights** list of project items.

To obtain the actual files in the file system, publish the customization project after you have added the form to the project. After that, the following files are available on the file system:

-   The `.aspx` and `.aspx.cs` files in the `Pages/<First segment of ScreenID>/` folder of the website
-   The `.ts` and `.html` files in the `FrontendSources\screen\src\customizationScreens\<Tenant Name>\screens\<First two letters of the Screen ID>\<Screen ID>\` folder of your instance
-   The `.cs` file with the business logic code in the `App_RuntimeCode` folder of the website

You can develop business logic code for the custom form in Microsoft Visual Studio later.

**Parent topic:**[Customized Screens](../CustomizationPlatform/CG_GL_Items_Screens.md)

