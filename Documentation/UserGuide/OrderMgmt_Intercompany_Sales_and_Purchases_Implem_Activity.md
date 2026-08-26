# Intercompany Purchases and Returns: Implementation Activity {#_1114586d-0992-4190-ab1e-46732b094c01 .task}

The following activity will walk you through the configuring branches of two companies within the same tenant for processing intercompany sales and purchases.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the Head Office of the Muffins &amp; Cakes company has to purchase juicers from the Service and Equipment Sales Center of SweetLife Fruits &amp; Jams. To avoid the creation of a new customer and vendor to represent the selling and purchasing companies and the processing of a sales transaction by the accounting departments of two branches, the chief accountant of SweetLife has decided to use the intercompany sales functionality.

Acting as a system administrator, you need to extend the *SWEEPEQUIP* branch of SweetLife to be a vendor and the *MHEAD* branch of Muffins &amp; Cakes to be a customer.

## Configuration Overview { .section}

For the purposes of this activity, the following features have been enabled:

-   *Standard Financials*
-   *Multibranch Support*
-   *Multicompany Support*
-   *Advanced Financials*
-   *Inter-Branch Transactions*

On the [Branches](CS_10_20_00.md) \(CS102000\) form, the *SWEETEQUIP* \(Service and Equipment Sales Center\) and *MHEAD* \(Muffins Head Office &amp; Wholesale Center\) branches of SweetLife and Muffins &amp; Cakes, respectively, have been defined.

On the [Vendor Classes](AP_20_10_00.md) \(AP201000\) form, the *INTERCO* vendor class for vendors extended from companies and branches has been configured.

On the [Customer Classes](AR_20_10_00.md) \(AR201000\) form, the *INTERCO* customer class for customers extended from companies and branches has been configured.

## Process Overview { .section}

In this activity, on the [Branches](CS_10_20_00.md) \(CS102000\) form, you will extend the *SWEETEQUIP* branch to be a vendor and the *MHEAD* branch to be a customer. On the [Vendors](AP_30_30_00.md) \(AP303000\) form, you will update the settings of the new vendor and on the [Customers](AR_30_30_00.md) \(AR303000\) form, you will update the settings of the new customer.

## System Preparation { .section}

To prepare the system, do the following:

1.  Launch the Acumatica ERP website, and sign in as a system administrator by using the following credentials:
    -   Username: *gibbs*
    -   Password: *123*
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that today's date is displayed.

**Parent topic:**[Processing Intercompany Purchases and Returns](../UserGuide/OrderMgmt_Intercompany_Sales_and_Purchases_Mapref.md)

