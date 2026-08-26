# To Define a Custom Subscriber Type for Business Events {#_ac371583-6fa8-4d65-a710-179330110930 .task}

To define the actions that the system should perform once a business event has occurred, you specify the *subscribers* of this business event on the **Subscribers** tab of the [Business Events](../UserGuide/SM_30_20_50.md) \(SM302050\) form. A subscriber of a business event is an entity that the system processes when the business event occurs. The subscriber types available in the system include import scenarios, email notifications, mobile push notifications, and mobile SMS notifications. You can define a custom subscriber type for business events, as described in this topic.

**Attention:** A custom subscriber type can be implemented in a project of your Acumatica ERP extension library. You cannot include the custom subscriber type in a *Code* item of a customization project.

For more information on business events, see [Business Events: General Information](../UserGuide/SA_Using_Business_Events_GeneralInfo.md).

## Creation of a Custom Subscriber Type for Business Events { .section}

1.  Define a class that implements the PX.BusinessProcess.Subscribers.ActionHandlers.IEventAction interface, which is a subscriber that the system executes once the business event has occurred.
2.  In the class that implements the IEventAction interface, implement the following methods and properties of the interface:
    -   The Id property, which is the GUID that identifies the subscriber. For the predefined subscriber types, the system assigns the value of this property to a new subscriber created by a user. The property uses the following syntax.

        ```
        Guid Id { get; set; }
        ```

    -   The Name property, which is the name of the subscriber of the custom type. For the predefined subscriber types, a user specifies the value of this property on the form that corresponds to the subscriber. For example, for email notifications, the user specifies the value of this property in the **Description** box on the [Email Templates](../UserGuide/SM_20_40_03.md) \(SM204003\) form. Use the following syntax for the property.

        ```
        string Name { get; }
        ```

    -   The Process method, which implements the actions that the system should perform once the business event has occurred. For example, for email notifications, the method inserts values in the notification template and sends the notification. The method uses the following syntax.

        ```
        void Process(MatchedRow[] eventRows, CancellationToken cancellation);
        ```

3.  Define a class that implements the PX.BusinessProcess.Subscribers.Factories.IBPSubscriberActionHandlerFactory interface, which creates and executes the subscriber.
4.  In the class that implements the IBPSubscriberActionHandlerFactory interface, implement the following methods and properties of the interface:

    -   The CreateActionHandler method, which creates a subscriber with the specified ID. Use the following syntax for the method.

        ```
        IEventAction CreateActionHandler(Guid handlerId, bool stopOnError,
                    IEventDefinitionsProvider eventDefinitionsProvider);
        ```

    -   The GetHandlers method, which retrieves the list of subscribers of the custom type. This list is displayed in the lookup dialog box in the **Subscriber ID** column on the **Subscribers** tab of the [Business Events](../UserGuide/SM_30_20_50.md) \(SM302050\) form. The method uses the following syntax.

        ```
        IEnumerable<BPHandler> GetHandlers(PXGraph graph);
        ```

    -   The RedirectToHandler method, which performs redirection to the subscriber. For example, for email notifications, the method opens the [Email Templates](../UserGuide/SM_20_40_03.md) form, which displays the subscriber \(which is a notification template\) with the specified ID. Use the following syntax for the method.

        ```
        void RedirectToHandler(Guid? handlerId);
        ```

    -   The Type property, which is a `string` identifier of the subscriber type that is exactly four characters long. The value of this property is stored in the database. The property uses the following syntax.

        ```
        string Type { get; }
        ```

    -   The TypeDescription property, which is a `string` label of the subscriber type. A user views this value in the **Type** column on the **Subscribers** tab of the [Business Events](../UserGuide/SM_30_20_50.md) form. Use the following syntax for the property.

        ```
        string TypeDescription { get; }
        ```

    **Tip:** If you want an action to be displayed in the **Create Subscriber** menu on the toolbar of the **Subscribers** tab of the [Business Events](../UserGuide/SM_30_20_50.md) \(SM302050\) form, instead of implementing the IBPSubscriberActionHandlerFactory interface, implement the IBPSubscriberActionHandlerFactoryWithCreateAction interface, which also provides methods and properties that define the creation action.

5.  Compile your Acumatica ERP extension library with the implementation of the classes.
6.  Open Acumatica ERP and test the new subscriber type.

## Example { .section}

The following code shows an example of the implementation of a custom subscriber type. This custom subscriber writes the body of the notification to a text file.

```
using System;
using System.Collections.Generic;
using System.Linq;
using PX.BusinessProcess.Subscribers.ActionHandlers;
using PX.BusinessProcess.Subscribers.Factories;
using PX.BusinessProcess.Event;
using PX.BusinessProcess.DAC;
using PX.BusinessProcess.UI;
using System.Threading;
using PX.Data;
using PX.Common;
using PX.SM;
using System.IO;
using PX.Data.Wiki.Parser;
using PX.PushNotifications;

namespace CustomSubscriber
{
    //The custom subscriber that the system executes once the business event 
    //has occurred
    public class CustomEventAction : IEventAction
    {
        //The GUID that identifies a subscriber
        public Guid Id { get; set; }

        //The name of the subscriber of the custom type
        public string Name { get; protected set; }

        //The notification template
        private readonly Notification _notificationTemplate;

        //The method that writes the body of the notification to a text file 
        //once the business event has occurred
        public void Process(MatchedRow[] eventRows, 
        CancellationToken cancellation)
        {
            using (StreamWriter file = 
              new StreamWriter(@"C:\tmp\EventRows.txt"))
            {
                var graph = PXGenericInqGrph.CreateInstance(
                  _notificationTemplate.ScreenID);
                var parameters = @eventRows.Select(
                  r => Tuple.Create<IDictionary<string, object>, 
                  IDictionary<string, object>>(
                    r.NewRow?.ToDictionary(c => c.Key.FieldName, c => c.Value),
                    r.OldRow?.ToDictionary(c => c.Key.FieldName, 
                      c => (c.Value as ValueWithInternal)?.ExternalValue ?? 
                        c.Value))).ToArray();
                var body = PXTemplateContentParser.ScriptInstance.Process(
                  _notificationTemplate.Body, parameters, graph, null);
                file.WriteLine(body);
            }
        }

        //The CustomEventAction constructor
        public CustomEventAction(Guid id, Notification notification)
        {
            Id = id;
            Name = notification.Name;
            _notificationTemplate = notification;
        }
    }

    //The class that creates and executes the custom subscriber
    class CustomSubscriberHandlerFactory : 
      IBPSubscriberActionHandlerFactoryWithCreateAction
    {
        //The method that creates a subscriber with the specified ID
        public IEventAction CreateActionHandler(Guid handlerId, 
          bool stopOnError, IEventDefinitionsProvider eventDefinitionsProvider)
        {
            var graph = PXGraph.CreateInstance<PXGraph>();
            Notification notification = PXSelect<Notification, 
              Where<Notification.noteID, 
              Equal<Required<Notification.noteID>>>>
                .Select(graph, handlerId).AsEnumerable().SingleOrDefault();

            return new CustomEventAction(handlerId, notification);
        }

        //The method that retrieves the list of subscribers of the custom type
        public IEnumerable<BPHandler> GetHandlers(PXGraph graph)
        {
            return PXSelect<Notification, Where<Notification.screenID, 
              Equal<Current<BPEvent.screenID>>, 
              Or<Current<BPEvent.screenID>, IsNull>>>
                .Select(graph).FirstTableItems.Where(c => c != null)
                .Select(c => new BPHandler { Id = c.NoteID, Name = c.Name, 
                  Type = LocalizableMessages.CustomNotification });
        }

        //The method that performs redirection to the subscriber
        public void RedirectToHandler(Guid? handlerId)
        {
            var notificationMaint = 
              PXGraph.CreateInstance<SMNotificationMaint>();
            notificationMaint.Message.Current = 
              notificationMaint.Notifications.
                Search<Notification.noteID>(handlerId);
            PXRedirectHelper.TryRedirect(notificationMaint, 
              PXRedirectHelper.WindowMode.New);
        }

        //A string identifier of the subscriber type that is 
        //exactly four characters long
        public string Type
        {
            get { return "CTTP"; }
        }

        //A string label of the subscriber type
        public string TypeName
        {
            get { return LocalizableMessages.CustomNotification; }
        }

        //A string identifier of the action that creates 
        //a subscriber of the custom type
        public string CreateActionName
        {
            get { return "NewCustomNotification"; }
        }

        //A string label of the button that creates 
        //a subscriber of the custom type
        public string CreateActionLabel
        {
            get { return LocalizableMessages.CreateCustomNotification; }
        }

        //The delegate for the action that creates 
        //a subscriber of the custom type
        public Tuple<PXButtonDelegate, PXEventSubscriberAttribute[]> 
          getCreateActionDelegate(BusinessProcessEventMaint maintGraph)
        {
            PXButtonDelegate handler = (PXAdapter adapter) =>
            {
                if (maintGraph.Events?.Current?.ScreenID == null)
                    return adapter.Get();

                var graph = PXGraph.CreateInstance<SMNotificationMaint>();
                var cache = graph.Caches<Notification>();
                var notification = (Notification)cache.CreateInstance();
                var row = cache.InitNewRow(notification);
                row.ScreenID = maintGraph.Events.Current.ScreenID;
                cache.Insert(row);

                var subscriber = new BPEventSubscriber();
                var subscriberRow = 
                  maintGraph.Subscribers.Cache.InitNewRow(subscriber);
                subscriberRow.Type = Type;
                subscriberRow.HandlerID = row.NoteID;
                graph.Caches[typeof(BPEventSubscriber)].Insert(subscriberRow);

                PXRedirectHelper.TryRedirect(graph, 
                  PXRedirectHelper.WindowMode.NewWindow);
                return adapter.Get();
            };
            return Tuple.Create(handler,
                new PXEventSubscriberAttribute[]
                    {new PXButtonAttribute {
                      OnClosingPopup = PXSpecialButtonType.Refresh}});
        }
    }

    //Localizable messages
    [PXLocalizable]
    public static class LocalizableMessages
    {
        public const string CustomNotification = "Custom Notification";
        public const string CreateCustomNotification = "Custom Notification";
    }
}
```

To test this example, do the following:

1.  Add this code to an Acumatica ERP extension library. For details on creating the library, see [To Create an Extension Library](../CustomizationPlatform/cg_platform_tocreateextensionlib.md).
2.  Make sure that the following references are added to the project of the extension library:
    -   PX.Data
    -   PX.Common
    -   PX.Common.Std
    -   PX.BusinessProcess
3.  Create a business event on the [Business Events](../UserGuide/SM_30_20_50.md) \(SM302050\) form. For details on the creation of a business event, see [Business Events: General Information](../UserGuide/SA_Using_Business_Events_GeneralInfo.md).
4.  On the **Subscribers** tab, make sure *Custom Notification* is available in the **Type** column.
5.  Select *Custom Notification* in the **Type** column. Make sure the list in the **Subscriber ID** column is empty.
6.  On the table toolbar, make sure **Create Subscriber** &gt; **Custom Notification** is available.
7.  Click **Create Subscriber** &gt; **Custom Notification**. Make sure the [Email Templates](../UserGuide/SM_20_40_03.md) \(SM204003\) form opens.
8.  On the [Email Templates](../UserGuide/SM_20_40_03.md) form, create a notification template with a message that is not empty on the **Messages** tab. For details about notification templates, see [Email Templates](../UserGuide/EM__con_Notification_Templates.md).
9.  Make sure the created notification template is added to the **Subscribers** tab of the [Business Events](../UserGuide/SM_30_20_50.md) form as the *Custom Notification* subscriber and save the business event.
10. Make changes in the system to trigger the business event that you have configured.
11. Make sure the text file \(in this example, `C:\tmp\EventRows.txt`\) contains the body of the notification.

**Parent topic:**[Customizing Business Events in Code](../PlugInDevelopmentGuide/IS__mng_Customizing_Business_Events.md)

