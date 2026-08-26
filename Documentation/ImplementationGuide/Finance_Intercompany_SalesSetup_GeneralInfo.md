# Intercompany Sales Setup: General Information {#_e4827607-362f-40fb-b466-303c414ee980 .concept}

You use the intercompany sales functionality to record the sales of goods and services between related companies or branches of related companies. While viewing a company or branch, an administrator can quickly extend it—that is, cause it to be defined as a customer or vendor.

The intercompany sales functionality is available in the system if the *Inter-Branch Transactions* feature has been enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.

## Learning Objectives { .section}

In this chapter, you will learn how to extend branches and companies to be customers and vendors, so that they can later perform intercompany sales.

## Applicable Scenarios { .section}

You use the intercompany sales functionality if there are multiple companies defined in the same tenant and one of the companies \(the selling company\) has rendered a service or sold goods to another company \(the purchasing company\). Each of these companies can consist of multiple branches. The selling company creates an AR document \(invoice, debit memo, or credit memo\) where the purchasing company is a customer. In the created AP document \(bill, debit adjustment, or credit adjustment\), the selling company should be specified as a vendor.

## Extending of Companies or Branches as Customers and Vendors { .section}

Companies that have the *Without Branches* company type can be extended as customers or vendors on the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form. Branches of companies with the *With Branches Not Requiring Balancing* or *With Branches Requiring Balancing* company type can be extended as customers or vendors on the [Branches](../UserGuide/CS_10_20_00.md) \(CS102000\) form.

With a company of the *Without Branches* type selected on the [Companies](../UserGuide/CS_10_15_00.md) form, you click **Extend as Customer** \(under **Company Management**\) on the More menu. The system navigates to the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form and automatically inserts the company's settings into the appropriate boxes for the newly created customer based on the company. The system inserts the settings specified for the customer class, except for the **Tax Zone** and **Shipping Rule** on the **Shipping** tab, and the subaccounts specified on the **GL Accounts** tab \(if subaccounts are in use in the system\). Once the customer based on the company has been saved, this customer can be selected for documents on the [Invoices and Memos](../UserGuide/AR_30_10_00.md) \(AR301000\) form and other forms.

**Important:** Once a company with the *Without Branches* type has been extended as a customer, you cannot change the type of this company.

With a company of the *Without Branches* type selected on the [Companies](../UserGuide/CS_10_15_00.md) form, if you click **Extend as Vendor** \(under **Company Management**\) on the More menu, the system navigates to the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form and automatically inserts the company's settings into the appropriate boxes for the newly created vendor based on the company. The system inserts the settings specified for the vendor class, except for the **Tax Zone** on the **Purchase Settings** tab, and the subaccounts specified on the **GL Accounts** tab \(if subaccounts are in use in the system\). Once the vendor based on the company has been saved, this vendor can be selected for documents on the [Bills and Adjustments](../UserGuide/AP_30_10_00.md) \(AP301000\) form and other forms.

**Attention:** A company extended to be a customer or vendor cannot be deleted unless the customer or vendor record has been deleted first.

With a branch selected on the [Branches](../UserGuide/CS_10_20_00.md) \(CS102000\) form, if you click **Extend as Customer** \(under **Company Management**\) on the More menu, the system navigates to the [Customers](../UserGuide/AR_30_30_00.md) form and automatically inserts the branch settings into the appropriate boxes for the newly created customer based on the branch. The system inserts the settings specified for the customer class, except for the **Tax Zone** and **Shipping Rule** on the **Shipping** tab, and the subaccounts specified on the **GL Accounts** tab \(if subaccounts are in use in the system\). Once the customer based on the branch has been saved, this customer can be selected for documents on the [Invoices and Memos](../UserGuide/AR_30_10_00.md) form and other forms.

With a branch selected on the [Branches](../UserGuide/CS_10_20_00.md) form, if you click **Extend as Vendor** \(under **Company Management**\) on the More menu, the system navigates to the [Vendors](../UserGuide/AP_30_30_00.md) form and automatically inserts the branch settings into the appropriate boxes for the newly created vendor based on the branch. The system inserts the settings specified for the vendor class, except for the **Tax Zone** on the **Purchase Settings** tab, and the subaccounts specified on the **GL Accounts** tab \(if subaccounts are in use in the system\). Once the vendor based on the branch has been saved, this vendor can be selected for documents on the [Bills and Adjustments](../UserGuide/AP_30_10_00.md) form and other forms.

**Attention:** A branch extended to be a customer or vendor cannot be deleted unless the customer or vendor record has been deleted first.

## Setup of Default Sales Account in Intercompany Invoices { .section}

On the [Accounts Receivable Preferences](../UserGuide/AR_10_10_00.md) \(AR101000\) form, the **Use Intercompany Sales Account From** box defines which sales account the system inserts in the lines of an intercompany AR document whose customer was extended based on a company or branch. You can select one of the following options:

-   *Customer Location* \(default\): The system inserts the sales account specified in the **Sales Account** box on the **GL Accounts** tab of the [Customer Locations](../UserGuide/AR_30_30_20.md) \(AR303020\) form for the customer location selected for the AR document.
-   *Inventory Item*: The system inserts the sales account specified in the **Sales Account** box on the **GL Accounts** tab of the [Non-Stock Items](../UserGuide/IN_20_20_00.md) \(IN202000\) form if a non-stock item is specified in the AR document line.

## Setup of Default Expense Account in Bills from Related Companies { .section}

On the [Accounts Payable Preferences](../UserGuide/AP_10_10_00.md) \(AP101000\) form, the **Use Intercompany Expense Account From** box defines which expense account the system inserts in the lines of an intercompany AP document of a vendor that was extended based on a company or branch. You can select the following options:

-   *Vendor Location* \(default\): The system inserts the expense account specified in the **Expense Account** box on the **GL Accounts** tab of the [Vendor Locations](../UserGuide/AP_30_30_10.md) \(AP303010\) form for the vendor location selected for the AP document.
-   *Inventory Item*: The system inserts the expense account specified in the **Expense Account** box on the **GL Accounts** tab of the [Non-Stock Items](../UserGuide/IN_20_20_00.md) \(IN202000\) form if a non-stock item is specified in the AP document line.

**Parent topic:**[Intercompany Sales](../ImplementationGuide/Finance_Intercompany_Sales_Setup_Mapref.md)

