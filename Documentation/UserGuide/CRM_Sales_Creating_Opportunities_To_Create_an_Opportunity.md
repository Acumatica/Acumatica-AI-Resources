# Opportunities: To Create an Opportunity Manually {#_49b7dce9-5dbd-4354-9eef-ed936bca08f6 .task}

The following activity will help you create an opportunity manually in Acumatica ERP.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are David Chubb, a sales manager of the SweetLife Fruits &amp; Jams company.You have received a phone call from your customer Kevin Grey, who is a buyer at Groceriex, a chain of supermarkets in New York. Kevin would like to extend Groceriex’s contract with SweetLife and purchase 50 pounds of each of the following fresh fruits: apples, kiwis, oranges, and lemons.

## Configuration Overview { .section}

In the *U100* dataset, for the purposes of this activity, the following tasks have been performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Customer Management* feature has been enabled: This feature provides the customer relationship management \(CRM\) functionality, including lead and customer tracking, as well as the handling of sales opportunities, contacts, marketing lists, and campaigns.
-   On the [Business Accounts](CR_30_30_00.md) \(CR303000\) form, the *GROCERIEX* business account has been created in the system and extended as a customer with its settings specified on the [Customers](AR_30_30_00.md) \(AR303000\) form.
-   On the [Contacts](CR_30_20_00.md) \(CR302000\) form, the *Kevin Grey* contact has been created in the system and associated with the *GROCERIEX* business account.
-   On the [Opportunity Classes](CR_20_90_00.md) \(CR209000\) form, the *PRODUCT* opportunity class has been created.
-   On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, the *APPLES*, *KIWIS*, *ORANGES*, and *LEMONS* stock items \(which hold the settings of one pound of each of these fruits\) have been created.

## Process Overview { .section}

In this activity, you will create an opportunity for the existing customer on the [Opportunities](CR_30_40_00.md) \(CR304000\) form.

## System Preparation { .section}

Before you start creating opportunities manually, you should do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded
2.  Sign in to the system as sales manager David Chubb by using the following credentials:
    -   **Username**: *chubb*
    -   **Password**: *123*
3.  Make sure that on the Company and Branch Selection menu, in the top pane of the Acumatica ERP screen, the *SweetLife Head Office and Wholesale Center* branch is selected.

## Step: Creating an Opportunity Manually { .section}

To manually create an opportunity with Kevin Grey of *GROCERIEX*, do the following:

1.  Open the *GROCERIEX* business account record on the [Business Accounts](CR_30_30_00.md) \(CR303000\) form.

    **Tip:** To search for a record in a list of records, you can enter a keyword or phrase in the Search box of the table toolbar. The system will find all the records that match your search criteria and display these records in the table.

2.  On the More menu, under **Record Creation**, click **Create Opportunity**.

    **Tip:** You open the More menu by clicking the More button \(…\) on the form toolbar.

3.  In the Summary area of the [Opportunities](CR_30_40_00.md) \(CR304000\) form, which opens in a pop-up window with *GROCERIEX* selected as a business account, do the following:
    1.  In the **Opportunity Class** box, select *PRODUCT*.
    2.  In the **Stage** box, select *Development*.
    3.  In the **Estimated Close Date** box, select the estimated date of the deal closure, for example, tomorrow's date.
    4.  In the **Description** box, add `Sale of fresh fruit`.
4.  On the form toolbar, click **Save**.
5.  On the form toolbar, click **Open** to indicate in the system that you have started working on the opportunity.
6.  In the **Details** dialog box, which opens, click **OK**.
7.  On the **Activities** tab, specify the results of your phone discussion with Kevin Grey about the order of fruit as follows:
    1.  On the table toolbar, click **Create Activity** &gt; **Create Phone Call**.
    2.  On the [Activity](CR_30_60_10.md) \(CR306010\) form, which opens in a pop-up window, do the following:
        1.  In the **Summary** box, specify a brief summary of the phone call with Kevin Grey by typing `Sale of apples, kiwis, oranges, and lemons`.
        2.  In the text area of the **Decription** tab, specify `The shipment should be scheduled for tomorrow morning.`
        3.  On the form toolbar, click Save and Close to return to the [Opportunities](CR_30_40_00.md) form with the opportunity open.
        4.  On the **Activities** tab, notice that a row with the *Phone Call* type is added to the table.
8.  On the **Details** tab, add four rows with the details of the items to be sold as follows:
    -   Row 1:

        -   **Inventory ID**: *APPLES*
        -   **Quantity**: `50`
    -   Row 2:

        -   **Inventory ID**: *KIWIS*
        -   **Quantity**: `50`
    -   Row 3:

        -   **Inventory ID**: *ORANGES*
        -   **Quantity**: `50`
    -   Row 4:

        -   **Inventory ID**: *LEMONS*
        -   **Quantity**: `50`
9.  On the form toolbar, click **Save**.

You have created an opportunity for the existing *GROCERIEX* customer.

**Parent topic:**[Creating Opportunities](../UserGuide/CRM_Sales_Creating_Opportunities_Mapref.md)

