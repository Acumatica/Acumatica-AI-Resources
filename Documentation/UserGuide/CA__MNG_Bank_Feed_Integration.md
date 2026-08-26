# Integrating Acumatica ERP with Bank Feeds {#_cced4b81-106f-4c06-9769-6d4fd9f22e0d .concept}

Acumatica ERP is integrated with Plaid and MX, which are financial service companies that provide secure bank feeds. A bank feed is a secure link between Acumatica ERP and a company's bank profile, which can include multiple bank accounts. A bank feed is used for the automatic import of bank transactions into the system. A company may create different bank feeds for different banks. Alternatively, if the accounts in one bank are registered to different users, a company may create a bank feed for each user with a separate set of credentials. With this integration, Acumatica ERP users can automatically connect to their bank profiles, import bank transactions to Acumatica ERP, and create expense receipts based on these transactions.

Bank feed integration is available in the system if the *Bank Feed Integration* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

If this feature is enabled, Plaid and MX subscriptions will become available to users in Acumatica ERP without the need to register separately in Plaid and MX. Acumatica ERP will store and return Plaid and MX authentication by using a special proxy server through API.

Some banks do not have integration with Plaid or MX bank feeds, but they provide bank transactions to their customers in a file located in an SFTP folder. You can use Acumatica ERP to load bank statements from this type of file. The system then automatically creates the cash transactions and expense receipts that correspond to the transactions in the file.

The *Bank Feed Integration* feature is subject to licensing. If an organization needs to map more than one bank feed account, it should buy an appropriate license.

**Attention:** Currently, integration with MX works only for financial institutions in the United States and Canada.

-   **[Mapping of Multiple Bank Accounts to One Cash Account](../UserGuide/CA__MNG_Mapping_Multiple_Acc_to_One_Cash_Acc.md)**  

-   **[To Set Up Plaid Integration](../UserGuide/CA__HOW_Set_Up_Plaid_Integration.md)**  

-   **[To Set Up MX Integration](../UserGuide/CA__HOW_Set_Up_MX_Integration.md)**  

-   **[To Set Up Mapping Rules](../UserGuide/CA__HOW_Set_Up_Custom_Mapping_Rules.md)**  

-   **[To Import Bank Transactions from a Bank Feed](../UserGuide/CA__HOW_Bank_Feed_Integration_Import_BankTran.md)**  

-   **[Loading of Bank Feeds from a File](../UserGuide/CA__MNG_Loading_Bank_Feeds_from_File.md)**  

-   **[Loading of Bank Feeds from BAI2 Files](../UserGuide/CA__MNG_Loading_Bank_Feeds_for_BAI2.md)**  

-   **[Loading of Bank Feeds from an AMEX GL1025 File](../UserGuide/CA__MNG_Loading_Bank_Feeds_for_AMEXGL1025.md)**  

-   **[To Set Up Bank Feeds Loaded from a CSV File](../UserGuide/CA__HOW_Set_Up_BankFeeds_from_File.md)**  

-   **[To Set Up Bank Feeds Loaded from the BAI2 Format](../UserGuide/CA__HOW_Set_Up_BankFeeds_from_BAI2.md)**  

-   **[To Set Up Bank Feeds Loaded from an AMEX GL1025 File](../UserGuide/CA__HOW_Set_Up_BankFeeds_AMEX.md)**  

-   **[To Load Bank Transactions from a File](../UserGuide/CA__HOW_Load_BankFeeds_from_File.md)**  


