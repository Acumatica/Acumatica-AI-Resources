# Conversion of a Simple Budget to a Hierarchical Budget: General Information {#_4760a945-9659-4590-bf19-6be05bf23c5a .concept}

With Acumatica ERP, if your company needs hierarchical budgets, you can either configure a tree and create a budget based on the tree or you can convert an existing single-level budget into a hierarchical budget.

**Tip:** Modifications of the budget tree do not affect existing budgets, so you can modify the tree at any time.

## Learning Objectives {#section_cwk_mjv_vxb .section}

In this chapter, you will learn how to convert a simple budget into a hierarchical budget.

## Applicable Scenarios {#section_ewk_mjv_vxb .section}

If simple budgets have been kept in the system and then the budget tree has been configured on the [Budget Configuration](GL_20_50_00.md) \(GL205000\) form, you may want to convert the simple budgets to hierarchical budgets. With this conversion, you can have budgets with greater detail, and you can restrict access to particular nodes for certain groups of users.

## Conversion of Simple Budgets to Hierarchical Budgets {#section_gwk_mjv_vxb .section}

If you have created single-level budgets before you configured the budget tree, you can convert each single-level budget to a hierarchical budget based on the budget tree that has been configured on the [Budget Configuration](GL_20_50_00.md) \(GL205000\) form.

To convert a single-level budget to a hierarchical budget, on the [Budgets](GL_30_20_10.md) \(GL302010\) form, you select an existing single-level budget and click **Manage Budgets** on the form toolbar. In the **Manage Budget** dialog box, you select the *Convert Budget Using Current Budget Configuration* action and click **OK**. The system converts the current single-level budget by using the budget tree from the [Budget Configuration](GL_20_50_00.md) form.

**Important:** After a simple budget has been converted to a hierarchical budget, the changes are irreversible—that is, the budget cannot be converted back to a simple budget.

**Parent topic:**[Converting a Simple Budget to a Hierarchical Budget](../UserGuide/Finance_Converting_Budget_Mapref.md)

