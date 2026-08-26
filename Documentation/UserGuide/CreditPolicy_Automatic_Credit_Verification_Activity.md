# Automatic Credit Verification: Process Activity {#_65d7d661-f25d-46c2-9f7a-e8fe179da026 .task}

The following activity will walk you through the process of analyzing how credit verification rules affect customers' credit check and removing credit hold for an invoice.

## Story {#section_jxc_hjv_vxb .section}

Suppose that credit verification rules have been defined for some of SweetLife customers. On January 30, 2026, the *COFFEESHOP* customer bought online training services, but failed the credit check. On the same date, the *GOODFOOD* customer bought consulting services, but also failed the credit check.

Yona Jones called the *COFFEESHOP* customer and they told him that they sent the payment the day before but it had not yet been received. Yona decided to release the invoice from credit hold.

Acting as Yona Jones, you need to create two invoices for these customers and analyze how the credit verification rules set up earlier affect the customers’ credit check. Then you need to remove credit hold for an invoice of the *COFFEESHOP* customer.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, *Standard Financials*, *Multibranch Support*, and *Multicompany Support* features have been enabled.
-   On the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, the **Hold Documents on Entry** and **Hold Documents on Failed Credit Check** check boxes have been selected in the **Data Entry Settings** section.

-   On the [Customers](AR_30_30_00.md) \(AR303000\) form, the *GOODFOOD \(GoodFood One Restaurant\)* and *COFFEESHOP \(FourStar Coffee &amp; Sweets Shop\)* customers have been configured.


## Process Overview {#section_qxc_hjv_vxb .section}

In this activity, on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, you will create two invoices for customers that failed the credit check. On the same form, you will remove credit hold for one of the invoices and release the invoice.

## System Preparation {#section_sxc_hjv_vxb .section}

Before you begin analyzing automatic credit verification, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as an accountant by using the *jones* username and the *123* password.
2.  In the info area at the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date is set to *1/30/2026*. If a different date is displayed, click the Business Date menu button and select *1/30/2026* from the calendar. For simplicity, you'll create and process all documents in this activity using this business date.
3.  As a prerequisite activity, in the company to which you are signed in, be sure you have set up credit verification rules, as described in [Credit Verification Rules: Implementation Activity](CreditPolicy_Credit_Verification_Rules_Implem_Activity.md).
4.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, select the *SweetLife Head Office and Wholesale Center* branch.

## Step 1: Creating AR Invoices {#section_uxc_hjv_vxb .section}

To create an AR invoice for each customer, do the following:

1.  On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, add a new record.
2.  In the Summary area, specify the following settings:

    -   **Type**: *Invoice*
    -   **Customer**: *GOODFOOD*
    -   **Date**: *1/30/2026* \(inserted automatically\)
    -   **Post Period**: *01-2026* \(inserted automatically\)
    -   **Description**: `Consulting`
    Notice that the system displays a warning near the **Customer** box that the customer's days past due limit has been exceeded.

3.  On the table toolbar of the **Details** tab, click **Add Row** and specify the following settings for the added row:
    -   **Branch**: *HEADOFFICE*
    -   **Transaction Descr.**: `Consulting`
    -   **Ext. Price**: `380`
4.  On the form toolbar, click **Save** to save your changes.
5.  On the form toolbar, click **Remove Hold**. The status of the document has changed to *Credit Hold* because the **Hold Document on Failed Credit Check** check box is selected on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form and the customer's document is on credit hold. You cannot release this document. \(If the check box was cleared, you could release any document of the customer despite the warning.\)
6.  On the form toolbar, click **Save** to save your changes.
7.  On the form toolbar, click **Add New Record** to enter the other invoice and in the Summary area, specify the following settings:

    -   **Type**: *Invoice*
    -   **Customer**: *COFFEESHOP*
    -   **Date**: *1/30/2026* \(inserted automatically\)
    -   **Post Period**: *01-2026* \(inserted automatically\)
    -   **Description**: `Online training`
    Notice that the system displays a warning near the **Customer** box that the customer's credit limit has been exceeded.

8.  On the table toolbar of the **Details** tab, click **Add Row** and specify the following settings for the added row:
    -   **Branch**: *HEADOFFICE*
    -   **Transaction Descr.**: `Online training`
    -   **Ext. Price**: `1450`
9.  On the form toolbar, click **Save** to save your changes.
10. On the form toolbar, click **Remove Hold**. The status of the document has also changed to *Credit Hold*. You now need to remove the credit hold for this document.

## Step 2: Removing Credit Hold for the Document {#section_yxc_hjv_vxb .section}

To remove the credit hold for the document, do the following:

1.  While you are still viewing the invoice on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, on the form toolbar, click **Remove Credit Hold**.

    The document's status has changed to *Balanced* and you can now release the document.

2.  On the form toolbar, click **Release**. The document's status has changed to *Open*.

**Parent topic:**[Analyzing Automatic Credit Verification for Customers](../UserGuide/CreditPolicy_Automatic_Credit_Verification_Mapref.md)

