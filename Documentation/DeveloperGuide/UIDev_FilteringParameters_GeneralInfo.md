# Filtering Parameters: General Information {#_13bf7527-ab6c-4fdb-8b43-5136442ae5ca .concept}

When a user specifies selection criteria on an inquiry or processing form, the table displays the data narrowed by the specified criteria. This gives the user the ability to view the most relevant data. On a processing form, they can then process all of the listed records or only those they select.

For both of these types of forms, you can define filtering parameters to give users the ability to filter the data listed in the table. You do this by specifying the filtering parameters for the elements to be used to narrow the data.

## Learning Objectives { .section}

In this chapter, you'll learn how to add filtering parameters to a form.

## Applicable Scenarios { .section}

You add filtering parameters in the following cases:

-   For a processing form, you need to provide the ability for the user to filter the records before processing some or all of them.
-   For an inquiry form, you want to give users the ability to view narrowed data to meet their current information needs, and reusable filters aren’t sufficient to provide the needed functionality.

## DAC with Filtering Parameters { .section}

The data access class \(DAC\) you’ll define for filtering parameters should:

-   Contain the fields that correspond to the filtering parameters
-   Contain only unbound fields because you won’t retrieve the parameters’ values from the database
-   Not contain any key fields because the DAC works with only one data record, which represents the current filtering parameters.

You usually assign the [PXHidden](https://help.acumatica.com/(W(4))/Help?ScreenId=ShowWiki&pageid=615f145d-3415-1060-8081-20bfc5f23a76) attribute to the filter DAC because you don’t need this DAC to be used in generic inquiries and reports.

To be able to use the filtering parameters in a BQL query, you need to make sure that the fields defined in this DAC are added to the grid view DAC of the form.

## Filter Data View { .section}

You’ll use generic PXFilter type of data view to provide filtering parameters for user selection on an Acumatica ERP form, such as an inquiry form or a processing form. This data view:

-   Always creates a single data record with the current values of the filtering parameters; it never retrieves this data record or saves it to the database.
-   Is used to specify values that are used by the application logic or other data views and that never should be stored anywhere except the current user session.

The data view object for the filtering parameters is defined in a graph, as the following code shows.

```language-csharp
public class RSSVPaymentPlanInq : PXGraph<RSSVPaymentPlanInq>
{
    //RSSVWorkOrderToAssignFilter is a DAC with filtering parameters
    **public PXFilter&lt;RSSVWorkOrderToAssignFilter&gt; Filter;**
    ...
}
```

**Attention:** You must not use the PXFilter data view type with a DAC that has at least one key field defined—that is, a DAC that contains fields with the IsKey=true parameter in the type attribute.

## Other Graph Members { .section}

To display the filtered data, the graph must contain the data view that selects the records that meet the criteria specified by the filtering parameters. For details about this data view, see [Filtering Parameters: Filtered Data on a Processing Form](UIDev_FilteringParameters_FilteredDataProcessingForm.md) and [Filtering Parameters: Filtered Data on an Inquiry Form](UIDev_FilteringParameters_FilteredDataInquiryForm.md).

To clear the filtering parameters on the form, you define the `Cancel` action for the filter DAC; see the following code example.

```language-csharp
public PXFilter<RSSVWorkOrderToAssignFilter> Filter;
// Adds the form toolbar button that clears the filtering parameters
**public PXCancel&lt;RSSVWorkOrderToAssignFilter&gt; Cancel;**
```

You must also override the `IsDirty` property of the graph to make the `IsDirty` property always return *false*. This disables the dialog box that confirms that a user wants to leave the form. This dialog box appears when a user attempts to close the form if there are unsaved changes in the cache objects for the form. A *false* value in the IsDirty property of the graph means that there are no unsaved changes on the form and that the dialog box never appears. This dialog box isn't needed on processing and inquiry forms, which aren’t intended for data entry or editing.

You can also use the PXUIFieldAttribute.SetEnabled&lt;&gt;\(\) method in the graph constructor to enable editing for particular data fields.

## Changes to the UI Files { .section}

Filter data fields are usually displayed on a form. To immediately refresh data records as soon a user updates a filtering parameter, you need to enable callback for the input control that displays the filtering parameter on the form. You use the [PXFieldOptions.CommitChanges](https://help.acumatica.com/(W(7))/Help?ScreenId=ShowWiki&pageid=da180a08-b380-09c7-07c6-b5b63a806087) option for a field in TypeScript to enable callback.

For the UI of a processing form with filtering parameters, you should follow the guidelines in [Processing Form: A Form with a Selection Area and a Grid](UIDev_ProcessingScreen_ParamsNoFilters.md). For an inquiry form, you should follow the same guidelines. The only difference is that you need to use the *Inquiry* preset for the table on the inquiry form.

## Implementation Summary { .section}

To add a filter to a form, you generally complete the following steps:

1.  You define the DAC that provides the filtering parameters.
2.  You modify the DAC that provides records for filtering by adding the fields that correspond to the filtering parameters.
3.  In the graph, you define the following members:
    -   The `Cancel` action.
    -   The data view of the PXFilter type, which provides data for the filter.
    -   The data view that retrieves filtered records.

        For details about this data view, see [Filtering Parameters: Filtered Data on a Processing Form](UIDev_FilteringParameters_FilteredDataProcessingForm.md) or [Filtering Parameters: Filtered Data on an Inquiry Form](UIDev_FilteringParameters_FilteredDataInquiryForm.md).

4.  In the graph, you modify the following members:
    -   The graph constructor: To enable editing of particular columns in the table with the filtered results
    -   The `IsDirty` property: To disable the dialog box that confirms that a user wants to leave the form
5.  In the TypeScript file, you do the following:
    -   Add the view class with the fields that correspond to the filtering parameters. For each field, you specify the CommitChanges property.
    -   Add the view property in the screen class. The view property is initialized with the createSingle method, which takes as the input parameter an instance of the view class.
6.  In the HTML file, you add a qp-template element to display the elements of the Selection area.

**Parent topic:**[Adding Filtering Parameters to a Form](../DeveloperGuide/UIDev_FilteringParameters_Mapref.md)

