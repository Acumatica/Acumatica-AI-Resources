# To Synchronize Credit Cards from Acumatica Payments to Acumatica ERP {#_1602bb80-6bec-4370-a400-c57c5fd15784 .task}

When you start working with the [Synchronize Cards](CA_20_60_00.md) \(CA206000\) form, the table on this form is empty. When you load credit card data to the form, the results are shown in the table, where you can work with the data and save it. You can then import all of the lines of data or only the lines you select.

## Before You Proceed {#section_srs_4jv_vxb .section}

Make sure that the *Integrated Card Processing* and *Acumatica Payments* features have been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. With these features enabled, the [Synchronize Cards](CA_20_60_00.md) form appears in the system.

## To Synchronize Credit Cards {#section_urs_4jv_vxb .section}

1.  Open the [Synchronize Cards](CA_20_60_00.md) \(CA206000\) form.
2.  In the **Processing Center** box of the Summary area, select a processing center with the *Acumatica Payments Plug-In* set up.
3.  Optional: If you want to load all the credit cards to the table for possible processing, including the expired cards, select the **Load Expired Card Data** check box.
4.  On the form toolbar, click **Load Card/Account Data**.

    The system has matched the customers with their profiles in the processing center.

5.  In the table, review the rows; if you do not want to import all of the listed customer-specific payment methods, select the Included check boxes \(the unlabeled column with check boxes\) in the rows of the customer-specific payment methods you want to import into the system.
6.  On the form toolbar, do one of the following:
    -   To import all the rows in the table into the system, click **Process All**.
    -   To import the selected rows in the table into the system, click **Process**.

**Parent topic:**[Processing Credit Card Payments](../UserGuide/AR__MNG_ProcessingCCPayments.md)

