# Allocation Rules: Examples of Using Account and Subaccount Masks for Allocations {#_8b54f2dd-8925-4fd8-a2ba-f938a2402352 .concept}

When you create an allocation rule on the [Allocations](../UserGuide/GL_20_45_00.md) \(GL204500\) form, you need to specify the source accounts \(and subaccounts, if applicable\) from which amounts will be distributed, and the destination accounts \(and subaccounts\) to which amounts will be distributed. To select the source accounts and subaccounts by groups, you can use grouping masks.

## Examples of Allocation Masks { .section}

Suppose that all the accounts have five-character identifiers, and all the marketing expense accounts start with *51*. By entering `(51___)` in the **Account** column, you can select the accounts *51001*, *51022*, *51135*, and so on.

As another example, suppose that subaccounts are segmented in the following way: a two-letter country code \(*US*, *FR*, and *DE*\), a two-letter department code \(*AD*, *PR*, *SL*, *DV*, and *DP*\), and a three-letter product code \(*001*,*002*, ... *237*\). By specifying only *US* for the first segment \(with the mask `US-__-___`\) in the **Subaccount** column, you can select all of the following subaccounts related to operations in the United States:

-   *US-AD-001* through *US-AD-237*
-   *US-PR-001* through *US-PR-237*
-   *US-SL-001* through *US-SL-237*
-   *US-DV-001* through *US-DV-237*
-   *US-DP-001* through *US-DP-237*

If you want to specify only some of the characters in a specific segment, you can type *?* in the other positions of the segment. For example, if you enter `__/D?/155` in the **Subaccount** column, the system will select all of the following subaccounts:

-   *US-DV-155* and *US-DP-155*
-   *FR-DV-155* and *FR-DP-155*
-   *DE-DV-155* and *DE-DP-155*

**Parent topic:**[Allocation Rules](../ImplementationGuide/config_Allocation_Rules_Mapref.md)

