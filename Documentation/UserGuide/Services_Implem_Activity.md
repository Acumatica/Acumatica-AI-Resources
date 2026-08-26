# Service Items: Implementation Activity {#_63ed51ca-0228-4372-b338-d34c1bdff89d .task}

The following implementation activity will walk you through the process of creating a new service item.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story {#section_vfr_kpy_mlb .section}

Suppose that the SweetLife Fruits &amp; Jams company wants to create a landing page \(a website\) that will advertise its products and services on the Internet. The company also wants the website to be visible in the search results of all popular search engines so that the customers can find it easily. To achieve these goals, the company has hired the SEO World advertising agency. The agency will create the website and promote it in the search engines.

Acting as a SweetLife sales and purchasing manager, you need to create the new service item for the creation and promotion of the website and specify the needed settings for it.

## Process Overview {#section_wfr_kpy_mlb .section}

In this activity, you will create a service item on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, specify the needed settings, and save the service item.

## System Preparation {#section_xfr_kpy_mlb .section}

To prepare the system, launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in to the system. You should sign in as a sales and purchasing manager by using the *wiley* username and the *123* password.

## Step: Creating a Service Item {#section_yfr_kpy_mlb .section}

To create a service item, do the following:

1.  On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, add a new record.
2.  In the Summary area, specify the following settings:
    -   **Inventory ID**: `WEBSITESEO`
    -   **Description**: `Creation and promotion of a website`
3.  On the **General** tab, specify the following settings for the item:
    -   **Type**: *Service*
    -   **Posting Class**: *NONSTOCK - Non-Stock Items*
    -   **Tax Category**: *EXEMPT*
    -   **Require Receipt**: Cleared

        You clear this check box because you do not want to record the receipt of this service item.

    -   **Require Shipment**: Cleared

        You clear this check box because the company does not ship this item.

    -   **Close PO Line**: *By Amount*

        With this option selected, a purchase order line for this item is completed and closed based on the line amount when the bill is released. You select this option because you pay a particular amount on a regular basis.

4.  In the **Unit of Measure** section of the **General** tab, specify the following settings:
    -   **Base Unit**: *HOUR*
    -   **Sales Unit**: *HOUR*
    -   **Purchase Unit**: *HOUR*
5.  On the **GL Accounts** tab, in the **Expense Account** box, select the *60000 - Purchase Expense* account.
6.  On the form toolbar, click **Save**.

You have created the service item for the creation and promotion of your website on the internet.

**Parent topic:**[Creating Service Items](../UserGuide/Services_Mapref.md)

