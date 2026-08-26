# Automated Synchronization: General Information {#_16fb2d61-88cc-4c3f-8a20-84cdb60c14a1 .concept}

After you have performed the initial synchronization between Acumatica ERP and the BigCommerce store for the needed entities, you might want to set up some of the entities to be synchronized in real time or at regular intervals. For example, you can configure sales orders, payments, and shipments to be imported from the BigCommerce store into Acumatica ERP as soon as each order is completed, whereas you can configure the export of customers from Acumatica ERP to the BigCommerce store to be performed only once a month.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Set up automation schedules for data preparation and processing
-   Turn on real-time synchronization of entities
-   Configure automated synchronization for optimized performance

## Applicable Scenarios { .section}

You automate the synchronization of entities after you have configured and manually tested the synchronization between Acumatica ERP and the BigCommerce store to ensure that in your production environment, all needed data is exported and imported to the appropriate system in a timely manner.

## Scheduled and Real-Time Synchronization { .section}

You can automate the synchronization of data of a particular entity between Acumatica ERP and the BigCommerce store in the following ways:

-   You configure automation schedules for data preparation or for data processing on the [Automation Schedules](SM_20_50_20.md) \(SM205020\) form. Data preparation or processing is started for the entity when the automation schedule is executed. For information about scheduled synchronization, see [Automated Synchronization: Scheduled Synchronization](Commerce_BC_Automated_Sync_Scheduling.md).
-   You turn on real-time synchronization for a particular entity on the [Entities](BC_20_20_00.md) \(BC202000\) form. When real-time synchronization is on, Acumatica ERP attempts to prepare or prepare and process data as soon as a change is made to the entity in Acumatica ERP or in the ecommerce system. For information about real-time synchronization, see [Automated Synchronization: Real-Time Synchronization](Commerce_BC_Automated_Sync_Real-Time_Sync.md).

Scheduled synchronization and real-time synchronization do not interfere with each other or with manual synchronization and can be used together. For recommendations on synchronization frequency, see [Automated Synchronization: Recommended Setup](Commerce_BC_Automated_Sync_Recommendations.md).

**Parent topic:**[Automating Synchronization](../UserGuide/Commerce_BC_Automated_Sync_Mapref.md)

