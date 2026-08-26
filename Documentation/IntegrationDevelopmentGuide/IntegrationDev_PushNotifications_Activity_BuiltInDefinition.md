# Push Notifications: To Create a Built-In Query Definition {#_d903e5af-1446-4b74-b492-087e8110cdf0 .task}

The following activity shows you how to create a built-in query definition for push notifications.

## Story { .section}

Suppose that you need to configure Acumatica ERP to send push notifications for a query that is defined as a class in the source code of the application—that is, for a built-in definition of the query.

## Process Overview { .section}

In a project of your Acumatica ERP extension library, you will define a class that implements the [PX.PushNotifications.Sources.IInCodeNotificationDefinition](https://help.acumatica.com/(W(3))/Help?ScreenId=ShowWiki&pageid=22811f24-a3de-8b1c-0160-e59a96540465) interface. You will then build the project of your Acumatica ERP extension library and test the built-in query definition.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Prepare an Acumatica ERP instance with any predefined dataset. You can do it by completing the following prerequisite activity: [Instance Deployment: To Deploy an Instance with Demo Data](../Shared/../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  Create a customization project, such as in the [Customization Projects: To Create a Customization Project](../Shared/../CustomizationPlatform/CustomizationProjects_GettingStarted_Activity_CreateProject.md) prerequisite activity.
3.  Create an extension library, as described in the [To Create an Extension Library](../Shared/../CustomizationPlatform/cg_platform_tocreateextensionlib.md) prerequisite activity.

**Tip:** You can find the final code of this activity in the [TestInCodeDefinition.cs](https://github.com/Acumatica/Help-and-Training-Examples/tree/HEAD/IntegrationDevelopment/Help/ConfiguringPushNotifications/BuildInQueryDefinition/TestInCodeDefinition.cs) file in the Help-and-Training-Examples repository on GitHub.

## Step 1: Creating a Built-In Query Definition { .section}

To create a built-in query definition, do the following:

1.  In a project of your Acumatica ERP extension library, define a class that implements the [PX.PushNotifications.Sources.IInCodeNotificationDefinition](https://help.acumatica.com/(W(3))/Help?ScreenId=ShowWiki&pageid=22811f24-a3de-8b1c-0160-e59a96540465) interface. The following code demonstrates the definition of such a class.

    ```
    using PX.PushNotifications.Sources;
    
    public class TestInCodeDefinition : IInCodeNotificationDefinition
    {
    }
    ```

    **Tip:** Make sure references to the `PX.Data.dll`, `PX.Data.BQL.Fluent`, and `PX.PushNotifications.dll` libraries are included in your project.

2.  In the class that implements the IInCodeNotificationDefinition interface, implement the GetSourceSelect\(\) method of the interface so that the method satisfies the following requirements:

    -   The method must return a tuple of a BqlCommand object, which defines the data query, and a PXDataValue array, which defines the parameters that should be passed to the query.
    -   The data query that the method defines should adhere to [Push Notifications: Recommendations for the Data Queries](IntegrationDev_PushNotifications_RequirementsToQuery.md#).
    The following example shows the GetSourceSelect\(\) method implementation.

    ```
    ﻿using PX.Data;
    using PX.PushNotifications.UI.DAC;
    using System;
    using PX.Data.BQL.Fluent;
    using PX.PushNotifications.Sources;
    
    public class TestInCodeDefinition : IInCodeNotificationDefinition
    {
        public Tuple<BqlCommand, PXDataValue[]> GetSourceSelect()
        {
            return
              Tuple.Create(
                SelectFrom<PushNotificationsHook>.
                LeftJoin<PushNotificationsSource>.
                  On<PushNotificationsHook.hookId.
                    IsEqual<PushNotificationsSource.hookId>>.View
                .GetCommand(), new PXDataValue[0]);
        }
    }
    ```

3.  In the class that implements the IInCodeNotificationDefinition interface, implement the GetRestrictedFields\(\) method of the interface so that the method satisfies the following requirements:

    -   The method must return an array of IBqlField-derived types, which contains the fields that should be returned from the query.
    -   If you need to return all fields, the method must return `null`.
    The following code shows an example of the implementation of the GetRestrictedFields\(\) method.

    ```
    ﻿using PX.Data;
    using PX.PushNotifications.UI.DAC;
    using System;
    using PX.Data.BQL.Fluent;
    using PX.PushNotifications.Sources;
    
    public class TestInCodeDefinition : IInCodeNotificationDefinition
    {
    ...
    ```

    ```
        public Type[] GetRestrictedFields()
        {
            return new[]
            {
              typeof(PushNotificationsHook.address),
              typeof(PushNotificationsHook.type),
              typeof(PushNotificationsSource.designID),
              typeof(PushNotificationsSource.inCodeClass),
              typeof(PushNotificationsSource.lineNbr)
            };
        }
    }
    ```

4.  Build the project of your Acumatica ERP extension library.

## Step 2: Testing the Built-In Query Definition { .section}

On the **Built-In Definitions** tab of the [Push Notifications](../UserGuide/SM_30_20_00.md#) \(SM302000\) form, create a push notification definition and make sure that you can select the new built-in query definition by its class name in the **Class Name** column. The class of the built-in query definition, which implements the IInCodeNotificationDefinition interface, is detected by the system and automatically added to the list of classes available for selection on the tab.

**Tip:** After you have defined a push notification definition that uses a built-in query definition on the [Push Notifications](../UserGuide/SM_30_20_00.md#) form, you can obtain the results of the data query defined with a built-in query definition by using the following endpoint: *http\(s\)://&lt;Acumatica ERP instance URL&gt;/PushNotifications/&lt;full class name of the built-in query definition&gt;*.

For example, suppose that you want to retrieve the results of the data query defined with the `PX.PushNotifications.Sources.TestInCodeDefinition` class from a local Acumatica ERP instance with the name *AcumaticaDB*. You should use the following URL to obtain the data: *http\(s\)://localhost/AcumaticaDB/PushNotifications/PX.PushNotifications.Sources.TestInCodeDefinition*. The endpoint returns the data in JSON format.

**Parent topic:**[Configuring Push Notifications for Real-Time Monitoring](../IntegrationDevelopmentGuide/IntegrationDev_PushNotifications_Mapref.md)

