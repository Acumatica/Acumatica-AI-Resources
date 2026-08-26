# Validation of Customization Projects: Certification Status of Projects {#_18ac1eee-694c-4993-8517-c69bb6c3913c .concept}

If a customization project doesn’t pass technical validation, it may negatively affect the performance of Acumatica ERP. To prevent this performance degradation, the system verifies the certification status of the customization projects that you create or upload.

**Attention:** This functionality is available for only licensed Acumatica ERP instances and is turned off by default. To use it, contact your Acumatica support provider.

## Validating the Certification Status of Customization Projects { .section}

To validate the certification status of customization projects, you perform the following steps:

1.  Open the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form.
2.  On the More menu \(under **Validations**\), click **Validate Certification Status**.

    The system performs the check and displays the result in the **Certification Status** column for each project.


Each customization project has one of these certification statuses in the Acumatica ERP instance:

-   *Certified*: The project has been imported and is available in the database with the certified customization projects.
-   *Not Certified*: The project has been imported but isn’t available in the database with the certified customization projects.
-   *Not Verified*: The project has been:
    -   Uploaded before the upgrade to 2026 R1
    -   Created manually
    -   Certified—but then a customizer modified it
-   *Not Certified for Current Version*: The project has been imported and is available in the database with the certified customization projects. However, it was certified for a different major version than the major version of the current Acumatica ERP instance.

If a project isn’t certified or its certification status can’t be verified, the system displays a warning icon to the right of its name.

**Important:** If you modify a certified customization project, its certification status will change to *Not Verified*.

We recommend that you avoid publishing a customization project with the *Not Certified*, *Not Verified*, or *Not Certified For Current Version* certification status. If you decide to publish one, the system will display a warning during publication.

**Parent topic:**[Validating Customization Projects](../DeveloperGuide/CodeCustomization_Validation_Mapref.md)

