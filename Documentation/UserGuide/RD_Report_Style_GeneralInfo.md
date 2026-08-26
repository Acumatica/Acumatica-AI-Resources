# Report Style: General Information {#_f420001c-46cb-4184-afba-83367687095a .concept}

Each company has its own style for the design of documents, letterheads, and reports. Adhering to the adopted design in your company, you can make a uniform style for Acumatica ERP reports in your company. For this purpose, in the Acumatica Report Designer, you can specify styles for individual elements or apply style templates to the reports that you design and modify.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following in the Report Designer:

-   Change the style of an element in a report
-   Change the style of number of reports

## Applicable Scenarios { .section}

You may want to modify the style of a report in the Acumatica Report Designer in the following circumstances:

-   You are responsible for the customization of Acumatica ERP in your company, including developing and modifying reports to give users the information they need to do their jobs.
-   You need to change the style of one element or a group of elements in a report, or apply a uniform style to a number of reports in the system.

## Ways to Change the Style of Elements in Reports { .section}

Depending on the type of an element in a report, the style of the element can include a number of settings. A report primarily includes text boxes. The style of a text box defines the text font \(type, style, and color\), text alignment, and background color. In a new report, all elements that you add to the report layout are assigned the default style. You can change the style of elements in a report in the following ways:

-   By specifying the style of an individual element. You can perform this action in the **Appearance** &gt; **Style** group of properties.

    This way of changing the style can be very time-consuming because you need to configure the style of each element in a report. Usually you combine this way with other ways.

-   By selecting a predefined style for an element. You can perform this action in the **Appearance** &gt; **StyleName** property.

    The list of styles in the **Appearance** &gt; **StyleName** property consists of the collection of styles specified in the **Appearance** &gt; **StyleSheet** property of the report and the collection of styles specified in the style template if one has been applied to the report. If a collection of styles or a style template has not been specified in the report, you cannot use this way \(selecting a predefined style for an element\) to change the style of elements in the report.

    Selecting a predefined style for an element gives you the ability to manage a style of multiple elements in a report in one action.

-   By specifying a style template for the report. You can perform this action by using the **Appearance** &gt; **StylesTemplate** property. \(Style templates are described in more detail later in this topic.\)

    In a new report, no style template is specified.


**Attention:** If you are using a font that is not available in Windows by default, you need to make it available for all users. To do so, you install it to the `C:\Windows\Fonts` folder of the application server.

## Creation of a Collection of Styles { .section}

In the Report Designer, you can create a collection of styles for a particular report. Later, you can use styles from both collections—the collection you have specified for the report, and the collection of styles that is specified in a style template applied to the report.

You create a collection of styles by using the **Appearance** &gt; **StyleSheet** property. This property presents a collection of styles of different types of elements. After you have specified a collection of styles, you can select a particular element in the report; in the **Appearance** &gt; **StyleName** property, you apply the style from the collection to the selected element.

You add members to a collection of styles in the StyleRule Collection Editor. Then for each member, you specify its properties in the Style Builder.

In the collection of styles, you can specify multiple members dedicated to the same type of report element. For example, you can specify members for the text boxes that display the following:

-   Report heading
-   Table heading
-   Data in a report and table content
-   Counted data in the *Total* rows

A new report does not have a collection of styles.

## Style Templates for Reports in the Report Designer { .section}

The use of a style template is the preferred way to change the style of elements in a report. A style template gives you the ability to specify uniform settings for elements not only in one report but also in a number of reports. A style template includes the collection of styles specified in the **Appearance** &gt; **StyleSheet** property. A style template is a file with the RPX extension, as other report files are.

Acumatica ERP has the following predefined style templates, which are stored in the `Site/ReportsDefault` folder and on the server:

-   `TemplateReport.rpx`: Intended for reports for general purposes
-   `TemplateForm.rpx`: Intended for printable reports

You can use the existing style templates, as well as define your own custom style templates. To define a custom style template, in the Report Designer, you do the following:

1.  You create a report.
2.  You select the report in design mode.
3.  You specify the style collection in the **Appearance** &gt; **StyleSheet** property.
4.  You save this report locally or on the server.

Then you can use this report as a style template.

You apply a style template as follows:

1.  You select a report—that is, in the Properties pane of the Report Designer, on the **Properties** tab, you select the `report1 Report` option.
2.  As the value of the **Appearance** &gt; **StylesTemplate** property, you enter \(if you want to use a style template from the server\) or select \(if you want to use a style template from a local folder\) the name of the style template file.

After you have specified a style template for a report, in the **Appearance** &gt; **StyleName** property, you can select predefined styles of elements defined in the **Appearance** &gt; **StyleSheet** property of the style template file.

**Tip:** The **Appearance** &gt; **StyleSheet** property of the report that you design does not inherit the settings of the same property of the style template file.

**Parent topic:**[Modifying the Report Style](../UserGuide/RD_Report_Style_Mapref.md)

