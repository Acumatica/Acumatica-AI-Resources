# Allocation Rules: Multilevel Allocations {#_b4ab1401-b2bf-42b7-ab1e-acf91860fbc1 .concept}

An allocation can be a part of a multilevel allocation, with the same accounts and subaccounts involved in different allocations as source and destination accounts and subaccounts. In this case, the order in which the allocations are performed is important. In Acumatica ERP, multilevel allocation can be performed as a sequence of allocations with a fixed order of allocations.

## Multilevel Allocation Settings {#_65f31f08-8e99-4e7c-bcfb-15e6ebe2101e .section}

You can assign the appropriate value to each allocation in the **Sort Order** box on the **Allocation** tab of the [Allocations](../UserGuide/GL_20_45_00.md) \(GL204500\) form. The allocation with the lowest value is applied first, so a *1* indicates first priority, a *2* indicates second priority, and so on.

**Warning:** If you select and try to process an allocation with a higher sort order value \(which indicates a lower priority\) when an allocation with a lower sort order value \(which indicates a higher priority and earlier processing\) has not been processed, the system will display an error and will not process the selected allocation.

**Parent topic:**[Allocation Rules](../ImplementationGuide/config_Allocation_Rules_Mapref.md)

