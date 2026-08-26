# Processing Operations: General Information {#_18ee8457-e989-4bf0-a400-88c8fff3dfea .concept}

On a processing form, a user can invoke an operation to be performed on multiple selected records at once. For instance, a processing operation can be a procedure that modifies the status of documents.

This topic describes how to implement a processing operation. For details about how to define the UI of a processing form, see [Processing Form: General Information](../DeveloperGuide/UIDev_ProcessingScreen_GeneralInfo.md).

## Learning Objectives { .section}

In this chapter, you'll learn how to implement processing operations, which are used on processing forms.

## Applicable Scenarios { .section}

You implement a processing operation if you need to create a processing form.

## Specifying the Processing Operation { .section}

A processing operation is defined as a method that is invoked when a user clicks a processing button on the form toolbar of a processing form. You can specify the processing operation in one of the following ways:

-   If **no workflow is implemented** for the records that you are going to process on the form, you specify the processing delegate by using one of the [`SetProcessDelegate`](https://help.acumatica.com/(W(2))/Help?ScreenId=ShowWiki&pageid=f74d0a85-e082-d824-66c1-8a229df51e96) methods. For details, see [Processing Operations: Specifying a Processing Delegate](CodeCustomization_ProcessingOperations_Delegate.md).
-   If **a workflow is implemented** for the records that you are going to process on the form, you invoke one of the [`SetProcessWorkflowAction`](https://help.acumatica.com/(W(1))/Help?ScreenId=ShowWiki&pageid=f74d0a85-e082-d824-66c1-8a229df51e96) methods. For more information, see [Processing Operations: Specifying a Workflow Action](CodeCustomization_ProcessingOperations_Workflow.md).

**Important:** To ensure the history of a processing operation is saved correctly, the main DAC of the processing view must contain the `NoteID` field. This field must have the PXNote attribute declared on it.

**Parent topic:**[Implementing Processing Operations](../StudioDeveloperGuide/CodeCustomization_ProcessingOperations_Mapref.md)

