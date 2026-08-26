# To Override a Data View Delegate {#_d50ee403-753c-41b9-b996-90dad1f2e98e .concept}

You can modify the data view delegate—that is, the method that is invoked when the records are retrieved through the data view. To do this, perform the following actions:

1.  Create the graph extension, as described in [Graph Extensions: Creating a Graph Extension Through the UI](../StudioDeveloperGuide/CodeCustomization_GraphExtension_CreateInEditor.md), if required.
2.  In the Code Editor, click **View Source** to view the code of the base graph in the [Source Code](../UserGuide/SM_20_45_70.md) browser.

    **Tip:** In an instance of Acumatica ERP, a repository with the original C\# source code of the application is kept in the `\App_Data\CodeRepository` folder of the website.

3.  In the browser, select and copy the data view declaration and the data view delegate.

    **Tip:** The override data view delegate must have exactly the same signature—the return value, the name of the method, and any method parameters—as the base data view delegate.

4.  In the Code Editor, paste the code in the graph extension.

    **Tip:** When you declare or alter a data view delegate within a graph extension, the new delegate is attached to the corresponding data view. To query a data view declared within the base graph or a lower-level extension from the data view delegate, you should redeclare the data view within the graph extension. You do not need to redeclare a generic PXSelect&lt;Table&gt; data member in the graph extension when it will not be used from the data view delegate. For details, see [Graph Extensions](CG_Platform_TO_Code_CS_GraphExtensions.md).

5.  In the graph extension, rewrite the data view delegate code as you need to.
6.  Click **Save** in the Code Editor to save your changes.

**Parent topic:**[Data View](../CustomizationPlatform/CG_GL_BL_DataView.md)

