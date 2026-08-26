# To Disassemble a Stock Kit {#_f9b73679-7bae-41a5-aa1a-fed929d99d4d .task}

After you have assembled a stock kit you can disassemble it \(for example, if any of the stock components are expired\) by using the [Kit Assembly](IN_30_70_00.md) \(IN307000\) form, as described in this topic.

**Attention:** To open any form, you can navigate to it or search for it \(by its name or by its form ID without periods\).

## Before You Proceed { .section}

Make sure that the reason code you want to use for this disassembly has been created on the [Reason Codes](CS_21_10_00.md) \(CS211000\) form.

## To Disassemble a Stock Kit { .section}

1.  Open the [Kit Assembly](../Shared/../UserGuide/IN_30_70_00.md) \(IN307000\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  On the form toolbar, click **Add New Record**.
3.  In the Summary area, do the following:
    1.  In the **Type** box, select *Disassembly*.
    2.  In the **Date** box, make sure that the correct business date is specified.
    3.  In the **Post Period** box, make sure that the correct period for posting the transaction is specified.
    4.  In the **Inventory ID** box, select the stock kit you want to disassemble.
    5.  In the **Revision** box, select the revision of the kit specification that you want to use to disassemble the kit. The system will insert information about stock and non-stock components on the corresponding tabs of the form.
    6.  In the **Reason Code** box, select reason code used to record costs for the kit disassembling operation.
    7.  In the **Warehouse** box, select warehouse where the disassembly is performed.
    8.  In the **Quantity** box, type the quantity of kit units you want to disassemble.
    9.  If needed, in the **Description** box, type a brief description of the disassembly.
4.  On the form toolbar, click **Save** to save your changes.
5.  On the form toolbar, click **Release** to release the disassembly document.
6.  On the **Financial** tab, make sure that the system has added the number of the general ledger batch with transactions.

After you have disassembled a stock kit, the system has returned all stock components to their original locations in the applicable warehouses.

**Parent topic:**[Managing Inventory Kits](../UserGuide/IN__mng_Managing_Kit_Assemblies.md)

