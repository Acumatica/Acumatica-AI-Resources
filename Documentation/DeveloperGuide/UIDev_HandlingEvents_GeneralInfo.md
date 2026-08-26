# UI Events: General Information {#_689ac3fe-fc85-4720-ab7c-953a0ae4aabc .concept}

In the Modern UI of , you can handle UI events in frontend code to make runtime changes that aren’t possible through built-in UI functionality.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Handle UI events
-   Work with data that is unrelated to any view by using event handling
-   Manage large binary data through event handling

## Applicable Scenarios { .section}

You handle UI events if you need to implement scenarios such as these:

-   Changing the CSS of a specific table cell or row on an Acumatica ERP form
-   Passing to an Acumatica ERP form data that is unrelated to any data view
-   Passing large binary data to an Acumatica ERP form
-   Calculating a value that is only displayed on an Acumatica ERP form and is not saved to the database

## Event Handling { .section}

You use the [handleEvent](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=74bcaf87-062e-0b68-05f7-222e51751a27) decorator to mark a handler of a runtime event for a specified view or field or with no relation to a view or field.

Only event types defined in the [CustomEventType](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=3577810d-417e-0518-74be-587de1c13771) enum are supported.

**Important:** Be aware that any logic that you implement using event handlers is available only in Modern UI forms and is not accessible through the web services or the mapping of the mobile application.

## Sample Event Handlers { .section}

The Acumatica ERP source code provides sample event handlers for the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form. You can find these in the following location of any instance.

```
\FrontendSources\screen\src\screens\SO\SO301000\extensions\SO301000_FieldsSample.ts
```

To test the event handlers, do the following:

1.  Uncomment the SO301000\_FieldsSample interface.
2.  Uncomment the SO301000\_FieldsSample class.
3.  Rebuild the code.

**Parent topic:**[Handling UI Events](../DeveloperGuide/UIDev_HandlingEvents_Mapref.md)

