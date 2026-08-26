# Configuring Work Centers: Substitution of Work Centers {#_c0b2f338-88f0-4ab0-8b4b-222526a5bf25 .concept}

A company may have multiple production facilities where an item can be made. The components used to make the item may be the same, although they may have different costs; the production process also may be the same, but the production facilities may have different labor and overhead rates. For these cases, the ability to specify substitute work centers has been implemented in Acumatica ERP Manufacturing Edition, as described in this topic. The system can substitute work centers during production order creation based on the warehouse used for production. This substitution can eliminate the need to have warehouse-specific bills of material.

The ability to specify substitute work centers is available only if the *Multiple Warehouse* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.

## Substitution of Work Centers { .section}

You do the following to configure the ability to substitute work centers:

1.  On the [Production Order Types](../UserGuide/AM_20_11_00.md) \(AM201100\) form, you select the **Substitute Work Centers** check box on the **General Settings** tab for the needed production order type.
2.  On the [Work Centers](../UserGuide/AM_20_70_00.md) \(AM207000\) form, you add substitutes for each applicable work center to the **Substitutes** tab.

When a user creates a production order of a type for which the **Substitute Work Centers** check box is selected or changes a warehouse for the order, the system compares the warehouse of the production order and the warehouse of each work center specified in the order. If the warehouse of a work center differs from the warehouse of the order, the system looks for substitute work centers with the warehouse that matches the order warehouse. If such a work center is found, the system replaces the work center with the substitute, changing the operation description, replacing the backflush labor setting, and copying the overhead rates of the substitute work center.

**Parent topic:**[Configuring Work Centers](../ImplementationGuide/config_MFG_Work_Centers_Mapref.md)

