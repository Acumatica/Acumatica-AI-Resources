# item

An object of the mobile site map that defines a screen of a mobile app.

## Attributes

<table id="_8abe5366-d17f-4693-bb82-fa1277b19019"><thead><tr><th>

Attribute

</th><th>

Description

</th></tr></thead><tbody><tr><td>

DisplayName

</td><td>

The name of the menu item on the UI.

</td></tr><tr><td>

ExpandSelector

</td><td>

The name of a selector field from the primary container. An Acumatica ERP form can contain a selector control that acts like a filter. For example, the **Order Type** selector control on the Sales Orders form \(SO301000\) works as a filter. If the ExpandSelector attribute is specified for a screen, then the mobile app represents the screen as multiple tabs, where each tab corresponds to a single value of the referenced selector field.

</td></tr><tr><td>

Icon

</td><td>

The name of an image that is used to display the screen icon on the main menu \(and on the sidebar menu, if item is specified as favorite\) of a mobile application. If this optional attribute is not specified for a screen, the screen is displayed in the UI without an icon. See [Icons](MOBILE_Ref_Icons.md) for the possible values and the corresponding images for the Icon attribute.

</td></tr><tr><td>

isDefaultFavorite

</td><td>

An indicator of whether a link for the screen is added to the sidebar menu as a favorite screen. This attribute has the following possible values:-   *true*, indicating that the screen is displayed in the sidebar menu.
-   *false*, meaning that the screen is not displayed in the sidebar menu. This value is set by default.

</td></tr><tr><td>

Visible

</td><td>

An indicator of the visibility of the screen in the main menu. If the value of this attribute is *true*, the screen is visible on the main menu. By default, the value is *true*.

</td></tr></tbody>
</table>

## Example

In the following example, the Transaction \(CA304000\) screen is added to the mobile site map.

```
add item "CA304000" {
  expandSelector = "TranType"
  displayName = "Cash Transactions"
  icon = "system://Credit"
}
```

**Parent topic:**[Object Types](../StudioDeveloperGuide/MOBILE_Ref_MSDL_ObjTypes.md)

