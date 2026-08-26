# Use of the SkinID Property of Containers {#_ce75ce73-a264-41a6-9545-68ffe2003d45 .concept}

In the code of Acumatica ERP, predefined skins are used to assign a style and a set of toolbar buttons to a container. The SkinID property of a container specifies which of these skins the system should apply to the container. A skin is specific to a particular container; you cannot share a skin setting between containers of different types. If you do not set the SkinID property, the container uses the default skin, if one is defined.

## Predefined Skins { .section}

The following table lists and describes the predefined skins that are recommended to use for the PXFormView, PXGrid, and PXPanel containers.

|UI Element|SkinID|Description|Example|
|----------|------|-----------|-------|
|PXFormView|*Transparent*|Is used to display a simple form container that has no caption and cannot be collapsed.|The form container on the **Financial Details** tab item of the [Bills and Adjustments](../UserGuide/AP_30_10_00.md) \(AP301000\) form|
|PXGrid|*Attributes*|Is used to display a simple grid without a toolbar. The grid contains a predefined set of rows, which can be edited.|The **Attributes** grid on the Attributes tab item of the [Non-Stock Items](../UserGuide/IN_20_20_00.md) \(IN202000\) form|
| |*Details*|Is used to render a detail grid in a master-detail data entry form. The grid has a toolbar that holds the default actions, such as **Refresh**, **Add**, **Remove**, **Fit to Screen**, and **Export to Excel**; it can also hold custom actions. The grid has no caption and paging is allowed.|The grid on the **1099 Settings** tab item of the [Accounts Payable Preferences](../UserGuide/AP_10_10_00.md) \(AP101000\) form|
| |*Inquire*|Is used to display data without rows being added or removed. The grid has a toolbar that contains the **Refresh**, **Fit to Screen**, and **Export to Excel** default actions and can contain custom actions. The grid has no caption, and paging is allowed.|The grid on the **Attributes** tab item of the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form|
| |*Primary*|Is used to display an editable primary grid that does not contain its own toolbar. To work with the grid, the user applies the action buttons of the form toolbar. The grid has no caption, and paging is allowed.|The grid on the [Entry Types](../UserGuide/CA_20_30_00.md) \(CA203000\) form|
| |*PrimaryInquire*|Is used to display a primary grid without the availability to edit data. The grid does not contain its own toolbar. To work with the grid, the user applies the action buttons of the form toolbar, which does not contain the **Add**, **Delete**, and **Switch Between Grid and Form** buttons. The grid has no caption, and paging and filtering are allowed.|The grid on the [Release AP Documents](../UserGuide/AP_50_10_00.md) \(AP501000\) form|
| |*ShortList*|Is used to display a small grid with a few records inside a form view. The grid has a toolbar that contains the **Refresh**, **Add**, and **Remove** default actions.|The **Sales Categories** grid on the Attributes tab item of the [Non-Stock Items](../UserGuide/IN_20_20_00.md) \(IN202000\) form|
|PXPanel|*Buttons*|Is used in dialog boxes to display a horizontal row of buttons with right alignment.|The group of buttons in the **Add PO Receipt** dialog box, which opens if you click the **Add PO Receipt** button in the toolbar of the **Document Details** tab item of the [Bills and Adjustments](../UserGuide/AP_30_10_00.md) \(AP301000\) form|
| |*Transparent*|Is used to group controls in a form container. The panel has no caption.|The group of controls on the **Template** tab item of the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form|

**Parent topic:**[Configuring Containers](../StudioDeveloperGuide/CW__mng_Configuring_Containers.md)

