# Other Control Types {#_d0152c95-81a8-48d2-9251-72de39a8aae1 .concept}

The Acumatica Customization Platform does not support some control types, such as PXSplitContainer and PXTreeView, that are supported by the Acumatica Framework. However the Acumatica Customization Platform gives you the ability to add a control of an unsupported type to an Acumatica ERP form and save the change to a customization project.

To do this, perform the following actions:

1.  Open the form in the [Screen Editor](../UserGuide/AU_20_45_20.md), as described in [To Start a Customization of a Form](CG_GL_UI_ExistForm_Starting.md).
2.  On the editor toolbar, click **Edit ASPX** to open the ASPX code of the form in the [ASPX Editor](../UserGuide/SM_20_45_90.md).
3.  Modify the code in the editor.
4.  Click **Generate Customization Script** to save to the customization project the changes to the *Page* item for the form.

After you have added a new control to the customization project, you can select the control node in the Control Tree of the Screen Editor and specify the control properties, as described in [To Set a Box Property](CG_GL_UI_Box_SetProperty.md).

**Parent topic:**[Customizing Elements of the User Interface](../CustomizationPlatform/CG_GL_UI.md)

