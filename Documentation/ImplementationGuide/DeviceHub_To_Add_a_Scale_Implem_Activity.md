# Scales: To Add a Scale to DeviceHub {#_e0bd1b50-60b0-4f42-a8b8-5144328a8035 .task}

In the following implementation activity, you will learn how to add a scale to DeviceHub, view the result of weighing, and add this result to a shipment.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you need to configure a scale that will be used for weighing in your company.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Inventory and Order Management*
    -   *Inventory*
    -   *Fulfillment*
-   On the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form, the *SO* order type has been configured and activated.
-   On the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form, the *COFFEESHOP \(FourStar Coffee &amp; Sweets Shop\)* customer has been defined.
-   On the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form, the *STRAWJAM32* stock item has been defined.
-   On the [Warehouses](../UserGuide/IN_20_40_00.md) \(IN204000\) form, the *WHOLESALE* warehouse has been defined. In this warehouse, sufficient quantities of the *STRAWJAM32* item are on hand.

## Process Overview { .section}

On the **Scales** tab of the DeviceHub **Configuration** window, you will add a new scale. Then you will sign in to an Acumatica ERP instance and review the results of weighing on the [Scales](../UserGuide/SM_20_65_30.md) \(SM206530\) form. After that, you will configure the settings of weighing and add the results of the weighing a package to the shipment on the [Pick, Pack, and Ship](../UserGuide/SO_30_20_20.md) \(SO302020\) form.

## System Preparation { .section}

Before you start adding scales to DeviceHub, you should do the following:

-   On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, make sure that the *DeviceHub* feature is enabled.
-   Make sure that you have completed the following prerequisite activity: [DeviceHub: To Set Up the Connection Between DeviceHub and the Acumatica Instance](Devicehub_To_Set_Up_the_Connection_Implem_Activity.md).

## Step 1: Adding a Scale to DeviceHub { .section}

To add a scale in the settings of the application, do the following:

1.  Navigate to **Start** &gt; **Programs** &gt; **Acumatica** &gt; **Acumatica DeviceHub** to view the DeviceHub main window.
2.  Click **File** &gt; **Configure** on the DeviceHub main menu.
3.  On the **General** tab of the **Configuration** window, select the **Enable scale support** check box.
4.  On the **Digital Scale** tab, click **Add**, and specify the following settings:
    -   **Scale ID**: *DHSCALE1*

        **Note:** The scale identifier can include only digits and uppercase letters.

    -   **Device**: One of the digital scale devices detected in the system
5.  Click **OK** to close the **Configuration** window.

## Step 2: Reviewing the Results of Weighing in Acumatica ERP { .section}

To review the results of weighing in Acumatica ERP, do the following:

1.  Sign in to the Acumatica ERP instance for which you have configured DeviceHub with the *admin* username.
2.  Place any convenient item on the scale that you have added to DeviceHub.
3.  Open the [Scales](../UserGuide/SM_20_65_30.md) \(SM206530\) form.
4.  Review the only line in the table.

    In the **Last Weight** column, the system shows the weight of the item you have weighed.


**Tip:** A scale that has been configured in DeviceHub appears in this table when Acumatica ERP receives a nonzero weight from the scale for the first time.

## Step 3: Specifying User Settings for Weighing Packages { .section}

Before you start using the scale for weighing and adding the results of weighing to packages in shipments, you need to specify the default scales that will be used for the user account on the [Pick, Pack, and Ship](../UserGuide/SO_30_20_20.md) \(SO302020\) form. This action should be performed for each user who is going to use the scale.

To perform this step, do the following:

1.  Open the [Pick, Pack, and Ship](../UserGuide/SO_30_20_20.md) \(SO302020\) form.
2.  On the form toolbar, click **User Settings**.

    The **Settings** dialog box opens.

3.  In the **Settings** dialog box, select the **Use Digital Scale** check box.
4.  In the **Scale** box, specify the identifier of the scale that you have configured in Step 1.

## Step 4: Adding the Results of Weighing to a Shipment { .section}

To weigh a package and specify its weight in a shipment, do the following:

1.  On the [Pick, Pack, and Ship](../UserGuide/SO_30_20_20.md), enter `@pack` in the **Scan** box to switch to Pack mode.
2.  In the **Scan** box, enter `000067`, which is the reference number of the shipment for which you are performing packing operations. The system loads the shipment lines to the table on the **Pack** tab, and shows the reference number of the shipment that is currently being processed in the **Shipment Nbr.** box of the Summary area.
3.  Enter `MEDIUM` to select the box to which the items are packed.
4.  Enter `SJ32` to pack the item. \(*SJ32* is the barcode for *STRAWJAM32*, the 32-ounce jar of strawberry jam, which is included in the *000067* shipment.\)

    The system highlights the first line of the shipment in bold and specifies *1* as the **Picked Quantity** and **Packed Quantity**.

5.  Set the quantity of the current line to *5* as follows:
    1.  On the form toolbar, click **Set Qty**. The system prompts you to enter the item quantity.
    2.  In the **Scan** box, type `5`. The system highlights the first line of the shipment in green and specifies *5* as the **Picked Quantity** and **Packed Quantity**.
6.  Place any convenient item on the scale that you have added to DeviceHub.
7.  On the form toolbar, click **Confirm Package** to confirm the package.

    The system confirms the package and inserts its weight into the **Weight** box on the toolbar of the **Package Content** table. In a production scenario, you would now confirm the shipment.


**Parent topic:**[Configuring Digital Scales](../ImplementationGuide/Config_Scales_DeviceHub_Mapref.md)

