# Company Groups: Implementation Activity {#_a7d31e4c-f4b8-40a7-a347-77b18cd806fd .task}

In this implementation activity, you will learn how to create a company group, add companies to it, and restrict the visibility of a customer and a vendor to this company group.

## Story { .section}

Three related companies have been configured in the *U100* dataset—SweetLife Fruits &amp; Jams, Muffins &amp; Cakes, and ToadGreen Building Group. The first two companies are involved in food production, while the third is a construction company. All three companies are using the same base currency—the United States dollar \(*USD*\). The SweetLife and Muffins &amp; Cakes companies share some customers and vendors, FourStar Coffee &amp; Sweets Shop \(*COFFEESHOP*\) and Good Fruits More \(*GOODFRUITS*\) among them. Also, the SweetLife Canada company with the *CAD* \(Canadian dollar\) base currency has been implemented.

Acting as an implementation consultant, you need to do the following:

-   Create a company group that includes all the companies that use the *USD* base currency: SweetLife, Muffins &amp; Cakes, and ToadGreen Building Group
-   Restrict the *COFFEESHOP* customer and *GOODFRUITS* vendor to this company group

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form, the SweetLife Fruits &amp; Jams, Muffins &amp; Cakes, and ToadGreen Building Group companies have been configured.
-   On the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form, the *COFFEESHOP* customer has been created.
-   On the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form, the *GOODFRUITS* vendor has been created.

## Process Overview { .section}

In this activity, on the [Company Groups](../UserGuide/CS_10_25_00.md) \(CS102500\) form, you will create a company group and add three companies to it. On the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form, you will restrict the visibility of the *COFFEESHOP* customer to the new group, and on the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form, you will restrict the visibility of the *GOODFRUITS* vendor to the new group.

## System Preparation { .section}

Before you start creating a company group, do the following:

-   Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as a system administrator Kimberly Gibbs by using the *gibbs* username and the *123* password.
-   Make sure that on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the *Multicompany Support*, *Multicurrency Accounting*, *Customer and Vendor Visibility Restriction*, and *Multiple Base Currencies* features have been enabled, as described in [Multiple Base Currencies: Implementation Activity](config_Multicurrency_MultipleBaseCurrencies_Implem_Activity.md).
-   Make sure that the SweetLife Canada company has been configured, as described in [Multiple Base Currencies: Implementation Activity](config_Multicurrency_MultipleBaseCurrencies_Implem_Activity.md).

## Step 1: Creating a Company Group { .section}

To create a company group, do the following:

1.  Open the [Company Groups](../UserGuide/CS_10_25_00.md) \(CS102500\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  On the form toolbar, click **Add New Record**.
3.  In the Summary area, specify the following settings:
    -   **Group ID**: `USCOMP`
    -   **Group Name**: `US Companies`
    -   **Currency ID**: *USD*
4.  On the table toolbar, click **Add Row**, and in the **Company ID** column of the added row, select *MUFFINS*.
5.  Click **Add Row**, and in the **Company ID** column of the row, select *SWEETLIFE*.
6.  Click **Add Row**, and in the **Company ID** column of the row, select *TOADGREEN*.
7.  On the form toolbar, click **Save** to save your changes.

## Step 2: Restricting the Visibility of a Customer to the Company Group { .section}

To restrict the visibility of the *COFFEESHOP* customer to the new company group, do the following:

1.  Open the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form.
2.  In the **Customer ID** box, select *COFFEESHOP*.
3.  In the **Restrict Visibility To** box on the **Financial** tab, select *USCOMP*.
4.  On the form toolbar, click **Save** to save your changes.

## Step 3: Restricting the Visibility of a Vendor to the Company Group { .section}

To restrict the visibility of the *GOODFRUITS* vendor to the new company group, do the following:

1.  Open the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form.
2.  In the **Vendor ID** box, select *GOODFRUITS*.
3.  In the **Restrict Visibility To** box on the **Financial** tab, select *USCOMP*.
4.  On the form toolbar, click **Save** to save your changes.

**Parent topic:**[Company Groups](../ImplementationGuide/config_Finance_Company_Group_Mapref.md)

