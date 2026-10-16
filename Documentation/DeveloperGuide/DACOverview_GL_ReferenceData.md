# GL DACs: Reference Data

Reference data access classes \(DACs\) contain the data, such as branches and accounts, that is used in most of the DACs in general ledger.

## General Ledger Preferences

The general preferences for the general ledger are stored in the [GLSetup](https://help.acumatica.com/dacBrowser/PX.Objects.GL/GLSetup) DAC. These settings include numbering sequences for general ledger batches, document and payment processing options, mailing settings, and special accounts that are used in the general ledger.

The basic configuration of the general ledger is stored in the [FinYearSetup](https://msk-app-001.int.adds.acumatica.com/tw-2023R1/(W(24))/dacBrowser/PX.Objects.GL/FinYearSetup) and [AccountClass](https://help.acumatica.com/dacBrowser/PX.Objects.GL/AccountClass) tables.

The FinYearSetup DAC stores the financial year setup record, which is used to define the template for the actual financial years. Template financial periods of the year are stored in the [FinPeriodSetup](https://help.acumatica.com/dacBrowser/PX.Objects.GL/FinPeriodSetup) DAC. Financial year and financial period templates are configured on the [Financial Year](../UserGuide/GL_10_10_00.md) \(GL101000\) form.

The AccountClass DAC stores account classes, which are used for the grouping, sorting, and filtering of information associated with general ledger accounts in reports and inquiries. Account classes are edited on the [Account Classes](../UserGuide/GL_20_20_00.md) \(GL202000\) form.

## Reference Data

The following table lists the reference DACs.

<table id="_f354060c-7246-48e6-b85c-a06d379ade43"><thead><tr><th>

DAC

</th><th>

Description

</th></tr></thead><tbody><tr><td>

[BranchAcctMap](https://help.acumatica.com/dacBrowser/PX.Objects.GL/BranchAcctMap)

</td><td>

Specifies the rules for balancing inter-branch transactions.

</td></tr><tr><td>

[Branch](https://help.acumatica.com/dacBrowser/PX.Objects.GL/Branch)

</td><td>

Holds general information about each branch of a company, including the identifier, name, address, default location, and employees.

</td></tr><tr><td>

[Ledger](https://help.acumatica.com/dacBrowser/PX.Objects.GL/Ledger)

</td><td>

Stores the accounting ledgers used by the company. Ledgers can be of the following types:-   *Actual*, which is used to post all financial transactions that a company performs

-   *Reporting*, which stores the results of financial translations or consolidation data imported to a parent company from consolidation units
-   *Statistical*, which stores statistical information about a company’s operations
-   *Budget*, which stores budget information.

</td></tr><tr><td>

[OrganizationLedgerLink](https://help.acumatica.com/dacBrowser/PX.Objects.GL.DAC/OrganizationLedgerLink)

</td><td>

Represents a many-to-many relation link between the Organization and Ledger records.

</td></tr><tr><td>

[Organization](https://help.acumatica.com/dacBrowser/PX.Objects.GL.DAC/Organization)

</td><td>

Stores the information about companies.

</td></tr><tr><td>

[Account](https://help.acumatica.com/dacBrowser/PX.Objects.GL/Account)

</td><td>

Represents a chart of accounts that are defined in the system. When a user defines the chart of accounts, the user assigns to each account a name, a unique number by which it can be identified, and a type. Accounts can be of the following types:-   *Asset*

-   *Liability*

-   *Income*

-   *Expense*


</td></tr><tr><td>

[Sub](https://help.acumatica.com/dacBrowser/PX.Objects.GL/Sub)

</td><td>

Represents a subaccount. Subaccounts are used to virtually split accounts into smaller, more specific accounts to achieve finer classification, for reporting and internal management purposes.

</td></tr><tr><td>

[FinYear](https://help.acumatica.com/dacBrowser/PX.Objects.GL.FinPeriods.TableDefinition/FinYear)

</td><td>

Stores financial years in the system.

</td></tr><tr><td>

[MasterFinYear](https://help.acumatica.com/dacBrowser/PX.Objects.GL.FinPeriods/MasterFinYear)

</td><td>

Is a projection over the FinYear DAC. Master financial years are stored in the FinYear database table and have an OrganizationID value of *0*. The MasterFinYear records are defined on the [Master Financial Calendar](../UserGuide/GL_20_10_00.md) \(GL201000\) form.

</td></tr><tr><td>

[OrganizationFinYear](https://help.acumatica.com/dacBrowser/PX.Objects.GL.FinPeriods/OrganizationFinYear)

</td><td>

Is a projection over FinYear. The DAC is used on the [Company Financial Calendar](../UserGuide/GL_20_11_00.md) \(GL201100\) form.

</td></tr><tr><td>

[FinPeriod](https://help.acumatica.com/dacBrowser/PX.Objects.GL.FinPeriods.TableDefinition/FinPeriod)

</td><td>

Stores financial periods in the system.

</td></tr><tr><td>

[MasterFinPeriod](https://help.acumatica.com/dacBrowser/PX.Objects.GL.FinPeriods/MasterFinPeriod)

</td><td>

Is a projection over the FinPeriod DAC. Master financial periods are stored in the FinPeriod database table and have an OrganizationID value of *0*. The MasterFinPeriod records are defined on the [Master Financial Calendar](../UserGuide/GL_20_10_00.md) \(GL201000\) form.

</td></tr><tr><td>

[OrganizationFinPeriod](https://help.acumatica.com/dacBrowser/PX.Objects.GL.FinPeriods/OrganizationFinPeriod)

</td><td>

Is a projection over FinPeriod. The DAC is used on the [Company Financial Calendar](../UserGuide/GL_20_11_00.md) \(GL201100\) form.

</td></tr></tbody>
</table>

## GL Consolidation Reference Data

The importing of consolidation data is a process that imports GL balances \(which are represented by [GLHistory](https://help.acumatica.com/dacBrowser/PX.Objects.GL/GLHistory) records\) by financial period in a special way. For details about the configuration of this process, see [Configuring GL Consolidation](../UserGuide/Finance_GL_Consolidation_Configuration_Mapref.md).

During the import process, the destination tenant connects to the source tenant \(or they can be the same single tenant\) and requests data for the specified ledger, branch, and mapped accounts and subaccounts. Then it filters data by the specified start and end period and processes it: The system calculates the difference between the last received data and the new data, and then it creates a batch with one [GLTran](https://help.acumatica.com/dacBrowser/PX.Objects.GL/GLTran) record per history record. Afterward, the system updates the history records when the batch is posted.

The following tables lists the GL DACs related to the preferences for the import of consolidation data.

|DAC|Description|
|---|-----------|
|[GLConsolSetup](https://help.acumatica.com/dacBrowser/PX.Objects.GL/GLConsolSetup)|Represents the consolidation specification: the data about the source tenant, the connection credentials, and the parameters of consolidation, such as the period interval and the source and the destination branches and ledgers.|
|[GLConsolLedger](https://help.acumatica.com/dacBrowser/PX.Objects.GL/GLConsolLedger)|Represents the ledger that is available for consolidation in the source tenant.|
|[GLConsolBranch](https://help.acumatica.com/dacBrowser/PX.Objects.GL/GLConsolBranch)|Represents the branch that is available for consolidation in the source tenant.|

## Allocation Reference Data

Allocation is the process of transferring amounts from specified account to another accounts by predefined allocation rules. Amounts are deducted from the source or contra account from the source ledger. These amounts are distributed and posted to the destination account in the proportion specified by the allocation ration in the allocation \(destination\) ledger. The allocation ratio can be fixed for destination accounts or can be calculated dynamically by the period-to-date or year-to-date balances of the base or destination accounts.

The allocation functionality is represented in the system by the following forms:

-   [Allocations](../UserGuide/GL_20_45_00.md) \(GL204500\), where a user configures allocation rules. On the **Allocation History** tab, the allocation GL batches are listed.
-   [Run Allocations](../UserGuide/GL_50_45_00.md) \(GL504500\), which is a processing form where a user executes allocation by rules.

The following table lists the GL DACs related to allocation preferences.

|DAC|Description|
|---|-----------|
|[GLAllocation](https://help.acumatica.com/dacBrowser/PX.Objects.GL/GLAllocation)|Represents the head of allocation rule aggregate.|
|[GLAllocationSource](https://help.acumatica.com/dacBrowser/PX.Objects.GL/GLAllocationSource)|Specifies the source part of the allocation rule.|
|[GLAllocationDestination](https://help.acumatica.com/dacBrowser/PX.Objects.GL/GLAllocationDestination)|Specifies the destination part of the allocation rule.|

**Parent topic:**[Reviewing General Ledger DACs](../DeveloperGuide/DACOverview_GL_Mapref.md)

