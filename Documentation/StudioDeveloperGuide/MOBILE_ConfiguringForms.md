# Configuring Editing Forms {#_089f3167-ee1d-4746-af9c-e3d3b19550a5 .concept}

You have to configure an editing form \(that is, a form that is used to enter and edit a data record\) based on the use of the form in Acumatica ERP.

In some cases, Acumatica ERP uses a single form to manage data records of a particular type \(that is, the *.aspx* page contains the FormView and Grid controls\). In these cases, in the mobile site map, you have to configure both the editing form and the list form by using a single declaration of the sm:Screen tag.

In other cases, Acumatica ERP uses the following separate forms for data records of a particular type:

-   A list view \(the *.aspx* page contains one Grid control\) to manage records
-   A form view \(the *.aspx* page with one FormView control\) to edit fields

In these cases, you have to configure two separate declarations of the sm:Screen tag: one for the list form, and another for the editing form.

## Example: Creating the Same Layout for the Editing Form and the List { .section}

To see an example of configuring an editing form to use the same layout as a list does, copy the code below to an `.xml` file, put the file in the `\App_Data\Mobile` folder of the Acumatica ERP website, and start the mobile application.

```
<?xml version="1.0" encoding="UTF-8"?>
<sm:SiteMap xmlns:sm="http://acumatica.com/mobilesitemap" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

    <sm:Screen DisplayName="Expense Receipt" Icon="system://Display1" Id="EP301020" Type="SimpleScreen">
        <sm:Container FieldsToShow="3" Name="ReceiptDetails">
            <sm:Field Name="Date" />
            <sm:Field Name="Description" />
            <sm:Field Name="ExpenseItem" />
            <sm:Field Name="TotalAmount" />

            <sm:Action Behavior="Save" Context="Record" Name="Save" />
            <sm:Action Behavior="Cancel" Context="Record" Name="Cancel" />

            <sm:Action Behavior="Create" Context="Container" DisplayName="Add" Icon="system://Plus" Name="Insert" />
            <sm:Action Behavior="Delete" Context="Selection" Icon="system://Trash" Name="Delete" />
        </sm:Container>
    </sm:Screen>
</sm:SiteMap>
```

This example is almost identical to [Example: Creating a Simple List View Layout](MOBILE_ConfiguringLists.md#_95fe7b23-bce2-4ef8-b56e-8b142d413547), except that it adds two actions, **Save** and **Cancel**, which you need to save or cancel changes to a data record.

## Example: Configuring the List and the Editing Form Separately { .section}

To see an example of configuring the editing form differently than you do a list form, copy the code below to an `.xml` file, put the file in the `\App_Data\Mobile` folder of the Acumatica ERP website, and start the mobile application.

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

In this example, you use the *EP301010* screen to display the list form, and you use the *EP301020* screen to display the editing form. The same approach is used in Acumatica ERP.

To hide the editing form from the main menu of the mobile application, set the Visible attribute to *false* for the sm:Screen tag; see the *EP301020* screen configuration above.

In the list form \(*EP301010*\), you find two actions that can be invoked to open the editing form for a data record: `Behavior="Create"` and `Behavior="Open"`. The `Redirect="true"` attribute indicates that the editing form needs to be opened as a different screen. The actual screen that will be opened is determined by the server logic.

**Parent topic:**[Screens](../StudioDeveloperGuide/MOBILE_Screens.md)

