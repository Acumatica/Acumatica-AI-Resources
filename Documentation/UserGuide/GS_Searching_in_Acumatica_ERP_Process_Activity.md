# Search Capabilities: Process Activity {#_f0e11775-3f45-45b3-818b-189d0a92b71f .task}

The following activity will help you find specific information that you are searching for in Acumatica ERP.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are David Chubb, a new sales manager of the SweetLife Fruits &amp; Jams company. Your colleague who works with the *FourStar Coffee &amp; Sweets Shop* customer has gone on vacation. Your manager called you and asked for some information on the customer and suggested that you use “the Customer History Summary report”. You are not yet familiar with this report.

You need to find out the following information about *FourStar Coffee &amp; Sweets Shop*:

-   The customer address
-   The invoice with the largest amount for goods sold in January 2026
-   The status of the invoice with the *000064* reference number
-   The date and number of the customer's scanned purchase order \(a file\), which the *000063* sales order is based on
-   The data presented in the [Customer History Summary](AR_65_21_00.md) \(AR652100\) report

## Process Overview { .section}

In this activity, you’ll do the following:

1.  Conduct your first search and view the search results
2.  Search for a customer profile by the name of the customer
3.  Search for a record in a list of records
4.  Search for the invoice by its reference number
5.  Search for a file that is attached to a sales order
6.  Search for information in a Help topic

## System Preparation { .section}

Before you start searching for the needed information in Acumatica ERP, make sure that the following tasks have been performed:

-   You have installed an Acumatica ERP instance with the *U100* dataset or a system administrator has performed this task for you.
-   A system administrator has built the full-text search index on the [Rebuild Full-Text Entity Index](SM_20_95_00.md) \(SM209500\) form to accelerate searching in your Acumatica ERP instance. For details, see [Search Indexes: General Information](SA_Building_Search_Indexes_GeneralInfo.md).
-   You have signed in to Acumatica ERP with the following credentials:

    -   **Username**: *chubb*
    -   **Password**: *123*
    For details, see [Acumatica ERP Access: Process Activity](GS_Accessing_Acumatica_ERP_Process_Activity.md).


## Step 1: Conducting a Search { .section}

Suppose that you want to practice conducting a search, to become familiar with the steps involved.

To conduct a search for the word *employee*, do the following:

1.  In the Search box, type `employee`. You may need to wait for a moment until the system completes the search. When the search is complete, the **Menu Items** tab of the Search form opens with the search results.

    **Tip:** When you type a keyword or phrase in the Search box \(or copy it into the box\), you should not press Enter. Pressing Enter results in the system switching to the next tab of the Search form \(the **Transactions and Profiles** tab\). This may be inconvenient if you are searching for a form, report, or dashboard because these search results are displayed on the **Menu Items** tab of the Search form, which opens by default if you do not press Enter.

2.  View the search results, if any, on the various tabs.

    **Note:** The keyword or phrase you are searching for is in bold in the search results.

    The Search form displays the following information:

    -   On the **Menu Items** tab, forms and reports that have the *employee* keyword in their names
    -   On the **Transactions and Profiles** tab, records that have the *employee* keyword in their names, descriptions and notes attached to records
    -   On the **Help Topics** tab, Help topics that have the *employee* keyword in their names or their content
    -   On the **Files** tab, files that have the *employee* keyword in their names

        **Tip:**

        -   When you click a particular link on the **Menu Items**, **Transactions and Profiles** or **Files** tab, a form opens. If you would like to again view your search results, you need to start the search again. When you click a particular link on the **Help Topics** tab, a Help topic opens in a new browser tab.
        -   For documents, transactions, profiles, Help topics, and files, if the list of the search results is longer than one page, you can see the **Next** button in the lower part of the Search form.

## Step 2: Searching for a Customer Profile { .section}

To search for a customer profile, do the following:

1.  In the Search box, type `fourstar`. The Search form opens.
2.  On the **Transactions and Profiles** tab, click *Customer: FourStar Coffee &amp; Sweets Shop*. The [Customers](AR_30_30_00.md) \(AR303000\) form opens with this customer selected.
3.  On the **General** tab of the form, find the **Account Address** section. You can view the customer address here.

## Step 3: Searching for a Record in a List of Records { .section}

To search for an invoice in the list of invoices, do the following:

1.  In the Search box, type `SO3030PL`. The Search form opens.
2.  In the **Transactions** category of the **Menu Items** tab, click *Invoices*. The Invoices \(SO3030PL\) form opens, which lists the invoices that have been created on the [Invoices](SO_30_30_00.md) \(SO303000\) form.

    **Tip:** This list of records is opened when you click *Invoices* whether you searched on *SO303000* or *SO3030PL*. \(An identifier ending in PL represents a list of records created on the corresponding data entry form.\)

3.  In the Search box of the Invoices \(SO3030PL\) form, type *COFFEESHOP*.

    The system displays only invoices with *COFFEESHOP* in the **Customer** column.

4.  In the list of the invoices for the *FourStar Coffee &amp; Sweets Shop*, locate the invoice with the highest amount in the **Amount** column and the date in January 2026.

## Step 4: Searching for an Invoice by Its Reference Number { .section}

To search for the needed invoice by its reference number, do the following:

1.  In the Search box, type `000064`. The Search form opens.

    **Important:** The full-text search index must be built for your Acumatica ERP instance. For details, see [Search Indexes: General Information](SA_Building_Search_Indexes_GeneralInfo.md).

2.  On the **Transactions and Profiles** tab, click *SO Invoice: 000064 - FourStar Coffee &amp; Sweets Shop*. The [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form opens. In the Summary area \(which is in the top part of the form\), notice the value in the **Status** box: *Closed*.

You can search for any document or transaction by its reference number in this way.

## Step 5: Searching for a File Attached to a Record { .section}

Now you need to search for the scanned purchase order from *FourStar Coffee &amp; Sweets Shop*, which is attached to the sales order with the reference number *000063*.

To search for a file attached to a record, do the following:

1.  In the Search box, type `000063`. The Search form opens.
2.  On the **Files** tab, click *Sales Orders \(IN 000063\)\\PO\_Four\_Stars\_Coffee\_Sweets\_Shop.pdf*. The [File Maintenance](SM_20_25_10.md) \(SM202510\) form opens with this file selected. Notice that one version of the file is listed in the table of the form.
3.  On the table toolbar, click **View Selected Version**. The file is downloaded to your computer.

    **Tip:** If multiple versions of the file are listed, you need to first click the row with the needed version.

4.  Open the file and view the details. As mentioned, you need to find the date and number of this scanned purchase order.

## Step 6: Searching for a Help Topic { .section}

Suppose that you need to run the [Customer History Summary](AR_65_21_00.md) \(AR652100\) report on the customer *FourStar Coffee &amp; Sweets Shop*. Further suppose that before running this report, you want to find the description of the report as a whole and the parameters you need to select before running the report.

To search for this Help topic, do the following:

1.  In the Search box, type `customer history summary`. The Search form opens.
2.  On the **Help Topics** tab, click the *Customer History Summary* link.

    **Attention:** Do not click the link with the report name followed by its number: *Customer History Summary* \(AR652100\). This link contains a list of links related to the report rather than being the report reference topic.

    The report reference Help topic for the [Customer History Summary](AR_65_21_00.md) \(AR652100\) report opens in a new browser tab. You can read about the description and parameters of the report.


**Parent topic:**[Searching in Acumatica ERP](../UserGuide/GS_Searching_in_Acumatica_ERP_Mapref.md)

