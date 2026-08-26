# Opportunity Management: To Add Products to an Opportunity {#_4841d86c-c7f9-4c01-b4cf-fcedc0188804 .task}

The following activity demonstrates how to add products to an opportunity in Acumatica ERP.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are David Chubb, a sales manager of the SweetLife Fruits &amp; Jams company.Your customer, the Delicious Energy Restaurant chain, would like to purchase commercial juicers. You have discussed the purchase with Diane Doe, a procurement manager at Delicious Energy Restaurant, and have created the product demo. Now you need to add the details \(in this case, products\) of this order to the opportunity, which you have created in the system.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, for the purposes of this activity, the following tasks have been performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Customer Management* feature has been enabled. This feature provides the customer relationship management \(CRM\) functionality, including lead and customer tracking, as well as the handling of sales opportunities, contacts, marketing lists, and marketing campaigns.
-   On the [Opportunities](CR_30_40_00.md) \(CR304000\) form, the *Sale of commercial juicers to Delicious Energy* opportunity has been created.
-   On the [Business Accounts](CR_30_30_00.md) \(CR303000\) form, the *DELIENERGY* business account has been created.
-   On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, the *JUICER15* and *JUICER20C* stock items, which hold the settings of two different commercial juicers, have been created.

## Process Overview { .section}

In this activity, you will add products to the existing opportunity for the *DELIENERGY* business account on the **Details** tab of the [Opportunities](CR_30_40_00.md) \(CR304000\) form.

## System Preparation { .section}

Before you start adding products to an opportunity, you should do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded
2.  Sign in to the system as sales manager David Chubb by using the following credentials:
    -   **Username**: *chubb*
    -   **Password**: *123*
3.  Make sure that on the Company and Branch Selection menu, in the top pane of the Acumatica ERP screen, the *SweetLife Head Office and Wholesale Center* branch is selected.

## Step: Adding Products to an Opportunity { .section}

You will update the existing opportunity by adding five *JUICER15* commercial juicers and three *JUICER20C* commercial citrus juicers, and then apply the discount to the deal. To add these products to the opportunity in the needed quantities, do the following:

1.  Open the *Sale of commercial juicers to Delicious Energy* opportunity on the [Opportunities](CR_30_40_00.md) \(CR304000\) form.
2.  On the **Details** tab, add products to the opportunity as follows:
    1.  On the table toolbar, click **Add Row**.
    2.  In the **Inventory ID** column of the added row, select *JUICER15*.

        Notice that the system has filled in the settings for the *JUICER15* inventory item, including the **Tax Category** and **Discount, %** settings.

    3.  In the **Quantity** column, type `5`.
    4.  In the **Discount, %** column, type `5`.

        A 5% discount is applied to this detail line.

        **Tip:** If you want to specify a discount amount to be applied to the total amount of all products and services included in the opportunity, type the discount amount in the **Document Discount** box.

    5.  On the form toolbar, click **Save**.
    6.  On the table toolbar, click **Add Row**.
    7.  In the **Inventory ID** column of the added row, select *JUICER20C*.
    8.  In the **Quantity** column, type `3`.
3.  On the form toolbar, click **Save**.

You have added the products and the applicable discounts and quantities to the opportunity. You can see the total amount for the products in the **Detail Total** box in the Summary area of the [Opportunities](CR_30_40_00.md) form. If you create a sales quote for the opportunity, the system will add these products to the sales quote.

**Parent topic:**[Managing Opportunities](../UserGuide/CRM_Sales_Managing_Opportunities_Mapref.md)

