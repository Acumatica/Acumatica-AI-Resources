# Documents in Different Base Currencies: To Process an AP Bill {#_589650bb-e84e-4604-ace2-d579ee56bb85 .task}

The following activity will walk you through the process of processing a bill between the branches that use different base currencies.

## Story {#section_v5y_3jv_vxb .section}

Suppose that in January 2026, the *MHEAD* branch of the Muffins &amp; Cakes company purchased 10 hours of consulting services from SweetLife Canada. Acting as Kimberly Gibbs, an employee who has access to the Muffins and SweetLife Canada companies, you need to extend the *SLCANADA* branch as a vendor and create an AP bill for the *MHEAD* branch. This bill is based on the invoice from SweetLife Canada. Because SweetLife Canada has an agreement with the *MHEAD* branch that they bill them in the US dollars, the corresponding bill in the *MHEAD* books should be in *USD*.

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Multibranch Support*, *Multicompany Support*, *Customer and Vendor Visibility Restriction*, *Multicurrency Accounting*, and *Multiple Base Currencies* features have been enabled.
-   On the [Companies](CS_10_15_00.md) \(CS101500\) form, the *MUFFINS* company has been configured.
-   On the [Branches](CS_10_20_00.md) \(CS102000\) form, the *MHEAD* branch of the *MUFFINS* company has been created.

## Process Overview {#section_z5y_3jv_vxb .section}

In this activity, you will extend the *SLCANADA* branch to be a vendor on the [Vendors](AP_30_30_00.md) \(AP303000\) form. You will then generate an AP bill on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, release the bill, and review the generated GL transaction on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## System Preparation {#section_bvy_3jv_vxb .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as a system administrator Kimberly Gibbs by using the *gibbs* username and the *123* password.
2.  In the info area at the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date is set to *1/30/2026*. If a different date is displayed, click the Business Date menu button and select *1/30/2026* from the calendar. For simplicity, you'll create and process all documents in this activity using this business date.
3.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, select the *SweetLife Canada* branch.
4.  Be sure that you have configured the SweetLife Canada company, as described in [Multiple Base Currencies: Implementation Activity](../ImplementationGuide/config_Multicurrency_MultipleBaseCurrencies_Implem_Activity.md), which is a prerequisite activity.
5.  On the [Company Groups](CS_10_25_00.md) \(CS102500\) form, be sure that you have added the *USCOMP* company group, as described in [Company Groups: Implementation Activity](../ImplementationGuide/config_Finance_Company_Group_Implem_Activity.md), which is a prerequisite activity.
6.  On the [Vendors](AP_30_30_00.md) \(AЗ303000\) form, be sure that you have configured the visibility restrictions for regular vendors, as described in [Vendor Visibility: To Restrict Visibility to a New Company](../ImplementationGuide/Finance_Restricting_Vendor_Visibility_Activity2.md), which is a prerequisite activity.
7.  On the [Vendors](AP_30_30_00.md) form, be sure that the *SWEETEQUIP* vendor has been extended from a branch, as described in [Intercompany Sales Setup: Implementation Activity](../ImplementationGuide/Finance_Intercompany_SalesSetup_Implem_Activity.md), which is a prerequisite activity.
8.  On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, be sure that you have defined the default price in *CAD* for the *CONSULT* item, as described in [Prices in Base Currencies: Process Activity](Finance_Prices_MBC_Process_Activity.md), which is a prerequisite activity.
9.  Be sure that you have created an AR invoice for the *MHEAD* customer, as described in [Documents in Different Base Currencies: To Process an AR Invoice](Multicurrency_Processing_Docs_in_MBC_ProcessActivity1.md), which is a prerequisite activity.

## Step 1: Extending the *SLCANADA* Branch to Be a Vendor {#section_dvy_3jv_vxb .section}

To extend the *SLCANADA* branch to be a vendor, do the following:

1.  Open the [Companies](CS_10_15_00.md) \(CS101500\) form.
2.  In the **Company ID** box, select *SLCANADA*.
3.  On the More menu \(under **Company Management**\), click **Extend as Vendor**.
4.  On the [Vendors](AP_30_30_00.md) \(AP303000\) form, which is opened, select *INTERCO - Related Company* in the **Vendor Class** box.
5.  In the warning dialog box that is displayed, click **Yes**.
6.  On the **Financial** tab, specify the following settings:
    -   **Enable Currency Override**: Selected
    -   **Curr. Rate Type**: *SPOT*
7.  On the **Payment** tab, specify the following settings:
    -   **Payment Method**: *WIRE*
    -   **Cash Account**: *10215SL*
8.  On the form toolbar, click **Save** to save your changes.

## Step 2: Creating an Intercompany AP Bill {#section_fvy_3jv_vxb .section}

To create an AP bill between branches that use different base currencies, do the following:

1.  On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, open the invoice for the *MHEAD* customer with an amount of *501.00*.
2.  On the More menu \(under **Intercompany**\), click **Generate AP Document**.
3.  On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, which is opened, review the bill settings that the system has inserted automatically based on the AR invoice.
4.  On the form toolbar, click **Remove Hold** and then click **Release** to release the bill.
5.  On the **Financial** tab, click the link in the **Batch Nbr.** box to review the generated GL transaction on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

    The transaction has been posted for the *MHEAD* branch and the *MACTUAL* actual ledger. The transaction currency specified in the **Currency** box is *USD*, because it is the currency of the original invoice.


**Parent topic:**[Processing Documents Between Companies with Different Base Currencies](../UserGuide/Multicurrency_Processing_Docs_in_MBC_Mapref.md)

