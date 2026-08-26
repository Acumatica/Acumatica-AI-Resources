# Case Management: To Create a Return Order from a Case {#_ede2639b-0124-47b6-9392-e89944fbb2c1 .task}

The following activity will walk you through the process of creating a return order from a case in Acumatica ERP.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the FourStar Coffee &amp; Sweets Shop recently purchased a commercial juicer but has decided to return it. Andrea Weaver, the assistant manager at FourStar Coffee &amp; Sweets Shop, has called to initiate the return. As the delivery manager of the SweetLife Fruits &amp; Jams company, you have discussed the return with Andrea. Now you need to create a return order, which you will do directly from the [Cases](CR_30_60_00.md) \(CR306000\) form.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Customer Management*: This feature provides the customer relationship management \(CRM\) functionality, including lead and customer tracking, as well as the handling of sales opportunities, contacts, marketing lists, and campaigns.
    -   *Case Management* in the *Customer Management* group of features: This feature gives customer support personnel the ability to create support cases, assign cases to owners, and process cases.
-   On the [Case Classes](CR_20_60_00.md) \(CR206000\) form, the *SUPPORT* case class, which defines support requests from customers, has been created.
-   On the [Business Accounts](CR_30_30_00.md) \(CR303000\) form, the *COFFEESHOP* business account record has been created and extended as a customer, with its settings specified on the [Customers](AR_30_30_00.md) \(AR303000\) form.
-   On the [Contacts](CR_30_20_00.md) \(CR302000\) form, the *Andrea A. Weaver* contact has been created and specified as the primary contact for the *COFFEESHOP* business account.
-   On the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form, the *RM* order type has been specified in the **Default Return Order Types** box.

## Process Overview { .section}

In this activity, you will first enter a case on the [Cases](CR_30_60_00.md) \(CR306000\) form. From this form, you will create a return order. You will then save the return order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form.

## System Preparation { .section}

Before you start working on the case, you should do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded
2.  Sign in to the system as delivery manager Marcos Garcia by using the following credentials:
    -   **Username**: *garcia*
    -   **Password**: *123*
3.  Make sure that on the Company and Branch Selection menu, in the top pane of the Acumatica ERP screen, the *SweetLife Head Office and Wholesale Center* branch is selected.

## Step: Creating a Return Order from a Case { .section}

To create a case and then a return order for the request submitted by Andrea Weaver of *COFFEESHOP*, do the following:

1.  On the [Cases](CR_30_60_00.md) \(CR306000\) form, add a new record.
2.  In the Summary area, do the following:
    1.  In the **Case Class** box, select *SUPPORT*.
    2.  In the **Business Account** box, select *COFFEESHOP*.
    3.  In the **Contact** box, make sure that *Andrea A. Weaver* is selected as the primary contact for the *COFFEESHOP* business account.
    4.  In the **Subject** box, type `Return of juicer15C`.
3.  On the form toolbar, click **Save**.
4.  On the More menu, click **Create Return Order**. The **Create Return Order** dialog box opens.
5.  Select *RM* in the **Return Order Type** box, and click **Create**.

    The system creates a return order and opens it on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form.

6.  On the [Sales Orders](SO_30_10_00.md) form, notice that the system has inserted the *RM* type for the return order and populated the corresponding boxes with the settings specified in the case.
7.  On the **Details** tab, click **Add Row** on the table toolbar, and do the following:
    -   In the **Inventory ID** column, select *JUICER15C*.
    -   In the **Warehouse** column, select *WHOLESALE*.
    -   In the **Quantity** column, type `1`.
8.  On the form toolbar, click **Save**.

**Parent topic:**[Managing Cases](../UserGuide/CRM_Support_Managing_Cases_Mapref.md)

