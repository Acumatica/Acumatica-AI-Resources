# Service Contracts: Related Inquiry Forms {#_f489e5c4-fed2-463a-b836-dace0bd3d4ce .concept}

In the following sections, you can find details about the inquiry forms you may want to review to gather information about processing the service contracts.

**Attention:** If you don’t see a particular report or form that is described, you may have signed in to the system with a user account that doesn’t have access rights to the report or form. Contact your system administrator to obtain access to any needed reports or forms.

## Searching for a Billing Document { .section}

On the [Service Contract Billing Batches](FS_30_61_00.md) \(FS306100\) form, you can find the list of billing documents generated for the service contracts with the following billing options: *End-Period Plus*, *Beginning-Period Plus* and *Beginning-Period Fixed*. These options are specified in the **Billing Type** box on the **Summary** tab of the [Service Contracts](https://msk-app-001.int.adds.acumatica.com/tw-2022r1/(W(28))/Wiki/ShowWiki.aspx?wikiname=HelpRoot_FormReference&PageID=11932f17-56fe-4a4e-8b66-e839bb21f402) \(FS305700\) or [Route Service Contracts](https://msk-app-001.int.adds.acumatica.com/tw-2022r1/(W(28))/Wiki/ShowWiki.aspx?wikiname=HelpRoot_FormReference&PageID=9036b4a6-98fe-42dd-bf5d-f1808e6bb122) \(FS300800\) form.

## Reviewing Appointments Generated from a Service Contract { .section}

To review the appointments that have been generated for a particular service contract, on the [Service Contracts](FS_30_57_00.md) \(FS305700\) form, on the More menu \(under **Inquiries**\), click **Appointment History**. The [Appointment Summary](FS_40_01_00.md) \(FS400100\) form opens with the appointments generated for the selected service contract.

You can also open the [Appointment Summary](FS_40_01_00.md) form directly. In the Selection area of the form, specify a customer, a service contract, and other needed selection criteria. As a result, the system displays the list of appointments \(if any\) in the table below.

## Reviewing Service Orders Generated from a Service Contract { .section}

To review the service orders that have been generated for a particular service contract, on the [Service Contracts](FS_30_57_00.md) \(FS305700\) form, on the More menu \(under **Inquiries**\), click **Service Order History**. The [Service Order History](FS_40_03_00.md) \(FS400300\) form opens with the service orders generated for the selected service contract.

You can also open the [Service Order History](FS_40_03_00.md) form directly. In the Selection area of the form, specify a customer, a service contract, and other needed selection criteria. As a result, the system displays the list of service orders \(if any\) in the table below.

## Generating a Service Contract Quote { .section}

You can prepare the service contract quote report, which contains the forecast data related to the service contract by clicking **Forecast &amp; Print Quote** on the More menu on the [Service Contracts](FS_30_57_00.md) \(FS305700\) form \(or on the [Route Service Contracts](FS_30_08_00.md) \(FS300800\) form\). Once you have clicked the command, the system opens a dialog box in which you specify the start and end date for forecasting. Then the system generates the *Service Contract Quote* report, and opens it in a print-friendly form.

The quote report shows the expected quantity of visits that should occur during the forecast contract duration, the price for each scheduled visit, the total price of all forecast visits, and the expected number of billing documents to be generated during the contract duration. \(Depending on the billing type specified for the service contract, some of these settings may not be shown in the report.\) Note that the taxes and discounts are not considered in the quote report.

## Emailing a Service Contract Quote { .section}

You can email the service contract quote report to the customer by clicking **Email Quote** on the More menu on the [Service Contracts](FS_30_57_00.md) form \(or on the [Route Service Contracts](FS_30_08_00.md) \(FS300800\) form\).

**Note:** The **Email Quote** command is available if the selected service contract has at least one service contract quote report generated.

You can also email the service contract quote report by clicking **Send** on the toolbar of the printable report form.

The quote report can be emailed immediately after generation or at any later time.

**Note:** For service contracts with billing type settings other than the *At Time of Service* billing type and the *Contract* option selected in the **Take Prices From** box on the **Summary** tab of the [Service Contracts](FS_30_57_00.md) \([Route Service Contracts](FS_30_08_00.md)\) form, for the quote report, the system uses the prices specified on the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, in the **Default Price** box of the **Price/Cost** tab. Thus, the prices in the quote reports may vary during the contract duration.

## Viewing Customer's Contract Schedules { .section}

On the More menu \(under **Inquiries**\) of the [Customers](AR_30_30_00.md) \(AR303000\) form, click **Contract Schedule Summary**. The [Contract Schedule Summary](FS_40_11_00.md) \(FS401100\) form opens. On this form, you can view the list of contract schedules registered in the system for a selected customer.

**Parent topic:**[Creating Service Contracts](../UserGuide/EquipMgmt_Service_Contracts_Mapref.md)

