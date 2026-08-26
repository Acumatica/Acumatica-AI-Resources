# Customized Screens {#_e87c9468-09fd-45a6-aea8-4e70ff65bc00 .concept}

You use the Customized Screens page of the [Customization Project Editor](../UserGuide/SM_20_45_10.md) to manage the *Page*, *AUScreenAction*, *AUScreenNavigationAction*, and *AutomationScreenField* items in the customization project. The *Page* item for an existing form contains instructions about changes to the layout that have to be applied by the platform to the ASPX code of the form during publication of the project. For a custom form, the *Page* item holds the content of the form and the path to the ASPX file of the form. \(The path is required so the platform can detect changes of the file in the file system in the development environment and update the file while you publish the project.\)

By using the Customized Screens page, you can do the following:

-   Modify the layout and actions on an existing form. When you start to modify the layout of an existing form, to store the changes, the platform adds a *Page* item for the form to the customization project. When you use the [Screen Editor](../UserGuide/AU_20_45_20.md) to change the form layout, the platform saves each change to this item. The changed logic of the form is saved in the *AUScreenAction*, *AUScreenNavigationAction*, and *AutomationScreenField* items. See [Types of Items in a Customization Project](CG_Platform_Project_ItemTypes.md) for details about customization project items.
-   Create a custom form. To do this, you click the **Create Screen** command on the [Screens](../UserGuide/AU_20_10_00.md) page to create the workable template for the form, and add the template to the customization project as a *Page* item, a *Code* item, a *SiteMapNode* item, and two *File* items, as described in [To Add a New Custom Form to a Project](CG_GL_Items_Screens_AddingCustom.md). You can then develop the custom form by using both the Screen Editor and Microsoft Visual Studio.

The Customized Screens page contains the list of the *Page* items for existing and custom forms added to the customization project.

On the page, you can perform the operations with the customized screens that are described in the following topics:

-   [To Add a Page Item for an Existing Form](CG_GL_Items_Screens_Adding.md)
-   [To Delete a Page Item from a Project](CG_GL_Items_Screens_Deleting.md)
-   [To Add a New Custom Form to a Project](CG_GL_Items_Screens_AddingCustom.md)
-   [To Delete a Custom Form from a Project](CG_GL_Items_Screens_DeletingCustom.md)
-   [To Delete Items from the Project on the Edit Project Items Page](CG_GL_Items_DeletingANY.md)

**Note:** You can customize *Page* items for the Self-Service Portal as well.

-   **[To Add a Page Item for an Existing Form](../CustomizationPlatform/CG_GL_Items_Screens_Adding.md)**  

-   **[To Delete a Page Item from a Project](../CustomizationPlatform/CG_GL_Items_Screens_Deleting.md)**  

-   **[To Add a New Custom Form to a Project](../CustomizationPlatform/CG_GL_Items_Screens_AddingCustom.md)**  

-   **[To Delete a Custom Form from a Project](../CustomizationPlatform/CG_GL_Items_Screens_DeletingCustom.md)**  

-   **[To Delete Items from the Project on the Edit Project Items Page](../CustomizationPlatform/CG_GL_Items_DeletingANY.md)**  


**Parent topic:**[Managing Items in a Project](../CustomizationPlatform/CG_GL_Items.md)

