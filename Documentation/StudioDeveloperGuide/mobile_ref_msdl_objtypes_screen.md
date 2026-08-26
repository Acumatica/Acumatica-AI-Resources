# screen {#_d5cc1aea-e7d2-4abb-a5d9-77c648d04961 .concept}

An object that maps an Acumatica ERP form to the mobile app. This object can include the definition of screen containers and the assignment of attributes.

## Attributes { .section}

|Attribute|Description|
|---------|-----------|
|OpenAs|The display type of the screen. When the screen is opened from a menu, this attribute specifies how to open the primary container. Otherwise, when the screen is opened by a redirection from an action and the RedirectToContainer attribute of this action does not explicitly specify how to open the container, then this attribute specifies how to open the redirected container of the screen. The value can be one of the following:-   *List*: The screen opens as a list.
-   *Form*: The screen opens as a form.

|
|Type|The type of the screen, which is one of the following values:-   *SimpleScreen*: The screen is a common screen.
-   *FilterListScreen*: The screen corresponds to the Acumatica ERP form based on the FormDetail form template. Such a screen must include two containers. The first container maps the form area of the form \(filter\), and the second one maps the grid.
-   *Report*: The screen is an Acumatica Report Designer report.
-   *Dashboard*: The screen is a dashboard. A screen of this type can display the following types of dashboard widgets:

    -   *Chart*
    -   *Data Table*
    -   *Score Card*
    -   *Trend Card*
Other widget types will be hidden.


|
|hideUDF|An indicator of whether user-defined fields should not be displayed on a screen. Default value is *False*.**Note:** The hideUDF attribute and the add UDFields instruction cannot be used in the same screen mapping.

|

## Example { .section}

In the following example, the Sales Orders \(SO301000\) screen that has been present in the original mobile site map is updated.

```
update screen SO301000 {
  hideUDF = True
  update container "OrderSummary" {
    add recordAction "PrintSalesOrderQuoteReport" {
      redirect = True
    }
    add recordAction "SignReport" {
      behavior = SignReport
       displayName = "Sign"
    }
  }
}
```

**Parent topic:**[Object Types](../StudioDeveloperGuide/MOBILE_Ref_MSDL_ObjTypes.md)

