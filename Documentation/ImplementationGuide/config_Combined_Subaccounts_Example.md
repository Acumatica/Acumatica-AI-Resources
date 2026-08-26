# Combined Subaccounts: Example of a Subaccount Structure {#_d5ea434f-bf0f-4e65-94cb-421a808f901f .concept}

This topic presents an example of a structure a company plans to use to structure its subaccounts. If you have not yet determined the structure your company will use, it may give you ideas about a structure that would provide information your company can use to make business decisions. This example also demonstrates how one of the subaccount masks can be defined based upon the subaccount structure.

## Defining the Subaccount Structure { .section}

Suppose that the North Serpent company uses the *XX-XX-XXXX* subaccount structure, with the segments used as follows:

1.  *XX*: A segment designating the applicable branch. Possible values are *MN* \(a branch on Main Street\), *BW* \(a branch on Broadway Street\), *CA* \(a branch on California Street\), and *00* \(the branch is not applicable\).
2.  *XX*: A segment designating the product line. Possible values are *B1*, *B2*, *B3*, and *00* \(no product line is applicable\).
3.  *XXXX*: A segment to specify the department involved. Possible values are *DEVP*, *PRDC*, and *0000* \(a non-specific value indicating that no department is involved\).

## Defining the Subaccount Masks { .section}

Further suppose that the company buys specific services required for the *B1* product line from the vendor Dekatlon Inc. The company's default expense subaccounts involved in this transaction \(which have been specified for the applicable entities in Acumatica ERP\) are listed below, along with the characters used to designate the respective subaccount or a segment of the subaccount in the subaccount mask:

-   *00-B1-PRDC*: For the vendor location \(*L*\)
-   *BW-00-DEVP*: For the employee monitoring the services provided by the vendors \(*E*\)
-   *CA-00-0000*: For the company's receiving branch \(*C*\)
-   *00-B1-0000*: For the non-stock item featuring the service provided \(*I*\)

In the **Combine Expense Sub. from** box on the [Accounts Payable Preferences](../UserGuide/AP_10_10_00.md) \(AP101000\) form, the combined subaccount would be specified as follows: *EE-II-LLLL*. Here, *EE* means that the value for the first segment is copied from the first segment of the default subaccount associated with the employee. *II* means that the value for the second segment is copied from the second segment of the default subaccount associated with the inventory item. *LLLL* means that the value for the third segment is copied from the third segment of the subaccount associated with the vendor's default location.

The resulting subaccount is *BW-B1-PRDC*. For the particular line of the AP bill for the purchase of these services from this vendor—that is, the **Subaccounts** column of the **Details** tab on the [Bills and Adjustments](../UserGuide/AP_30_10_00.md#) \(AP301000\) form—the system inserts the automatically combined subaccount of *BW-B1-PRDC*.

**Parent topic:**[Automatically Combined Subaccounts](../ImplementationGuide/config_Combined_Subaccounts_Mapref.md)

