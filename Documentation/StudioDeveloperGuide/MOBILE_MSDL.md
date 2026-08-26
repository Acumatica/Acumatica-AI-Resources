# Configuring the Mobile Site Map {#_64460c7d-b5da-4872-958f-9c1f290168bc .concept}

You develop the code that creates or changes the mobile site map in the memory of the Acumatica ERP server by using Mobile Site Map Definition Language \(MSDL\).

**Note:** Before Acumatica Framework 2021 R2, XML was used to configure the mobile site map.

## MSDL Overview { .section}

MSDL provides the capability to configure the user interface of the Acumatica mobile app. It transcends XML in terms of its flexibility of usage for the mobile site map, because you can apply MSDL code multiple times for any Acumatica ERP form, whether it is a custom, customized, or original form. In contrast with XML, Acumatica Mobile Framework can successively apply MSDL code for a form from multiple customizations without problems or restrictions.

If you already have an XML site map in MSDL format, you should convert the XML mobile site map to MSDL format, as described in [To Convert an XML Mobile Site Map to MSDL Format](MOBILE__how_Convert_XML_Mobile_Site_Map_to_MSDL.md#).

See the [MSDL](MOBILE_Ref_MSDL.md) section of [Mobile Site Map Reference](MOBILE_Reference.md) for details about MSDL syntax, object types, and instructions.

## User Interface Structure { .section}

You can modify the elements of the Acumatica mobile app’s UI by using MSDL. This UI has the following structure:

-   [Main Menu](MOBILE_MainMenu.md#): You can customize the main menu by using instructions that work with the Folder and Screen objects.
-   [Screens](MOBILE_Screens.md#): You can customize the mobile app screens by using instructions that work with Container, Field, Action, and other objects.

**Important:** In previous versions of Acumatica ERP, you could customize the sidebar menu by populating it with links to favorite records and screens. As of Acumatica ERP 2026 R1, the sidebar menu has been deprecated. Customization projects that contain sidebar modification will no longer work. We recommend that you use the workspace functionality and add the required records and screens to Favorites. \(For details, see [Home Screen](mobile_msdl_mainmenu.md).\)

## How to Use the MSDL Examples of This Chapter { .section}

In this chapter, each example contains a list of MSDL instructions that modify the mobile site map for your instance of Acumatica ERP.

To use these examples, you should first add a new page \(or modify an existing one\) in the Customization Project Editor, and then insert the code in the **Commands** area. You can see your changes after you publish the customization project. For details, see the topics of the [Mobile Site Map](MOBILE_MobileSiteMap.md) chapter.

-   **[Home Screen](../StudioDeveloperGuide/mobile_msdl_mainmenu.md)**  

-   **[Sidebar Menu](../StudioDeveloperGuide/mobile_sidebarmenu_msdl.md)**  

-   **[Screens](../StudioDeveloperGuide/mobile_msdl_screens.md)**  

-   **[Configuring a Screen Layout](../StudioDeveloperGuide/MOBILE_MSDL_Layout.md)**  

-   **[Configuring Specific Functionality of a Screen](../StudioDeveloperGuide/MOBILE_MSDL_ScreenFunctionality.md)**  

-   **[Dialog Boxes and Smart Panels](../StudioDeveloperGuide/MOBILE_MSDL_Screen_DialogBoxes_SmartPanels.md)**  


