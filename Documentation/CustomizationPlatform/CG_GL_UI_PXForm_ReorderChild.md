# To Reorder Child UI Elements {#_e8c5d340-f996-4634-8f84-ce56198286c5 .concept}

You can reorder UI elements in a container manually by dragging them in the Control Tree of the [Screen Editor](../UserGuide/AU_20_45_20.md). However before you start to move elements, note the following simple rules:

-   You can move a child element anywhere within its parent container control.
-   To move an element within a container, you have to drag the element to the required place.
-   Any element moved within a container is automatically aligned according to the nearest PXLayoutRule component placed above it. \(See [Layout Rule \(PXLayoutRule\)](CG_GL_UI_LayoutRules.md) for details.\)

To move an element within a container, perform the following actions:

1.  Open the container in the Screen Editor, as described in [To Open a Container in the Screen Editor](CG_GL_UI_PXForm_ToOpen.md).
2.  Ensure that the container node is selected and expanded in the Control Tree of the editor. Click the arrow left of the node to expand the node if needed.
3.  In the Control Tree, drag the element to the required position.

    The Screen Editor moves the element with all its child elements to the new position in the container.

4.  Click **Save** to save your changes to the customization project.

**Parent topic:**[Form Container \(PXFormView\)](../CustomizationPlatform/CG_GL_UI_PXForm.md)

