# Contract Usage: Contract Usage {#_d3b2c8e8-fd2d-45b5-baa9-fd528af5f2a3 .concept}

After the activation of a contract, your company can start providing the contract items defined by the contract. The contract is billed in accordance with its billing schedule, and billing is performed for the usage that has accumulated during a billing period. If the contract is billed on demand, billing is performed for usage accumulated up to the date of the billing.

Contract usage is the sum of the used units of each non-stock item associated with the contract. You can view or enter contract usage on the [Contract Usage](CT_30_30_00.md) \(CT303000\) form, which has a tab to show unbilled usage transactions and a tab where you can view billed usage transactions. You can enter contract usage directly or through such system entities as cases, case activities \(available only if the *Customer Management* feature is disabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form\).

You can track the usage of a particular non-stock item during a billing period or the whole duration of the contract. To track the usage of this item, you create a contract item on the [Contract Items](CT_20_10_00.md) \(CT201000\) form and on the **Price Options** tab \(**Recurring billing** section\), specify this non-stock item as the one that is provided recurrently. You then add this contract item to the contract template on the [Contract Templates](CT_20_20_00.md) \(CT202000\) form. When a contract based on this template is activated, contract items that have non-stock items provided recurrently are listed on the **Recurring Summary** tab of the [Customer Contracts](CT_30_10_00.md) \(CT301000\) form. Here you can view the usage of each of these contract items, which is the sum of the used units of the non-stock item provided recurrently.

You can track the contract usage in the following ways:

-   By using cases \(per-case basis\): You can associate a case that you create on the [Cases](CR_30_60_00.md) \(CR306000\) form with a contract. To recognize the billable time of the case as usage of a contract item, you should assign a non-stock item that is provided recurrently to a case class that is billed on a per-case basis on the [Case Classes](CR_20_60_00.md) \(CR206000\) form.

    When a case of this class is closed and released, its billable time is added to the usage of the contract item. The billable time of cases associated with non-stock items that are not included in the contract is presented on the invoice as a separate line. For details, see [Contract Usage: To Create Case Usage \(Support Contract\)](config_Contract_Management_Implem_Activity_To_Create_Case_Usage_for_Support_Contract.md).

-   By using case activities \(per-activity basis\): If a case belongs to a case class that is billed on a per-activity basis, you can associate the case activity with a contract as well. To do this, you must first use the [Case Classes](CR_20_60_00.md) \(CR206000\) form to create a case class for cases that will be billed on a per-activity basis. Then on the [Cases](CR_30_60_00.md) \(CR306000\) form, you create a case and select the case class that you have created. The case needs to be associated with the contract.

    While viewing the case, on the **Activities** tab, you open the [Activity](CR_30_60_10.md) \(CR306010\) form and enter the case activity. When a case activity is completed and released, the respective transaction can be viewed on the [Contract Usage](CT_30_30_00.md) \(CT303000\) form. The billable time of activities of a non-stock item that is not included in the contract is presented on the invoice as a separate line. For more information, see [Contract Usage: To Create Employee Activity Usage \(Consulting Contract\)](config_Contract_Management_Implem_Activity_To_Create_Activities_Usage_for_Consulting_Contract.md).

-   By manually entering a line for the contract usage transaction \(usage entered manually\): You can associate the usage of any non-stock item with a contract on the [Contract Usage](CT_30_30_00.md) form. The usage of a non-stock item that is not included in the contract is presented on the invoice as a separate line. For details on entering usage transactions, see [Contract Usage: To Create Usage \(Deposit Contract\)](config_Contract_Management_Implem_Activity_To_Create_Usage_for_Deposit_Contract.md).

You can enter item usage for past, current, and future billing periods. If you have entered transactions with a date in a past billing period, they will be billed in the next billing period. If you have entered a transaction with a date in the future, the transaction will be billed in the billing period that contains the date. When you run the contract billing process, the system checks the date of transactions and bills those with a date before or the same as the billing date which is either the next billing date of the contract billed by a schedule or the billing date specified for on-demand billing. Records of usage transactions are presented as invoice details according to the billing format settings of the applicable contract template.

You may offer a service at a price that depends on the usage of the service, such as support hours or support cases. You can bill customers for services at the regular price and at an extra usage price, and you can provide some quantity for free \(if you have offered a discount to a customer\). You can track the usage of the services that are provided recurrently within a billing period as well as for the whole contract duration. Consider the examples in the following sections.

## Annual Support with Free Options {#section_dhs_rf3_35b .section}

If you offer annual support with free options, you can use Acumatica ERP to implement the following scenarios \(see the **Settings for the Examples** table for the settings you would use to implement the scenario\):

-   Annual support with hours for free: To implement this example, use the settings listed in the appropriate column of the table below.

    Annual support that includes free hours might be structured as follows:

    -   *The first 10 hours for free*: You could offer a contract for annual support with the first 10 hours free and additional hours billed at $100 per hour. The contract is billed monthly.
    -   *10 hours for free each month*: You might offer a contract for annual support with 10 hours free each month and other hours billed at $100 per hour. The contract is billed monthly.
-   Annual support with cases for free: To implement this example, you use the settings listed in the appropriate column of the table below.

    Annual support that includes free cases might be structured as follows:

    -   The first 10 cases for free: You might offer a contract for annual support with the first 10 cases free and additional cases billed at $100 per case. The contract is billed monthly.
    -   10 cases for free each month: You could offer a contract for annual support with 10 free cases each month and additional cases billed at $100 per case. The contract is billed monthly.

## Settings for the Examples {#section_ihs_rf3_35b .section}

This table shows the settings you would use to implement each of the examples described above.

|Entity|Annual Support with Hours for Free|Annual Support with Cases for Free|
|------|----------------------------------|----------------------------------|
|**Non-Stock Item** created on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form|-   **Inventory ID**: `SUPPORTHOURS`
-   **Item Status**: *Active*
-   **Type**: *Labor*
-   **UOMs**: *Hours*

|-   **Inventory ID**: `CASENUMBER`
-   **Item Status**: *Active*
-   **Type**: *Non-Stock Item*
-   **UOMs**: *ITEM*

|
|Contract Item created on the [\(CT201000](CT_20_10_00.md) form|-   **Default Quantity**: *10*
-   **Recurring Item**: *SUPPORTHOURS*
-   **Reset Usage on Billing**:
    -   Cleared for the *The First 10 Hours For Free* scenario
    -   Selected for the *10 Hours For Free Each Month* scenario
-   **Recurring Pricing**: *Enter Manually*
-   **Item Price/Percent**: *0*
-   **Extra Usage Pricing**: *Enter Manually*
-   **Item Price/Percent**: *100*

|-   **Default Quantity**: *10*
-   **Recurring Item**: *CASENUMBER*
-   **Reset Usage on Billing**:
    -   Cleared for the *The First 10 Cases for Free* scenario
    -   Selected for the *10 Cases for Free Each Month* scenario
-   **Recurring Pricing**: *Enter Manually*
-   **Item Price/Percent**: *0*
-   **Extra Usage Pricing**: *Enter Manually*
-   **Item Price/Percent**: *100*

|
|Contract template created on the [Contract Templates](CT_20_20_00.md) \(CT202000\) form|-   **Duration**: *1 Year*
-   **Billing Period**: *Month*

|-   **Duration**: *1 Year*
-   **Billing Period**: *Month*
-   **Case Count Item**: *CASENUMBER*

|

**Note:** The table lists only the key settings. You would fill in settings that are not mentioned in the table at your discretion.

**Parent topic:**[Tracking Contract Usage](../UserGuide/Contracts_Contract_Usage_Mapref.md)

