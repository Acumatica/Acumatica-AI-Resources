# To Open a Group Box in the Screen Editor {#_7251d78a-a2ba-43af-8d6c-ea9682514b8b .concept}

To start the customization of a group box on a form, you have to open it in the [Screen Editor](../UserGuide/AU_20_45_20.md). To do this, perform the following actions:

1.  Open the form to display the appropriate set of radio buttons in the browser.

    **Note:** In Acumatica ERP, a radio button can work properly only in a PXGroupBox container that is used for a drop-down data field.

2.  On the form title bar, click **Customization** &gt; **Inspect Element** to open the [Element Inspector](../UserGuide/AU_ElementInspector.md).

    **Note:** If you need to activate the [Element Inspector](../UserGuide/AU_ElementInspector.md) for a pop-up panel, a dialog box, or another UI element that opens in modal mode and makes the [Customization Menu](../UserGuide/AU_CustomizationMenu.md) unavailable for selection, you can press Control-Alt.

3.  On the form, click the area with radio buttons to open the [Element Properties Dialog Box](../UserGuide/AU_ElementInspector.md#_8ce780b0-243f-480c-8b4c-ed6431116e3f) for the group box.
4.  In the dialog box, click **Customize**.
5.  If there is no currently selected customization project and the inspector opens the [Table 1](../UserGuide/AU_CustomizationMenu.md#_6adfabb5-9264-4273-938a-db4a41510b1c), select an existing customization project or create a new one.

If the customization project does not contain a changeset for the form, the [Customization Project Editor](../UserGuide/SM_20_45_10.md) adds to the project a *Page* item for the form, to keep the changeset to the ASPX code of the form in the database. The group box is opened in the [Screen Editor](../UserGuide/AU_20_45_20.md), and you can start the customization of the box and the nested radio buttons.

When you click **Save** on the editor toolbar, the editor updates the *Page* item in the database.

**Parent topic:**[Group Box \(PXGroupBox\)](../CustomizationPlatform/CG_GL_UI_GroupBoxes.md)

