# Action Definition: General Information {#_f0092274-206c-4059-bbf4-ad37e93a336a .concept}

To provide users with functionality that is specific to their business needs, you can create actions and make the associated buttons and commands available on the UI. You implement the actions in a graph. You can configure the availability and visibility of the buttons and commands based on specific criteria.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create an action, the associated button on the form toolbar, and the equivalent command on the More menu
-   Configure the availability and visibility of the button and command depending on field values on the form
-   Create actions and the associated buttons on the table toolbar of multiple tabs
-   Configure the location of the buttons on the table toolbar of each tab

## Applicable Scenarios { .section}

You implement an action in the following cases:

-   You want to redirect a user to a specific form or report.
-   You want to modify or validate data records and save changes to the database.
-   You want to start a background operation, which is executed on a separate thread.

## Action Declaration in a Graph { .section}

The declaration of an action in a graph consists of the following:

-   A field of the PXAction&lt;&gt; type, which is declared as follows.

    ```language-csharp
    public PXAction<Shipment> CancelShipment;
    ```

    In the PXAction&lt;&gt; type parameter, you should specify the main DAC of the primary data view. Otherwise, the button corresponding to the action cannot be displayed on the form toolbar \(and the corresponding command cannot be displayed on the More menu\).

-   A method that implements the action; this method has the PXButton and PXUIField attributes. This method has the following forms of declaration:
    -   Without parameters and returning void: This standard form of declaration is shown in the following code example.

        ```language-csharp
        [PXButton]
        [PXUIField(DisplayName = "Cancel Shipment")]
        protected virtual void cancelShipment()
        {
            ...
        }
        ```

        This type of declaration is used for an action that is executed synchronously and is not called from a processing form.

    -   With a parameter of the PXAdapter type and returning IEnumerable: You can see an example of this form of declaration in the following code.

        ```language-csharp
        [PXButton]
        [PXUIField(DisplayName = "Release")]
        protected virtual IEnumerable release(PXAdapter adapter)
        {
            ...
            return adapter.Get();
        }
        ```

        This type of declaration should be used when the action initiates a background operation or is called from a processing form.


The field and the method should have the same name, differing only in the capitalization of the first letter.

**Tip:** A graph includes the Actions collection of all PXAction&lt;&gt; objects defined in the graph.

## Callback on the Action {#section_vv2_1y4_y4b .section}

When a user invokes an action through a button or command on the UI, the page sends a request to the server side of the application \(that is, it executes the callback\). By default, for a button or command, the callback is always executed—that is, the CommitChanges property of the PXButton attribute is *true*. If you do not need the form to send the recent changes made on the form, set the CommitChanges property of the PXButton attribute to *false* as follows.

```language-csharp
[PXButton(**CommitChanges = false**)]
```

The CommitChanges property must be always set to *true* for the actions that cause changes to be saved to the database.

## Configuration of the Button and Command Associated with an Action { .section}

You can adjust the availability and visibility of a button or command \(or both, if applicable\) on the UI at runtime by using event handlers, attributes, or Workflow API. For details, see [Action Customization: Disabling or Enabling of an Action](CodeCustomization_ActionsCustomization_EnableDisableAction.md) and [Action Customization: Visibility of an Action](CodeCustomization_ActionsCustomization_ShowHideAction.md).

The following code example shows how to set the availability of a button inside an event handler. To do this, you should use the methods of the PXAction&lt;&gt; class, as the following code example shows.

```language-csharp
// Disabling the CancelShipment action
CancelShipment.SetEnabled(false);
```

You do not use the static methods of the PXUIField attribute, because these methods work only with the attribute copies stored in PXCache objects.

For more information about actions and how to customize them, see [Action Customization: General Information](CodeCustomization_ActionsCustomization_GeneralInfo.md).

**Parent topic:**[Defining Actions](../StudioDeveloperGuide/CodeCustomization_ActionsDefinition_Mapref.md)

