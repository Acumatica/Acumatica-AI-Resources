# Custom Deferral Schedules {#_194c9e31-ffa8-4b2e-930e-44d570f2c11b .concept}

During the initialization of your Acumatica ERP system, you may need to process deferrals that have been recognized only partially in your old system. You may also decide to perform recognition of deferrals for documents without deferral codes specified that have been already released. To satisfy these needs in Acumatica ERP, you can manually create a deferral schedule, and process the recognition of the required amounts.

You can either link the schedule to the specific document \(in which you select a particular line which amount should be deferred\), or associate the schedule with a particular customer or vendor only, and process recognition of the specified amount without linking it to a specific document.

You start creating a custom schedule by using the [Deferral Schedules](DR_20_15_10.md) \(DR201510\) form. On this form, you click **Add New Deferral Schedule** on the form toolbar, which opens the [Deferral Schedule](DR_20_15_00.md) \(DR201500\) form. On this form, you specify the parameters of the deferral schedule depending on whether you want to link it to a particular document, or not.

## Linking a Deferral Schedule to a Document {#section_ytb_3jv_vxb .section}

Depending on either you should recognize revenue or expenses, in the summary area of the [Deferral Schedule](DR_20_15_00.md) \(DR201500\) form, you should select the appropriate type of the document, which amount should be deferred. Then, you select the document by its number in the **Ref. Nbr.** box. Once the document is selected, the customer or vendor details are inserted automatically in the appropriate boxes. In the **Line Nbr.** box, you then need to select a particular line of the document, which amount should be deferred.

In the **Components** table, you need to add a row or multiple rows, in which you specify the amounts to be deferred and the deferral codes to be used for generating recognition transactions. If you create the schedules for the components of the package, you need to specify appropriate inventory IDs in the rows.

Then, by clicking **Generate Transactions** on the table toolbar, the system generates the list of recognition transactions for each row, and displays them in the **Transactions** table. You can edit the transactions details \(if needed\), and after that save and release the schedule.

**Attention:** No GL transactions are generated when you release a deferral schedule.

For step-by-step instructions, see [To Link a Deferral Schedule to a Document](Dr__how_To_Link_Schedule_to_Document.md).

**Parent topic:**[Processing Deferrals](../UserGuide/DR__con_Processing_of_Deferrals.md)

