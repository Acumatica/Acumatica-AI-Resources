# Mobile Application {#_ba454efd-c77e-4503-a6b7-0ad085d0323b .concept}

An Acumatica mobile client application uses the Mobile API to access the data of the forms that are mapped for mobile apps in the instance of Acumatica ERP. The metadata of the mobile site map is used to configure the user interface of the mobile client application. You can expose any form of Acumatica ERP on your mobile device if the mobile site map includes the metadata for the form. Accessing and using Acumatica ERP mobile app is provided by the Acumatica Mobile Framework.

You can customize the Acumatica ERP mobile app by adding new workspaces, screens, and KPI widgets to it, or updating existing workspaces, screens, and KPI widgets.

You can add to a customization project the following types of items:

-   *MobileSitemapWorkspace*: This item contains general data, such as the name of a workspace, its sequential number, and its icon.
-   *MobileSitemapWorkspaceItems*: This item contains the screens included in the workspace.
-   *MobileSitemapWorkspaceWidgets*: This item contains the KPI widgets included in the workspace and its screens.

You perform customization of the mobile app by using the [Mobile Application](../UserGuide/AU_22_00_00.md) \(AU220000\) page of the Customization Project Editor. On the page, you can perform a variety of operations, as described in the following topics:

-   [To Add a Form To Mobile Site Map](CG_CL_MobileApp_AddFormToSiteMap.md)
-   [To Update Main Menu of a Mobile App](CG_GL_Items_MobileApp_UpdateMenu.md)
-   [To Update a Mobile App Screen](CG_GL_Items_MobileApp_UpdatingScreen.md)
-   [To Remove a Screen of a Mobile App](CG_GL_Items_MobileApp_RemoveScreen.md)
-   [To Reverse Changes Made to Mobile App](CG_GL_Items_MobileApp_ClearingTenant.md)

We recommend that you add screens to the workspace of the mobile app in Acumatica ERP. If you were to add a new screen to the mobile app by using the **Add New Screen** command on the Mobile Application page of the Customization Project Editor, the new screen would be added to the **Other** workspace by default. To avoid this, you need to add this screen to one of the workspaces on the [Mobile Workspace](../UserGuide/AU_22_00_13.md) \(AU220013\) form, as described in the *To Add a Screen to a Workspace* section in [To Configure Workspaces in the Acumatica ERP Instance](../StudioDeveloperGuide/MOBILE_Workspaces_Instance.md).

For details on how to customize a mobile app using Acumatica Mobile Framework see the [Working with the Mobile Framework](../StudioDeveloperGuide/Mobile_Framework_Guide.md) guide.

-   **[To Add a Form To Mobile Site Map](../CustomizationPlatform/CG_CL_MobileApp_AddFormToSiteMap.md)**  

-   **[To Update Main Menu of a Mobile App](../CustomizationPlatform/CG_GL_Items_MobileApp_UpdateMenu.md)**  

-   **[To Manage the Workspaces of the Mobile App](../CustomizationPlatform/CG_GL_Items_MobileApp_ManageWorkspaces_dita.md)**  

-   **[To Update a Mobile App Screen](../CustomizationPlatform/CG_GL_Items_MobileApp_UpdatingScreen.md)**  

-   **[To Remove a Screen of a Mobile App](../CustomizationPlatform/CG_GL_Items_MobileApp_RemoveScreen.md)**  

-   **[To Reverse Changes Made to Mobile App](../CustomizationPlatform/CG_GL_Items_MobileApp_ClearingTenant.md)**  


**Parent topic:**[Managing Items in a Project](../CustomizationPlatform/CG_GL_Items.md)

