# Push Notifications: To Include a Push Notification Definition in a Customization Project {#_f5726f9b-591e-4753-839c-22984df4a776 .task}

This activity will walk you through the process of including a push notification definition in a customization project.

## Story { .section}

Suppose that you need to distribute an integration application that uses Acumatica ERP push notifications to the other Acumatica ERP instances of the company. You need to include definitions for these push notifications in a customization project. Also, suppose that you have already included in this customization project all generic inquiries that are used by the required push notifications. You can then export this customization project to a ZIP file, import the file to the target instance, and publish this customization project.

## Process Overview { .section}

You will include the needed push notification definitions in a customization project.

## System Preparation { .section}

Before you begin performing this activity, do the following:

1.  Deploy an instance of Acumatica ERP with the name *MyStoreInstance* and a tenant that has the *MyStore* name and contains the *T100* data.

2.  Create a push notification by completing the following prerequisite activity: [Push Notifications: To Configure Push Notifications](IntegrationDev_PushNotifications_Activity_Configure.md).
3.  Complete the following prerequisite activity: [Generic Inquiries in a Customization Project: To Include Generic Inquiries in a Customization Project](../UserGuide/GI_CustomizationProject_Activity.md). In this activity, a customization project is created, and the generic inquiry that is used in the push notification definition is added to the customization project.

## Step: Including a Push Notification Definition in the Customization Project { .section}

You will include in the customization project the *MyBIIntegration* push notification definition, which was created in [Push Notifications: To Configure Push Notifications](IntegrationDev_PushNotifications_Activity_Configure.md).

To include the push notification definition in the customization project, do the following:

1.  In the navigation pane of the Customization Project Editor, click **Push Notifications**. The [Push Notifications](../UserGuide/AU_21_00_00.md) page opens.
2.  On the page toolbar, click **Add New Record**.
3.  In the **Add Push Notifications** dialog box, which opens, select the check box in the row with the *MyBIIntegration* destination name.
4.  Click **Save**.

    You have added the *MyBIIntegration* definition to the [Push Notifications](../UserGuide/AU_21_00_00.md) page.


**Parent topic:**[Configuring Push Notifications for Real-Time Monitoring](../IntegrationDevelopmentGuide/IntegrationDev_PushNotifications_Mapref.md)

