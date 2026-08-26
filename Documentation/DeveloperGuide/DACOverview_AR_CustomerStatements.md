# AR DACs: Customer Statements {#_1f5115c4-60d3-4b6c-a9af-5b2e73d2b491 .concept}

By using the customer statement functionality, users can send statements to customers. Each statement shows the open balance \(due or overdue\) detailed by reference data about either of the following, depending on the statement type of the applicable customer on the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form:

-   Current open documents \(for the *Open Item* statement type\)
-   All document activity since the last statement \(for the *Balance Brought Forward* statement type\)

## ARStatementCycle { .section}

To facilitate statement processing, each [Customer](https://help.acumatica.com/dacBrowser/PX.Objects.AR/Customer) record in the system is assigned to a statement cycle \(which is stored in [ARStatementCycle](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARStatementCycle)\), as the following SQL query shows.

```
SELECT 
    ARStatementCycle.StatementCycleID, 
    BAccount.AcctCD, 
    ARStatementCycle.*, 
    BAccount.*, 
    Customer.* 
FROM 
    ARStatementCycle 
    INNER JOIN Customer 
        ON Customer.CompanyID = ARStatementCycle.CompanyID 
        AND Customer.StatementCycleId = ARStatementCycle.StatementCycleId 
    INNER JOIN BAccount 
        ON Customer.CompanyID = BAccount.CompanyID 
        AND Customer.BAccountID = BAccount.BAccountID 
```

The statement cycle defines the general settings for the processing of statements and overdue charges, including the following:

-   The boundaries and names of the aging periods of documents
-   The schedule type for statement processing, such as monthly, weekly, or by a financial period

The type of statements \(*Open Item* or *Balance Brought Forward*\) is generated for a particular customer and is indicated by Customer.StatementType.

## Statements, Details, and Applications { .section}

The primary entity representing a customer statement in the system is [ARStatement](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARStatement). It contains general statement information \(including aged customer due and overdue balances on the statement date\) and serves as a master entity for all document details that are displayed in the statement. Document details are stored in [ARStatementDetail](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARStatementDetail).

The following query obtains the last customer statement with details.

```
SELECT 
    * 
FROM 
    Customer 
    INNER JOIN BAccount 
        ON Customer.CompanyID = BAccount.CompanyID 
        AND Customer.BAccountID = BAccount.BAccountID 
    LEFT JOIN ARStatement 
        ON ARStatement.CompanyID = Customer.CompanyID 
        AND ARStatement.CustomerID = Customer.BAccountID 
        AND ARStatement.StatementDate = Customer.StatementLastDate 
    LEFT JOIN ARStatementDetail 
        ON ARStatementDetail.CompanyID = ARStatement.CompanyID 
        AND ARStatementDetail.CustomerID = ARStatement.CustomerID 
        AND ARStatementDetail.StatementDate = ARStatement.StatementDate 
        AND ARStatementDetail.CuryID = ARStatement.CuryID 
```

During statement processing for a customer on a given date, a separate ARStatement record is created for every combination of branch and currency used in relevant customer documents.

However, in reports, statements are displayed as follows:

-   Statements with different ARStatement.CuryID are consolidated for displaying if `Customer.PrintCuryStatements = 0`.
-   Statements with different ARStatement.BranchID are consolidated for displaying if `ARSetup.ConsolidatedStatement = 1`.

In addition, if customers are in a parent-child relationship, you can consolidate child statements under the parent customer for displaying by using the following condition: `BAccount.ParentBAccountID IS NOT NULL AND Customer.ConsolidateStatements = 1`. However, separate statements are always prepared for each individual customer in the family.

**Parent topic:**[Reviewing Accounts Receivable DACs](../DeveloperGuide/DACOverview_AR_Mapref.md)

