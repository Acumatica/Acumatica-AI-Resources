# Bill with Combined Subaccounts: General Information {#_4a1c5551-1e8a-4d45-8207-5a489058c389 .concept}

If the *Subaccounts* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md#) \(CS100000\) form and subaccounts have been configured, you can enter and process AP bills in which lines are classified by different subaccounts. To speed up the creation of these bills, you can set up a subaccount mask that determines how subaccounts are combined in accounts payable documents, as described in [Combined Subaccounts: General Information](../ImplementationGuide/config_Combined_Subaccounts_GeneralInfo.md).

## Learning Objectives {#section_sb3_njv_vxb .section}

In this chapter, you will learn how to do the following:

-   Process an AP bill when combined subaccounts have been configured for AP documents
-   Review a report that is broken down by subaccounts

## Applicable Scenarios {#section_ub3_njv_vxb .section}

You create an AP bill manually when you receive an invoice from a vendor. You then release the bill that you have created and complete its processing in the system.

If subaccounts have been configured in your system, these bills have to contain subaccounts in their lines. If a subaccount mask has been specified for AP documents, the system inserts these subaccounts automatically.

## Processing of Bills with Combined Subaccounts {#section_xb3_njv_vxb .section}

In an AP document that is entered in the system, multiple subaccounts can be involved, such as the following:

-   A subaccount associated with the item \(if applicable\) specified in the bill line
-   A subaccount associated with the owner of the document
-   A subaccount associated with the vendor specified in the bill

With the combined subaccount functionality, the system inserts into each line a particular subaccount that is a combination of the segment values specified in the mask—that is, the system uses the subaccount mask to compose a new subaccount identifier consisting of the segment values of each of the specified subaccounts. When the AP bill is released, the system tracks each line’s extended price in the subaccount specified for the line.

With combined subaccounts configured, when you enter an AP bill on the [Bills and Adjustments](AP_30_10_00.md#) \(AP301000\) form, you perform the same steps as you do when you create an AP bill that does not involve subaccounts. The system inserts the default subaccount for each line of the document according to the mask that is specified on the [Accounts Payable Preferences](AP_10_10_00.md#) \(AP101000\) form. These subaccounts can be overridden. For details on processing an AP bill, see [AP Bills: General Information](Finance_ProcessingAPBills_GeneralInfo.md).

**Parent topic:**[Processing AP Bills with Combined Subaccounts](../UserGuide/Finance_APBills_w_Combined_Subacc_Mapref.md)

