# Subaccounts: General Information {#_0506cdb6-617d-414e-89fc-73f662ded3ab .concept}

In Acumatica ERP, you can use subaccounts in addition to accounts to record your financial data. You use subaccounts to virtually split accounts into smaller, more specific accounts to achieve finer classification for reporting and internal management purposes. Before you begin to use subaccounts, the system has to be properly configured.

**Tip:** In a production system, we recommend that subaccounts be configured very early in the setup of Acumatica ERP, when you configure other general ledger settings, including the chart of accounts.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Enable the *Subaccounts* feature
-   Modify the predefined *SUBACCOUNT* segmented key
-   Specify values for subaccount segments

## Applicable Scenarios { .section}

You configure subaccounts in the system when you need to provide more detailed breakdowns of data in reports. For example, if the company wants to report expenses by department and report revenue by sales region, you might configure subaccounts with at least two segments \(one for the department and another for the sales region\).

## Implementation Workflow {#_5ffd7bb4-b7ad-4246-8085-6983f76e9927 .section}

To configure subaccounts in the system, you do the following:

1.  Enable the *Subaccounts* feature on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.
2.  Configure the *SUBACCOUNT* segmented key on the [Segmented Keys](../UserGuide/CS_20_20_00.md) \(CS202000\) form.
3.  Define the list of possible values for each subaccount segment on the [Segment Values](../UserGuide/CS_20_30_00.md) \(CS203000\) form.
4.  If the *By Segmented Key* mode is selected for the *SUBACCOUNT* segmented key on the [Segmented Keys](../UserGuide/CS_20_20_00.md) form, define the needed subaccounts on the [Subaccounts](../UserGuide/GL_20_30_00.md) \(GL203000\) form. \(With this mode, on data entry forms, users can select only subaccounts that have already been defined in the system.\)

After you have performed these actions, users can start recording transactions to account–subaccount pairs. That is, users need to select both the appropriate account and the needed subaccount as they enter data.

## Configuration of Subaccount Identifiers { .section}

Acumatica ERP provides the predefined *SUBACCOUNT* segmented key, which determines the structure of subaccount identifiers and which you can view and edit on the [Segmented Keys](../UserGuide/CS_20_20_00.md) \(CS202000\) form. You can modify this segmented key so that the structure of subaccount identifiers meets your company’s business needs.

The *SUBACCOUNT* segmented key consists of a string, which can be up to 30 characters. You can divide the segmented key into multiple segments or can leave it non-segmented. To make subaccount identifiers easy to remember for users of the system \(and thus more likely to be entered correctly\), we recommend that you compose identifiers of segments with different meanings. For example, the subaccount identifiers could contain a two-character regional branch code, a one-digit department number, and a three-character product type, resulting in an identifier such as *CA-1-T32*. For a more detailed example of the planning of meaningful identifiers, see [Subaccounts: Example of Planning Subaccount Identifiers](config_Subaccounts_Example.md).

Depending on the validation setting of the subaccount entry \(described in the following section\), you might need to add all necessary subaccounts on the [Subaccounts](../UserGuide/GL_20_30_00.md) \(GL203000\) form.

You use the table on the [Segmented Keys](../UserGuide/CS_20_20_00.md) form to configure the segments of the *SUBACCOUNT* segmented key, with each row representing a segment. By using the check box in the **Validate** column of the table, you can also turn on validation for the values of this segment of subaccounts. If this validation is turned on for a segment, the segment values have to be specified on the [Segment Values](../UserGuide/CS_20_30_00.md) \(CS203000\) form. If this validation is turned off, a user can enter a new segment directly on a data entry form or on the [Subaccounts](../UserGuide/GL_20_30_00.md) form.

**Tip:** If you use allocation rules in your system, after allocations have been created, it is possible to change the structure of the *SUBACCOUNT* segmented key on the [Segmented Keys](../UserGuide/CS_20_20_00.md) form when no segment values have been entered yet. In this case, you need to manually update allocation rules on the [Allocations](../UserGuide/GL_20_45_00.md) form. For details, see [Allocation Rules: Allocation Between the Same Accounts and Subaccounts](config_Allocation_Rules_Reallocation_Between_Same_Subaccounts.md).

## Validation of Entered Subaccounts { .section}

The validation of subaccounts during data entry is controlled by the option selected in the **Lookup Mode** box in the Summary area of the [Segmented Keys](../UserGuide/CS_20_20_00.md) \(CS202000\) form for the *SUBACCOUNT* segmented key. Depending on whether you want to turn on validation, you do one of the following:

-   To give users the ability to select subaccounts on a data entry form only from the list of defined subaccounts in the system, you select the *By Segmented Key* mode. This mode turns on validation for subaccounts. In this case, the necessary subaccounts have to be specified on the [Subaccounts](../UserGuide/GL_20_30_00.md) \(GL203000\) form transactions are entered that should include the subaccount.
-   To give users the ability to enter subaccounts on a data entry form by selecting the values segment by segment, you select the *By Segment: All Avail. Segment Values* mode. When a user enters a new subaccount on any data entry form, the system automatically adds it to the list of subaccounts on the [Subaccounts](../UserGuide/GL_20_30_00.md) form instead of performing subaccount validation.

    **Tip:** You might want to select the *By Segment: All Avail. Segment Values* mode when the number of segments and the number of values in each segment could produce too many combinations to enter them in advance.


**Parent topic:**[Subaccounts](../ImplementationGuide/config_Subaccounts_Mapref.md)

