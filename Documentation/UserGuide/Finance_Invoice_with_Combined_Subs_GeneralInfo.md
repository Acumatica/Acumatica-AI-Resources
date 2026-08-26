# Invoice with Combined Subaccounts: General Information {#_30b75319-26fd-4b11-9bd4-7630d70bbadc .concept}

If the *Subaccounts* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md#) \(CS100000\) form, and subaccounts have been configured, you can enter and process AR invoices in which lines are classified by using multiple subaccounts. To speed up the creation of these invoices, you set up a subaccount mask that determines how subaccounts are combined in accounts receivable documents, as described in [Combined Subaccounts: To Define a Subaccount Mask for AR Documents](../ImplementationGuide/config_Combined_Subaccounts_Implem_Activity.md).

In an AR document that is entered in the system, multiple subaccounts are involved, such as the subaccount associated with the item \(if applicable\) specified in the invoice line, the subaccount associated with the employee entering the document, and the subaccount associated with the customer specified in the invoice. With the combined subaccount functionality, the system inserts into each line a particular subaccount that is a combination of the segment values specified in the mask—that is, the system uses a subaccount mask to compose a new subaccount identifier consisting of the segment values of each of the specified subaccounts. When the AR invoice is released, the system tracks each line’s extended price in the subaccount specified for the line.

When you enter an AR invoice on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, you perform the same steps as you do when you create an AR invoice that does not involve subaccounts. The system inserts the default subaccount for each line of the document according to the mask that is specified on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form. These subaccounts can be overridden. For details on processing an AR invoice, see [Processing AR Invoices](Finance_ARInvoices_Mapref.md).

## Learning Objectives {#section_pqr_4jv_vxb .section}

In this chapter, you will learn how to do the following:

-   Process an AR invoice when combined subaccounts have been configured for AR documents
-   Review a report that is broken down by subaccounts

## Applicable Scenarios {#section_rqr_4jv_vxb .section}

You create an invoice manually when you need to enter a purchase of goods or services by a particular customer into the system; the system can create invoices automatically as a result of other processes as well. You then release the invoice that you have created and complete its processing in the system.

If subaccounts have been configured in your system, these invoices have to contain subaccounts in their lines. If a subaccount mask has been specified for AR documents, the system inserts subaccounts automatically.

**Parent topic:**[Processing an Invoice with Combined Subaccounts](../UserGuide/Finance_Invoice_with_Combined_Subs_Mapref.md)

