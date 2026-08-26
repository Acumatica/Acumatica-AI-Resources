# Intercompany Sales: Mass Processing {#_a379846b-5e5c-495b-8ffe-3146ae79168f .concept}

This topic explains how to automatically generate AP bills from multiple AR invoices.

## Mass Processing of AR Invoices {#section_whs_4jv_vxb .section}

You use the [Generate Intercompany Documents](AP_50_35_00.md) \(AP503500\) form for the mass generation of AP documents based on AR documents from the selling company.

In the boxes of the Selection area of the form, you specify the selection criteria for the documents to be loaded in the table. You can also manage the process of generating AP documents by using the following check boxes:

-   **Create AP Documents on Hold**: If this check box is selected, AP documents will be created with the *On Hold* status. If it is cleared, AP documents will be created with the *Balanced* or *Pending Approval* status, depending on whether approvals have been configured for accounts payable documents.
-   **Create AP Documents in Specific Period**: If this check box is selected, AP documents will be created in the financial period that you specify in the **Fin. Period** box.
-   **Copy Project Information to AP Document**: If this check box is selected, the project information \(project code, cost code, and task ID\) will be copied from the AR document to the AP document.

By default, full access rights to this form have been granted to the *AP Admin*, *AP Clerk*, and *Administrator* roles.

**Parent topic:**[Processing Intercompany Sales](../UserGuide/Finance_Intercompany_Sales_Mapref.md)

