# Validation of Customization Projects: Compatibility Validation {#_132eba70-8f57-44ac-961c-67f378ca93a9 .concept}

To prevent issues between a customization project and a new version of Acumatica ERP, you need to validate the customization project before upgrading a customized instance of Acumatica ERP. During publication, the Acumatica Customization Platform validates the compatibility of the project’s code with the application code of the instance.

**Tip:** By default, the validation that detects breaking changes is turned on in an instance of Acumatica ERP. If you need to **temporarily** omit this validation, you can turn off the CheckCustomizationCompatibility key by including the following string in the &lt;appSettings&gt; section of the `web.config` file located in the website folder.

```language-xml
<add key="CheckCustomizationCompatibility" value="False" />
```

We don’t recommend turning off the validation permanently.

## Before the Upgrade { .section}

In a development environment, test your customizations before a production upgrade to Acumatica ERP 2026 R1:

1.  Deploy a new instance of Acumatica ERP 2026 R1. \(See [Deploying Acumatica ERP Instances](../Shared/../UserGuide/INST_Deploying_Instances_Mapref.md) for details.\)
2.  On the [Customization Projects](../Shared/../UserGuide/SM_20_45_05.md) \(SM204505\) form, import all customization projects that you need to upgrade for Acumatica ERP 2026 R1.
3.  Start the publication of these customization projects. The system first validates the projects for compatibility with the current version.

**If validation errors occur:**

-   Learn what each error message means. \(See [Validation of Customization Projects: Compatibility Validation Errors](../Shared/../DeveloperGuide/CodeCustomization_Validation_Errors.md).\)
-   Check the developer release notes for descriptions of specific issues. You can find the release notes, along with the needed Acumatica ERP build, on the [Acumatica Community](https://community.acumatica.com/) website.
-   Replace updated or deprecated objects with the recommended alternatives. You can use AI tools to simplify update. \(See [Validation of Customization Projects: Using AI Tools](../Shared/../DeveloperGuide/CodeCustomization_Validation_Copilot.md).\)
-   Redesign solutions if no alternatives are available for removed objects.

## During Validation { .section}

This validation process executes the following checks in the code of a customization project to detect the breaking changes in the code of Acumatica ERP:

-   In graph extensions:
    -   Checking the signature for each method that is overridden by using the PXOverride attribute
    -   Checking that each base graph exists
-   In data access class extensions when a field attribute is overridden:
    -   Checking that the field exists
    -   Checking that the field type hasn’t changed
-   In binary DLL files: Checking all the referenced methods, properties, fields, return types, and signatures

If the validation has completed successfully, you can upgrade an instance of Acumatica ERP. For details, see [Upgrading of Acumatica ERP: General Information](../UserGuide/INST_Upgrading_GeneralInfo.md).

## During the Upgrade { .section}

In the production environment, do the following during the upgrade to Acumatica ERP 2026 R1:

1.  Unpublish all customization projects. \(See [Unpublishing Customization Projects](../Shared/../CustomizationPlatform/CustomizationProjects_UnpublishingProjects_Mapref.md) for details.\)
2.  Upgrade the Acumatica ERP instance. \(Learn more in [Upgrading of Acumatica ERP: General Information](../Shared/../UserGuide/INST_Upgrading_GeneralInfo.md).\)
3.  Replace the old customization projects with those validated for Acumatica ERP 2026 R1. \(See [To Replace the Content of a Project from a Package](../Shared/../CustomizationPlatform/CG_GL_Projects_ReplacingContent.md) for more information.\)
4.  Publish the validated customization projects. \(See [Publishing Customization Projects](../Shared/../CustomizationPlatform/CG_GL_Projects_Publishing.md) for details.\)

**Parent topic:**[Validating Customization Projects](../DeveloperGuide/CodeCustomization_Validation_Mapref.md)

