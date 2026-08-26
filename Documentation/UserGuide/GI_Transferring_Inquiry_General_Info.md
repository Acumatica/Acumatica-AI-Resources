# Inquiry Transfer: General Information {#_4839df7f-854b-4673-8bf3-570facf214f0 .concept}

You can transfer a generic inquiry to another company or application instance as an XML file. To do this, you first need to export the inquiry as an XML file and then need to import the file in the target company or instance. In addition, you can export a generic inquiry form as an RPX file.

Also, you can export inquiry results \(that is, the data in the results grid of a generic inquiry form\) to an XLS file. Later you can transfer these inquiry results to another system that is not Acumatica ERP. In Excel, you can perform calculations for some columns and rows.

## Learning Objectives { .section}

In this chapter, you will learn how to export and import a generic inquiry form as an XML file, how to export a generic inquiry form as an RPX file, and how to export inquiry results to an XLS file.

## Applicable Scenarios { .section}

You may find the information in this chapter useful when you are responsible for the customization of Acumatica ERP in your company, including developing and modifying generic inquiries to give users information they need to do their jobs. You need to export an existing generic inquiry to transfer it to another company or application instance.

## Export of a Generic Inquiry With Advanced Filters { .section}

If you export to an XML file a generic inquiry with advanced filters of any type configured—an advanced personal filter, an advanced shared filter, or an advanced default filter—the generic inquiry is exported with all of the advanced filters. If you then import the XML file to another tenant in which a user with the same username exists, all the filters are available in the generic inquiry results. If a user with another username imports the XML file, only the advanced shared filters are available for the user.

## Export of a Generic Inquiry That a Pivot Table Is Based On { .section}

If you export to an XML file a generic inquiry for which a pivot table is saved as a filter tab, the system exports this inquiry with this pivot table. When you import this inquiry, the system also imports the related pivot table as a filter tab.

If you have configured a pivot table by using the [Pivot Tables](SM_20_80_10.md) \(SM208010\) form—that is, if you have configured a pivot table as a form—then during export and import operations of the generic inquiry that the pivot table is based on, this pivot table is not transferred. If you want to have the pivot table transferred with the inquiry, you need to export and then import the pivot table separately on the [Pivot Tables](SM_20_80_10.md) form.

## Export of Inquiry Results to an XLS File { .section}

You can export the top records of the results of a generic inquiry to an XLS file. On the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form with the inquiry selected, you specify the number of records to export in the **Export Top** box of the Summary area. By default, no value is specified in this box, and inquiry results can include thousands of records. Processing of a large number of records negatively affects server performance and increases the time to perform the inquiry. In this case, you can limit a large number of records by specifying a value in the **Export Top** box.

**Attention:** If you specify a value that can increase the time to process the inquiry and can cause the server performance degradation, the system displays a warning.

## Export of a Generic Inquiry That Is the Source of a Report { .section}

An exported generic inquiry can be used as a source for building a report through the Acumatica Report Designer tool. You can export a generic inquiry as an RPX file to be used for creating a report in Acumatica Report Designer. To do this, on the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form with the inquiry selected, click **Export as Report** on the form toolbar. The system will export the generic inquiry as an RPX file. The name of the RPX file corresponds to the name in the **Inquiry Title** box but can include only letters and digits. If other symbols are used in the **Inquiry Title** box, they are deleted when the name is assigned to the RPX file.

The resulting exported file contains information about the data access classes \(DACs\) of the generic inquiry, such as the list of DACs, the relations between the DACs, the sort order, and the grouping.

**Parent topic:**[Transferring an Inquiry](../UserGuide/GI_Transferring_Inquiry_Mapref.md)

