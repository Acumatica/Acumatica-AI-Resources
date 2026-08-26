# Opportunity Reports: Opportunity Estimation {#_0f724b4a-9ac1-41d0-961b-9dfd8bd53138 .concept}

Acumatica ERP provides reports that sales representatives can use to view the opportunity-related sales metrics, including the following generic inquiry forms and a pivot table:

-   The [Opportunity Summary by Close Date](CR_30_40_SM.md) \(СR3040SM\) generic inquiry form
-   The Opportunity Summary by Salesperson \(CR3041SM\) generic inquiry form
-   The Opportunity List \(CR3042SM\) generic inquiry form
-   The Opportunity Summary by Class \(CR3040PT\) pivot table

These metrics are based on the data that users have entered on the [Opportunities](CR_30_40_00.md) \(CR304000\) form.

The following sections provide details about these resources and the ways you can use them to analyze opportunities.

## Monitoring the Amounts and Stages of Opportunities { .section}

On the [Opportunity Summary by Close Date](CR_30_40_SM.md) \(СR3040SM\) inquiry form, you can find information for the date range you specify about the amount of opportunities in the different stages, with the amounts broken down by the year, quarter, and month of the estimated closing dates of the opportunities.

In the Selection area of the report, a date range must be specified. By default, the date range covers the previous and current quarter, based on the business date. Optionally, you can narrow the range of the opportunities whose amounts are shown in the table by specifying additional criteria: the opportunity stage, opportunity class, business account class, contact class, and owner.

In the table, each aggregated amount of the opportunities is also a link. If you click this link, the system opens a new browser tab showing the list of opportunities that meet the specified criteria on the **Drilldown** tab of the Opportunity List \(CR3042SM\) inquiry form. You can also see the list of all opportunities on the **All Records** tab of this form.

## Reviewing Opportunities Grouped by Salesperson { .section}

For any selected row of the [Opportunity Summary by Close Date](CR_30_40_SM.md) \(СR3040SM\) inquiry form, the side panel displays the Opportunity Summary by Salesperson \(CR3041SM\) inquiry form. On this form, you can find information about the amount and number of the opportunities grouped by owners and stages.

You can narrow the information that is shown in the table by specifying selection criteria in the Selection area of the Opportunity Summary by Salesperson form. If you want to see the list of the opportunities that are included in the selected row of the table, you can click the value in the **Owner** column, which is also a link. The list of the opportunities opens on the **Drilldown** tab of the Opportunity List \(CR3042SM\) inquiry form.

## Specifying Custom Opportunity Stages { .section}

Acumatica ERP gives companies the ability to customize the set of opportunity stages on the [Opportunity Classes](CR_20_90_00.md) \(CR209000\) form. If your company uses a different set of opportunity stages, the custom stages are also included in the list of stages that are provided in the **Opportunity Stage** box on the [Opportunity Summary by Close Date](CR_30_40_SM.md) \(СR3040SM\) and Opportunity Summary by Salesperson \(CR3041SM\) generic inquiry forms.

A user with the *Administrator* role can make the needed changes to the inquiry on the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form. To add a column that displays the amount of opportunities in a custom stage, this user needs to add a new row on the **Results Grid** tab. In most columns of this row, the user needs to enter the same values as for any other stage row in the table. In the **Data Field** column of this row, the user enters the letter corresponding to the custom stage, which is defined on the **Stages** tab of the [Opportunity Classes](CR_20_90_00.md) \(CR209000\) form for the class of the opportunity with the custom stage. Thus, the opportunity metrics on the [Opportunity Summary by Close Date](CR_30_40_SM.md) and Opportunity Summary by Salesperson \(CR3041SM\) forms can be viewed for the stages your company uses. For details, see [Creation of a Generic Inquiry: General Information](GI_Creating_Generic_Inquiry_GeneralInfo.md).

You can deactivate any number of unused predefined opportunity stages.

## Monitoring Opportunity Metrics by Class { .section}

You can use the Opportunity Summary by Class \(CR3040PT\) pivot table to find the aggregated information of the number and amount of all opportunities. This information is grouped by opportunity class, owner, opportunity status, and opportunity stage.

**Parent topic:**[Managing Opportunity Reports](../UserGuide/CRM_Sales_Metrics_Mapref.md)

