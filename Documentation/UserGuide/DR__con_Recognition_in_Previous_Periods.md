# Recognition of Deferrals in Previous Periods {#_8d111c34-0255-4cb9-b29d-99cf29fc80f6 .concept}

In Acumatica ERP, you can enter documents \(such as AR invoices\) that require recognition of revenue or expenses in previous financial periods—that is, in periods that are earlier than the period of the document date. When these documents are released, the system generates recognition transactions for each line of the document according to the specific set of settings of a deferral code specified for a line.

You can process the recognition of deferrals in different ways, depending on the recognition method that you specify for each particular deferral code. You configure deferral codes on the [Deferral Codes](DR_20_20_00.md) \(DR202000\) form. Depending on the selected recognition method, you specify the particular set of settings for the deferral code.

The sections below describe the configuration of deferral codes that you can use for recognizing deferrals in previous financial periods.

## Recognizing Deferred Revenue in Previous Periods {#section_urb_3jv_vxb .section}

For documents \(such as AR invoices and cash sales\) that require revenue recognition in previous periods, you can use deferral codes with the *Flexible by Periods, Prorate by Days*, or *Flexible by Days in Period* recognition method specified. The period of the recognition start date can be earlier than the period of the document date. When these deferral codes are specified in a document line, the additional **Term Start Date** and **Term End Date** columns appear in the table on the **Details** tab on the document entry form, such as [Invoices and Memos](AR_30_10_00.md) \(AR301000\). In these columns, you can define the required start date and end date of the recognition process for each document line with such a deferral code specified.

The date and posting period of the recognition transactions depend on whether the **Allow Recognition in Previous Periods** check box is selected for the deferral code on the [Deferral Codes](DR_20_20_00.md) \(DR202000\) form:

-   If the check box is selected, the deferred revenue will be recognized in periods that are earlier than the period of a document. The first recognition period is the period of the **Term Start Date** specified in a document, and the last recognition period is the period of the **Term End Date**. The dates of recognition transactions are generated based on the **Recognize Deferrals** settings specified for the deferral code on the [Deferral Codes](DR_20_20_00.md) form.
-   If the check box is cleared and the period of the recognition date is earlier than the document date, the recognition date of the generated transactions is equal to the document date, and the financial period is the period to which the document date belongs.

## Recognizing Deferred Revenue and Expenses in Previous and Future Periods {#section_xrb_3jv_vxb .section}

For recognizing expenses as well as revenues in the periods that differ from the financial period of the document date, you can configure a deferral code with one of the following recognition methods specified: *Evenly by Periods*, *Evenly by Periods, Prorate by Days*, *Evenly by Days in Period*, or *On Payment*. When you use these recognition methods with offset, the system adds the offset to the financial period of the document to determine the start recognition period. For details, see [Recognition Methods for Deferred Revenues or Expenses](DR__con_Recognition_Methods.md).

With these methods specified, you can set up the start recognition period to be either earlier than the period of the document date, or later than the period of the document date.

To define the start recognition period, you need to specify the **Start Offset** parameter while you configure a deferral code. This parameter defines the number of periods between the period of the document date and the start recognition period—that is, the period when recognition process starts. If you specify a negative value in this box \(for example, –1\), the recognition period will start one period earlier than the period of the document date. If you specify a positive value in this box \(for example, 1\), the recognition will start one period later than the period of the document date.

**Parent topic:**[Processing Deferrals](../UserGuide/DR__con_Processing_of_Deferrals.md)

