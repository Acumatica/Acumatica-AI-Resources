# Push Notifications: To Include Additional Information in Push Notifications {#_b3ca2deb-516c-44b4-886c-48e599b285a6 .task}

The following activity shows you how to include additional information in push notifications.

**Attention:** The additional information that you add to push notifications is included in all notifications that are sent from the Acumatica ERP instance on which the additional information is configured.

## Story { .section}

In Acumatica ERP, you need to add additional information to push notifications, such as the username of the user that performed the data change or the business date when the data transaction is performed.

## Process Overview { .section}

In a project of your Acumatica ERP extension library, you will include the additional information in the AdditionalInfo element of notifications in JSON format.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Prepare an Acumatica ERP instance with any predefined dataset, as described in the [Instance Deployment: To Deploy an Instance with Demo Data](../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md) prerequisite activity.
2.  Create a customization project, as specified in the [Customization Projects: To Create a Customization Project](../CustomizationPlatform/CustomizationProjects_GettingStarted_Activity_CreateProject.md) prerequisite activity.
3.  Create an extension library, as described in the [To Create an Extension Library](../CustomizationPlatform/cg_platform_tocreateextensionlib.md) prerequisite activity.

**Tip:** You can find the final code of this activity in the [CommitEventEnricher.cs](https://github.com/Acumatica/Help-and-Training-Examples/tree/HEAD/IntegrationDevelopment/Help/ConfiguringPushNotifications/AdditionalInformation/CommitEventEnricher.cs) file in the Help-and-Training-Examples repository on GitHub.

## Step 1: Including Additional Information in Push Notifications { .section}

To include additional information in push notifications, do the following:

1.  In the project of your Acumatica ERP extension library, define a class that implements the PX.Data.PushNotifications.ICommitEventEnricher interface.
2.  In the class that implements the ICommitEventEnricher interface, implement the Enrich\(\) method of the interface. In the method, add the properties that you want to be returned in push notifications.

    **Attention:** The Enrich\(\) method is called in the PX.Data.PXTransactionScope.Dispose\(\) method. Therefore, the Enrich\(\) method must not return data that is not accessible in this scope.

    The following code shows a sample implementation of the ICommitEventEnricher interface, which adds the business date and the name of the user to the AdditionalInfo element of notifications in JSON format.

    ```
    ﻿using PX.Common;
    using PX.Data.PushNotifications;
    
    public class CommitEventEnricher : ICommitEventEnricher
    {
        public void Enrich(IQueueEvent commitEvent)
        {
            var businessDate = PXContext.PXIdentity?.BusinessDate;
            var userName = PXContext.PXIdentity?.IdentityName;
            commitEvent.AdditionalInfo.Add(nameof(businessDate), businessDate);
            commitEvent.AdditionalInfo.Add(nameof(userName), userName);
        }
    }
    ```

3.  Build the project of your Acumatica ERP extension library.

## Step 2: Testing Push Notifications with Additional Information { .section}

Run Acumatica ERP and make sure that when the results of the query change, the application includes the additional information in the AdditionalInfo element of the notifications in JSON format, as shown in the following notification example.

```
{
  ...
  "TimeStamp":636295833829493672,
  "AdditionalInfo":
  {
    "businessDate":"2024-05-05T15:16:23.1",
    "userName":"admin"
  }
}
```

**Parent topic:**[Configuring Push Notifications for Real-Time Monitoring](../IntegrationDevelopmentGuide/IntegrationDev_PushNotifications_Mapref.md)

