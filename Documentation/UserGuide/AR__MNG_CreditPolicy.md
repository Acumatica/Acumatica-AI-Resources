# Managing Credit Policy {#_f6f0ebb5-8a46-42c9-98c1-ed700894f0ee .concept}

With Acumatica ERP, you can use the following credit management tools:

-   *Credit terms*: You configure credit terms to define documents' due dates. Credit terms may be used for giving a customer discount for early payment. For details on configuring and applying credit terms, see [Setup of Credit Terms](AR__con_Credit_Terms.md).
-   *Credit verification*: You can enable a credit check process for each customer that automatically puts overdue invoices on hold and forbids the issuing of new invoices for a customer that has failed a credit check. For details on configuring and applying credit verification rules, see [Credit Verification Rules: General Information](CreditPolicy_Credit_Verification_Rules_GeneralInfo.md).
-   *Customer credit hold*: You can manually put a customer on credit hold any time you consider it necessary. This causes the customer’s documents to also be put on credit hold. If needed, you can remove any such document from credit hold and release the document. For more information, see [Automatic Credit Verification: General Information](CreditPolicy_Automatic_Credit_Verification_GeneralInfo.md).
-   *Overdue charges*: You can configure additional charges to be applied to outstanding balances of customers who are consistently paying too late or not paying in full. For details on configuring and applying overdue charges, see [Overdue Charges: General Information](Finance_Overdue_Charges_GeneralInfo.md).
-   *Statement cycles*: You can configure customer statement cycles to provide customers with information about their balances with your organization. For details, see [Customer Statements: General Information](Finance_Preparing_Customer_Statements_GeneralInfo.md) and [Customer Statements: Multicurrency and Consolidated Statements](Finance_Preparing_Customer_Statements_Multi-Currency_Consolidated.md).
-   *Dunning letters*: You can configure a sequence of dunning letters to remind customers about overdue invoices. For details on configuring customer notifications, see [Dunning Process Setup: General Information](CreditPolicy_Dunning_Process_Setup_GeneralInfo.md).
-   *Direct Write-Off method*: You can use the direct write-off method to handle expenses that are required to run the business or that have been incurred in the operation of the business. For details on configuring and using direct write-offs, see [Direct Write-Offs: General Information](Finance_Direct_Write-Offs_GeneralInfo.md) and [Direct Write-Offs: Write-Off Setup](AR__CON_SettingUp_WriteOffs.md).

    **Attention:** We do not recommend that you use the direct write-off method for handling bad debts as it often violates the matching principle of accounting because it recognizes bad debt expense that is partly related to a previous accounting period.

-   *Allowance method*: You can handle bad debts by using the allowance method. The allowance method is a better alternative to the direct write-off method because it follows the matching principle of accounting. For details on configuring and using allowance method, see [Direct Write-Offs: General Information](Finance_Direct_Write-Offs_GeneralInfo.md).

## Managing Credit Policy {#section_rxk_4jv_vxb .section}

To configure the options related to implementing your company's credit policy for all customers, you can specify the following settings on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form:

-   **Hold Document on Failed Credit Check**: You select this check box if you want new invoices and memos to be placed on hold for customers that have failed the credit check. If the check box is not selected, new documents can be saved and processed regardless of the credit check result, although the system warns the user about the customers that have failed their credit check. For details on credit verification, see [Credit Verification Rules: General Information](CreditPolicy_Credit_Verification_Rules_GeneralInfo.md).
-   **Age Credits**: You select this check box if you want the balances of credit memos and open payments to be taken into account when a customer statement is generated. For details, see [Customer Statements: General Information](Finance_Preparing_Customer_Statements_GeneralInfo.md).
-   **Set Default Overdue Charges by Statement Cycle**: You select this check box to use the overdue charges specified for the statement cycle assigned to a customer account instead of the overdue charges specified for the customer class that is also assigned to the customer account.
-   **Calculate on Overdue Charges Documents**: You select this check box if you want overdue charges to be calculated on overdue charge documents as well as on invoices.
-   **Apply Payments to Overdue Charges First**: You select this check box if you have enabled automatic payment application for a customer account—that is, you have selected the **Auto-Apply Payments** check box on the [Customers](AR_30_30_00.md) \(AR303000\) form—and want new payments to be applied first to overdue charges and then to outstanding invoices. For details on the processing of overdue charges, see [Overdue Charges: General Information](Finance_Overdue_Charges_GeneralInfo.md).

## Preparing Consolidating Statements and Dunning Letters {#section_vxk_4jv_vxb .section}

Depending on the policies established in your company, you can prepare a single consolidated statement for each customer or prepare multiple statements for each branch of your company. To prepare consolidated statements for all customers, select the **Consolidate Statements for All Branches** check box, and in the **Statement From** box, select the branch that will be specified as the sender.

You can prepare consolidated dunning letters as well. To prepare consolidated dunning letters for all customers, select the **Consolidate Dunning Letters for All Branches** check box, and in the **Dunning Letter from Branch** box, select the branch that will be specified as the sender.

