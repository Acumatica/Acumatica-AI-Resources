# To Force the Platform to Execute Database Scripts {#_45eb17e9-2f74-4c2f-9b6e-c44838ad4aeb .concept}

You can discover that the database scripts that are included in a customization project have not been executed by the Acumatica Customization Platform when you publish the project. This issue arises when you have first published the project and then changed the scripts.

When you publish the project, the platform executes all the scripts included in the project. For optimization purposes, to avoid the execution of database scripts during every publication of the project, the platform saves information about each script that has been executed at least once and has not yet been changed in the database, and omits the repeated execution of such scripts.

To force the platform to clean up all such information about previously executed scripts of a customization project and execute the scripts again while publishing the project, follow the instructions described in [Publication with Cleanup: General Information](CustomizationProjects_PublishingWithCleanup_GeneralInfo.md).

**Parent topic:**[Troubleshooting Customization](../CustomizationPlatform/CG_Troubleshooting.md)

