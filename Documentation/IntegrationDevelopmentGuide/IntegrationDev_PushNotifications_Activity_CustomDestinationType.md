# Push Notifications: To Create a Custom Destination Type {#_2cdef9b1-d4ef-48b4-8a92-093e7ea39552 .task}

The following activity shows you how to create a custom destination type for push notifications.

## Story { .section}

Suppose that predefined types of push notification destinations that are available in Acumatica ERP \(which are webhook, message queue, SignalR hub, and commerce push destination\) do not satisfy the requirements of your integration application. You need to create a custom type in code.

## Process Overview { .section}

In a project of your Acumatica ERP extension library, you will define a class that implements the [PX.PushNotifications.NotificationSenders.IPushNotificationSender](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=d5661882-b157-f3a5-9e18-3419037685d7) interface and a class that implements the [PX.PushNotifications.NotificationSenders.IPushNotificationSenderFactory](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=aa343e77-bff3-8643-6545-b0877a71b910) interface.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Prepare an Acumatica ERP instance with any predefined dataset, as described in the [Instance Deployment: To Deploy an Instance with Demo Data](../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md) prerequisite activity.
2.  Create a customization project, as specified in the [Customization Projects: To Create a Customization Project](../CustomizationPlatform/CustomizationProjects_GettingStarted_Activity_CreateProject.md) prerequisite activity.
3.  Create an extension library, as described in the [To Create an Extension Library](../CustomizationPlatform/cg_platform_tocreateextensionlib.md) prerequisite activity.

## Step: Creating a Custom Destination Type { .section}

To create a custom destination type, do the following:

1.  In a project of your Acumatica ERP extension library, define a class that implements the PX.PushNotifications.NotificationSenders.IPushNotificationSender interface, which is a sender of push notifications.
2.  In the class that implements the IPushNotificationSender interface, implement the following methods and properties of the interface:
    -   The Address property, which is the address to which the system should send notifications. A user specifies the value of this property in the **Address** box on the [Push Notifications](../UserGuide/SM_30_20_00.md#) \(SM302000\) form. The property uses the following syntax.

        ```
        string Address { get; }
        ```

    -   The Name property, which is the name of the notification destination. A user specifies the value of this property in the **Destination Name** box on the [Push Notifications](../UserGuide/SM_30_20_00.md#) \(SM302000\) form. Use the following syntax for the property.

        ```
        string Name { get; }
        ```

    -   The Send method, which sends a notification synchronously and uses as the parameters the notification to be sent and a cancellation token. The method uses the following syntax.

        ```
        void Send(
          NotificationResultWrapper results, 
          CancellationToken cancellationToken
        );
        ```

    -   The SendAndForget method, which sends a notification without blocking the current thread. We recommend that you use HostingEnvironment.QueueBackgroundWorkItem in the method implementation to delegate the execution to a parallel thread. The following code shows a sample implementation of the method.

        ```
        using System;
        using System.Threading;
        using PX.PushNotifications;
        using PX.PushNotifications.NotificationSenders;
        
        public void SendAndForget(
          NotificationResultWrapper result, 
          CancellationToken cancellationToken, 
          Action onSendingFailed, 
          Action finalizer)
        {
          try
          {
            Send(result, cancellationToken);
          }
          catch (Exception e)
          {        
            onSendingFailed($"Send to target {Name} failed: ({e.Message})");
          }
          finally
          {
            finalizer();
          }
        }
        ```

3.  Define a class that implements the PX.PushNotifications.NotificationSenders.IPushNotificationSenderFactory interface, which creates a sender of push notifications.
4.  In the class that implements the IPushNotificationSenderFactory interface, implement the following methods and properties of the interface:
    -   The Create method, which creates a sender and uses as the parameters the destination address, the name of the notification destination, and the additional parameters \(such as a header for an HTTP address\). Use the following syntax for the method.

        ```
        IPushNotificationSender Create(
          string address, 
          string name, 
          IDictionary<string, object> additionalParameters
        );
        ```

    -   The Type property, which is a `string` identifier of the destination type that is exactly four characters long. The value of this property is stored in the database. The property uses the following syntax.

        ```
        string Type { get; }
        ```

    -   The TypeDescription property, which is a `string` label of the destination type. A user selects the value of this property in the **Destination Type** box on the [Push Notifications](../UserGuide/SM_30_20_00.md#) \(SM302000\) form. Use the following syntax for the property.

        ```
        string TypeDescription { get; }
        ```

5.  Build the project of your Acumatica ERP extension library.
6.  Run Acumatica ERP and test the new destination type.

**Parent topic:**[Configuring Push Notifications for Real-Time Monitoring](../IntegrationDevelopmentGuide/IntegrationDev_PushNotifications_Mapref.md)

