# Financial Generic Inquiries in AI Assistant

You can ask AI Assistant about your financial data—the balance of a customer or vendor, the documents that are still pending release, the balance of a general ledger account, or the reconciliation status of your cash accounts. To answer these questions, AI Assistant uses a set of financial generic inquiries that are included in Acumatica ERP and exposed to AI Assistant out of the box.

When you know which inquiries are available, you can phrase your questions so that AI Assistant finds the right data. For details about starting a conversation and working with the answers, see [Working with AI Assistant: General Information](RPT_Working_with_AI_Assistant_GeneralInfo.md).

## Financial Inquiries Available to AI Assistant

AI Assistant can use the financial generic inquiries listed in the following table.

|Generic Inquiry|Information You Can Get|Example Question|
|---------------|-----------------------|----------------|
|*Account Balance and Turnover by Period* \(GL0001ML\)|The balance and the turnover of each general ledger account for a specific financial period.|What is the current balance of retained earnings?|
|*Journal Entries Analysis* \(GL3010ML\)|Journal entries and their transactions, including the account, subaccount, and project of each transaction.|Show me all the manual journal entries posted in Q2 2026.|
|*Income and Expenses* \(GL0001DB\)|The income and expense amounts of each general ledger account.|Which income accounts contributed most to last year's revenue?|
|*Released AR Documents* \(AR0002ML\)|All released documents of a customer, along with the current customer balance, the overdue amounts, and the aging of the documents.|Show the payment history for Star America Toys.|
|*Unreleased Customer Documents* \(AR0001ML\)|The customer documents that have not been released, and whether these documents prevent the financial period from being closed.|Which AR documents are pending release?|
|*AR Aging Date Sensitive* \(AR0003ML\)|Customer balances and aging as of a date in the past.|What was the balance of Ally's Bakery as of March 31, 2026?|
|*Customers over the Credit Limit* \(AR0015DB\)|The credit limit of each customer and the amount of credit that remains available.|What is the remaining credit for the Cash Connection customer?|
|*Customers* \(AR3030PL\)|The customer records with their settings, such as the customer class, status, and terms.|Which customers are on credit hold?|
|*Released AP Documents* \(AP0002ML\)|All released documents of a vendor, along with the current vendor balance, the overdue amounts, and the aging of the documents.|Show all the bills received from Widget Supply Company this year.|
|*Unreleased Vendor Documents* \(AP0001ML\)|The vendor documents that have not been released, and whether these documents prevent the financial period from being closed.|Which AP documents are preventing the period from being closed?|
|*AP Aging Date Sensitive* \(AP0003ML\)|Vendor balances and aging as of a date in the past.|What did we owe AA Services at the end of last year?|
|*Vendors* \(AP3030PL\)|The vendor records with their settings, such as the vendor class, status, and 1099 settings.|Give me the list of 1099 vendors.|
|*Cash Account Reconciliation Status* \(CA0001ML\)|All cash accounts with their reconciliation activity, including the accounts that have never been reconciled.|Which bank accounts haven't been reconciled yet?|
|*Cash Summary* \(CA0002DB\)|Cash account balances.|What is the current balance of our operating account?|
|*Fixed Assets* \(FA3030PL\)|The fixed asset records with their settings, such as the asset class, status, and useful life.|List all fixed assets whose useful life is 50 years.|

The Journal Entries Analysis inquiry is also used for anomaly detection. For details, see [Anomaly Detection: General Information](GI_DetectAnomalies_GeneralInfo.md).

**Tip:** Mention a date in your question if you need a balance as it was at a particular moment—for example, at the end of a closed period. AI Assistant then uses the aging inquiries, which calculate balances as of the date you specify, instead of the inquiries that return current balances.

## Access to Financial Data in Answers

AI Assistant returns only the data that you are allowed to see. Access to each financial inquiry is granted to the roles of the corresponding module—for example, the *AR Admin*, *AR Clerk*, and *AR Viewer* roles for the accounts receivable inquiries.

Within an inquiry, row-level security and the restriction of customer and vendor visibility are applied as well. If you have no access to a particular customer, vendor, or account, its records are omitted from the answer. Two users can therefore get different answers to the same question.

## Adjusting the Set of Inquiries

The set of inquiries is not fixed. Your system administrator can expose additional generic inquiries to AI Assistant, remove inquiries from the set, and add descriptions that help AI Assistant match the wording of your questions to the right inquiry, field, or parameter.

If AI Assistant repeatedly cannot answer a question about your financial data, ask your administrator whether an inquiry that contains this data is exposed. For details, see [Exposing Generic Inquiries to AI Assistant: General Information](GI_Exposing_Inquiry_to_AI_Assistant_GeneralInfo.md).

