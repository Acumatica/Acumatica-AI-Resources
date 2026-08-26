# Purchase Requisition Configuration: General Information {#_7a78a7aa-d581-422b-8b65-45bb39a026e9 .concept}

By using purchase requisitions in Acumatica ERP, your company can optimize its purchasing process. With this functionality, you can purchase stock items from the most appropriate vendors at the best possible price and time and in the right quantities.

In a production environment, before you configure purchase requisitions, you need to perform broader Acumatica ERP implementation, which includes enabling features and specifying the basic settings for other basic functionality: the general ledger, cash management, accounts payable \(including defining vendors\), accounts receivable \(including defining customers\), and order management with inventory.

## Learning Objectives { .section}

In this chapter, you will do the following:

-   Become familiar with the general workflow of the purchase requisition setup
-   Learn about request classes
-   Create a request class
-   Configure budget validation for purchase requests of a class

## Applicable Scenario { .section}

You may need to learn how to configure purchase requisitions if your organization wants to optimize its purchasing processes.

## Setup of Purchase Requisition Functionality { .section}

To use the functionality that supports purchase requisitions, you need to be sure that the *Purchase Requisitions* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form. You should also determine how your company will use the purchase requisition functionality, including the following factors:

-   Whether your users will enter requests from customers and employees into the system. Requisitions can then be created based on these requests or entered directly.
-   Which type of requests you expect to be entered most often: employee requests of stock items they need internally, or customer requests of stock items they want to purchase from your company.
-   Whether approvals will be required \(and under what conditions, if applicable\) for requests and for requisitions.
-   Whether you want to validate any requests against a budget defined in the system.

You use the following sections of the [Purchase Requisitions Preferences](../UserGuide/RQ_10_10_00.md) \(RQ101000\) form to specify settings that determine how the functionality is used:

-   **Request Settings** section: You specify the numbering sequence to be used for requests and the number of months they will be retained in the system. If your company will set up approval of requests, you also specify the assignment map that will be used to assign requests to approvers. \(This map must be created in the system before you can specify it.\)
-   **Requisition Settings** section: You specify the numbering sequence to be used for requisitions and the number of months they will be kept in the system. If your company will set up approval of requisitions, you also specify the needed assignment map. \(This map must be created in the system in advance.\)

    If your users will enter purchase requests and later add stock items from requests to each requisition, you can select the **Merge Lines by Default** check box to have the system merge lines for the same stock items from all the requests in a particular requisition.

    For details about the workflow of processing these documents, see [Processing Purchase Requests and Requisitions](../UserGuide/OrderMgmt_Purchase_Requests_Mapref.md).

-   **Requisition Order Settings** section: You specify the default sales order types that will be used for quotes and sales orders that can be created for a requisition. You can also indicate whether a purchase order created from a requisition has the *On Hold* status by default.
-   **Other Settings** section: You specify the budget ledger that the system will use for budget validation and the time period for the calculation of the total cost of purchase requests.

    Also, you can specify the default request class to be inserted when a request is created on the [Requests](../UserGuide/RQ_30_10_00.md) \(RQ301000\) form. This can be a request class defined for customer requests or for employee requests. \(For details about request classes, see the following section.\) When the default request class is inserted for a request, the system also inserts the default settings associated with the class. Specifying this default class may be useful if a particular request class is expected to be used far more than the others.


## Creation of Request Classes { .section}

A request class is an entity in Acumatica ERP that contains the general settings of requests of a particular type. When you create a request class on the [Request Classes](../UserGuide/RQ_20_10_00.md) \(RQ201000\) form, you can specify the following settings:

-   What the promised lead time is: In the **Promised Lead Time \(Days\)** box \(Summary area\), you specify the number of days within which a request of the class should be fulfilled.
-   Whether requests of the class are customer or employee: A customer request contains items requested by a particular customer of your organization. To indicate that the request class will be used for customer requests, you select the **Customer Request** check box in the Summary area. Employee requests contain items that employees need in their work.
-   Whether the items from a request of the class can be divided among multiple vendors: If a request contains multiple items, you can order these items from multiple vendors if one vendor cannot fulfill the entire request or if another vendor has lower prices for particular items. You select the **Allow Multiple Vendors per Request** check box in the Summary area to indicate that the system can suggest multiple vendors to fulfill the request.
-   Which items are available for ordering in requests of this class: You can restrict the list of items that users can add to the request during its creation to reduce the probability of users selecting the wrong items. To do this, you select the **Restrict Requested Items to the Specified List** check box in the Summary area, and you add the items to the list on the **Item List** tab.
-   Whether the request must be validated against the budget: If you control expenses on particular items by using budgets, you can set up budget validation on the **GL Accounts** tab by selecting *Warning* or *Error* in the **Budget Validation** box \(the default setting is *None*\) and specifying an expense account in the **Expense Account** box \(and the corresponding subaccount, if applicable, in the **Expense Sub.** box\).

## Workflow of the Purchase Requisition Configuration {#section_vv2_1y4_y4b .section}

To configure purchase requisitions in Acumatica ERP, you perform the following general steps:

1.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, you enable the *Purchase Requisitions* feature.
2.  Optional: On the [Request Classes](../UserGuide/RQ_20_10_00.md) \(RQ201000\) form, create each needed request class for customer requests or employee requests. You create request classes if users will first add stock items to purchase requests on the [Requests](../UserGuide/RQ_30_10_00.md) \(RQ301000\) form and then create a requisition based on these requests.
3.  On the **General** tab of the [Purchase Requisitions Preferences](../UserGuide/RQ_10_10_00.md) \(RQ101000\) form, you review \(and modify, as needed\) the numbering sequences and required settings and save these settings in the system.
4.  Optional: Configure budget validation, as described in [Purchase Requisition Configuration: Setup of Budget Validation](config_OrderMgmt_Purchase_Requisitions_Budget_Validation.md)

**Parent topic:**[Purchase Requisitions](../ImplementationGuide/config_OrderMgmt_Purchase_Requisitions_Mapref.md)

