# To Update Business Events in a Project {#_846ac116-0257-4f62-a992-430b090a165a .task}

If a business event included in a customization project has been changed \(or if multiple business events have been changed\) on the [Business Events](../UserGuide/SM_30_20_50.md) \(SM302050\) form, you have to update the appropriate item \(or items\) in the project. To do this, perform the following actions:

1.  Open the customization project in the Customization Project Editor. \(See [To Open a Project](CG_GL_Project_Opening.md) for details.\)
2.  In the navigation pane, click **Business Events** to open the [Business Events](../UserGuide/AU_21_00_10.md) page.
3.  On the page toolbar, click **Reload from Database**.

The platform updates all the *BpEvent* items of the project with the data in the database.

If you have changed the generic inquiry used in the business event or the import scenario of the business event, you need to update each changed item separately on the corresponding page of the Customization Project Editor. If you have changed the notification template of the business event, the system updates the notification template in the customization project automatically when you update the business event.

**Parent topic:**[Business Events](../CustomizationPlatform/CG_GL_Items_BusinessEvents.md)

