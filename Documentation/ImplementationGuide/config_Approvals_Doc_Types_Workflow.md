# Setting Up Specific Approvals {#_91ed575f-304c-43b8-adc0-0953e0728fc6 .concept}

In Acumatica ERP, you have the flexibility to tailor approval workflows for various types of entities to fit your company's policies and practices.

You can configure approvals so that authorized employees approve records of a particular type before other employees can process them. These records will be available for processing only after they have been approved by an authorized employee or by multiple employees, depending on your company's policies and practices. Users approve records by using the [Approvals](../UserGuide/EP_50_30_10.md) \(EP503010\) form, to which you should restrict access for all employees who are not authorized to perform approvals.

This chapter includes topics with Acumatica ERP configuration information for some types of records for which you can set up approvals.

## Standard Configuration Workflow for the Approval Functionality { .section}

The standard workflow for configuring the approval functionality starts with the following steps, which are described in detail in the [Configuring Approvals](config_Approvals_Functionality.md) chapter:

-   Enabling the *Approval Workflow* feature on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form
-   Creating the needed approval maps by using the [Approval Maps](../UserGuide/EP_20_50_15.md) \(EP205015\) form
-   If you want assigned approvers to receive emails about new records awaiting approval, creating notification templates by using the [Email Templates](../UserGuide/SM_20_40_03.md) \(SM204003\) form

Once the prerequisite steps have been performed, you need to specify the approval settings on some preferences forms that relate to records or documents for which you have configured approval maps.

For purchase orders, requests, and requisitions, you also need to select the **Require Approval** check box on the preferences form of the respective functional area; otherwise, the approval stage will be skipped.

-   **[Specific Approvals: Accounts Payable Documents](../ImplementationGuide/config_Approvals_AP_Documents.md)**  

-   **[Specific Approvals: Accounts Receivable Documents](../ImplementationGuide/config_Approvals_AR_Documents.md)**  

-   **[Specific Approvals: Projects, Project-Related Documents, and Time Activities](../ImplementationGuide/Projects_Process_Project_Approval.md)**  

-   **[Specific Approvals: Sales Orders](../ImplementationGuide/SO__con_Approvals.md)**  

-   **[Specific Approvals: Sales Invoices](../ImplementationGuide/config_Approvals_Sales_Invoices.md)**  

-   **[Specific Approvals: Purchase Orders](../ImplementationGuide/PO__con_Purchase_Order_Approvals.md)**  

-   **[Specific Approvals: Inventory Adjustments](../ImplementationGuide/Config_Approvals_Inventory_Adjustments.md)**  

-   **[Specific Approvals: Expense Receipts and Expense Claims](../ImplementationGuide/config_Approvals_Receipts_and_Claims.md)**  

-   **[Specific Approvals: GL Transactions](../ImplementationGuide/config_Approvals_GL_Transactions.md)**  

-   **[Specific Approvals: Time Cards](../ImplementationGuide/config_Approvals_Time_Cards.md)**  

-   **[Specific Approvals: Cash Transactions](../ImplementationGuide/config_Approvals_Cash_Transactions.md)**  

-   **[Specific Approvals: Reconciliation Statements](../ImplementationGuide/config_Approvals_Reconciliation_Statements.md)**  

-   **[To Set Up the Approval of AP Documents](../ImplementationGuide/AP__How_To_Set_Up_Approvals_for_AP_Documents.md)**  

-   **[To Set Up the Approval of AR Documents](../ImplementationGuide/AR__HOW_Set_Up_Approvals_for_AR_Documents.md)**  

-   **[To Set Up the Approval of Sales Orders](../ImplementationGuide/SO__How_Set_Up_Approval.md)**  

-   **[To Create a Map for Sales Order Approval](../ImplementationGuide/SO__How_Create_Map_SO_Approval.md)**  

-   **[To Set Up the Approval of Purchase Orders](../ImplementationGuide/PO__how_Set_Up_Approval.md)**  


**Parent topic:**[Implementing Approvals](../ImplementationGuide/config_Approvals_Mapref.md)

