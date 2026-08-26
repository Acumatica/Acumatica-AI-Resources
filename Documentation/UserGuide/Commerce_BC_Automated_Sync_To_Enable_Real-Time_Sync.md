# Automated Synchronization: To Turn On Real-Time Synchronization {#_c73fab3c-0495-403a-bf04-9a903e8a14dd .task}

In this activity, you will learn how to turn on real-time synchronization for an entity.

**Attention:** The following activity is based on the *U100* dataset.

## Story { .section}

Suppose that as an implementation consultant helping SweetLife to set up integration with BigCommerce, you want to configure continuous synchronization of particular entities. As part of the setup, you need to turn on real-time synchronization of shipments so that they are exported to the BigCommerce store as soon as they are created or updated in Acumatica ERP.

## Process Overview { .section}

In this activity, you will turn on real-time synchronization for the *Shipment* entity on the [Entities](BC_20_20_00.md) \(BC202000\) form so that the system immediately exports the changes in shipments to the BigCommerce store.

## System Preparation { .section}

Before you perform the instructions of this activity, do the following:

1.  Make sure that the following prerequisites have been met:
    -   The BigCommerce store has been created and configured, as described in [Initial Configuration: To Set Up a BigCommerce Store](Commerce_BC_Initial_Configuration_To_Set_Up_a_BC_Store.md).
    -   The connection to the BigCommerce store has been established and the initial configuration has been performed, as described in [Initial Configuration: To Establish and Configure the Store Connection](Commerce_BC_Initial_Configuration_Implem_Activity.md).
2.  Sign in to the Acumatica ERP instance with the *U100* dataset preloaded by using the following credentials:
    -   **Username**: *gibbs*
    -   **Password**: *123*

## Step: Enabling Real-Time Synchronization for Shipments { .section}

Perform the following instructions to enable real-time synchronization for shipments:

1.  On the [Entities](BC_20_20_00.md) \(BC202000\) form, specify the following settings in the Summary area:

    -   **Store Name**: *SweetStore - BC*
    -   **Entity**: *Shipment*
    Notice that this entity can only be exported to the BigCommerce store \(that is, **Sync Direction** is set to *Export*\).

2.  In the **Real-Time Mode** box, select *Prepare &amp; Process*.

    With this option selected, when the system creates or updates a synchronization record for a shipment as part of real-time synchronization, it will also start processing this synchronization record so that out-of-sync shipment data is saved in the BigCommerce store.

3.  On the form toolbar, click **Start Real-Time Sync**.

    Starting real-time synchronization can take a few seconds. After the real-time synchronization is turned on, **Real-Time Export** is changed from *Stopped* to *Running*.


**Tip:** We recommend that you test the configuration by creating a new shipment for a sales order imported from the *SweetStore - BC* store to Acumatica ERP, and then reviewing the corresponding shipment in the *SweetStore - BC* store. If for some reason the changes have not been synchronized, review the corresponding synchronization record on the [Sync History](BC_30_10_00.md) \(BC301000\) form.

**Parent topic:**[Automating Synchronization](../UserGuide/Commerce_BC_Automated_Sync_Mapref.md)

