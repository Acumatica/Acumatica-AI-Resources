# Order Synchronization: Import of Order Risk Information {#_d2db3de9-67ef-4e60-bc73-c8fa12f92660 .concept}

Shopify provides the fraud analysis functionality to help merchants identify potentially fraudulent orders. In this topic, you will read about importing order risk information from Shopify to Acumatica ERP.

## Configuration of the Import of Fraud Analysis Information { .section}

To set up the import of fraud analysis data along with sales orders from the Shopify store, you do the following in the **Order** section of the **Orders** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form:

1.  Select the **Import Order Risks** check box.
2.  In the new **Hold on Risk Status** box, which becomes available when you select the check box, select one of the following options:
    -   *High Risk*: The system will assign the *Risk Hold* status to an imported sales order if the **Order risk** of the corresponding order in Shopify is *Cancel*.
    -   *Medium or High Risk*: The system will assign the *Risk Hold* status to an imported sales order if the **Order risk** of the corresponding order in Shopify is *Cancel* or *Investigate*.

The risk analysis information is imported from the Shopify store to Acumatica ERP along when the *Sales Order* entity is synchronized. For more information about data synchronization, see [Data Synchronization: General Information](Commerce_SP_Data_Sync_GeneralInfo.md).

The order risk information on the **Risks** tab of the *Sales Orders \(SO301000\)* form will be updated to display the *Risk Level* \(such as *High*\) and Shopify recommendation \(such as *Cancel*\), which will be displayed in the **Message** column.

## Review of the Imported Risk Analysis Information { .section}

If a sales order imported from the Shopify store is assigned the *Risk Hold* status, before fulfilling the order, you should review the following order risk information on the **Risks** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form:

-   The status in the **Risk Status** box, which can be *Low*, *Medium*, or *High*
-   The recommendations in the **Recommendation** column

    **Attention:** Each order can have more than one risk recommendation. The **Risk Status** box displays the maximum risk in the list of risk recommendations.


After you have investigated the order, you can do the following:

-   To cancel the order that is too risky to process, you click **Actions** &gt; **Cancel Order** on the form toolbar. The order is assigned the *Canceled* status and excluded from processing.
-   To process the order, you click the **Remove Risk Hold** button on the form toolbar. The order is assigned the *Open* or *Pending Approval* status, depending on the workflow configuration.

**Parent topic:**[Synchronizing Orders](../UserGuide/Commerce_SP_Syncing_Orders_Mapref.md)

