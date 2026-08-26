# Order Synchronization: Protection of Personal Data {#_eb4bc55f-db80-458a-807a-1af51960db76 .concept}

Amazon requires that companies not store the customer's personal data related to sales orders imported from Amazon for more than 30 days after the order's creation. This data includes the ship-to address, bill-to address, ship-to contact, and bill-to contact in an imported order as well as its related shipment and invoice. To comply with this requirement, you can erase or pseudonymize personal data in sales orders imported from Amazon Seller Central as well as in related invoices and shipments \(if applicable\) by using the [Protect Personal Data](BC_50_20_00.md) \(BC502000\) form.

To define the action to be performed on each selected document when the **Process** or **Process All** command is invoked, you select one of the following values in the **Action** box of the Selection area:

-   *Pseudonymize*: Replaces personally identifiable information with placeholders in the selected documents.
-   *Erase*: Permanently deletes personally identifiable information in the selected documents.
-   *Restore*: Restores previously pseudonymized data.

The table on the form displays the following documents:

-   Completed and canceled sales orders that belong to the order type for which the **Protect Personal Data** check box is selected on the [Order Types](SO_20_10_00.md) \(SO201000\) form
-   Sales invoices that have been created for such sales orders

**Attention:** Shipments are not displayed in the table, but they will be processed along with the related sales orders.

For the documents to be pseudonymized, the **Override Contact** and **Override Address** check boxes must be selected for the ship-to address, bill-to address, ship-to contact, and bill-to contact information on the **Addresses** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\), [Shipments](SO_30_20_00.md) \(SO302000\), and [Invoices](SO_30_30_00.md) \(SO303000\) forms.

You can narrow down the list of documents to be displayed in the table by specifying the following settings of the Selection area:

-   **Entity**: The type of documents, which can be *Sales Order* or *Invoice*.
-   **Max. Document Age \(Days\)**: The maximum age \(in days\) of documents to be displayed in the table. By default, *30* is specified in this box.

**Tip:** We recommend setting up an automation schedule to erase or pseudonymize personal data in imported sales orders and related documents regularly.

**Parent topic:**[Synchronizing Orders](../UserGuide/Commerce_AZ_Syncing_Orders_Mapref.md)

