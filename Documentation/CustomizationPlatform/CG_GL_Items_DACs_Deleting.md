# To Delete a DAC Item from a Project {#_f3606f06-f86f-425e-aae0-71c95fd45bc6 .concept}

To remove changes to an existing data access class from a project, perform the following actions:

1.  Open the customization project in the Customization Project Editor. \(See [To Open a Project](CG_GL_Project_Opening.md) for details.\)
2.  Click **Data Access** in the navigation pane to open the [Data Access](../UserGuide/AU_20_30_01.md) page.
3.  In the page table, select the item to be deleted.
4.  On the page toolbar, click **Delete Row**.
5.  On the page toolbar, click **Save** to save the changes to the customization project.

If you added a bound custom field to an existing data access class, the platform includes the *DAC* and *Table* items for this class in the customization project.

**Tip:** The *Table* item contains a description of custom columns added to a database table for bound custom fields created in the appropriate data access class.

After you publish the customization project at least once, the database schema is changed. Changes to the database schema aren't deleted when you delete the *DAC* and *Table* items and publish the project. You have to remove the changes manually.

You can delete a *DAC* or *Table* item \(or another item\) from the customization project on the Edit Project Items page of the Customization Project Editor. \(See [To Delete Items from the Project on the Edit Project Items Page](CG_GL_Items_DeletingANY.md) for details.\)

**Parent topic:**[Customized Data Classes](../CustomizationPlatform/CG_GL_Items_DACs.md)

