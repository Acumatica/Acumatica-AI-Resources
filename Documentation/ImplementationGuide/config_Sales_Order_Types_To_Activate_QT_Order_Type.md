# Sales Order Types: To Activate the QT Order Type {#_4b701a27-dc1c-4599-95a8-63e1964c5c47 .task}

In this implementation activity, you will learn how to set up and activate the *QT* order type for processing orders with the *Quote* automation behavior.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are an implementation manager for the SweetLife Fruits &amp; Jams company, and you need to give users the ability to record quote for a planned sale of products and services to customers. You need to set up and activate the *QT* order type in the system.

## Process Overview { .section}

In this activity, you will set up and activate the *QT* order type on the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form.

## System Preparation { .section}

Before you start setting up and activating the order type, you should do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in to the system as implementation manager Kimberly Gibbs by using the *gibbs* username and the *123* password.
2.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, make sure that the *Inventory and Order Management* feature is enabled.

## Step: Setting Up and Activating an Order Type { .section}

To set up and activate the *QT* order type, do the following:

1.  Open the *QT* order type on the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form.
2.  On the **General** tab, do the following:
    -   In the **Days To Keep** box \(**Order Settings** section\), type `14`.
    -   In the **Freight Account** box \(**Posting Settings** section\), specify *40010 \(Sales – Freight\)*.
3.  In the Summary area, select the **Active** check box.
4.  On the form toolbar, click **Save**.

**Parent topic:**[Sales Order Types](../ImplementationGuide/config_Sales_Order_Types_Mapref.md)

