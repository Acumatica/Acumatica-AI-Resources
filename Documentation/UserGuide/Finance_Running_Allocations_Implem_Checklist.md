# Running of Allocations: Implementation Checklist {#_f2f39709-d69f-48aa-b70b-6e0c58e24a67 .concept}

The following table provides details that you can use to ensure that the system is configured properly for the running of allocations.

|Form|Things to Check|Notes|
|----|---------------|-----|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|Make sure that the *Standard Financials* and *General Ledger Allocation Templates* \(under *Advanced Financials*\) features have been enabled.| |
|Multiple forms|Make sure that the minimum configuration of the company has been performed, as described in [Company Without Branches: General Information](../ImplementationGuide/config_Basic_Company_GeneralInfo.md), [Company with Branches that Do Not Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_No_Balancing_GeneralInfo.md), and [Company with Branches that Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_with_Balancing_GeneralInfo.md).| |
|[Company Financial Calendar](GL_20_11_00.md) \(GL201100\) form|Be sure that the financial periods for which allocations will be run have a status of *Open*.|You can generate the necessary periods on the [Master Financial Calendar](GL_20_10_00.md) \(GL201000\) form.|
|[Allocations](GL_20_45_00.md) \(GL204500\) form|Make sure that the allocations that are going to be run have been created. For details, see [Allocation Rules: To Create an Allocation Rule That Uses a Fixed Ratio \(Weight\)](../ImplementationGuide/config_Allocation_Rules_Activity.md), [Allocation Rules: To Create an Allocation Rule That Uses a Fixed Ratio \(Percentage\)](../ImplementationGuide/config_Allocation_Rules_Activity4.md), [Allocation Rules: To Create an Allocation Rule That Uses a Dynamic Ratio of the Period-to-Date Account Balances](../ImplementationGuide/config_Allocation_Rules_Activity2.md), and [Allocation Rules: To Create an Allocation Rule Based on Budget Data](../ImplementationGuide/config_Allocation_Rules_Activity3.md).|The system behavior when generating transactions that update the destination accounts depends on whether the **Allocate Source Accounts Separately** check box is selected on the **Allocation** tab. For the listed allocation rules, the **Allocate Source Accounts Separately** check box is cleared.|

**Parent topic:**[Running Allocations](../UserGuide/Finance_Running_Allocations_Mapref.md)

