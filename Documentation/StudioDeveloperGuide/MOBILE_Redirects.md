# Redirecting to Different Screens and Containers {#_7244493f-a03a-4efa-9cef-18f2d4f08682 .concept}

You can redirect the user to different screens and containers in a mobile application in one of the following ways:

1.  Allow a redirection that is already implemented in Acumatica ERP
2.  Create a new redirection to a screen or container

These ways are described in the following sections.

## Allowing a Redirection That Is Implemented in Acumatica ERP { .section}

While executing an action, you may need to redirect the application from the current screen to a different screen or to an external URL. As a rule, the business logic of Acumatica ERP handles redirection to a screen by using the PXRedirectRequiredException and PXPopupRedirectException exceptions.

In a mobile application, you can allow a redirection that is implemented in an action of Acumatica ERP. To do this, you set the Redirect attribute of the [&lt;sm:Action&gt;](MOBILE_sm_Action.md) tag to *true* in an `.xml` file of the mobile site map.

**Example: Using Existing Redirection from the List to the Editing Form**

To see an example of allowing a redirection implemented in an action, copy the code below to an `.xml` file, put the file in the `\App_Data\Mobile` folder of the Acumatica ERP website, and start the mobile application.

```
<?xml version="1.0" encoding="UTF-8"?>
<sm:SiteMap xmlns:sm="http://acumatica.com/mobilesitemap" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

    <sm:Folder DisplayName="Expense Receipts" Type="HubFolder" Icon="system://NewsPaper" >
        <sm:Screen Id="EP301010" Type="SimpleScreen" DisplayName="Expense Receipts" >
            <sm:Container Name="ExpenseReceipts" >
                <sm:Field Name="Date" />
                <sm:Field Name="ClaimAmount" />
                <sm:Field Name="DescriptionTranDesc" />
                <sm:Field Name="Currency" />

                <sm:Action Name="addNew" Context="Container" Behavior="Create" Redirect="true" Icon="system://Plus" />
                <sm:Action Name="editDetail" Context="Container" Behavior="Open" Redirect="true" />
                <sm:Action Name="Delete" Context="Selection" Behavior="Delete" Icon="system://Trash" />
            </sm:Container>
        </sm:Screen>
    </sm:Folder>

    <sm:Screen Id="EP301020" Type="SimpleScreen" Icon="system://Display1" DisplayName="Expense Receipt" Visible="false" OpenAs="Form">
        <sm:Container Name="ReceiptDetails" >
            <sm:Field Name="Date" />
            <sm:Field Name="Description" />
            <sm:Field Name="ExpenseItem" />
            <sm:Field Name="TotalAmount" />

            <sm:Action Name="Save" Context="Record" Behavior="Save" />
            <sm:Action Name="Cancel" Context="Record" Behavior="Cancel" />
        </sm:Container>
    </sm:Screen>
</sm:SiteMap>
```

In this example, you use the *EP301010* screen to display the list and the *EP301020* screen to display the editing form. In the list view \(*EP301010*\), notice two actions that result in opening the form view for a data record: `Behavior="Create"` and `Behavior="Open"`. The `Redirect="true"` attribute indicates that the editing form needs to be opened as a different screen.

You can still control the current screen after an action is completed by using the After attribute of the corresponding sm:Action tag. The After attribute defines more complex behavior of the container when the Redirect attribute of this tag is set to *true*. Possible values for the After attribute have the following meanings:

-   If redirection doesn't happen:
    -   Refresh: The current container is refreshed.
    -   Close: The current container is closed, and the previous container in the stack is loaded.
-   If redirection happens:
    -   Refresh: A new screen is loaded, and the previous one is saved in the stack.
    -   Close: The current container is closed, and the new one is opened and takes the position of the closed container in the stack.

The default value of the After attribute is Refresh.

**Example: Using Existing Redirection to an External URL**

If an action on an Acumatica ERP form provides redirection to an external URL, you can map the action to use in the mobile app. To do this, you need no additional attributes in the &lt;sm:Action&gt; tag. However, the Redirect attribute of the tag must be set to *true* as in the following example.

```
...
<sm:Action Behavior="Void" Context="Record" Name="ViewOnMap" Redirect="true"/>
...
```

On a mobile device, such action launches the default browser and passes the URL, which is obtained from the Acumatica ERP server, to the browser that opens the webpage specified in the URL.

## Creating a New Redirection to a Screen or Container { .section}

You can create a redirection to any container or screen in the mobile application when the redirection is absent in Acumatica ERP. For example, you can do this to implement pop-up windows in the mobile application.

To create a redirection, you use the following attributes:

-   RedirectToScreen sets the ID of the screen to redirect to. If the redirection target is within the current screen \(such as a different container\), don't use this attribute.
-   RedirectToContainer sets the name of the container to redirect to. If you don't specify this attribute, you are redirected to the primary container of the target screen.

**Example: Creating a Redirection to Another Container Inside the Screen**

To see an example of creating a new redirection to another container inside the screen, copy the code below to an `.xml` file, put the file in the `\App_Data\Mobile` folder of the Acumatica ERP website, and start the mobile application.

```
<?xml version="1.0" encoding="UTF-8"?>
<sm:SiteMap xmlns:sm="http://acumatica.com/mobilesitemap" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

    <sm:Folder DisplayName="Expense Claims" Icon="system://Folder" Type="HubFolder">
        <sm:Screen DisplayName="Expense Claims" Id="EP301030" Type="FilterListScreen">

            <sm:Container Name="Selection">
                <sm:Field Name="Employee"/>
            </sm:Container>

            <sm:Container Name="Claim">
                <sm:Field ForceIsDisabled="true" Name="ReferenceNbr"/>
                <sm:Field Name="Status"/>
                <sm:Field Name="Date"/>
                <sm:Field Name="ClaimTotal"/>
                <sm:Field Name="Description"/>

                <sm:Action Behavior="Open" Context="Container" Name="EditDetail" Redirect="true"/>
                <sm:Action Behavior="Create" Context="Container" Icon="system://Plus" Name="CreateNew" Redirect="true"/>
            </sm:Container>
        </sm:Screen>
    </sm:Folder>

    <sm:Screen DisplayName="Expense Claim" Id="EP301000" OpenAs="Form" Type="SimpleScreen" Visible="false">

        <sm:Container Name="DocumentSummary">
            <sm:Attachments Disabled="true"/>
            <sm:Field ForceIsDisabled="true" Name="ReferenceNbr"/>
            <sm:Field Name="Description"/>

            <sm:Action Behavior="Void" Context="Record" Name="ShowSubmitReceipt" Redirect="true" RedirectToScreen="EP301000" RedirectToContainer="SubmitReceipts$List"/>

            <sm:Action After="Close" Behavior="Save" Context="Record" Name="Save"/>
            <sm:Action Behavior="Cancel" Context="Record" Name="Cancel"/>
        </sm:Container>

        <sm:Container Name="SubmitReceipts" Type="SelectionActionList" Visible="false">
            <sm:Field Name="Description"/>
            <sm:Field Name="Date"/>
            <sm:Field Name="ClaimAmount"/>

            <sm:Action Behavior="Void" Context="List" Name="SubmitReceipt"/>
        </sm:Container>

    </sm:Screen>
</sm:SiteMap>
```

In this example, the *EP301000* screen with `DisplayName="Expense Claim"` includes the following containers:

-   DocumentSummary, which contains the following redirection on the Record action:

    ```
    <sm:Action ... Context="Record" Name="ShowSubmitReceipt" Redirect="true" RedirectToScreen="EP301000" RedirectToContainer="SubmitReceipts$List"/>
    ```

-   SubmitReceipts, to which the redirection is declared by the RedirectToContainer attribute

The RedirectToScreen attribute cannot be declared because both containers belong to the same screen.

In the example presented in this section, the container name has the `"SubmitReceipts$List"` value, which consists of two parts. You can expand the name of the container with special arguments for more detailed configuration of the container behavior \(as shown in the following example\).

```
 RedirectToContainer="InventoryLookup$List$InventoryLookupInventory" 
```

In this example, the RedirectToContainer value consists of the following parts:

-   Part of the string \(up to the first *$* sign\) is the name of the container.
-   Part of the string \(between the first and second *$* sign\) specifies how to open the container:
    -   List: Open as a list
    -   Form: Open as a form \(default\)
-   If the second parameter is set explicitly to List, in the rest of the string, you can specify an additional container that is used as a filter for the data records in the main container.

CAUTION:

To use the expanded way of configuring a redirection, you should clearly understand how the target screen works, how its business logic operates, and how the state of the business logic objects changes after any of the actions is executed.

**Parent topic:**[Screens](../StudioDeveloperGuide/MOBILE_Screens.md)

