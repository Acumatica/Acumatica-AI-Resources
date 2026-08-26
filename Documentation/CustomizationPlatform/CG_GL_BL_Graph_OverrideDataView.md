# To Override a Data View {#_5312e75a-6f0a-4b2c-a28c-38da20782087 .concept}

To modify a data view, you have to redefine the data view in the graph extension class. The data view redefined within a BLC extension completely replaces the base data view within the *Views* collection of a graph instance, including all attributes attached to the data view declared within the base graph. You can either attach the same set of attributes to the data view or completely redeclare the attributes. For details, see [Graph Extensions](CG_Platform_TO_Code_CS_GraphExtensions.md). The data view must have exactly the same identifier, which is referred to in the appropriate container in the ASPX page.

To redefine a data view in the graph extension, perform the following actions:

1.  Create the graph extension, as described in [Graph Extensions: Creating a Graph Extension Through the UI](../StudioDeveloperGuide/CodeCustomization_GraphExtension_CreateInEditor.md), if required.
2.  In the Code Editor, click **View Source** to view the code of the base graph in the [Source Code](../UserGuide/SM_20_45_70.md) browser.

    **Tip:** In an instance of Acumatica ERP, a repository with the original C\# source code of the application is kept in the `\App_Data\CodeRepository` folder of the website.

3.  In the browser, select and copy the data view declaration.
4.  In the Code Editor, paste the data view declaration in the graph extension.
5.  In the graph extension, redefine the data view declaration as required.
6.  Click **Save** in the Code Editor to save your changes.

**Parent topic:**[Data View](../CustomizationPlatform/CG_GL_BL_DataView.md)

