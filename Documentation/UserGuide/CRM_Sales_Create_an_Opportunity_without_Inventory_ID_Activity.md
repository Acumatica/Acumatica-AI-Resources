# Opportunities: To Create an Opportunity with an Item Without an Inventory ID {#_dcd8f3d8-1f14-44b9-846a-dfa645d263e2 .task}

The following activity demonstrates how to add to an opportunity any products or services that have not been defined in Acumatica ERP as stock or non-stock items with inventory IDs.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are David Chubb, a sales manager of the SweetLife Fruits &amp; Jams company.You have received a message from your customer Diane Doe, who is a procurement manager at the Delicious Energy restaurant in New York. Diana would like to buy a new juicer that can make pomegranate juice for the restaurant, and you discussed this deal with her last week. The expected sales price for this juicer is $4300, and you have agreed to give the customer a $50 discount. You have just received these new juicers in the warehouse, but they have not been added to the system yet. You want to add the opportunity to Acumatica ERP now.

## Configuration Overview {#section_gms_g34_rtb .section}

In the *U100* dataset, for the purposes of this activity, the following tasks have been performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Customer Management* feature has been enabled. This feature provides the customer relationship management \(CRM\) functionality, including lead and customer tracking, as well as the handling of sales opportunities, contacts, marketing lists, and campaigns.
-   On the [Business Accounts](CR_30_30_00.md) \(CR303000\) form, the *DELIENERGY* business account has been created in the system. It has also been extended as a customer, with its settings specified on the [Customers](AR_30_30_00.md) \(AR303000\) form.
-   On the [Contacts](CR_30_20_00.md) \(CR302000\) form, the *Diane Doe* contact has been created in the system and associated with the *DELIENERGY* business account.
-   On the [Opportunity Classes](CR_20_90_00.md) \(CR209000\) form, the *PRODUCT* opportunity class has been created.

## Process Overview { .section}

In this activity, you will create an opportunity for the existing *DELIENERGY* business account on the [Opportunities](CR_30_40_00.md) \(CR304000\) form, add a pomegranate juicer without an inventory ID to the opportunity, and apply a $50 discount to the item.

## System Preparation {#section_dl3_dj4_rtb .section}

Before you start creating opportunities manually, you should do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded.
2.  Sign in to the system as sales manager David Chubb by using the following credentials:
    -   **Username**: *chubb*
    -   **Password**: *123*
3.  Make sure that on the Company and Branch Selection menu, in the top pane of the Acumatica ERP screen, the *SweetLife Head Office and Wholesale Center* branch is selected.

## Step: Creating an Opportunity with an Item Without an Inventory ID { .section}

To create an opportunity with Diane Doe of *DELIENERGY* to reflect her intention to buy one pomegranate juicer with a $50 discount, do the following:

1.  On the [Opportunities](CR_30_40_00.md) \(CR304000\) form, create a new record.
2.  In the Summary area of the [Opportunities](CR_30_40_00.md) form, do the following:
    1.  In the **Opportunity Class** box, select *PRODUCT*.
    2.  In the **Stage** box, select *Solution*.
    3.  In the **Estimated Close Date** box, select the estimated date of the deal closure \(for example, tomorrow's date\).
    4.  In the **Business Account** box, select *DELIENERGY*. Notice that in the **Contact** box, *Diane Doe* is selected.
    5.  In the **Owner** box, select *David Chubb* to indicate that you are the owner of this opportunity.
    6.  In the **Description** box, add `Sale of the new pomegranate juicer`.
3.  On the form toolbar, click **Save**.
4.  On the form toolbar, click **Open** to indicate in the system that you have started working on the opportunity.
5.  In the **Details** dialog box, which opens, do the following:
    1.  In the **Reason** box, select *In Process*
    2.  In the **Stage** box, leave *Solution*
    3.  Click **OK** to save the setting and close the dialog box
6.  On the **Details** tab of the form, add a row with the details of the item to be sold as follows:

    -   **Inventory ID**: Empty
    -   **Description**: `A pomegranate juicer`
    -   **Quantity**: `1`
    -   **Unit Price**: `4300`
    -   **Discount Amount**: `50`
    A $50 discount is applied to the line.

7.  On the form toolbar, click **Save**.

You have created an opportunity with the item that has no an inventory ID and applied the discount to the item.

**Parent topic:**[Creating Opportunities](../UserGuide/CRM_Sales_Creating_Opportunities_Mapref.md)

