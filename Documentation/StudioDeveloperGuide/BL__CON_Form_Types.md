# Form Types {#_b527d7df-0b1d-4132-b734-7264a734af9e .concept}

In this topic, you can find the descriptions of types of forms in Acumatica ERP.

## Data Entry Forms { .section}

Data entry forms are the most frequently used forms of Acumatica ERP. Typically, these forms are used for the input of business documents and records, such as sales orders and cases.

## Maintenance Forms { .section}

*Maintenance forms* are forms where data can be entered about records of a particular type, which are then available for selection on other forms. Compared with data entry forms, maintenance forms are generally used rarely to define fewer records.

When records of a particular type have been defined on a maintenance form, users can select them rather than type them on data entry forms. However, unlike predefined options in a drop-down box, items defined on a maintenance form and selected on other forms can be added by any authorized user—and they’re immediately available for selection. The records can also be selected on other types of forms, so that users can view \(on an inquiry form or report\) and process \(on a processing form\) data filtered or organized by particular records of the type.

For instance, in Acumatica ERP, users enter AR invoices on a data entry form. Some of the invoices’ settings can be defined on a maintenance form, such as the credit terms used by customers to pay the company. These maintenance records are entered less frequently and are fewer in number than AR invoices are.

## Setup Forms { .section}

In Acumatica ERP, administrators use setup forms to provide configuration parameters for the application, most commonly in the beginning of the functional area’s implementation and use. The configuration parameters in a setup form are stored in a single record in the corresponding setup table of the database. By using a setup form, an administrator can edit this record—for example, turn on or off particular functionality, specify settings that determine default system behavior, and specify the numbering settings to be used to number documents of particular types.

For more information about setup forms, see [Configuration Parameters of the Application \(Setup Forms\)](BL__con_UsingSetup.md).

## Inquiry Forms { .section}

Inquiry forms are forms that display data based on the provided filters. An inquiry form usually consists of a Selection area, which consists of UI elements that provide filtering conditions, and a grid that contains the filtered data.

For more information about filtering parameters on inquiry forms, see [Adding Filtering Parameters to a Form](../DeveloperGuide/UIDev_FilteringParameters_Mapref.md).

## Processing Forms { .section}

On a processing form, a user can invoke an operation to be performed on multiple selected records at once. For instance, a processing operation can be a procedure that modifies the status of documents.

For details about processing forms, see [Defining a Processing Form](../DeveloperGuide/UIDev_ProcessingScreen_Mapref.md) and [Implementing Processing Operations](CodeCustomization_ProcessingOperations_Mapref.md).

## Substitute Forms { .section}

In Acumatica ERP, you can create a generic inquiry that presents the data of records entered on a data entry or maintenance form \(the *entry form* in this context\) in a tabular format. You can then define the generic inquiry as a substitute form to be brought up instead of the entry form. Thus, when a user clicks the entry form’s name in a workspace or search results, the system will open the substitute form—the list of records created on the entry form. When the user clicks a record identifier in the list, the system opens the entry form with that record shown.

**Parent topic:**[Designing the User Interface](../StudioDeveloperGuide/DA__mng_Designing_UI.md)

