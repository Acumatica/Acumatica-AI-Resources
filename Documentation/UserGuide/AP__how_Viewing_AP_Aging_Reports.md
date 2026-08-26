# To Run AP Aging Reports {#_f40ed477-c0a3-4fd4-a769-7d132c175264 .task}

You can use multiple AP aging reports, depending on such factors as which currency you would like to view outstanding and past due balances in, and whether balances will be broken down by days outstanding or days past due. This topic provides instructions for using the following reports:

-   [AP Aging](AP_63_10_00.md) \(AP631000\)
-   [AP Aging MC](AP_63_11_00.md) \(AP631100\)
-   [AP Coming Due](AP_63_15_00.md) \(AP631500\)
-   [AP Coming Due MC](AP_63_16_00.md) \(AP631600\)
-   [AP Aged Period-Sensitive](AP_63_05_00.md) \(AP630500\)

## To Run the AP Aging Report in the Base Currency {#1 .section}

1.  Open the [AP Aging](../Shared/../UserGuide/AP_63_10_00.md) \(AP631000\) report.
2.  On the **Report Parameters** tab, do the following:
    1.  In the **Report Format** box, select one of the following options:
        -   *Summary*: To view the past due balances on the selected aging date.
        -   *Detailed*: To view the past due documents on the selected aging date.
        -   *Detailed with Retainage*: To view past due documents and their unreleased retainage on the selected aging date.
    2.  In the **Company/Branch** box, select the company or branch for which you want to view information, or leave this box empty to view information on all branches.
    3.  In the **Vendor Class** box, select the vendor class for which you want to view information, or leave this box empty to view information on all vendor classes.
    4.  In the **Vendor** box, select the vendor you want to view information for, or leave this box empty to view information on all vendors.
    5.  In the **Age as of Date** box, select the date the system will use to calculate the aging categories for documents.
3.  On the form toolbar, click **Run Report**.

    The report displays the list of vendors with past-due balances. Balances are broken down by days past due on the specified date, and all amounts are displayed in the base currency.


## To Run the Multicurrency AP Aging MC Report {#2 .section}

1.  Open the [AP Aging MC](../Shared/../UserGuide/AP_63_11_00.md) \(AP631100\) report.
2.  On the **Report Parameters** tab, do the following:
    1.  In the **Report Format** box, select one of the following options:
        -   *Detailed*: To view the past due documents on the selected aging date.
        -   *Summary*: To view the past due balances on the selected aging date.
    2.  In the **Company/Branch** box, select the company or branch for which you want to view information, or leave this box empty to view information on all branches.
    3.  In the **Vendor Class** box, select the vendor class for which you want to view information, or leave this box empty to view information on all vendor classes.
    4.  In the **Vendor** box, select the vendor to view information for, or leave this box empty to view information on all vendors.
    5.  In the **Age as of Date** box, select the date the system will use to calculate the aging categories for documents.
3.  On the form toolbar, click **Run Report**.

    The report displays the list of the vendors with past-due balances, which are broken down by days past due on the specified aging date. The amounts are displayed in the documents' currencies and in the base currency.


## To Run the AP Coming Due Report in the Base Currency {#3 .section}

1.  Open the [AP Coming Due](../Shared/../UserGuide/AP_63_15_00.md) \(AP631500\) report.
2.  On the **Report Parameters** tab, do the following:
    1.  In the **Report Format** box, select one of the following options:
        -   *Detailed*: To view outstanding documents on the selected aging date.
        -   *Summary*: To view outstanding balances on the selected aging date.
    2.  In the **Company/Branch** box, select the company or branch for which you want to view information, or leave this box empty to view information on all branches.
    3.  In the **Vendor Class** box, select the vendor class for which you want to view information, or leave this box empty to view information on all vendor classes.
    4.  In the **Vendor** box, select the vendor to view information for, or leave this box empty to view information on all vendors.
    5.  In the **Date** box, select the date the system will use to calculate the aging categories for documents.
3.  On the form toolbar, click **Run Report**.

    The report displays the list of the vendors with outstanding balances, which are broken down by days outstanding with respect to the specified aging date. The amounts are displayed in the base currency.


## To Run the Multicurrency AP Coming Due Report {#4 .section}

1.  Open the [AP Coming Due MC](../Shared/../UserGuide/AP_63_16_00.md) \(AP631600\) report.
2.  On the **Report Parameters** tab, do the following:
    1.  In the **Report Format** box, select one of the following options:
        -   *Detailed*: To view outstanding documents on the selected aging date.
        -   *Summary*: To view outstanding balances on the selected aging date.
    2.  In the **Company/Branch** box, select the company or branch for which you want to view information, or leave this box empty to view information on all branches.
    3.  In the **Vendor Class** box, select the vendor class for which you want to view information, or leave this box empty to view information on all vendor classes.
    4.  In the **Vendor** box, select the vendor to view information for, or leave this box empty to view information on all vendors.
    5.  In the **Date** box, select the date the system will use to calculate the aging categories for documents.
3.  On the form toolbar, click **Run Report**.

    The report displays the list of the vendors with outstanding balances, which are broken down by days outstanding with respect to the specified aging date. The amounts are displayed in the documents' currencies and in the base currency.


## To Run the AP Aged Period Sensitive Report {#5 .section}

1.  Open the [AP Aged Period-Sensitive](AP_63_05_00.md) \(AP630500\) report.
2.  In the **Financial Period** box, select a financial period. The system uses the selected period to calculate the aging categories for the documents.
3.  In the **Report Format** box, select one of the following options:
    -   *Detailed*: To view past due documents on the last day of the selected financial period
    -   *Summary*: To view past due balances on the last day of the selected financial period
4.  Select the vendor class for which you want to view information, or leave the **Vendor Class** box blank to view information on all the classes.
5.  Click **Run Report**.

    The report lists the vendors with past due balances, which are arranged by days past due on the last day of the specified period. All the amounts are displayed in the base currency.


**Parent topic:**[Creating a Vendor](../UserGuide/Vendor_Mapref.md)

