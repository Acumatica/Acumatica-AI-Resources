# Validation of Customization Projects: Ignore List for the Compatibility Validation Errors {#_282cc58a-4700-4e9d-8cf6-4641e625c0d6 .concept}

If the validation of the compatibility of the published customization with the new version fails, the platform cancels the upgrade process and shows an error message. However, if you’re sure that a generated error isn’t really an error, you can force the validation process to ignore it so that you can continue upgrading of the customized instance of Acumatica ERP. For example, you may need to ignore an error in a third-party DLL file.

To force the validation process to ignore an error, you perform the following actions:

1.  In the `App_Data` folder of the website, create a `.txt` file whose name has the *CstValidationIgnore* prefix, such as `CstValidationIgnore.txt` or `CstValidationIgnore_ProjectName.txt`.

    **Tip:** You can create multiple `CstValidationIgnore*.txt` files with ignore lists for an instance of Acumatica ERP.

2.  In the file, paste the error message that you want to ignore.

    **Tip:** You can add multiple error messages to each file with ignore lists.

3.  Save the file.
4.  Determine which customization project has the code that provokes the error message.
5.  Add the file with the ignore list to the project \(see [To Add a Custom File to a Project](../CustomizationPlatform/CG_GL_Items_Files_Adding.md) for details\).

    **Attention:** If a file with a *CstValidationIgnore* prefix is placed in the `App_Data` folder, the Acumatica Customization Platform will ignore the specified errors during validation.


As a result, if you publish the customization project or upgrade an Acumatica ERP instance where the project is published, the validation process ignores the error that is specified in the file.

**Parent topic:**[Validating Customization Projects](../DeveloperGuide/CodeCustomization_Validation_Mapref.md)

