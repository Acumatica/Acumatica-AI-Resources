# Integration of Field Services and Projects: Workflow Setup {#_42f3b7d5-cfdf-468e-b4e1-848ef4f3ad5c .concept}

You can efficiently manage the services performed within a project's scope by using Acumatica ERP’s service management functionality. The integration of projects and services ensures that all costs related to the provided services are accurately tracked and allocated to the project. To use the service management functionality while performing projects, you need to configure the basic project accounting and service management functionalities to provide integration between projects and service management.

Once this integration has been configured, you can create service documents \(that is, service orders and appointments\) linked to projects; in these documents, you can associate services and stock items with project tasks. When the service documents are billed, project transactions are generated, and all associated costs are recorded in the project's cost budget. The setup process is described in detail in the sections of this topic.

## Setting Up the Integration of Service Management and Projects { .section}

**Important:** Before you begin this configuration, the *Service Management* and *Projects* features must be enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. Additionally, the project accounting functionality and the service management functionality must be configured in your Acumatica ERP instance. For details, see [Basic Project Configuration: General Information](../ImplementationGuide/config_Project_Basic_GeneralInfo.md) and [Basic Service Management Configuration: General Information](../ImplementationGuide/config_ServMgmt_with_Inventory_GeneralInfo.md).

To establish a workflow between service management and project management, you need to perform the following general steps, each of which is described in its own section of this topic:

1.  You create account groups for tracking project transactions originating from service documents.
2.  You create a reason code with a GL account that is mapped to the expense account group intended to record expenses related to issuing stock items from a warehouse.
3.  You create a project-related service order type. Service orders and appointments related to projects should be created based on this type. The system will generate project transactions when the billing process is run for the service documents.

    If stock items may be included in the service documents, the reason code should be specified in the service order type settings. In this case, the system will also generate an inventory transaction when the billing process is run for the service documents.

4.  You create an allocation rule that the system will use to track all project transactions generated from service documents.
5.  You create a billing rule to bill a project containing service-related project transactions. This rule should include two steps to handle project transactions generated from service documents containing both services and stock items.

Once the configuration has been completed, you can create a project with the necessary project tasks. For each project task that you plan to use with service documents, you specify the billing rule and the allocation rule. Afterward, you create and process the required service orders and appointments for the project. For details, see [Integration of Field Services and Projects: General Information](ServMgmt_Project_Through_Field_Services_GeneralInfo.md).

## Creating Account Groups { .section}

To consolidate and manage project transactions in projects that involve service documents, you need to create the account groups listed in the table below.

You create account groups on the [Account Groups](PM_20_10_00.md) \(PM201000\) form. You specify the type of each account group by selecting *Asset*, *Expense*, *Off-Balance*, or *Income* in the **Type** box of the Summary area of that form.

|Purpose|Type|Configuration Actions|Description|
|-------|----|---------------------|-----------|
|An account group intended to track project transactions originating from service documents|*Asset*|Leave the **Accounts** tab empty on the [Account Groups](PM_20_10_00.md) form because no GL accounts are specified in project transactions originating in service documents. Thus, GL transactions are not generated and the general ledger is not updated. This account group should be specified in the settings of the project-related service order type. For details, see the *Creating a Project-Related Service Order Type* section of this topic.

For this account group, the *UNBILLED* account group ID is used in the configuration settings described in the next sections of this topic. However, you can use any account group ID when creating this group in your system.

|When the allocation process for the project is executed, the project transactions of this account group are reallocated to an account group intended to accumulate transactions waiting for billing \(described in the next row of this table\).|
|An account group intended to temporarily accumulate project costs associated with services and non-stock items that have been provided but not yet billed|*Off-Balance*|Leave the **Accounts** tab empty on the [Account Groups](PM_20_10_00.md) form.This account group should be specified in the billing rule settings. The transactions recorded to this account group will be billed when the project billing process is run. For details, see the *Creating a Billing Rule* section of this topic.

For this account group, the *WIP \(Work in Progress\)* account group ID is used in the configuration settings described in the next sections of this topic. However, you can use any account group ID when creating this group in your system.

|When the allocation process for the project is executed, project transactions from this account group are reallocated to the *Expense* account group \(described in the next row of this table\) to recognize service-related project expenses.|
|An account group intended to record expenses related to non-stock items and services|*Expense*|Leave the **Accounts** tab empty if you do not plan to post expenses related to non-stock items and services. Add a GL account of the *Expense* type to this group on the **Accounts** tab on the [Account Groups](PM_20_10_00.md) form if you plan to post expenses related to non-stock items and services to the general ledger.

Depending on your decision, the **Post to GL** check box must be either selected or cleared in the settings of the *30* step of the allocation rule described in the *Creating an Allocation Rule* section of this topic.

For this account group, the *LABOR* account group ID is used in the configuration settings described in the next sections of this topic. However, you can use any account group ID when creating this group in your system.

|When the allocation process for the project is executed, project transactions from the *WIP* account group are moved to this account group to track the service-related project expenses.On the **Balances** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form, this account group will be listed so that you can track these expenses.

|
|An account group intended to record expenses related to issuing stock items from a warehouse|*Expense*|Add the expense account of the reason code specified in the service order type settings to this account group on the **Accounts** tab of the [Account Groups](PM_20_10_00.md) form. This account group should be specified in the billing rule that will be used to bill projects that have project transactions with stock items. For details, see the *Creating a Billing Rule* section of this topic.

For this account group, the *MATERIAL* account group ID is used in the configuration settings described in the next sections of this topic. However, you can use any account group ID when creating this group in your system.

|The system debits the expense account \(COGS\) specified in the reason code and mapped to this account group when the issue transaction generated from billing a service document is released.On the **Balances** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form, this account group will be listed so that you can track these expenses.

|
|An account group intended to record project income|*Revenue*|Add a GL account of the *Income* type on the **Accounts** tab of the [Account Groups](PM_20_10_00.md) form. This account should be specified in the **Default Sales Account** box on the **Defaults** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form.

|The system uses the account of this account group in AR invoices generated during project billing. This account is credited when an AR invoice is released.|

For detailed information about account groups and their types, see [Account Groups: General Information](Account_Groups_GeneralInfo.md).

## Creating a Reason Code { .section}

To record as project costs the expenses associated with issuing stock items from a warehouse, you need to create a reason code with the GL account assigned to a specific account group \(described in the fourth row of the table in the previous section\). You will then specify this reason code in the settings for the project-related service order type.

You create this reason code on the [Reason Codes](CS_21_10_00.md) \(CS211000\) form and specify the following settings:

-   **Usage**: *Issue*.
-   **Account**: An inventory expense account that has been mapped to an expense account group intended to record expenses related to issuing stock items from a warehouse.
-   **Sales Account**: A sales account that will be used to record the income that occurs when an AR invoice created for inventory transactions is released.

This reason code will be specified in the inventory issue that the system generates when you run billing on the [Service Orders](FS_30_01_00.md) \(FS300100\) or [Appointments](FS_30_02_00.md) \(FS300200\) form for a service document that contains stock items. On release of the issue, the system creates a GL batch with the following lines, which can be viewed on the **Details** tab of the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form:

-   In the first line, an inventory account is credited by the cost of the stock item. In the **Quantity** column, the quantity is specified with a negative sign.
-   In the second line, a project-related expense account is debited by the cost of the stock item. This GL account is specified in the reason code and, in turn, added to the project account group of the *Expense* type. In the **Quantity** column, the quantity is specified with a positive sign. Additionally, the system generates a project transaction for this line and inserts its reference number in the **Project Tran. ID** column.

## Creating a Project-Related Service Order Type { .section}

To integrate service orders and appointments with projects and generate project transactions, you first create a service order type with the appropriate project-related settings.

On the **General** tab of the [Service Order Types](FS_20_23_00.md) \(FS202300\) form, you create a project-related service order type with the following settings:

-   **Service Order Type**: The identifier of the service order type to be used for project-related service documents.
-   **Numbering Sequence**: The numbering sequence for service documents generating project transactions; this sequence should be set up in advance.
-   **Behavior**: *Regular*.
-   **Generated Billing Documents**: *Project Transactions*.
-   **Account Group**: The account group to be assigned by default to project transactions generated from an appointment or service order of this service order type. This account group \(described in the first row of the table in the *Creating Account Groups* section\) must be defined beforehand as an account group to track project transactions originating from service documents.
-   **Billing Type**: *Cost as Cost*. The items will be billed based on the unit cost specified in the document.

If the *Inventory and Order Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form and stock items may be included in the service documents associated with projects, you specify the following settings on the [Service Order Types](FS_20_23_00.md) form as well:

-   **Order Type for Allocation**: The sales order type for allocation if you plan to include stock items in service documents.
-   **Reason Code**: The reason code to be used by default in inventory issues generated from appointments or service orders of the current service order type.

Other settings of the service order type should be specified according to needs unrelated to project functionality because they do not affect the process of billing service documents through projects.

When you create a project-related service document, you specify the service order type in the following boxes:

-   On the [Service Orders](FS_30_01_00.md) \(FS300100\) form: The **Order Type** box of the Summary area
-   On the [Appointments](FS_30_02_00.md) \(FS300200\) form: The **Service Order Type** box of the Summary area

## Creating an Allocation Rule {#section_ktz_3sb_xcc .section}

To cause the system to allocate project transactions generated from service documents, you need to create a dedicated allocation rule and specify this rule for each needed project task that is added on the **Tasks** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form.

**Important:** This allocation rule will work only if the account groups described in the [Creating Account Groups](#table_ujv_tbg_ncc) section of this topic are configured in the system.

The allocation rule should consist of three steps. The configuration of each step is intended to do the following:

1.  The system reverses project transactions recorded to a default *Asset* account group used for tracking project transactions originating from service documents. That is, the system clears the default service-related *Asset* account group by creating reversed project transactions with negative quantity and amount values.
2.  The system allocates project transactions from the field service default account group to the account group used in the project to store unpaid project costs. The system moves these project transactions with positive quantities and amounts to the account group of the *Asset* type intended to track unpaid project costs.
3.  The system reallocates project transactions with services and other non-stock items to the account group of the *Expense* type to record expenses related to non-stock items and services.

Thus, you create an allocation rule with the following steps defined in the left pane of the [Allocation Rules](PM_20_75_00.md) \(PM207500\) form:

1.  **Step ID**: `10`. This step reverses project transactions recorded to the *UNBILLED* account group. For this step, you do the following in the right pane:
    -   On the **Calculation Rules** tab, you specify the following settings:
        -   **Allocation Method**: *Allocate Transactions*
        -   **Create Allocation Transaction**: Selected
        -   **Account Group From**: The *UNBILLED* asset account group
        -   **Quantity Formula**: `=[PMTran.Qty] * (-1)`
        -   **Billable Qty. Formula**: `=[PMTran.BillableQty] * (-1)`
        -   **Amount Formula**: `=[PMTran.ProjectCuryAmount] * (-1)`
        -   **Description Formula**: `='Clearing UNBILLED'`.
    -   On the **Allocation Settings** tab, you specify the following settings:
        -   **Post Transaction to GL**: Cleared
        -   **Create Transaction with Zero Qty.**: Selected
        -   **Create Transaction with Zero Amount**: Selected
        -   **Allocate Non-Billable Transactions**: Selected
        -   **Can Be Used as a Source in Another Allocation**: Cleared
        -   **Reverse Allocation**: *Never*
        -   **Credit Transaction** section, **Account Group** box: *None*
2.  **Step ID**: `20`. In this step, the system allocates project transactions from the *UNBILLED* account group to the *WIP* account group. For this step, you do the following on the right tab:
    -   On the **Calculation Rules** tab, you specify the following settings:
        -   **Allocation Method**: *Allocate Transactions*
        -   **Create Allocation Transaction**: Selected
        -   **Select Transactions**: *From Previous Allocation Steps*
        -   **Range Start**: `10`
        -   **Range End**: `10`
        -   **Quantity Formula**: `=[PMTran.Qty] * (-1)`
        -   **Billable Qty. Formula**: `=[PMTran.BillableQty] * (-1)`
        -   **Amount Formula**: `=[PMTran.ProjectCuryAmount] * (-1)`
        -   **Description Formula**: `='Moving UNBILLED to WIP for billing'`.
    -   On the **Allocation Settings** tab, you specify the following settings:
        -   **Post Transaction to GL**: Cleared
        -   **Create Transaction with Zero Qty.**: Selected
        -   **Create Transaction with Zero Amount**: Selected
        -   **Allocate Non-Billable Transactions**: Selected
        -   **Can Be Used as a Source in Another Allocation**: Cleared
        -   **Reverse Allocation**: *On AR Invoice Generation*
        -   **Debit Transaction** section, **Account Group** box: *Replace* and *WIP*
        -   **Credit Transaction** section, **Account Group** box: *None*
3.  **Step ID**: `30`. This step reallocates project transactions from the *WIP* account group to the *LABOR* account group. This step recognizes service-related expenses from service documents. For this step, you do the following on the right tab:
    -   On the **Calculation Rules** tab, you specify the following settings:
        -   **Allocation Method**: *Allocate Transactions*
        -   **Create Allocation Transaction**: Selected
        -   **Select Transactions**: *From Previous Allocation Steps*
        -   **Range Start**: `20`
        -   **Range End**: `20`
        -   **Quantity Formula**: `=IIf([InventoryItem.StkItem], 0, [PMTran.Qty])`
        -   **Billable Qty. Formula**: `=IIf([InventoryItem.StkItem], 0, [PMTran.Qty])`
        -   **Amount Formula**: `=IIf([InventoryItem.StkItem], 0, [PMTran.ProjectCuryAmount])`
        -   **Description Formula**: `='Moving WIP services to LABOR expenses'`
    -   On the **Allocation Settings** tab, you specify the following settings:
        -   **Post Transaction to GL**: Cleared

            **Important:** If you want to post expenses to the general ledger, select this check box. In this case, a GL account of the *Expense* type must be specified in the settings of the *LABOR* account group on the **Accounts** tab of the [Account Groups](PM_20_10_00.md) form. Additionally, you will need to specify this expense account in the **Debit Transaction** section of the current step, and an account to be credited by the transaction in the **Credit Transaction** section of the current step.

        -   **Create Transaction with Zero Qty.**: Cleared
        -   **Create Transaction with Zero Amount**: Cleared
        -   **Allocate Non-Billable Transactions**: Selected
        -   **Can Be Used as a Source in Another Allocation**: Cleared
        -   **Reverse Allocation**: *Never*
        -   **Debit Transaction** section, **Account Group** box: *Replace* and *LABOR*
        -   **Credit Transaction** section, **Account Group** box: *None*

## Creating a Billing Rule {#section_r2t_dbj_xcc .section}

To bill projects that have project transactions generated from field service documents, you need to create a billing rule that contains two steps. The first step contains settings related to billing transactions containing non-stock items and services. The second step contains settings related to billing project transactions that have been generated for stock items.

To create this billing rule, on the [Billing Rules](PM_20_70_00.md) \(PM207000\) form, create a new record. In the left pane, you create the following steps:

1.  **Step ID**: `10`. For this step, you specify the following settings on the right tab:
    -   **Billing Type**: *Time and Material*
    -   **Account Group**: *WIP*, which is an account group used for recording unpaid project transactions.
    -   **Rate Type**: An appropriate rate type for the selected account group.
    -   **Line Quantity Formula**: `=[PMTran.BillableQty]`
    -   **Line Amount Formula**: Any necessary markup to be added on top of the WIP transaction being billed, such as `=[PMTran.Amount]*1.25`
    -   **Line Description Formula:**`='WIP billing'`
    -   **Use Destination Branch From**: *Source Transaction*
    -   **Use Sales Account From**: *Project*
2.  **Step ID**: `20`. For this step, specify the following settings on the right tab:
    -   **Billing Type**: *Time and Material*
    -   **Account Group**: *MATERIAL*, which is an account group that includes a GL account specified in the reason code.
    -   **Rate Type**: An appropriate rate type for the selected account group.
    -   **Line Quantity Formula**: `=[PMTran.BillableQty]`
    -   **Line Amount Formula**: Any necessary markup to be added on top of the WIP transaction being billed, such as `=[PMTran.Amount]*1.25`
    -   **Line Description Formula:**`=[PMTran.InventoryID_description]`
    -   **Use Sales Account From**: *Project*

**Parent topic:**[Integrating Field Services with Projects](../UserGuide/ServMgmt_Project_Through_Field_Services_Mapref.md)

