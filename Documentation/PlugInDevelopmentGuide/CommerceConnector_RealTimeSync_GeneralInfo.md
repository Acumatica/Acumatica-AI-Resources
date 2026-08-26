# Real-Time Synchronization for a Connector: General Information {#_ac4b2209-f16e-489a-8b3f-6e785ce59d8a .concept}

Real-time synchronization between Acumatica ERP and an external system ensures that any updates made in one system are reflected in the other system without significant delay, keeping the data consistent and current across these systems. You implement real-time import through webhooks. You implement real-time import through webhooks, and real-time export by using push notifications.

## Learning Objectives { .section}

In this chapter, you will learn how to implement real-time synchronization for a connector between Acumatica ERP and an external system.

## Applicable Scenarios { .section}

You implement real-time synchronization to ensure that all needed data is exported and imported to the appropriate system in a timely manner.

## Implementation of Webhooks in the Connector { .section}

In a connector, you can implement real-time import for particular entities through webhooks. For these entities, you need to adjust the connector class and the processor classes that correspond to these entities by performing the following general steps:

1.  You make sure that the connector class implements the following methods: StartWebhook\(\), ProcessHook\(\), and StopWebhook\(\).
2.  For each processor class that needs to support real-time import through webhooks, you make sure the following requirements are met:
    -   The BCProcessor attribute of the processor has the Direction property set to *SyncDirection.Bidirect* or *SyncDirection.Import*.
    -   The FetchBucketsForImport\(\), GetBucketForImport\(\), MapBucketImport\(\), SaveBucketImport\(\), and PullEntity\(\) methods of the processor have been implemented.
3.  For each processor class that needs to support real-time import through webhooks, you modify the BCProcessorRealtime attribute of the processor so that the HookSupported property is set to `true`. In the WebHookType property, you specify the type of the object to be used for the deserialization of the JSON object received in the webhook. In the WebHooks property, specify the list of webhook scopes.

    The following code shows an example of the attribute for the customer processor class.

    ```language-csharp
        [BCProcessorRealtime(
    ```

    ```language-csharp
            HookSupported = true,
            WebHookType = typeof(CustomerData),
            WebHooks = new String[]
            {
                "customer.created",
                "customer.updated",
                "customer.deleted"
            }
        )]
        public class WooCustomerProcessor : 
            BCProcessorSingleBase<WooCustomerProcessor, 
                WooCustomerEntityBucket, MappedCustomer>, IProcessor
        {
        }
    ```

    You can see this code on [GitHub](https://github.com/Acumatica/Help-and-Training-Examples/blob/HEAD/PlugInDevelopment/Help/ImplementingConnector/WooCommerceTest/Sync/WooCustomerProcessor.cs).


## Implementation of Push Notifications for a Connector { .section}

To implement push notifications in Acumatica ERP to support real-time export in a connector, you need to perform the following general steps:

1.  **Defining the data for real-time synchronization.**

    You need to create generic inquiries or select existing ones that will define the data whose changes trigger the sending of notifications from Acumatica ERP to the connector.

    On the [Push Notifications](../UserGuide/SM_30_20_00.md) \(SM302000\) form, you can select *Commerce* in the **Destination Name** box of the Summary area; on the **Generic Inquiries** tab, you review the list of generic inquiries that are predefined for the commerce push notifications. If the list of generic inquiries is sufficient for your connector, we recommend that you use the predefined *Commerce* notification destination.

    If you need a different list of generic inquiries for the entities that you want the system to send push notifications for, you create a custom push notification definition, as described in [Push Notifications: General Information](../IntegrationDevelopmentGuide/IntegrationDev_PushNotifications_GeneralInfo.md).

    You need to include the created generic inquiries and push notification definitions in the customization project of your extension library. For details about adding these items to the customization project, see [Generic Inquiries in a Customization Project: General Information](../UserGuide/GI_CustomizationProject_GeneralInfo.md) and [Push Notifications: Inclusion in a Customization Project](../IntegrationDevelopmentGuide/IntegrationDev_PushNotifications_CustomizationProject.md).

2.  **Supporting push notifications in the connector.**

    For the entities for which you need to support real-time export through push notifications, you need to adjust the corresponding processor classes so that they support real-time synchronization. For details about processor classes, see [Connector Implementation: Processor Classes](CommerceConnector_Implementation_ProcessorClasses.md).

    For each processor class that needs to support real-time export through push notifications, you need to make sure that the processor class supports the export of records from Acumatica ERP by checking the following requirements:

    -   The BCProcessor attribute of the processor has the Direction property set to *SyncDirection.Bidirect* or *SyncDirection.Export*.
    -   The FetchBucketsForExport\(\), GetBucketForExport\(\), MapBucketExport\(\), SaveBucketExport\(\), and PullEntity\(\) methods of the processor have been implemented. The following code shows an example of the implementation of the PullEntity\(\) method.

        ```language-csharp
                public override async Task<MappedCustomer> PullEntity(Guid? localID, 
                    Dictionary<string, object> externalInfo, 
                        CancellationToken cancellationToken = default)
                {
                    PX.Commerce.Core.API.Customer impl = 
                        cbapi.GetByID<PX.Commerce.Core.API.Customer>(localID);
                    if (impl == null) return null;
        
                    MappedCustomer obj = new MappedCustomer(impl, impl.SyncID, 
                        impl.SyncTime);
        
                    return obj;
                }
        ```

    For each processor class that needs to support real-time synchronization through push notifications, you modify the BCProcessorRealtime attribute of the processor to set the PushSupported property to *true*. In the PushSources property, you specify the names of the generic inquiries to be used for push notifications. In the PushDestination property, you specify the name of the push notification destination, which is *Commerce* if you use the predefined notification destination.

    The following code shows an example of the attribute for the customer processor class.

    ```language-csharp
        [BCProcessorRealtime(
            PushSupported = true,
            PushSources = new String[] { "BC-PUSH-Customers" },
            PushDestination = WCCaptions.PushDestination,
    ```

    ```language-csharp
        )]
        public class WooCustomerProcessor : 
            BCProcessorSingleBase<WooCustomerProcessor, 
                WooCustomerEntityBucket, MappedCustomer>, IProcessor
        {
        }
    ```


**Tip:** You can see the code from this section on [GitHub](https://github.com/Acumatica/Help-and-Training-Examples/blob/HEAD/PlugInDevelopment/Help/ImplementingConnector/WooCommerceTest/Sync/WooCustomerProcessor.cs).

**Parent topic:**[Implementing Real-Time Synchronization for a Connector](../PlugInDevelopmentGuide/CommerceConnector_RealTimeSync_Mapref.md)

