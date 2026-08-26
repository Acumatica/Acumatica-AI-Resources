# Displaying a Simple Dialog Box {#_0f701240-23d8-4858-95ea-6f763ddd721a .concept}

In Acumatica ERP, the system can display a dialog box for confirmation purposes either when user invokes an action or during a commit of a field value to the server. The system supports the following types of dialog boxes:

-   Simple dialog boxes that contain text and two buttons, such as **OK** and **Cancel** or **Yes** and **No**. These dialog boxes are implemented by using the Ask\(\) method.
-   Extended dialog boxes with UI elements, grids, or both. These dialog boxes can be used as a part of a workflow.

Currently, the Acumatica mobile app supports simple dialog boxes, which are displayed when a user selects an action. You do not need to map these dialog boxes; if a simple dialog box is displayed in the desktop version of Acumatica ERP, the dialog box will also be displayed in the mobile app.

## Enabling a Dialog Box in Application Code { .section}

Before Acumatica ERP 2020 R2, dialog boxes were not supported in the mobile app. Thus, they are often suppressed by checking the [IsMobile](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=198bc715-56b2-37c5-895f-fd136023c404) property value of a graph. For a dialog box to be displayed in the mobile app, you need to remove this checking.

For example, in the following code, the dialog box is not displayed for the mobile app.

```
 if (this.Transactions.Select().Count > 0 **&amp;&amp; !IsMobile**)
{
  this.Document.Ask(Messages.Warning, Messages.POOrderOrderDateChangeConfirmation, 
    MessageButtons.YesNo, MessageIcon.Question);
}
```

To enable the dialog box for the mobile app, the code should look as follows.

```
if (this.Transactions.Select().Count > 0)
{
  this.Document.Ask(Messages.Warning, Messages.POOrderOrderDateChangeConfirmation, 
    MessageButtons.YesNo, MessageIcon.Question);
}
```

**Parent topic:**[Dialog Boxes and Smart Panels](../StudioDeveloperGuide/MOBILE_MSDL_Screen_DialogBoxes_SmartPanels.md)

