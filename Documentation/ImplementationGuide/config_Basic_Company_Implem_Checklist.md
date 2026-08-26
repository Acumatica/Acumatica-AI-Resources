# Company Without Branches: Implementation Checklist {#_6f192ff4-17ae-47d4-a4ba-9e0b688873e6 .concept}

You can use the tables in this topic to quickly check whether the basic company configuration steps are being performed in Acumatica ERP. The following tables cover both mandatory configuration steps and recommended configuration steps.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form|Make sure that the *Standard Financials* group of features has been enabled.|
|[Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form|Make sure that the necessary company has been created and that the necessary ledger has been created and assigned to it.|
|[Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form|Make sure that the necessary accounts for performing financial operations have been added.|
|[General Ledger Preferences](../UserGuide/GL_10_20_00.md) \(GL102000\) form|Make sure that all necessary settings to use the general ledger functionality have been specified, including the YTD Net Income and Retained Earnings accounts.|
|[Financial Year](../UserGuide/GL_10_10_00.md) \(GL101000\) form|Make sure that the first financial year in which the company will operate has been added and the periods have been generated.|
|[Company Financial Calendar](../UserGuide/GL_20_11_00.md) \(GL201100\) form|Make sure that the periods in which the company will operate are open.|
|[Cash Management Preferences](../UserGuide/CA_10_10_00.md) \(CA102000\) form|Make sure that all necessary settings to use the cash management functionality have been specified, including the Cash-in-Transit account.|
|[Cash Accounts](../UserGuide/CA_20_20_00.md) \(CA202000\) form|Make sure that the necessary cash accounts to record cash entries and funds transfers have been created, and that the necessary entry types have been assigned to them.|
|[Payment Methods](../UserGuide/CA_20_40_00.md) \(CA204000\) form|Make sure that the payment methods to be used have been created and defined to use the proper accounts.|
|[Entry Types](../UserGuide/CA_20_30_00.md) \(CA203000\) form|Make sure that the necessary entry types for processing cash payments have been created and assigned to the related cash accounts.|
|[Credit Terms](../UserGuide/CS_20_65_00.md) \(CS206500\) form|Make sure that the needed credit terms—those that are commonly used by vendors in their relations with your company, and those that are used by your company in its relations with customers—have been created.|
|[Vendor Classes](../UserGuide/AP_20_10_00.md) \(AP201000\) form|Make sure that the default vendor class, which provides the default values for vendor accounts and for other vendor classes, has been created.|
|[Accounts Payable Preferences](../UserGuide/AP_10_10_00.md) \(AP101000\) form|Make sure that all necessary settings to use the accounts payable functionality have been specified.|
|[Statement Cycles](../UserGuide/AR_20_28_00.md) \(AR202800\) form|Make sure that the necessary statement cycles, which will later be used to track customers' outstanding balances and send electronic or printed statements to the customers, have been created.|
|[Customer Classes](../UserGuide/AR_20_10_00.md) \(AR201000\) form|Make sure that the default customer class, which provides the default values for customer accounts and for other customer classes, has been created.|
|[Accounts Receivable Preferences](../UserGuide/AR_10_10_00.md) \(AR101000\) form|Make sure that all necessary settings to use the accounts receivable functionality have been specified.|

|Form|Criteria to Check|
|----|-----------------|
|[General Ledger Preferences](../UserGuide/GL_10_20_00.md) \(GL102000\) form|Make sure that the following settings have been specified:-   The **Automatically Post on Release** check box is selected.
-   The **Hold Batches on Entry** check box is cleared.

|
|[Cash Management Preferences](../UserGuide/CA_10_10_00.md) \(CA102000\) form|Make sure that the following settings have been specified:-   The **Automatically Post to GL on Release** check box is selected.
-   The **Hold Transactions on Entry** check box is cleared.
-   The **Require Document Ref. Nbr. on Entry** check box is cleared.

|
|[Accounts Payable Preferences](../UserGuide/AP_10_10_00.md) \(AP101000\) form|Make sure that the following settings have been specified:-   The **Automatically Post on Release** check box is selected.
-   A vendor class, which will be used to provide default values for vendor accounts, is selected in the **Default Vendor Class ID** box.
-   The **Hold Documents on Entry** check box is cleared.
-   The **Require Approval of Bills Prior to Payment** check box is cleared.
-   The **Validate Document Totals on Entry** check box is cleared.
-   The **Require Vendor Reference** check box is cleared.

|
|[Accounts Receivable Preferences](../UserGuide/AR_10_10_00.md) \(AR101000\) form|Make sure that the following settings have been specified:-   The **Automatically Post on Release** check box is selected.
-   A customer class, which will be used to provide default values for customer accounts, has been selected in the **Default Customer Class ID** box.
-   The **Hold Documents on Entry** check box is cleared.
-   The **Validate Document Totals on Entry** check box is cleared.
-   The **Require Payment Reference on Entry** check box is cleared.

|

**Parent topic:**[Company Without Branches](../ImplementationGuide/config_Basic_Company_Mapref.md)

