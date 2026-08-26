# Company/Branch Box {#_5323f8d6-bfa0-4f19-8f94-261895f84f93 .concept}

The **Company/Branch** box displays all the available companies with any branches they have as a tree to reflect the parent-child relations among these organizational entities. This box can be viewed on multiple forms, such as the [AR Balance by Customer](../UserGuide/AR_63_25_00.md) \(AR632500\) form, The companies and branches an individual user can view in the **Company/Branch** box depend on the way security has been configured in the system.

The **Company/Branch** box consists of two parts:

-   The PXBranchSelector control on the ASPX page, which renders the tree structure of the companies and branches
-   The OrganizationTree attribute in the data access class, which retrieves the data for the control

In this topic, you can find information about how to work with the **Company/Branch** box in the code of an inquiry or processing form.

## Adding the Company/Branch Box to a Form { .section}

To add the **Company/Branch** box to an inquiry or processing form, you do the following:

1.  Optional: In the filter DAC, add separate fields to hold the company and branch, which the system can fill with the company and branch identifiers when a value is selected in the **Company/Branch** box. The following code shows an example of the field definitions.

    **Note:** If the filter DAC does not contain these fields, you can omit the corresponding parameters in the constructor of the OrganizationTree attribute, which you will add in the next step.

    ```
    using PX.Objects.GL.Attributes;
    
    #region OrganizationID
    public abstract class organizationID : PX.Data.BQL.BqlInt.Field<organizationID> { }
    
    [Organization(false, Required = false)]
    public int? OrganizationID { get; set; }
    #endregion
    #region BranchID
    public abstract class branchID : PX.Data.BQL.BqlInt.Field<branchID> { }
    
    [BranchOfOrganization(typeof(ARHistoryFilter.organizationID), false)]
    public int? BranchID { get; set; }
    ```

2.  In the filter DAC, create an integer field, and add the OrganizationTree attribute to this field, as shown in the following code example. In the constructor of the attribute, specify the following values:

    -   sourceOrganizationID: The type of the field in this DAC that stores the identifier of the company. The type can be null.
    -   sourceBranchID: The type of the field in this DAC that stores the identifier of the branch. The type can be null. The value of `sourceBranchID` of the attribute can be `null` if a company is selected in the **Company/Branch** box.
    -   onlyActive: The Boolean value that \(if set to `true`, which is the default value\) displays only the company and branch records that have the Active field set to `true`.
    ```
    using PX.Objects.GL.Attributes;
    
    #region OrgBAccountID
    public abstract class orgBAccountID : PX.Data.BQL.BqlInt.Field<orgBAccountID> { }
    
    [OrganizationTree(
        sourceOrganizationID: typeof(organizationID), 
        sourceBranchID: typeof(branchID),              
        onlyActive: false)]
    public int? OrgBAccountID { get; set; }
    #endregion
    ```

    **Note:** Because the objects of the company and branch have different types and their identifiers can overlap, the system identifies the entity that is selected in the **Company/Branch** box by the business account identifier.

3.  In the ASPX code of the form, add the PXBranchSelector control, as the following code example shows.

    ```
    <px:PXBranchSelector CommitChanges="True" ID="edOrgBAccountID" 
           runat="server" DataField="OrgBAccountID"/>
    ```


## Restricting the Values of Fields That Depend on the Company or Branch { .section}

In a selector control on a form, to display only the records that are available for the branch or company selected in the **Company/Branch** box, you can use the following business query language \(BQL\) functions in the selector condition:

-   Inside&lt;&gt;: To make sure that the branch specified by BranchID matches the entity specified in the **Company/Branch** box—that is, to ensure that the branch is the same as the one selected in the **Company/Branch**box or is a part of the company selected in the **Company/Branch** box. The following code shows the use of this function.

    ```
    using PX.Data.BQL.Fluent;
    using using PX.Objects.GL;
    
    [PXSelector(
        typeof(SearchFor<Ledger.ledgerID>
        .In<SelectFrom<Ledger>
            .LeftJoin<Branch>
                .On<Ledger.ledgerID.IsEqual<Branch.ledgerID>>
            .Where<Ledger.balanceType.IsEqual<LedgerBalanceType.budget>
                .And<Branch.branchID.IsNull
                    .Or<Where<Branch.branchID, Inside<Optional<orgBAccountID>>>>>>
            .AggregateTo<GroupBy<Ledger.ledgerID>>>),
        SubstituteKey = typeof(Ledger.ledgerCD))]
    public virtual int? BudgetLedgerIDByBAccount { get; set; }
    ```

-   Suit&lt;&gt;: To check that the company specified by OrganizationID matches the entity specified in the **Company/Branch** box—that is, the company is the same as selected in **Company/Branch** box or the branch selected in **Company/Branch** box is a part of this company. The use of this function is shown in the following code example.

    ```
    using PX.Data.BQL.Fluent;
    using PX.Objects.GL;
    using PX.Objects.GL.FinPeriods;
    using PX.Objects.GL.FinPeriods.TableDefinition;
    
    [FinPeriodSelector(
        typeof(Search<OrganizationFinPeriod.finPeriodID,
            Where<FinPeriod.organizationID, Suit<Optional<orgBAccountID>>>>),
        null)]
    public string FinPeriodIDByBAccount { get; set; }
    ```


## Filling in the Company or Branch During Redirection to a Form { .section}

If you need to select the company or branch on an inquiry or processing form when this form is opened during redirection from another form, you specify the value of the organization's business account ID in the filter DAC of the target form. You do not need to specify the values of the BranchID or OrganizationID fields, which are specified automatically by OrganizationTreeAttribute. The following code shows an example of the code that performs redirection to an inquiry form with the company or branch specified.

```
using PX.Objects.GL;

AccountHistoryBySubEnq graph = 
    PXGraph.CreateInstance<AccountHistoryBySubEnq>();
GLHistoryEnqFilter filter = PXCache<GLHistoryEnqFilter>.CreateCopy(
    graph.Filter.Current);
filter.OrgBAccountID = Filter.Current.OrgBAccountID;
graph.Filter.Update(filter);
throw new PXRedirectRequiredException(graph, "Account by Subaccount");
```

**Parent topic:**[Configuring the UI from the Backend](../StudioDeveloperGuide/BL__mng_Configuring_UI_from_Back_End.md)

