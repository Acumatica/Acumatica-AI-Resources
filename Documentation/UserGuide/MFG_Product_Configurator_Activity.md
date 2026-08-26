# Product Configurator: To Create a Sales Order with a Configurable Item {#_213231e7-bc6e-44ac-94e9-0e89baa0bfad .task}

The following activity will walk you through the process of creating a sales order with a configurable item.

## Process Overview { .section}

In this activity, you will do the following:

1.  On the [Order Types](SO_20_10_00.md) \(SO201000\) form, you will review the settings of the SO order type to make sure that the settings required for adding configurable items and creating production orders have been specified.
2.  On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, you will create a sales order and add a configurable item to the order. You will also select the needed options for features of the item on the [Configuration Entry](AM_30_60_00.md) \(AM306000\) form.
3.  On the same form, you will create a production order for the item and on the [Production Order Details](AM_20_90_00.md) \(AM209000\) form, you will make sure that the options you selected have been added as materials.

## System Preparation { .section}

Before you start creating a sales order with a configurable item, do the following:

1.  As a prerequisite activity, in the company to which you are signed in, be sure you have set up the product configuration as described in [Product Configurator: Implementation Activity](MFG_Product_Configurator_Implem_Activity.md).
2.  Launch the Acumatica ERP website, and sign in to the company in which the prerequisite activity has been performed. You should sign in as the implementation consultant by using the *admin* username and the password for this user valid for your instance.
3.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to today’s date. For simplicity, in this activity, you will create and process all documents in the system on this business date.
4.  Make sure that the *Product Configurator* feature in the *Manufacturing* group of features has been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Step 1: Reviewing Settings of the SO Order Type { .section}

To make sure that the SO order type has the settings needed for creating sales orders with configurable items, do the following:

1.  Open the *Order Types \(SO2010PL\)* form and click *SO* in the **Order Type** column.

    The *SO* order type opens on the [Order Types](SO_20_10_00.md) \(SO201000\) form.

2.  In the **Manufacturing Settings** section of the **General** tab, notice the following settings:

    -   **Allow Configuration Entry**: Selected
    -   **Enable Linking to Production Orders**: Selected
    -   **Linkable Sales Order Statuses**: *Open*, *On Hold*, *Pending Approval*,*Pending Processing*, *Awaiting Payment*, *Credit Hold*, and *Back Order*
    This means that you can link production orders to sales orders of this type and add configurable items to the orders.


## Step 2: Creating a Sales Order { .section}

To create a sales order with a configurable item, do the following:

1.  On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, create a new record.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  In the Summary area, specify the following:
    -   **Order Type**: *SO* \(automatically selected\)
    -   **Customer**: *ABCSTUDIOS*
    -   **Description**: `Sale of a configurable item`
    -   **Requested On**: Today's date \(automatically specified\)
3.  On the table toolbar of the **Details** tab, click **Add Row**.
4.  In the row, specify the following:

    -   **Branch**: *PRODWHOLE*
    -   **Inventory ID**: *AMDOORDH01*
    -   **Warehouse**: *WHOLESALE* \(automatically selected\)
    -   **Quantity**: `1`
    Notice that the system selected the check box in the **Configurable** column of the line, which indicates that the item is configurable.

5.  On the form toolbar, click **Save**.
6.  On the table toolbar, click **Configure**. The system opens the [Configuration Entry](AM_30_60_00.md) \(AM306000\) form in a popup window and displays a list of features for the *AMDOORDH01* item in the Features pane on the **Options** tab.
7.  Select an option for the *JAMB* feature as follows:
    1.  In the Features pane, click *JAMB*.
    2.  On the **Options** tab, select the check box in the **Included** column of the *FJ Pine 40x10 19 Single BevelF* row.
8.  Select an option for the *ARCHITRAVE* feature as follows:
    1.  In the Features pane, click *ARCHITRAVE*.
    2.  On the **Options** tab, select the check box in the **Included** column of the *FJ Pine Ex 50x25 Profiled* row.
9.  Select an option for the *DOORS* feature as follows:
    1.  In the Features pane, click *DOORS*.
    2.  On the **Options** tab, select the check box in the **Included** column of the *Horizon SQ10 1980 x 510* row.
10. Select an option for the *HARDWARE* feature as follows:
    1.  In the Features pane, click *HARDWARE*.
    2.  On the **Options** tab, select the check box in the **Included** column of the *AMDOORHDB2* row.
11. On the form toolbar, click **Save**.
12. On the form toolbar, click **Finish** to complete the configuration, and close the form.

## Step 3: Creating a Production Order { .section}

To create a production order from the sales order, do the following:

1.  While you are still viewing the sales order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, on the More menu, click **Create Production Orders**.

    **Tip:** You open the More menu by clicking the More button \(…\) on the form toolbar.

2.  In the **Production Orders** dialog box, which opens, select the check box in the unlabeled column of the only row and click **Create**. The system creates a production order, closes the dialog box, and displays the reference number of the production order in the **Production Nbr.** column of the line on the **Details** tab.
3.  On the [Production Order Details](AM_20_90_00.md) \(AM209000\) form, open the created production order to review its details.
4.  In the Operations table, click through operation rows from *0010* to *0040*, and for each row, make sure that the options you selected in Step 2 have been added as materials on the **Materials** tab in the lower part of the form.

You have created a sales order with the configurable item and created a production order for this item.

**Parent topic:**[Product Configurator](../UserGuide/MFG_Product_Configurator_Mapref.md)

