# Archiving Documents: To Set Up Archival Policy Settings {#_4aa050ec-3772-4b70-8b68-b575fe4b95d4 .task}

The following activity will walk you through the process of setting up the archival policy settings.

## Story { .section}

Suppose that you are the system administrator, and you have received a task to configure the archival policy for your company. According to your company's internal policy and the governmental regulations, your company must store completed \(and canceled\) sales orders and shipment documents for one year. After that, they can be archived. You will configure the archival settings for these types of documents.

## Process Overview { .section}

On the [Archival Policy](SM_20_04_00.md) \(SM200400\) form, you will list the entity types of the documents that will be archived \(sales orders and shipments\) by their entity type and specify the retention period for each entity type. In the Summary area of the form, you will specify the duration of the archival process.

## System Preparation { .section}

Before you begin configuring the archival policy, launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as system administrator Kimberly Gibbs by using the *gibbs* username and the *123* password.

## Step: Configuring the Archival Preferences { .section}

To configure the retention period for sales orders and shipments, and to specify the default maximum duration of the archival process, do the following:

1.  Open the [Archival Policy](SM_20_04_00.md) \(SM200400\) form.
2.  In the Summary area, leave the default value \(*6*\) in the **Archiving Process Duration \(Hours\)** box.
3.  On the table toolbar, click **Add Row**.
4.  In the **Entity Name** column, select *Sales Order*.
5.  In the **Retention Period \(Months\)** column of the row, leave*12*.
6.  On the form toolbar, click **Save**.
7.  On the table toolbar, click **Add Row**.
8.  In the **Entity Name** column, select *Shipment*.
9.  In the **Retention Period \(Months\)**, leave *12*``.
10. On the form toolbar, click **Save**.

**Parent topic:**[Archiving Old Documents](../UserGuide/SA_Archiving_Old_Documents_Mapref.md)

