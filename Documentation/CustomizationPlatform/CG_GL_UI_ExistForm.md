# Existing Form {#_1a4912fa-36a1-4da7-bc77-dcf9575a9a7a .concept}

You can customize the user interface of an existing form of Acumatica ERP by using the [Screen Editor](../UserGuide/AU_20_45_20.md). The editor is a visual tool that you can use to perform the following changes in the ASPX code for a form:

-   Add or delete a container.
-   Add or delete a button or radio button. \(See [Button \(PXButton\)](CG_GL_UI_PXButton.md) and [Radio Button \(PXRadioButton\)](CG_GL_UI_Radio.md) for details.\)
-   Add or delete a layout rule. \(See [Layout Rule \(PXLayoutRule\)](CG_GL_UI_LayoutRules.md) for details.\)
-   Add or delete a Java script. \(See [Java Script \(PXJavaScript\)](CG_GL_UI_PXJavaScript.md) for details.\)
-   Create or delete a control for a data field. \(See [Box \(Control for a Data Field\)](CG_GL_UI_Box.md) for details.\)
-   Change the properties of an element in the ASPX code. \(See [To Set a Container Property](CG_GL_UI_PXForm_Properties.md), [To Set a Box Property](CG_GL_UI_Box_SetProperty.md) and [To Set a Layout Rule Property](CG_GL_UI_LayoutRules_Properties.md) for details.\)

In Acumatica ERP, an ASPX page must contain a single PXDataSource control. You can add the following types of containers immediately to the level of an ASPX page, where the PXDataSource control is defined:

-   [Form Container \(PXFormView\)](CG_GL_UI_PXForm.md)
-   [Grid Container \(PXGrid\)](CG_GL_UI_PXGrid.md)
-   [Tab Container \(PXTab\)](CG_GL_UI_Tab.md)
-   [Dialog Box \(PXSmartPanel\)](CG_GL_UI_Dialogs.md)

The order of containers in the ASPX page defines the order of appropriate areas with controls on the form.

Detailed instructions on the customization of an existing form are provided in the following topics:

-   [To Start a Customization of a Form](CG_GL_UI_ExistForm_Starting.md)
-   [To Delete a Customization of a Form](CG_GL_Forms_DeleteCust.md)
-   [To Add a Form Container](CG_GL_Forms_CustForm_AdContainer_Form.md)
-   [To Add a Tab Container](CG_GL_Forms_CustForm_AdContainer_Tab.md)
-   [To Add a Grid Container](CG_GL_Forms_CustForm_AdContainer_Grid.md)
-   [To Add a Dialog Box](CG_GL_Forms_CustForm_AddCustomDialogBox.md)
-   [To Delete a Container](CG_GL_Forms_CustForm_DeleteContainer.md)

The changeset of a form is stored in the database as a *Page* item of a customization project. During the publication of the project, the Acumatica Customization Platform applies the changeset to the form to create a customized version of the `.aspx` file with the same name in the `pages_xx` subfolder of the `CstPublished` folder of the website.

For example, if you customize the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form and publish the project, the platform creates the `ar303000.aspx` and `ar303000.aspx.cs` files in the `\CstPublished\pages_ar` folder. If you delete these files, Acumatica ERP uses the original files from the `\Pages\AR` folder to display this form. However if you again publish the customization project, the platform recreates these files, and Acumatica ERP uses the customized version of the form.

We recommend that you use the [Screen Editor](../UserGuide/AU_20_45_20.md) to customize the content of an ASPX page, the [Data Class](../UserGuide/AU_DataClassEditor.md) to modify data access classes, and Microsoft Visual Studio to extend the business logic for a page. \(See [Integrating the Project Editor with Microsoft Visual Studio](CG_Platform_Studio.md) for details.\)

-   **[To Start a Customization of a Form](../CustomizationPlatform/CG_GL_UI_ExistForm_Starting.md)**  

-   **[To Delete a Customization of a Form](../CustomizationPlatform/CG_GL_Forms_DeleteCust.md)**  

-   **[To Add a Form Container](../CustomizationPlatform/CG_GL_Forms_CustForm_AdContainer_Form.md)**  

-   **[To Add a Grid Container](../CustomizationPlatform/CG_GL_Forms_CustForm_AdContainer_Grid.md)**  

-   **[To Add a Tab Container](../CustomizationPlatform/CG_GL_Forms_CustForm_AdContainer_Tab.md)**  

-   **[To Add a Dialog Box](../CustomizationPlatform/CG_GL_Forms_CustForm_AddCustomDialogBox.md)**  

-   **[To Delete a Container](../CustomizationPlatform/CG_GL_Forms_CustForm_DeleteContainer.md)**  


**Parent topic:**[Customizing Elements of the User Interface](../CustomizationPlatform/CG_GL_UI.md)

