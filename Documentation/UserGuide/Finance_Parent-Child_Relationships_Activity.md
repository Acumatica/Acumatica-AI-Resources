# Parent-Child Relationships: Process Activity {#_fa6b3615-c64c-4eee-9be7-2def1c6ee1ae .task}

The following activity will walk you through the process of setting up the parent-child relationship between three existing customer accounts.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that Food Clever, one of SweetLife customers, has acquired Blue Cafe and Cafe French Bun, which are also SweetLife customers. That is, Food Clever is now the parent company and Blue Cafe and Cafe French Bun are its subsidies. The companies have a consolidated balance and need to receive consolidated customer statements from SweetLife, but they do not share a credit policy.

Further suppose that Blue Cafe and Cafe French Bun bought training courses from SweetLife in January 2026. In February, Food Clever made a payment for both training courses.

Acting as the chief accountant of SweetLife Fruits &amp; Jams, you need to update the settings of the customer accounts in the system, create the invoices for the child accounts, enter a payment from the parent account, and generate a consolidated report.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Standard Financials*, which provides the standard financial functionality
    -   *Multibranch Support*, which supports multiple branches in your instance of Acumatica ERP
    -   *Multicompany Support*, which supports multiple companies within one tenant
-   On the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, the **Hold Documents on Entry** check box has been selected in the **Data Entry Settings** section.
-   On the [Customers](AR_30_30_00.md) \(AR303000\) form, the *FOODCLVR \(Food Clever\)*, *BLUECAFE \(Blue Cafe\)*, and *FRBUN \(Cafe French Bun\)* customers have been created.

## Process Overview { .section}

In this activity, you will first enable the *Parent-Child Customer Relationship* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. You will then set up the parent and child relationships between customers by updating their settings on the [Customers](AR_30_30_00.md) \(AR303000\) form. You will create two invoices for child accounts on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form. On the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, you will create the parent customer's payment for these two invoices. Finally, you will review the consolidated balance of the parent account by running the [AR Balance by Customer](AR_63_25_00.md) \(AR632500\) report.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as Anna Johnson by using the *johnson* username and the *123* password.
2.  In the info area at the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date is set to *1/30/2026*. If a different date is displayed, click the Business Date menu button and select *1/30/2026* from the calendar. For simplicity, you'll create and process all documents in this activity using this business date.
3.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, select the *SweetLife Head Office and Wholesale Center* branch.

## Step 1: Enabling the Needed Feature { .section}

To enable the *Parent-Child Customer Relationship* feature, do the following:

1.  Open the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
2.  On the form toolbar, click **Modify**.
3.  Select the **Parent-Child Customer Relationship** check box in the **Advanced Financials** group of features.
4.  On the form toolbar, click **Enable** to enable the feature.

## Step 2: Setting Up the Child Accounts { .section}

To update the settings of the customers to be defined as child accounts, do the following:

1.  On the [Customers](AR_30_30_00.md) \(AR303000\) form, open the *BLUECAFE* customer.
2.  Go to the **Billing** tab.
3.  In the **Parent Account** box of the **Parent Info** section, select *FOODCLVR*.
4.  Select the **Consolidate Balance** and **Consolidate Statements** check boxes.
5.  On the form toolbar, click **Save** to save your changes.
6.  In the **Customer ID** box, select *FRBUN*.
7.  On the **Billing** tab, specify the following settings in the **Parent Info** section:
    -   **Parent Account**: *FOODCLVR*
    -   **Consolidate Balance**: Selected
    -   **Consolidate Statements**: Selected
8.  On the form toolbar, click **Save**.

## Step 3: Reviewing the Parent Account { .section}

To review the settings of the parent account, do the following:

1.  On the [Customers](AR_30_30_00.md) \(AR303000\) form, open the *FOODCLVR* customer record.
2.  Go to the **Child Accounts** tab.

    The first row displays the settings of the parent account \(*FOODCLVR*\). The other two rows display the settings of the company's child accounts \(*BLUECAFE* and *FRBUN*\).


## Step 4: Creating Invoices for Child Accounts { .section}

To create invoices for the child accounts, do the following:

1.  On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, create a new record.
2.  In the Summary area, specify the following settings:
    -   **Type**: *Invoice*
    -   **Date**: *1/30/2026*
    -   **Customer**: *BLUECAFE*
    -   **Description**: `Online training`
3.  On the **Details** tab, click **Add Row** on the table toolbar and specify the following settings in the added row:
    -   **Branch**: *HEADOFFICE*
    -   **Transaction Descr.**: `Online training`
    -   **Ext. Price**: `390`
4.  On the form toolbar, click **Remove Hold** and then click **Release**.
5.  Create another new record and in the Summary area, specify the following settings:
    -   **Type**: *Invoice*
    -   **Date**: *1/30/2026*
    -   **Customer**: *FRBUN*
    -   **Description**: `Online training`
6.  On the **Details** tab, click **Add Row** on the table toolbar and specify the following settings in the added row:
    -   **Branch**: *HEADOFFICE*
    -   **Transaction Descr.**: `Online training`
    -   **Ext. Price**: `210`
7.  On the form toolbar, click **Remove Hold** and then click **Release**.

## Step 5: Creating a Payment for the Parent Company { .section}

To create a payment from the parent company for the training course, do the following:

1.  On the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, create a new record.
2.  In the Summary area, specify the following settings:
    -   **Type**: *Payment*
    -   **Customer**: *FOODCLVR*
    -   **Application Date**: *2/13/2026*
    -   **Description**: `Training courses`
    -   **Payment Amount**: `600`
3.  On the **Documents to Apply** tab, click **Add Row** on the table toolbar and specify the following settings in the added row:
    -   **Doc. Type**: *Invoice*
    -   **Reference Nbr.**: The reference number of the $390 invoice that you created in Step 4
4.  Click **Add Row** again and specify the following settings in the row:
    -   **Doc. Type**: *Invoice*
    -   **Reference Nbr.**: The reference number of the $210 invoice that you created in Step 4
5.  On the form toolbar, click **Remove Hold** and then click **Release** to release the payment.

## Step 6: Reviewing the Balance of the Parent Account { .section}

To review the consolidated balance of the parent account, do the following:

1.  On the [AR Balance by Customer](AR_63_25_00.md) \(AR632500\) form, specify the following settings on the **Report Parameters** tab:
    -   **Report Format**: *Open Documents*
    -   **Company/Branch**: *HEADOFFICE*
    -   **Financial Period**: *01-2026*
    -   **Customer**: *FOODCLVR*
    -   **Include Applications**: Selected
    -   **Consolidate Data by Parent Account**: Selected
2.  On the form toolbar, click **Run Report**.

    The report displays the total balance of the customer's documents and the documents of the customer's child accounts—*BLUECAFE* and *FRBUN*.


**Parent topic:**[Managing Parent-Child Relationships](../UserGuide/Finance_Parent-Child_Relationship_Mapref.md)

