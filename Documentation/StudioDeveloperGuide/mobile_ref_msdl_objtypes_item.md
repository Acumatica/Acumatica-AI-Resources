# item {#_7554b713-1e5b-498b-ba08-2d013b25e906 .concept}

An object of the mobile site map that defines a screen of a mobile app.

## Attributes { .section}

|Attribute|Description|
|---------|-----------|
|DisplayName|The name of the menu item on the UI.|
|ExpandSelector|The name of a selector field from the primary container. An Acumatica ERP form can contain a selector control that acts like a filter. For example, the **Order Type** selector control on the Sales Orders form \(SO301000\) works as a filter. If the ExpandSelector attribute is specified for a screen, then the mobile app represents the screen as multiple tabs, where each tab corresponds to a single value of the referenced selector field.|
|Icon|The name of an image that is used to display the screen icon on the main menu \(and on the sidebar menu, if item is specified as favorite\) of a mobile application. If this optional attribute is not specified for a screen, the screen is displayed in the UI without an icon. See [Icons](MOBILE_Ref_Icons.md) for the possible values and the corresponding images for the Icon attribute.|
|isDefaultFavorite|An indicator of whether a link for the screen is added to the sidebar menu as a favorite screen. This attribute has the following possible values:-   *true*, indicating that the screen is displayed in the sidebar menu.
-   *false*, meaning that the screen is not displayed in the sidebar menu. This value is set by default.

|
|Visible|An indicator of the visibility of the screen in the main menu. If the value of this attribute is *true*, the screen is visible on the main menu. By default, the value is *true*.|

## Example { .section}

In the following example, the Transaction \(CA304000\) screen is added to the mobile site map.

```
add item "CA304000" {
  expandSelector = "TranType"
  displayName = "Cash Transactions"
  icon = "system://Credit"
}
```

**Parent topic:**[Object Types](../StudioDeveloperGuide/MOBILE_Ref_MSDL_ObjTypes.md)

