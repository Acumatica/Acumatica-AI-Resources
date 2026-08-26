# Redirecting the User to Different Screens and Containers {#_b542fc68-4edc-4b44-81ae-3f3bc8bb9381 .reference}

You can redirect the user to different screens and containers in a mobile app in one of the following ways:

-   Allow a redirection that is already implemented in Acumatica ERP
-   Create a new redirection

Redirections can be performed to the following objects:

-   A container inside the current screen
-   Another screen
-   A container inside another screen

## Allowing of a Redirection That Is Implemented in Acumatica ERP { .section}

While executing an action, you may need to redirect the mobile app from the current screen to a different screen or to an external URL. As a rule, the business logic of Acumatica ERP handles redirection to a screen by using the PXRedirectRequiredException and PXPopupRedirectException exceptions.

In the mobile app, you can allow a redirection that is implemented in an action of Acumatica ERP. To do this, you set the redirect attribute of the appropriate containerAction, recordAction, or selectionAction object to *True*.

**Use of an Existing Redirection from the List Form View to the Editing Form View**

You can see an example of redirecting from the list form view to the editing form view in the [Configuring Editing Screens](mobile_msdl_screen_editfr.md) topic.

In the Invoices \(SO3030PL\) list screen, you can find two actions that can be invoked to open the editing form for a data record: `Behavior="Create"` and `Behavior="Open"`. The `Redirect="true"` attribute indicates that the editing screen needs to be opened separately. The actual screen that will be opened is determined by the server logic.

You can still control the current screen after an action is completed by using the After attribute of the corresponding action object. The After attribute defines more complex behavior of the container when the redirect attribute of this object is set to *True*. The possible values for the after attribute have the following meanings:

-   If redirection doesn't happen:
    -   Refresh: The current container is refreshed.
    -   Close: The current container is closed, and the previous container in the stack is loaded.
-   If redirection happens:
    -   Refresh: A new screen is loaded, and the previous one is saved in the stack.
    -   Close: The current container is closed, and the new one is opened, which takes the position of the closed container in the stack.

The default value of the after attribute is Refresh.

**Example: Using the Existing Redirection to an External URL**

If an action on an Acumatica ERP form provides redirection to an external URL, you can map the action to use it in the mobile app. To do this, you need no additional attributes in the action object. However, the redirect attribute of the tag must be set to *True*, as shown in the following example.

```
...
add recordAction "ViewOnMap" {
  behavior = Void
  redirect = True
}
...
```

On a mobile device, such action launches the default browser and passes the URL, which is obtained from the Acumatica ERP server, to the browser that opens the webpage specified in the URL.

## Creation of a New Redirection to a Screen or Container { .section}

You can create a redirection to any container or screen in the mobile app when the redirection does not exist in Acumatica ERP. For example, you can do this to implement pop-up windows in the mobile app.

To create a redirection, you use the following attributes:

-   RedirectToScreen specifies the ID of the screen to redirect the user to. If the redirection target is within the current screen \(such as a different container\), don't use this attribute.
-   RedirectToContainer specifies the name of the container to redirect the user to. If you don't specify this attribute, you are redirected to the primary container of the target screen.

**Example: Creating a Redirection to Another Container Inside the Screen**

The following is an example of redirecting the user to another container inside the screen.

```
add screen "EP301000" {
  openAs = Form
  add container "DocumentSummary" {
    add field "ReferenceNbr" {
      forceIsDisabled = True
    }
    add field "Description"
    add recordAction "ShowSubmitReceipt" {
      behavior = Void
      redirect = True
      redirectToScreen = "EP301000"
      redirectToContainer = "SubmitReceipts$List"
    }
    add recordAction "Save" {
      behavior = Save
      after = Close
    }
    add recordAction "Cancel" {
      behavior = Cancel
    }
    attachments {
      disabled = True
    }
  }
  add container "SubmitReceipts" {
    type = SelectionActionList
    visible = False
    add field "Description"
    add field "Date"
    add field "ClaimAmount"
    add listAction "SubmitReceipt" {
      behavior = Void
    }
  }
}
```

In this example, the Expense Claims \(EP301000\) screen includes the following containers:

-   `DocumentSummary`, which contains the following redirection on the record action.

    ```
    add recordAction "ShowSubmitReceipt" {
          behavior = Void
          redirect = True
          redirectToScreen = "EP301000"
          redirectToContainer = "SubmitReceipts$List"
        }
    ```

-   `SubmitReceipts`, to which the redirection is declared by the `redirectToContainer = "SubmitReceipts$List"` attribute.

The `RedirectToScreen` attribute is not applicable here because both containers belong to the same screen.

The value of the `redirectToContainer` attribute can be expanded with special arguments separated with the *$* symbol \(as shown in the following example\).

```
RedirectToContainer="InventoryLookup$List$InventoryLookupInventory" 
```

These arguments allow more detailed configuration of the container behavior. The arguments are specified as follows:

1.  The first argument is the name is the name of the container.
2.  The second argument specifies how to open the container:
    -   `List`: The container should be opened as a list view
    -   `Form`: The container should be opened as a form view
3.  If the second argument is set to `List`, you may specify a third argument to indicate an additional container that is used as a filter for the data records in the main container.

**Note:** To use the expanded way of configuring a redirection, you should clearly understand how the target screen works, how its business logic operates, and how the state of the business logic objects changes after any of the actions is executed.

**Parent topic:**[Screens](../StudioDeveloperGuide/mobile_msdl_screens.md)

