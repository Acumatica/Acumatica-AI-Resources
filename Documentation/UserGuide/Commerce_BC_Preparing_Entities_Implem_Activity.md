# Preparing Entities for Synchronization: Implementation Activity {#_027c5ae6-b4de-4c21-8bd1-e9df4bc340f7 .task}

In this activity, you will define a subset of stock items maintained in Acumatica ERP that should be synchronized with the BigCommerce store. You will also learn how to exclude a particular customer from synchronization, and map a custom field on the customer registration form in BigCommerce to the corresponding attribute form in Acumatica ERP.

**Attention:** The following activity is based on the *U100* dataset.

## Story { .section}

As an implementation consultant helping SweetLife to set up the integration between Acumatica ERP and the online store deployed on the BigCommerce platform, you need to configure the synchronization of only a subset of stock items that will be available for sale on the ecommerce website. The SweetLife store is going to sell jams, and all stock items that need to be prepared for synchronization belong to the *Jam* item class.

You also need to configure the generic retail customer, *RETSALE*, to be excluded from the synchronization processes.

Additionally, you want to update the customer registration form in the BigCommerce store to have an additional field that you use to collect information about the size of your business customers. You want this information to be imported to Acumatica ERP along with the other customer data.

## Process Overview { .section}

In this activity, you will first review the stock items that need to be exported to the BigCommerce store on the [Stock Items](IN_20_25_00.md) \(IN202500\) form. Then on the [Entities](BC_20_20_00.md) \(BC202000\) form, you will configure the filtering options for the *Stock Item* entity to include in the synchronization only stock items of the *Jam* item class.

While remaining on the [Entities](BC_20_20_00.md) form, you will set up the filtering options for the *Customer* entity to exclude the *RETSALE* customer from synchronization.

Finally, you will create a custom field on the customer registration form in the BigCommerce store, add the *ORGSIZE* attribute to the customer class of ecommerce customers \(that is, the *ECCUSTOMER* class\) on the [Customer Classes](AR_20_10_00.md) \(AR201000\) form, and map the attribute to the BigCommerce organization size field on the [Entities](BC_20_20_00.md) form.

## System Preparation { .section}

Before you start the synchronization process, do the following:

-   Make sure the connection to the BigCommerce store has been established and the minimum configuration has been performed, as described in [Initial Configuration: To Establish and Configure the Store Connection](Commerce_BC_Initial_Configuration_Implem_Activity.md).
-   Sign in to the Acumatica ERP instance with the *U100* dataset preloaded by using the *gibbs* username and the *123* password.

## Step 1: Reviewing the Stock Items to Be Sold Online { .section}

To find the stock items that will be sold online, do the following:

1.  Open the Stock Items \(IN2025PL\) form.
2.  Filter the stock items to display only the items of the *Jam* item class as follows:

    1.  In the **Item Class** column, click the column header.
    2.  In the menu that opens, select the *Equals* filter condition.
    3.  In the box at the bottom of the menu, type `Jam`.
    4.  Click **OK** to apply the filter.
    Now all stock items of the *Jam* item class are displayed. These are the stock items that will need to be exported to the BigCommerce store.


## Step 2: Configuring the Stock Item Entity to Export a Subset of Stock Items { .section}

To configure the *Stock Item* entity to export to the BigCommerce store only stock items of the *Jam* item class, do the following:

1.  Open the [Entities](BC_20_20_00.md) \(BC202000\) form.
2.  In the **Store** box, select *SweetStore*.
3.  In the **Entity** box, select *Stock Item*.

    Notice that this entity is configured to be only exported to the BigCommerce store \(the **Sync Direction** is set to *Export*\), and only two tabs, **Export Mapping** and **Export Filtering**, are displayed.

4.  On the **Export Filtering** tab, add a row to the table, and in the row, specify the following settings to define the filtering condition:
    -   **Active**: Selected
    -   **Field Name**: *Item Class*
    -   **Condition**: *Equals*
    -   **Value**: `Jam`
5.  On the form toolbar, click **Save** to save your changes.

    Now when you synchronize the *Stock Item* entity, only the stock items of the *Jam* item class will be exported to the BigCommerce store.

    **Attention:** Filtering rules do not affect data that has already been synchronized. For example, if you first synchronize the *Stock Item* entity without filters, apply the filter described above, and run the synchronization again, previously synchronized stock items will remain synchronized; however, they will be excluded from subsequent synchronizations.


## Step 3: Configuring the Customer Entity to Not Sync a Particular Customer Record { .section}

To configure the *Customer* entity to exclude the *RETSALE* customer from synchronization, do the following:

1.  Open the [Entities](BC_20_20_00.md) \(BC202000\) form.
2.  In the **Store** box, select *SweetStore*.
3.  In the **Entity** box, select *Customer*.

    Notice that this entity is configured to be both imported and exported \(that is, **Sync Direction** is set to *Bidirectional*\), so four tabs—**Import Mapping**, **Import Filtering**, **Export Mapping**, and **Export Filtering**—are displayed on the form.

4.  On the **Export Filtering** tab, add a row to the table, and in the row, specify the following settings to define the filtering condition:
    -   **Active**: Selected
    -   **Field Name**: *Customer ID*
    -   **Condition**: *Does Not Equal*
    -   **Value**: `RETSALE`
5.  On the form toolbar, click **Save** to save your changes.

    Now when you synchronize the *Customer* entity, the *RETSALE* customer will be excluded from the process.


## Step 4: Reviewing the Organization Size Attribute in Acumatica ERP { .section}

To see how the *ORGSIZE* attribute has been set up in the Acumatica ERP instance, do the following:

1.  On the [Attributes](CS_20_50_00.md) \(CS205000\) form, in the **Attribute ID** box, select *ORGSIZE*.

    Take note of the description of the attribute and the descriptions of the attribute values. You will use them for creating the corresponding custom field in BigCommerce.

2.  On the [Customer Classes](AR_20_10_00.md) \(AR201000\) form, in the **Class ID** box, select *ECCUSTOMER*.
3.  On the **Attributes** tab, click **Add Row** on the table toolbar.
4.  In the **Attribute ID** column, select the *ORGSIZE* attribute.
5.  Click **Save &amp; Close** on the form toolbar to save your changes.

## Step 5: Adding a Custom Field to the Customer Registration Form in BigCommerce { .section}

To add a new field to the customer registration form in the BigCommerce store, do the following:

1.  Sign in to the BigCommerce store by using the administrator credentials.
2.  In the left pane, click **Advanced Settings** &gt; **Account Signup Form**.
3.  On the **Account Signup Fields** tab of the **Form Fields** page, which opens, click **Create a New Field** &gt; **Pick List**.
4.  In the **Create a Radio Buttons** dialog box, specify the following settings:
    -   **Field Name**: `Organization size`

        This field name corresponds to the description of the *ORGSIZE* attribute in Acumatica ERP.

    -   **Instructional Text**: `Tell us how large your company is`
    -   **List of Values**:

        -   1-100 employees
        -   100-500 employees
        -   Over 500 employees
        These values correspond to the descriptions of values of the *ORGSIZE* attribute in Acumatica ERP.

5.  Click **Save** to save the new field.

## Step 6: Mapping the ORGSIZE Customer Attribute in Acumatica ERP to the Custom Organization Size Field in BigCommerce { .section}

To map the *ORGSIZE* customer attribute that you configured in Step 4 to the **Organization Size** field that you configured in Step 5, do the following:

1.  Open the [Entities](BC_20_20_00.md) \(BC202000\) form.
2.  In the **Store** box, select *SweetStore*.
3.  In the **Entity** box, select *Customer*.
4.  On the **Import Mapping** tab, specify the following condition:
    -   **Active**: Selected
    -   **ERP Object**: *Customer → Attributes*
    -   **ERP Field**: *Organization size*
    -   **External Object**: *Customer → Form Fields*
    -   **External Field / Value**: *Organization size*
5.  Click **Save** on the form toolbar to save your changes.

Now if a customer selects a value in the **Organization size** drop-down box on the BigCommerce registration form, after the *Customer* entity is synchronized with Acumatica ERP, the selected option will appear on the **Attributes** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form.

You have configured the filtering and mapping settings for customers and stock items and can now proceed to the synchronization of these entities.

**Parent topic:**[Preparing Entities for Synchronization](../UserGuide/Commerce_BC_Preparing_Entities_Mapref.md)

