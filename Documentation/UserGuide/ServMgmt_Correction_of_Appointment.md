# Appointment Billing Correction: Other Document Types {#_f4a4d512-4c18-4c2c-bca9-071300074611 .concept}

In Acumatica ERP, you perform different steps to correct a billing document originating from an appointment, depending on the type of the billing document. \(This chapter focuses on the processes when the billing document is an accounts receivable invoice.\) In the following sections of this topic, these processes are described in detail.

## Correcting a Sales Invoice Originating from an Appointment { .section}

To correct a sales invoice originating from an appointment if the invoice has already been released, you need to reverse the invoice, unclose and correct the appointment, and then generate a new invoice for the appointment.

To reverse a sales invoice, on the [Invoices](SO_30_30_00.md) \(SO303000\) form, you click the **Reverse Service Invoice** command on the More menu \(under **Corrections**\). The system creates a new document on the form with the *Credit Memo* type and the *On Hold* status. In the credit memo, in the Summary area, the **Date**, **Post Period**, and **Description** boxes are available for editing. The other boxes of the Summary area are filled in with the settings of the original invoice and are unavailable for editing. On the **Details** tab, all lines of the original sales invoice have been automatically added. On the table toolbar of this tab, the **Add** and **Delete** buttons are unavailable, so that no detail lines can be added or deleted. In the **Related Svc. Doc. Nbr.** column, the reference number of the related appointment is specified.

**Important:** The ability to reverse a sales invoice is available only if the *Service Management* and *Advanced SO Invoices* features are enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

When you release the credit memo, the original invoice is assigned the *Canceled* status. The associated appointment can then be corrected and billed again. On the [Appointments](FS_30_02_00.md) \(FS300200\) form, you should click one of the following commands on the More menu \(under **Corrections**\):

-   If the appointment status is *Closed*, you click **Unclose**
-   If the appointment status is *Completed*, you click **Reopen**

Then you can make needed corrections and process the appointment billing once again.

## Correcting a Time Activity Originating from an Appointment { .section}

In the appointment, you can edit data specified on the **Log** tab in the log lines even if a time activity has been generated for the appointment and released. You can make such corrections as changing the duration of the services, editing the service start date or time, and changing the end date or time.

To make these corrections, on the [Employee Time Activities](EP_30_70_00.md) \(EP307000\) form, you find the number of the appointment associated with the time activity in the **Appointment Nbr.** column and click the appointment number, and o. On the [Appointments](FS_30_02_00.md) \(FS300200\) form, which opens, you make the needed corrections. Then you save the appointment and release new time activities.

## Correcting a Project-Related Appointment { .section}

**Important:** The process of correcting a project-related appointment is applicable only if the *Projects* feature is enabled on the Enable/Disable Features \(CS100000\) form in Acumatica ERP.

To make corrections to an appointment for which a project transaction has been generated and released, you need to generate the reversed project transaction for the appointment. To do this, on the [Appointments](FS_30_02_00.md) \(FS300200\) form, you click *Reverse Bill* on the More menu \(under **Corrections**\). The system generates a reversed project transaction \(that is, a project transaction with similar settings but a negative amount and quantity\) and releases the transaction. For the released inventory issue associated with the appointment, the system generates a credit memo and releases it.

Then you can make the needed corrections to the appointment and run the billing process, which causes the system to create a new project transaction \(and inventory issue, if applicable\).

## Correcting an Appointments with an Unreleased Billing Document { .section}

You can make corrections to an appointment when a billing document has been already generated from this appointment but is not yet released. In this case, you can just delete the billing document. Once a billing document is deleted, you use the [Service Billing History](FS_40_50_00.md) \(FS405000\) form to quickly find the appointment related to the deleted billing document. This form shows the list of service documents with the related billing documents of all statuses, including the documents with the *Deleted* status.

**Parent topic:**[Correcting Appointment Billing](../UserGuide/Services_Correction_of_Appointment_Mapref.md)

