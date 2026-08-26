# Managing Segmented Keys {#_f56166d3-7509-4572-b83c-1a7ca3b3f6d0 .concept}

Acumatica ERP provides you with the capability to specify the structure of identifiers of different objects in the system, such as general ledger accounts and subaccounts, customer and vendor accounts, warehouses, locations, and item classes. These structured identifiers usually consist of multiple parts separated by a predefined character \(such as a hyphen or slash\). In the system, these parts are called *segments*, and the structure definition of the object identifier is called a *segmented key*. You can use segmented keys to help users remember long identifiers and enter the identifiers on data entry forms, because smaller parts are easier to remember and enter than long sequences of letters and digits are.

For example, general ledger subaccounts can have the following structure for a six-character identifier: a two-character regional branch code, a one-digit department number, and a three-character product type. Thus, the subaccount identifier *CA-1-T32* denotes a subaccount of the California branch \(*CA*\), department *1*, related to the product *T32*.

Acumatica ERP also provides automatic numbering capabilities for segmented keys. You can configure the numbering sequence to be used in a specific segmented key. An auto-numbered numbering sequence can be applied to only one segment of a key with multiple segments. For more information, see [Use of Numbering Sequences](CS__con_Multiple_Numbering_Sequences.md).

Acumatica ERP provides you a number of preconfigured segmented keys. You can use preconfigured segmented keys, either as they have been designed or with changes to the settings to better meet your needs. You can also configure your own segmented keys.

## Preconfigured Segmented Keys { .section}

Acumatica ERP provides the following built-in segmented keys, which can be used for only the types of system objects for which they were designed:

-   *ACCGROUP*: Used for the identifiers of account groups in project management.
-   *ACCOUNT*: Used for the identifiers of general ledger accounts. For details, see [Account Identification](../Shared/../UserGuide/GL__con_Account_and_Subaccount_Identifiers.md).
-   *BIZACCT*: Used for the identifiers of business accounts; this segmented key is the parent key of the *COMPANY*, *BRANCH*, *VENDOR*, *CUSTOMER*, and *EMPLOYEE* segmented keys. For more information, see [Business Account Identifiers](../Shared/../UserGuide/CS__con_Business_Accounts_Identifiers.md).
-   *BRANCH*: Used for the identifiers of branches; this segmented key inherits its structure from the *BIZACCT* key. For details, see [Business Account Identifiers](../Shared/../UserGuide/CS__con_Business_Accounts_Identifiers.md).
-   *CASHACCOUNT*: Used for the identifiers of branch-specific cash accounts.
-   *COMPANY*: Used for the identifiers of companies; this segmented key inherits its structure from the *BIZACCT* key. For details, see [Business Account Identifiers](../Shared/../UserGuide/CS__con_Business_Accounts_Identifiers.md).
-   *CONTRACT*: Used for the identifiers of contracts; this segmented key inherits its structure from the *PROJECT* key.
-   *CONTRACTITEM*: Used for the identifiers of contract items.
-   *COSTCODE*: Used for the identifiers of cost codes. By default, the key has one segment of four numeric symbols. The key is available if the *Cost Code* feature is enabled on the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\) form. For more information, see [Cost Codes: Configuration Prerequisites](../Shared/../ImplementationGuide/config_Cost_Codes_Config_Prereq.md).
-   *CUSTOMER*: Used for customer identifiers; this segmented key inherits its structure from the *BIZACCT* key. For details, see [Business Account Identifiers](../Shared/../UserGuide/CS__con_Business_Accounts_Identifiers.md).
-   *EMPLOYEE*: Used for the identifiers of company employees; this segmented key inherits its structure from the *BIZACCT* key. For more information, see [Business Account Identifiers](../Shared/../UserGuide/CS__con_Business_Accounts_Identifiers.md).
-   *INITEMCLASS*: Used for the identifiers of item classes.
-   *INLOCATION*: Used for the identifiers of warehouse locations.
-   *INSITE*: Used for the identifiers of warehouses.
-   *INSUBITEM*: Used for the subitem codes \(that is, identifiers\) of inventory items. For details, see [Inventory Subitems](../Shared/../UserGuide/IN__con_Inventory_IDs_and_Subitem_Codes.md).
-   *INVENTORY*: Used for the inventory IDs of stock and non-stock items. For more information, see [Stock Items: Identifiers of Items](../Shared/../UserGuide/Stock_Items_Identifiers_of_Items.md). If the *Project Accounting* feature is enabled on the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\) form, this segmented key also determines the structure of the empty item code. For more information, see [Project Creation and Processing: Configuration Prerequisites](../Shared/../UserGuide/Projects_Process_Config_Prereq.md).
-   *LOCATION*: Used for the identifiers of customer and vendor locations.
-   *MLISTCD*: Used for the identifiers of mailing lists.
-   *PROJECT*: Used for the identifiers of a non-project code, projects, and project templates; this segmented key is the parent key for the *CONTRACT* and *TMCONTRACT* keys. For more information, see [Project Creation and Processing: Configuration Prerequisites](../Shared/../UserGuide/Projects_Process_Config_Prereq.md).
-   *PROTASK*: Used for the identifiers of project tasks.
-   *SALESPER*: Used for salesperson IDs.
-   *SUBACCOUNT*: Used for the identifiers of General Ledger subaccounts.
-   *TMCONTRACT*: Used for contract templates; this segmented key inherits its structure from the *PROJECT* key.
-   *TMPROJECT*: Used for project templates; this segmented key inherits its structure from the *PROJECT* key.
-   *VENDOR*: Used for vendor identifiers; this segmented key inherits its structure from the *BIZACCT* key. For more information, see [Business Account Identifiers](../Shared/../UserGuide/CS__con_Business_Accounts_Identifiers.md).

-   **[Segmented Identifiers](../UserGuide/CS__con_Identifier_Segmentation.md)**  

-   **[Lookup Modes for Segmented Keys](../UserGuide/CS__con_Lookup_Modes.md)**  

-   **[Use of Numbering Sequences](../UserGuide/CS__con_Multiple_Numbering_Sequences.md)**  

-   **[Business Account Identifiers](../UserGuide/CS__con_Business_Accounts_Identifiers.md)**  

-   **[To Create a Segmented Key](../UserGuide/CS__how_Create_Segmented_Key.md)**  

-   **[To Add a Segment to an Existing Segmented Key](../UserGuide/CS__how_Add_Segment_to_Segmented_Key.md)**  

-   **[To Remove a Segment from an Existing Segmented Key](../UserGuide/CS__how_Remove_Segment_from_Segmented_key.md)**  

-   **[To Split a One-Segment Identifier into Multiple Segments](../UserGuide/CS__how_Split_Segment_to_Multiple_Segments.md)**  


