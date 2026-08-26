# Push Notifications: To Connect to the SignalR Hub {#_2f1c56c2-f893-4467-92a3-a03c5bf5c61a .task}

The following activity shows you how to connect the external application to the SignalR hub.

## Story { .section}

Suppose that you want your external application to receive push notifications from Acumatica ERP but you cannot publish a webhook \(for example, for security reasons\). Instead you need to configure the system to send notifications to the SignalR hub, from which any connected application can receive the notifications.

## Process Overview { .section}

You will create a push notification destination and implement the code for connecting to the SignalR hub and processing the notifications.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Prepare an Acumatica ERP instance with any predefined dataset. You can do it by completing the following prerequisite activity: [Instance Deployment: To Deploy an Instance with Demo Data](../UserGuide/INST_Deploying_Instances_Deploy_Tenant_With_Demodata_Activity.md).
2.  Create a customization project, such as in the [Customization Projects: To Create a Customization Project](../CustomizationPlatform/CustomizationProjects_GettingStarted_Activity_CreateProject.md) prerequisite activity.

**Tip:** You can find the final code of this activity in the [Program.cs](https://github.com/Acumatica/Help-and-Training-Examples/tree/HEAD/IntegrationDevelopment/Help/ConfiguringPushNotifications/SignalRHub/Program.cs) file in the Help-and-Training-Examples repository on GitHub.

## Step 1: Creating a Push Notification Definition { .section}

To configure the system to send push notifications to the SignalR hub, create a push notification definition as follows:

1.  On the [Push Notifications](../UserGuide/SM_30_20_00.md) \(SM302000\) form, in the **Destination Name** box, type the name of the target notification destination, such as `TestSignalR`.
2.  In the **Destination Type** box, select *SignalR Hub*. The **Address** box is filled in automatically with *PushNotificationsHub*.
3.  For each generic inquiry for which you want Acumatica ERP to send notifications on changes in the inquiry results, do the following on the **Generic Inquiries** tab:
    1.  On the table toolbar of the **Inquiries** table, click **Add Row**. The new row has the **Active** check box selected.
    2.  In the **Inquiry Title** column of the added row, select the generic inquiry for which you want Acumatica ERP to send notifications.
    3.  Do one of the following:
        -   If you want the system to send push notifications for changes in any field in the results of the generic inquiry, select the **Track All Fields** check box in the added row.

            **Tip:** If all fields in the results of the generic inquiry are tracked, the system produces push notifications for changes of any field in the results of the generic inquiry, which can cause overflow of the push notification queue. If you need to track only particular fields in the results of the generic inquiry, push notifications for changes in other fields are useless for you but consume system resources. Therefore, we recommend that you specify particular fields to be tracked in the **Fields** table.

        -   If you need to track only particular fields in the results of the generic inquiry, while the row of the **Inquiries** table is still selected, do the following in the **Fields** table for each field that you need to track:
            1.  On the table toolbar, click **Add Row**.
            2.  In the **Table Name** column of the added row, select the name of the table that contains the field that the system should track.
            3.  In the **Field Name** column, select the name of the field that the system should track.
4.  On the form toolbar, click **Save**.

## Step 2: Connecting to the SignalR Hub { .section}

To connect to the SignalR hub, do the following:

1.  In Visual Studio, create a console application.
2.  In the project of the console application, install the following NuGet packages:
    -   `Microsoft.AspNetCore.SignalR.Client`
    -   `Microsoft.Extensions.Logging.Console` \(to use the standard logging provider\)
3.  Set up a Basic authentication token to authenticate the application in Acumatica ERP, as shown in the following code.

    ```language-csharp
    ﻿using Microsoft.AspNetCore.Http.Connections;
    using Microsoft.AspNetCore.SignalR.Client;
    using Microsoft.Extensions.Logging;
    using Microsoft.Extensions.Logging.Console;
    using System.Text;
    
    class Program
    {
        static async Task Main(string[] args)
        {
            // Specify credentials to sign in to Acumatica ERP.
            // If you use a multi-tenant Acumatica ERP instance,
            // append the tenant name to the login as follows: "admin@MyTenant".
            var login = "admin";
            var password = "123";
            // Set up a Basic authentication token.
            var basicAuthToken = Convert.ToBase64String(
             Encoding.UTF8.GetBytes(login + ":" + password));
        }
    }
    ```

4.  Configure connection to the SignalR hub, as shown in the following code.

    ```language-csharp
    class Program
    {
        static async Task Main(string[] args)
        {
            ...
                                    // Specify the URL of an Acumatica ERP instance.
            string acumaticaErpUrl = "http://localhost:80/AcumaticaDB_SignalR/";
                                    // Create and configure a SignalR Hub connection.
            HubConnection connection = new HubConnectionBuilder()
                // Specify the URL of the Push Notifications Hub.
                // It must end with "signalr/hubs/PushNotificationsHub".
                .WithUrl(acumaticaErpUrl + "signalr/hubs/PushNotificationsHub", 
                options =>
                {
                    options.Headers.Add("Authorization", "Basic " + basicAuthToken);
                    options.Transports = HttpTransportType.WebSockets;
                    options.SkipNegotiation = true;
                }).ConfigureLogging(logging =>
                {
                    logging.SetMinimumLevel(LogLevel.Trace);
                    // Use the standard logging provider
                    logging.AddConsole();
                }).Build(); 
    }
    ```

5.  Subscribe to the push notification destination that was defined on the [Push Notifications](../UserGuide/SM_30_20_00.md#) \(SM302000\) form in Step 1 and process push notifications.

    ```language-csharp
    
    class Program
    {
        static async Task Main(string[] args)
            ...
                                    // Instead of "TestSignalR", specify the name
            // that you specified on the Push Notifications (SM302000) form.
            var notification = "TestSignalR";
                                    try
            {
                await connection.StartAsync();
                // Subscribe to the specified notification.
                await connection.InvokeAsync("Subscribe", notification);
                // Handle the received notifications.
                connection.On<object>("ReceiveNotification", notificationReceived =>
                    Console.WriteLine(notificationReceived.ToString()));
                Console.Read();
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error during connection: {ex.Message}");
                Console.Read();
            }
            finally
            {
                await connection.StopAsync();
                Console.WriteLine("Connection stopped.");
            }
        }
    }
    ```

6.  Build and test the project.
7.  Include the push notification destination in the customization project. For an example of how to do it, see [Push Notifications: To Include a Push Notification Definition in a Customization Project](IntegrationDev_PushNotifications_Activity_CustomizationProject.md).

**Parent topic:**[Configuring Push Notifications for Real-Time Monitoring](../IntegrationDevelopmentGuide/IntegrationDev_PushNotifications_Mapref.md)

