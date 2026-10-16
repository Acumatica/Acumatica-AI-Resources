# To Map a Screen in the Modern UI

## To Convert Screen Mapping Written for the Classic UI

[Updating a Customization Project for the Modern UI: To Adapt an MSDL Script](../DeveloperGuide/UIDev_Customization_AdaptMSDL_activity.md)

For the forms that have both the Classic UI and the Modern UI version, the MSDL mapping is based on the Modern UI version of the screen, that is, the TypeScript and HTML files.

## To Map a Screen That Exists Only in the Modern UI

You can map a screen that is defined only in the Modern UI and does not have any ASPX file for the Classic UI. You can use the same approach as for the Classic UI, meaning mapping objects and adding instructions. To determine the object name for mapping, you use the views and DAC names which you can learn by using the Element Inspector.

Container and field names from the Element Inspector: In the Modern UI, you can safely use the Element Inspector to determine the container name and field name for mapping.

The container name corresponds to the **View Name** value in the **Element Properties** dialog box.

The field name corresponds to the **Data Field** value in the **Element Properties** dialog box.

Suppose that you want to map the **Processing Center** box on the Sales Orders \(SO301000\) form. To determine the container and field names, you use the Element Inspector on the **Processing Center** box, and in the **Element Properties** dialog box, use the View Name value \(`CurrentDocument`\) and **Data Field** value \(`ProcessingCenterID`\).


The resulting mapping looks as follows.

```
add container "CurrentDocument" {
  add field "ProcessingCenterID"
}
```

**Parent topic:**[Mobile Site Map](../StudioDeveloperGuide/MOBILE_MobileSiteMap.md)

