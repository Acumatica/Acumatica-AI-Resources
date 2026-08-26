# Recognition of Revenue and Expenses {#_b536a5d5-8b8c-476d-9341-35143d2e06a4 .concept}

In Acumatica ERP, a deferral code, which is assigned to a stock item on the **Deferral** tab on the [Stock Items](IN_20_25_00.md) \(IN202500\) form or to a non-stock item on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) from, defines how the revenue or expenses will be recognized. If no deferral code is assigned to an item in a particular document, the revenue or expenses will be recognized immediately and no deferral schedule will be generated.

## Assignment of Deferral Codes to Non-Stock Items {#section_bsb_3jv_vxb .section}

You can assign a deferral code to a needed non-stock item on the **Deferral** tab of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, so that when you enter that non-stock item in a detail line of a document, the system inserts the deferral code in the **Deferral Code** column of that line. If a deferral code is not assigned to a non-stock item, or if you want to override the deferral code that is filled in by the system, you can select a required one in the **Deferral Code** column in each required line when you enter a document.

When such a document is released, the system will generate a particular recognition schedule for each line of a document that contains a deferral code.

## Recognition of Revenue {#section_zqb_3jv_vxb .section}

When you enter an invoice on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, each time you select an item in a line on the **Document Details** tab, the deferral code automatically appears in the **Deferral Code** column if a deferral code has been previously defined for the stock item or non-stock item in its settings \(if not, you can still select a deferral code in the required document line manually\). When an invoice requiring deferral is released, the system generates one deferral schedule for each deferral code in the document. If multiple lines have the same code, one schedule for all lines with the code is generated.

A deferral schedule contains the list of recognition transactions, each of which the system releases in the specified financial period to recognize a portion of the revenue. You can use the [Deferral Schedule](DR_20_15_00.md) \(DR201500\) form to view the schedules and adjust them manually if needed. As the revenues are earned, they are moved from the balance sheet liability account \(the deferral account\) to an income account \(the sales account specified in the invoice\) in multiple recognition transactions.

If no items on an invoice require deferral \(that is, if no deferral codes are defined for the items\), the total sales amount of the invoice is recorded to the revenue account upon release of the invoice; that is, the revenue is recognized during the post period. If some items on the invoice require deferral, revenue from the sale of other items \(those with no deferral code assigned\) is still recognized immediately.

## Recognition of Expenses {#section_drb_3jv_vxb .section}

Generally, for purchased items, costs or expenses are recognized immediately on release of the appropriate bills. Deferrals may be required for services, warranties, and other expenses that are usually defined in the system as non-stock items. When you enter a bill by using the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form and add a line for a non-stock item with a deferral code assigned, the deferral code appears in the **Deferral Code** column by default \(if a deferral code is not specified in the non-stock item settings, you can still select a deferral code in the document line manually\). Once the bill is released, the system generates the schedules automatically. The system generates a schedule for each deferral code in the document, and multiple items can be in one schedule.

You can review and manually edit the schedule by using the [Deferral Schedule](DR_20_15_00.md) form. The schedule shows how many transactions expenses will be recognized in and when these transactions will occur. Expenses are deferred to a balance sheet asset account \(deferral account\) until the expenses are used up or expired. At that time, they are moved to the expense account specified in the bill.

## Manual Running of a Recognition Schedule {#section_grb_3jv_vxb .section}

You can generate recognition transactions for both revenue and expenses on the [Run Recognition](DR_50_10_00.md) \(DR501000\) form. Each time you run a schedule, only one recognition transaction is released and posted—even if, according to the schedule, multiple such transactions for a schedule are due.

You use the [Deferral Transaction Summary](DR_40_20_00.md) \(DR402000\) form to view the transactions that have been posted. Also, on the [Deferral Schedule](DR_20_15_00.md) form, you can see which deferral transactions have been posted and which have yet to be posted.

## Posting of Recognition Transactions {#section_esb_3jv_vxb .section}

Once you have released a document that requires deferrals, the system generates an appropriate deferral schedule. This schedule contains the list of recognition transactions, each of which needs to be posted to a particular financial period. To release and post these recognition transactions, you need to run the recognition process on the [Run Recognition](DR_50_10_00.md) \(DR501000\) form manually, or to set up an automatic schedule \(as described in [Automated Processing: General Information](SA_Scheduling_Automated_Processing_GeneralInfo.md)\).

On the [Run Recognition](DR_50_10_00.md) form, you select the required date and deferral code and, in the table, the transaction to be posted. Note that each time you run the recognition process, only one recognition transaction is released, even if multiple transactions are due according to the appropriate schedule.

**Tip:** The recognition transactions can be released and posted to open financial periods only. To post recognition transactions to closed financial periods, you need to clear the **Restrict Access To Closed Periods** check box on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form.

## Enabling of Parallel Processing {#section_jrb_3jv_vxb .section}

To avoid performance issues on the [Run Recognition](DR_50_10_00.md) \(DR501000\) form when loading deferral schedule records to the table and recognizing the loaded records by clicking **Process** or **Process All**, a user with the administrator rights can enable parallel processing. Parallel processing will increase the speed of these processes.

**Attention:** Parallel processing is not supported for shared SAAS environment.

To enable parallel processing on all the forms that support the parallel processing, including the [Run Recognition](DR_50_10_00.md) form, do the following:

1.  Modify the following parameters in the `<appSettings>` section of the `web.config` file as shown in the following code example.

    ``` {#codeblock_mrb_3jv_vxb}
    <add key="ParallelProcessingDisabled" value="false" />  
        <add key="ParallelProcessingBatchSize" value="1000" />
        <add key="EnableAutoNumberingInSeparateConnection" value="false" />
    ```

2.  Optional but strongly recommended: In the `<px.core>` section, increase the `Timeout` values to `600` by adding the following attributes to the `<px.core/pxdatabase/providers/add>` node.

    ``` {#codeblock_nrb_3jv_vxb}
    queryTimeout="600"
    transactionQueryTimeout="600"
    ```

    For example, see the following code.

    ``` {#codeblock_prb_3jv_vxb}
    <px.core>
      <pxdatabase defaultProvider="PXSqlDatabaseProvider">
        <providers>
          <add name="PXSqlDatabaseProvider" type="PX.Data.PXSqlDatabaseProvider, PX.Data"
          connectionStringName="ProjectX" companyID="" secureCompanyID="False"
          queryTimeout="600" transactionQueryTimeout="600"/>
          ...
      </pxdatabase
    </px.core>
    ```

3.  Save the `web.config` file. This will automatically restart the website.

**Parent topic:**[Processing Deferrals](../UserGuide/DR__con_Processing_of_Deferrals.md)

