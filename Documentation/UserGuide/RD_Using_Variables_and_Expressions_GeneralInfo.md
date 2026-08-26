# Variables and Expressions: General Information {#_a78000e3-3fc5-43aa-ae2e-14ffd41bdd99 .concept}

In the Acumatica Report Designer, you can use variables to store values and substitute values in expressions. You can use expressions to define the values to be displayed in a report, or to specify report properties, such as group conditions and the visibility of sections or elements of the report. In expressions, you can use variables and user-specified report parameters. \(For more information about parameters, see [Parameters and Filters: General Information](RD_Parameters_and_Filters_GeneralInfo.md).\) In the Report Designer, you can type an expression or you can compose it in the Expression Editor.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following in the Report Designer:

-   Create a variable
-   Specify an expression

## Applicable Scenarios { .section}

You may want to use variables and expressions in the Acumatica Report Designer in the following circumstances:

-   You are responsible for the customization of Acumatica ERP in your company, including developing and modifying reports to give users the information they need to do their jobs.
-   You may want to perform calculations on values before presenting them or transform the data in some way.

## System and User Variables { .section}

System variables are available in all reports. These variables can be inserted into a report as values or included in expressions. The following table shows the system variables defined in the Report Designer.

|System Variable|Description|
|---------------|-----------|
|`PageIndex`|Places in the expression the page index value selected in the data source definition of the current report.|
|`PageCount`|Places in the expression the page count value for the current report.|
|`PageOf`|Places in the expression the page number and total page count values for the current report.|

A user variable is the one that you specify for a report section. This variable is visible in all other sections of the report. If you declare the same variable in multiple sections, the variable is shared between them. If the variable is modified in one section, the new value of the variable is passed to the next section where the variable is used. The variable is initiated in the topmost section where it is used. Then the variable is sequentially modified in the following sections in the order in which these sections appear in the report.

## Defining of a User Variable { .section}

To define a user variable, you use the **Behavior** &gt; **Variables** property of the report section.

The variables have the *$VariableName* format, where *VariableName* is the name of the variable defined in the report.

The following example illustrates the use of the *$RowNumber* user variable in an expression.

```
=Assign( '$RowNumber', $RowNumber + 1 )
```

In a report, you can use a variable defined in a subreport. In this case, the variable has the *$ReportName\_VariableName* format, where *ReportName* is the name of the report \(that is, the subreport\) in which the variable is defined. For example, suppose that you have defined the *$pmt* variable in the *payment* report. If you need to use this variable in the main report in your Acumatica ERP instance, you refer to this variable as *$payment\_pmt*.

## Addition and Deletion of a Variable in a Report Section { .section}

To define a variable, you use the ReportVariable Collection Editor \(that is, the **ReportVariable Collection Editor** dialog box\). To open the ReportVariable Collection Editor, you select the report section where you want to add the variable; then on the **Properties** tab of the Properties pane, you click the More button to the right of the **Behavior** &gt; **Variables** property.

If you are adding more than one variable in a section, in the ReportVariable Collection Editor, you should list variables in the **Members** list in the order in which they are calculated. For example, suppose that you have specified two variables—`A` and `B`. Also suppose that *$B=F\($A\)*. In this case, `A` should be listed first and `B` should be listed second. To change the order of variables in the ReportVariable Collection Editor, you use buttons with arrows to the right of the **Members** list.

To delete a variable from the list of existing variables, you open the ReportVariable Collection Editor, select this variable in the **Members** list, and click **Remove**.

## Processing of Variables and Property Values of Visual Elements { .section}

When you define a variable in the ReportVariable Collection Editor, the **ProcessOrder** property of the variable is set to *WhileRead* by default. The **ProcessOrder** property specifies when a variable value is processed during the generation of the report. A value can be processed when the data is read from the data source \(*WhileRead*\), when the report is printed \(*WhilePrint*\), or in both cases \(*Always*\). In most cases, when a value is read from the data source and then displayed in the report, *WhileRead* is sufficient.

The **ProcessOrder** property is also used for sections and visual elements. Once this property has been specified for a section, the property is applied to every visual element in this section unless it is overridden for a visual element. By default, the **ProcessOrder** property of the page header and page footer sections is set to *Always*. For other sections, *WhileRead* is the default value for this property.

You can specify the *WhilePrint* value for the **ProcessOrder** property if the value being calculated depends on data that will be known only at the report rendering stage. For example, suppose that you have added two text boxes to the page footer section. The **Appearance** &gt; **Value** property of the first text box is `Continued ...`, and the **Appearance** &gt; **Value** property of the second text box is `=[PageOf]`. The visibility of the `Continued ...` string depends on the page number and page count, which are calculated by using the `PageIndex` and the `PageCount` system variables. Both numbers for each page will be known only at the report rendering stage. Similarly, the page number, which is calculated by using the `PageOf` system variable, will be known only at the report rendering stage. Page numbers are typical data fields that require the *WhilePrint* processing mode. Thus, *Always*, which is the default value for the page footer section, is an appropriate setting. If you select the *WhileRead* setting for the page footer section, the `Continued ...` string will be printed on every page, and the page number will never be printed.

**Parent topic:**[Using Variables and Expressions](../UserGuide/RD_Using_Variables_and_Expressions_Mapref.md)

