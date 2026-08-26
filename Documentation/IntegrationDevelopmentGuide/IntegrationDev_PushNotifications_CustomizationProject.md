# Push Notifications: Inclusion in a Customization Project {#_a6bc4b93-e961-4965-a8de-030642e9d823 .concept}

If you need to transfer the configuration of push notifications to another Acumatica ERP instance, you need to include the respective push notification definition in a customization project.

**Tip:** After you have included all needed items in a customization project, you export the project as a ZIP file. In the target instance, you import the file and publish this customization project. For details about importing, exporting, and publishing customization projects, see [Managing Customization Projects](../Shared/../CustomizationPlatform/CG_GL_Projects.md) and [Publishing Customization Projects](../Shared/../CustomizationPlatform/CG_GL_Projects_Publishing.md).

## Push Notification Definitions in a Customization Project { .section}

You can add each push notification definition to a customization project as a *PushNotification* item, which contains the dataset of a push notification definition. A push notification definition includes the push notification destination and the data query, which defines the data changes for which Acumatica ERP sends notifications.

You use the [Push Notifications](../UserGuide/AU_21_00_00.md) \(AU210000\) page of the Customization Project Editor to manage *PushNotification* items in the customization project. This page displays the list of the push notification definitions that have been added to the customization project.

For each data query that defines the data changes for which Acumatica ERP should send push notifications in the added push notification definition or definitions, you need to do one of the following:

-   If the data query has been defined with a generic inquiry, add the generic inquiry to the customization project, as described in the [Including Generic Inquiries in a Customization Project](../UserGuide/GI_CustomizationProject_Mapref.md) chapter.
-   If the data query has been defined with a built-in query definition, make sure that the respective DLL file is available in the customization project as a *File* item.

If a push notification included in a customization project has been changed on the [Push Notifications](../UserGuide/SM_30_20_00.md#) \(SM302000\) form and you want to include these changes in the customization project, you have to update the appropriate item in the customization project by clicking **Reload from Database** on the toolbar of the [Push Notifications](../UserGuide/AU_21_00_00.md) \(AU210000\) page of the Customization Project Editor.

**Parent topic:**[Configuring Push Notifications for Real-Time Monitoring](../IntegrationDevelopmentGuide/IntegrationDev_PushNotifications_Mapref.md)

