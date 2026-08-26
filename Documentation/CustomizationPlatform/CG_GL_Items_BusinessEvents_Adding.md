# To Add Business Events to a Project {#_cde8431d-2785-4453-a7ba-54c25f6f92d3 .task}

You can add any number of business events to a customization project as *BpEvent* items. A *BpEvent* item contains all the data required to recreate the corresponding business event in any instance of Acumatica ERP.

To add a business event to the project, perform the following actions:

1.  Open the customization project in the Customization Project Editor. \(See [To Open a Project](CG_GL_Project_Opening.md) for details.\)
2.  In the navigation pane, click **Business Events** to open the [Business Events](../UserGuide/AU_21_00_10.md) page.
3.  On the page toolbar, click **Add New Record**.
4.  In the list of business events in the **Add Business Events** dialog box, which has opened, select the unlabeled check box in the row of each business event that you want to include in the project.

    **Tip:** The **Add Business Events** dialog box displays all the business events that are configured in your instance of Acumatica ERP.

5.  Click **OK** to add each selected business event to the page table and close the dialog box.
6.  Optional: In the Customization Project Editor, click **File &gt; Edit Project Items** on the menu. In the Project Items table of the Item XML Editor, verify that for each selected business event, the system has added to the project the data of the business event from the database \(*BpEvent* item\), the related generic inquiry \(*GenericInquiryScreen* item\), and, if the business scenario has any import scenarios as subscribers, the import scenario \(*XportScenario* item\) for each import scenario subscriber. For details on the Item XML Editor, see [Edit Project Items](../UserGuide/AU_ItemXMLEditor.md).

**Parent topic:**[Business Events](../CustomizationPlatform/CG_GL_Items_BusinessEvents.md)

