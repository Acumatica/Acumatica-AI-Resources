# DR DACs: Transactional Data {#_efc03089-d39a-4db8-a385-a7aae8ce83d9 .concept}

In this topic, you can find an overview of the DACs that provide transactional data.

## Revenue Recognition Schedules { .section}

A user can specify a deferral code in the document line \(that is, in a [ARTran](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARTran) or [APTran](https://help.acumatica.com/dacBrowser/PX.Objects.AP/APTran) record\), which indicates that the sales amount associated with the line should not be posted directly to the account when the invoice or bill is released. Instead, it will be deferred and then recognized according to the schedule and the rules defined by the deferral code.

Revenue recognition schedules in Acumatica ERP are stored at the following levels:

-   Summary data: In the [DRSchedule](https://help.acumatica.com/dacBrowser/PX.Objects.DR/DRSchedule) DAC
-   Inventory item data: In the [DRScheduleDetail](https://help.acumatica.com/dacBrowser/PX.Objects.DR/DRScheduleDetail) DAC
-   Deferral or recognition transaction data: In the [DRScheduleTran](https://help.acumatica.com/dacBrowser/PX.Objects.DR/DRScheduleTran) DAC

Schedule components \(DRScheduleDetail records\) logically correspond to the recognition components of an inventory item \([INComponent](https://help.acumatica.com/dacBrowser/PX.Objects.IN/INComponent)\). However, if the item is not a multiple-deliverable arrangement, it has no INComponent records, and its only revenue component is the item itself \([InventoryItem](https://help.acumatica.com/dacBrowser/PX.Objects.IN/InventoryItem)\).

## DRSchedule { .section}

A [DRSchedule](https://help.acumatica.com/dacBrowser/PX.Objects.DR/DRSchedule) record represents a revenue recognition schedule, which is also called deferral schedule. The primary purpose of a DRSchedule record is to link the associated deferral components \(which are stored in the [DRScheduleDetail](https://help.acumatica.com/dacBrowser/PX.Objects.DR/DRScheduleDetail) DAC\) and their transactions \(which are stored in the [DRScheduleTran](https://help.acumatica.com/dacBrowser/PX.Objects.DR/DRScheduleTran) DAC\) with the original invoice line \(which is stored in the [ARTran](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARTran) or [APTran](https://help.acumatica.com/dacBrowser/PX.Objects.AP/APTran) DAC\).

A deferral schedule is usually created automatically upon release of an invoice with document line that have a deferral code specified \(in the DeferredCode field of the ARTran or APTran DAC\). However, a user can also create a custom deferral schedule directly on the [Deferral Schedule](../UserGuide/DR_20_15_00.md) \(DR201500\) form. Therefore, the connection between ARTran or APTran and DRSchedule is optional. For details about custom schedules, see [Custom Schedules](#_01efc05b-c7aa-4cba-a695-e079b4152171).

## DRScheduleDetail { .section}

A schedule can have any number of components, which are stored in the [DRScheduleDetail](https://help.acumatica.com/dacBrowser/PX.Objects.DR/DRScheduleDetail) DAC. The DAC has the following key fields:

-   ScheduleID: A reference to the parent deferral schedule.
-   ComponentID: A reference to the inventory item or item component from the original document line in [ARTran](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARTran) or [APTran](https://help.acumatica.com/dacBrowser/PX.Objects.AP/APTran). If a line does not have an inventory item associated with it, its corresponding schedule component will also have an empty ComponentID.
-   DetailLineNbr: An additional key that is necessary because a deferral schedule in ASC 606 mode can have multiple lines with the same ComponentID.

Additionally, the DAC has the following fields to hold amounts:

-   TotalAmt: The total amount of revenue associated with the component.
-   DefTotal: The total deferred amount to be recognized by recognition transactions \(which are stored in the [DRScheduleTran](https://help.acumatica.com/dacBrowser/PX.Objects.DR/DRScheduleTran) DAC\) associated with the component. This amount is equal to TotalAmt or *0* if the component is a residual multiple deliverable arrangement \(MDA\) component.
-   DefAmt: The remaining deferred amount to be recognized by recognition transactions. Initially, the amount is equal to DefTotal. The amount is decreased after the posting of each individual recognition transaction \(which is stored in the DRScheduleTran record\) associated with the component.

For the deferral components that belong to the same schedule, the sum of the amounts in the TotalAmt field is always equal to the DRSchedule.OrigLineAmt amount.

The DefCodeID field carries over the reference to the deferral code \(which is stored in the [DRDeferredCode](https://help.acumatica.com/dacBrowser/PX.Objects.DR/DRDeferredCode) DAC\) from the original invoice line \(which is stored in the ARTran DAC\) and defines the recognition schedule structure for the component's recognition transactions.

Typically, in ASC 605 mode, a deferral schedule will have only one DRScheduleDetail, with its ComponentID field equal to ARTran.InventoryID of the original document line. However, it can have multiple components in the following cases:

-   When additional DRScheduleDetail components are added manually by the user to a custom deferral schedule. For details about custom schedules, see [Custom Schedules](#_01efc05b-c7aa-4cba-a695-e079b4152171).
-   When the original document line \(which is stored in the ARTran DAC\) references a MDA deferral code and a bundle inventory item.

Similarly, in ASC 606 mode, a user can manually override DRScheduleDetail components. In this case, each original document line with a multiple deliverable arrangement deferral code can create multiple DRScheduleDetail components.

The components have one of the following statuses:

-   *Draft*: The component can be edited or deleted. Its transactions \(which are stored in the DRScheduleTran DAC\) can be added, edited, or deleted, but they cannot be recognized.
-   *Open*: The component is read-only. Its unrecognized transactions can be added, edited, or deleted. Its recognized transactions are read-only.
-   *Closed*: The component is read-only. All of its transactions are recognized and cannot be added, modified, or deleted.

## DRScheduleTran { .section}

Semantically, there are two main types of deferred revenue transactions \(which are stored in [DRScheduleTran](https://help.acumatica.com/dacBrowser/PX.Objects.DR/DRScheduleTran)\) in Acumatica ERP: deferral transactions and recognition transactions.

For non-draft schedules, both types of transactions are created automatically upon the release of the invoice line \(that is, [ARTran](https://help.acumatica.com/dacBrowser/PX.Objects.AR/ARTran) or [APTran](https://help.acumatica.com/dacBrowser/PX.Objects.AP/APTran) record\). The process differs slightly for draft schedules \(including custom schedules\), as described in [Draft Deferral Schedules](#_d5db5ea5-438c-46d3-a252-e62b186cabc9) and [Custom Schedules](#_01efc05b-c7aa-4cba-a695-e079b4152171).

## Draft Deferral Schedules {#_d5db5ea5-438c-46d3-a252-e62b186cabc9 .section}

The system creates a draft deferral schedule when a user clicks **View Deferrals** on the toolbar of the **Details** tab of the [Invoices and Memos](../UserGuide/AR_30_10_00.md) \(AR301000\) form after selecting an invoice line on the tab.

By using draft schedules, before the release of the source document, the user can edit the deferred revenue components and transactions, such as change amounts, or the number of transactions that are automatically defined by the deferral code.

Draft schedules differ from non-draft deferral schedules \(which are created by the system upon document release\) in the following key regards:

-   The DRSchedule.IsDraft field of the draft schedule is set to `true` upon creation.
-   The draft schedule components \(which are stored in [DRScheduleDetail](https://help.acumatica.com/dacBrowser/PX.Objects.DR/DRScheduleDetail)\) are created with DRScheduleDetail.Status set to the value of DRScheduleStatus.Draft.
-   The draft schedule components are created automatically depending on the deferral code \(which is stored in ARTran.DeferredCode or APTran.DeferredCode\) and inventory item \(which is stored in ARTran.InventoryID or APTran.InventoryID\) of the invoice line. However, the user can edit the set of these components.
-   The components cannot be released manually from the [Deferral Schedule](../UserGuide/DR_20_15_00.md) \(DR201500\) or [Release Schedules](../UserGuide/DR_50_30_00.md) \(DR503000\) form.
-   All schedule components are released automatically when the source invoice line \(which is stored in ARTran or APTran\) is released.

## Custom Schedules {#_01efc05b-c7aa-4cba-a695-e079b4152171 .section}

A custom schedule is created when a user manually adds a schedule on the [Deferral Schedule](../UserGuide/DR_20_15_00.md) \(DR201500\) form. By using a custom schedule, a user can attach deferral schedules to the lines of documents that have already been released.

Custom schedules differ from non-custom deferral schedules in the following regards:

-   Both DRSchedule.IsDraft and DRSchedule.IsCustom are set to true when a custom schedule is created.
-   A user can edit a custom schedule \([DRSchedule](https://help.acumatica.com/dacBrowser/PX.Objects.DR/DRSchedule)\) on the [Deferral Schedule](../UserGuide/DR_20_15_00.md) form.
-   The set of schedule components and recognition transactions of a custom schedule is completely determined by the user on the [Deferral Schedule](../UserGuide/DR_20_15_00.md) form, regardless of the deferral code in a document line.
-   The user can manually release custom schedule components \([DRScheduleDetail](https://help.acumatica.com/dacBrowser/PX.Objects.DR/DRScheduleDetail)\) on the [Deferral Schedule](../UserGuide/DR_20_15_00.md) \(DR201500\) or [Release Schedules](../UserGuide/DR_50_30_00.md) \(DR503000\) form.
-   Because the referenced document line \(if any\) has already been released, no credit line deferral transaction is created for the custom schedule.

**Parent topic:**[Reviewing Deferred Revenue DACs](../DeveloperGuide/DACOverview_DR_Mapref.md)

