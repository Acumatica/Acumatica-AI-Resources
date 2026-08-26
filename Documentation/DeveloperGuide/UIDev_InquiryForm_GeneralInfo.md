# Inquiry Forms: General Information {#_84040d1f-4a11-4f4e-8041-e8cbf4d57cd9 .concept}

On an inquiry form, you can view data narrowed by the selection criteria that you’ve specified. These forms are similar to reports but designed for the flexible analysis of data online rather than for printing.

You can create an inquiry form from scratch or based on an existing inquiry form that’s available out of the box with Acumatica ERP, such as the [Account Summary](../UserGuide/GL_40_10_00.md) \(GL401000\) form and the [Account Details](../UserGuide/GL_40_40_00.md) \(GL404000\) form.

Also, you can create an inquiry form in a customization project or directly in Acumatica ERP by using the [Generic Inquiry](../UserGuide/SM_20_80_00.md) \(SM208000\) form. For more information on generic inquiry forms, see [Managing Generic Inquiries](../UserGuide/SM__MNG_Managing_Generic_Inquiry.md).

## Learning Objectives { .section}

In this chapter, you’ll learn how to do the following:

-   Create an inquiry form without any custom filtering parameters on the Selection area of the form
-   Define the DAC for the grid view of the inquiry form
-   Define the data view of the inquiry form

## Applicable Scenarios { .section}

You develop an inquiry form without filtering parameters in the following cases:

-   You want to be able to view records from a single entity or multiple entities in the same table on the form
-   You want to view data narrowed down by reusable filters without specifying any custom filtering parameters on the Selection area of the form
-   You want to be able to flexibly analyze data online without having to print a report

## Conventions of Inquiry Forms { .section}

The IDs of inquiry forms follow this format:

-   A two-letter abbreviation indicating the functional area. For example, *RS* indicates repair services.
-   *40*, which is used system-wide for inquiry forms
-   Four additional numbers. For instance, *RS401000* indicates an inquiry form in the repair services functional area.

The names of the graphs for inquiry forms have the *Inq* suffix.

All inquiry forms have a table \(grid\), and some have a Selection area with elements for filtering the data. In some cases, you don’t need to give users the ability to specify any custom selection criteria, so you don’t need to define any custom filtering parameters.

Because users don’t edit any records on an inquiry form, you use the `ReadOnly` view type when defining the data view for the grid, which defines the selection of records in read-only mode. In the UI, Acumatica Framework automatically disables the editing of data records that were retrieved through a read-only data view.

## DAC for the Grid View of an Inquiry Form { .section}

When defining the DAC for the grid view of an inquiry form, you should derive a new DAC from the data entry form's DAC \(whose data is being displayed on the inquiry form\) and extend the new class with additional DAC fields that are specific to the inquiry form.

For the DAC fields that aren’t specific to the inquiry form but are defined in the data entry form's DAC, you’ll add abstract classes with the new modifier in the derived DAC. This step is required because you’ll use the data fields of the derived class in BQL statements \(for example, in the data view of the inquiry form and in attributes\). If you don’t define the abstract classes for the original fields in the derived DAC, these fields will be referred to in the SQL statement that corresponds to the BQL query as the fields of the original DAC. Data inconsistency issues can result when the original and the derived DACs are used in the same BQL statement.

## UI of an Inquiry Form { .section}

For the UI of an inquiry form without filtering parameters, you should follow similar guidelines to those for a similar processing form in [Processing Form: A Form with Only a Grid](UIDev_ProcessingScreen_NoParams.md). The only difference is that you need to use the *Inquiry* preset for the table on the form.

## Reusable Filters on an Inquiry Form { .section}

You can create an inquiry form without any custom filtering parameters and give users the ability to define reusable filters for the form’s table. You enable these reusable filters in the graph code by adding the [`PXFilterable`](https://help.acumatica.com/(W(33))/Main?ScreenId=ShowWiki&pageid=9433293e-397a-52cb-564f-798347a5dcc3) attribute to the data view that provides this table’s data. The attribute enables the **Filter Settings** button and the filtering area for the table.

In the filtering area, a user can define and save filters and then use them every time they open the form. Reusable filters are frequently used in the tables on inquiry and processing forms, so that users can customize these forms to show the data that’s most relevant to their needs and responsibilities.

For details about configuring custom filtering parameters on an inquiry form, see [Filtering Parameters: General Information](UIDev_FilteringParameters_GeneralInfo.md).

**Parent topic:**[Defining an Inquiry Form](../DeveloperGuide/UIDev_InquiryForm_Mapref.md)

