# Subaccounts: Example of Planning Subaccount Identifiers {#_cc6ca207-e34d-4a55-9b4e-9d25b0286ae0 .concept}

Suppose that one company—North Serpent Company, with stores in the mountainous areas of California and Nevada—sells skis and snowboards and offers rental services. This company plans to implement Acumatica ERP and is planning its general ledger functionality, including the accounts and subaccounts it will use.

Currently, each sale transaction of a ski or a snowboard is recorded to sales account *40000*. At the close of each period, however, management would like to know the total sales on skis in the California stores and in the Nevada stores and the total sales on snowboards in the California stores and in the Nevada stores, as well as the total rental of snowboards in the California stores and in the Nevada stores and the total rental of skis in the California stores and in the Nevada stores.

One approach the company initially considered was replacing the *40000* sales account with eight more specific accounts in Acumatica ERP, as shown below:

-   *40100*: Ski sales in a Nevada store
-   *40200*: Snowboard sales in a Nevada store
-   *40300*: Ski rentals in a Nevada store
-   *40400*: Snowboard rentals in a Nevada store
-   *40500*: Ski sales in a California store
-   *40600*: Snowboard sales in a California store
-   *40700*: Ski rentals in a California store
-   *40800*: Snowboard rentals in a California store

One of the implementation consultants determined that by using subaccounts, the company could meet its needs for tracking and reporting while also reducing entry errors and the need for users to memorize strings of account numbers. By implementing subaccounts, North Serpent Company could answer such questions as the following:*What is the total sales amount for snowboards in both stores? What is our revenue from rental services?* Additionally, because stores could record expenses to the appropriate subaccounts, management would have the ability to analyze profit by stores, by cost centers, and by product type.

## Planning of Subaccount Identifiers { .section}

In Acumatica ERP, subaccounts are referred to by their identifiers. Because subaccounts are used primarily to give internal management information it can use for analysis and planning, greater flexibility is allowed for their design, and identifiers can be segmented. Segmented identifiers with meaningful, recognizable segment values reduce the input error rate, because they are easier for employees to enter. For the North Serpent Company, the implementation consultants decided to define a three-segment subaccount in the following way:

-   First Segment \(Company Division\): *NV* \(Nevada\) and *CA* \(California\)
-   Second Segment \(Profit Center\): *RENT* \(rentals\) and *SALE* \(sales\)
-   Third Segment \(Product Type\): *SK* \(skis\) and *SB* \(snowboards\)

All sales and rental transactions can then be posted to the sales account *40000* with the following subaccounts:

-   *NV-SALE-SK*: To enter sales amounts on skis in Nevada
-   *NV-SALE-SB*: To enter sales amounts on snowboards in Nevada
-   *NV-RENT-SK*: To enter amounts received on ski rentals in Nevada
-   *NV-RENT-SB*: To enter amounts received on snowboard rentals in Nevada
-   *CA-SALE-SK*: To enter sales amounts on skis in California
-   *CA-SALE-SB*: To enter sales amounts on snowboards in California
-   *CA-RENT-SK*: To enter amounts received on ski rentals in California
-   *CA-RENT-SB*: To enter amounts received on snowboard rentals in California

**Parent topic:**[Subaccounts](../ImplementationGuide/config_Subaccounts_Mapref.md)

