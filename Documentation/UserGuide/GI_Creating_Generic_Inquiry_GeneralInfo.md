# Creation of a Generic Inquiry: General Information {#_4bea05b9-faf4-4071-a24b-c1bc87135a07 .concept}

A generic inquiry displays data from the Acumatica ERP database based on the settings you specify when you design the inquiry. The system sorts, filters, and displays the inquiry results according to the settings you have specified, so that a user does not have to perform all these steps manually. Because generic inquiries provide so much flexibility, the inquiry design process depends on your organization’s specific business needs.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Prepare to create an inquiry
-   Create a simple inquiry with one table
-   Publish an inquiry

## Applicable Scenarios { .section}

You may find the information in this chapter useful when you are responsible for the customization of Acumatica ERP in your company, including developing and modifying generic inquiries to give users information they need to do their jobs. You need to deliver different inquiry forms that your colleagues may need for getting their jobs done.

## Preparation for Creating a Generic Inquiry { .section}

To design a generic inquiry in Acumatica ERP, you need to have general knowledge of data access classes \(DACs\). In Acumatica ERP, the data is stored in a database, but users do not access the database directly; instead, they access it through data access classes. When building inquiries, you retrieve data from the data access classes rather than working with the database tables directly.

Before you begin creating the generic inquiry, you gather the needed information by doing the following:

1.  *Identifying the DACs to be used for the inquiry*: The data to be used in a generic inquiry is available through DACs, which represent specific data from the system database. Based on the business needs the inquiry will meet, you need to decide what general type of data you want to collect from the system database in order to list it in the results grid of the inquiry form. Thus, you need to know on which form this data is entered.
2.  *Inspecting UI elements to find the DACs and data fields*: Based on the data you will use in the generic inquiry, you have to open the data entry forms where the data is entered and explore the user interface elements of the forms to find out which classes and data fields you can use to access this data.

    For example, to discover the data access class that provides access to the sales order numbers, you need to inspect the form elements of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form.


For more information, see [DAC Discovery: General Information](GI_Discovering_DACs_General_Info.md).

Alternatively, you can look for the inquiries that already have some needed data and use it as a data source for your inquiry alone or combined with additional inquires or tables.

## Creation of a Generic Inquiry { .section}

To create a generic inquiry, you perform the following general steps:

1.  *Creating a generic inquiry*: You create a generic inquiry on the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form. For easier navigation between inquiries, we recommend that your organization define and follow naming conventions for the inquiry titles that you will enter in the **Inquiry Title** box. An inquiry title must be unique.

    **Tip:** On the [Generic Inquiry](SM_20_80_00.md) form, if you define user-selectable parameters that give users the ability to narrow the inquiry results, you can optionally specify the number of columns in which the inquiry parameters will be arranged on the resulting generic inquiry form. You can also specify the maximum number of records to be displayed in the inquiry results, and the number of records to be displayed on every page of the inquiry results.

2.  *Specifying data sources*: On the **Data Sources** tab of this form, you select the DACs \(which are referred to as *tables* in most user interface element names\) to be used in your generic inquiry. For each table, you specify a value in the **Alias** column. This value will be used in SQL statements to designate the table. You can type the value in the **Alias** column manually or leave it empty; if you do not specify a value, the value from the **Source Name** column will be used instead. Additionally, you can add other generic inquires to be used as data sources for the inquiry.
3.  *Configuring the results grid*: On the **Results Grid** tab of the form, you select the column values from the data sources to display data. On this tab, you can specify how the results of the search in the database tables should be displayed, with each row on this tab corresponding to a column in the results grid of the inquiry form. You can specify formulas in the **Data Field** column to calculate the values of columns in the results grid by using the Formula Editor dialog box. In this dialog box, you can enter the formula directly in the formula editing area or compose it by selecting fields and using operators and functions. For details, see [Modification of Inquiry Results: General Information](GI_Modifying_Inquiry_Results_General_Info.md) and [Formulas in Inquiry Results: General Information](GI_Using_Formulas_General_Info.md).

## Preview of a Generic Inquiry { .section}

After you have completed the basic steps of creating the generic inquiry on the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form and saved the settings that you have specified on the form, you can preview the generic inquiry form to make sure it meets your expectations. You can preview an inquiry directly from this form by clicking the eye icon on the side panel of the [Generic Inquiry](SM_20_80_00.md) form; the system displays the resulting generic inquiry form on the panel of the form in the same browser tab. You can also preview an inquiry by clicking the **View Inquiry** button on the form toolbar, which causes the system to display the resulting generic inquiry form in a new browser tab.

**Tip:** You cannot preview the following functionality on the inquiry form by clicking the eye icon:

-   Advanced filters
-   Side panels

## Refinement of a Generic Inquiry { .section}

The creation of a generic inquiry can involve additional specifications, based on the business needs of the users. In this case, you can use other tabs of the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form to achieve the needed results, previewing the refined inquiry form as you make changes.

To further refine the generic inquiry you are designing, you can use the following functionality:

-   *Table relations*: You specify relations between data sources on the **Relations** tab, so that the system can generate SQL requests to get the required data from the sources involved. In the **Table Relations** area of this tab, you can specify the relations between **Parent Table** and **Child Table** tables by selecting a **Join Type**. In the **Data Field Links for Active Relation** area of this tab, for each pair of related tables, you can specify the condition that defines the relation between the sources. For more details about relations, see [Data from Multiple Data Sources: General Information](GI_Getting_Data_from_Multiple_Tables_GeneralInfo.md).
-   *Parameters*: On the **Parameters** tab, you select and configure the parameters to be placed in the Selection area of the generic inquiry form. The user can make selections in this area to filter the data displayed in the table. For more details about the parameters and conditions, see [Conditions and Parameters: General Information](GI_Conditions_and_Parameters_General_Info.md).
-   *Conditions*: You can use the **Conditions** tab to specify conditions that filter the data to be displayed. For example, an inquiry displaying a customer's balance, based on the specified conditions, can hide invoices with a balance of zero. For more details about the parameters and conditions, see [Conditions and Parameters: General Information](GI_Conditions_and_Parameters_General_Info.md).
-   *Grouping*: You can group inquiry data by specifying grouping conditions on the **Grouping** tab. For example, you can group sales orders by date and status to get the count of sales orders, and their total and average amounts for each day and each status.

    **Attention:** Grouping by user-defined fields is not supported. If your inquiry includes user-defined fields on the **Results Grid** tab of the form, these fields are not available for selection on the **Grouping** tab.

-   *Sorting*: You can use the **Sort Order** tab to specify how the inquiry data is sorted—that is, the default order in which the results should be displayed on the inquiry form. For more details about the sorting and grouping, see [Sorting and Grouping: General Information](GI_Sorting_and_Grouping_General_Info.md).
-   *Entry point*: By using the **Entry Point** tab, you can optionally define the generic inquiry to be an entry point \(that is, a substitute form\) instead of the existing primary Acumatica ERP form. If you do this, when a user clicks the name of the primary form while navigating or searching, the system will open the generic inquiry form containing the list of records, and when you click the name of a record in the list, the primary form will open with that record selected. For more details about making a generic inquiry an entry point, see [Generic Inquiry as a Substitute Form: General Information](GI_Making_GI_as_Entry_Point_GeneralInfo.md).
-   *Navigation*: On the **Navigation** tab, you can optionally configure inquiry columns to contain links to Acumatica ERP forms and webpages. For example, you can configure a generic inquiry so that a user will be able to open the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form with the details of a particular document in a new browser tab or in the side panel by clicking the link in the **Reference Nbr.** column of the inquiry. For details, see [Navigation Configuration: General Information](GI_Enabling_Navigation_General_Info.md).

## Publication of a Generic Inquiry {#section_y5x_bcg_krb .section}

When an inquiry has been created and all the necessary settings have been specified, you can preview and then publish it, so that it can be used by other users. To publish the generic inquiry form, you click the **Publish to the UI** button on the form toolbar. The system opens the **Publish to the UI** dialog box.

In this dialog box, you specify the following information:

-   **Site Map Title**: The name of the form that will be shown on the [Site Map](SM_20_05_20.md) \(SM200520\) form. By default, the system uses the value specified in the **Inquiry Title** box.
-   **Workspace**: The workspace in the user interface from which the form can be accessed. By default, it is *Data Views*.
-   **Category**: The name of the category under which the form will be displayed in the selected workspace. By default, it is *Inquiries*.
-   **Screen ID**: The identifier to be assigned to the form. By default, the system assigns the inquiry form an automatically generated screen ID, with *GI* as the two-letter module code, followed by a six-digit number that is one greater than the number portion of the most recently assigned screen ID for a generic inquiry.

**Tip:** The screen ID, site map title, workspace, and category of an inquiry can be modified later on the [Site Map](SM_20_05_20.md) \(SM200520\) form.

Also, in the **Access Rights** section of the dialog box, you select one of the following option buttons to indicate which access rights should be specified for the newly added form:

-   **Set to Granted for All Roles**: The system will set the access rights for this form to *Granted* for all user roles in the system.
-   **Set to Revoked for All Roles**: The system will set the access rights for this form to *Revoked* for all user roles in the system.
-   **Copy Access Rights from Screen** \(default\): The system will copy the set of the access rights from the specified form.

After you specify the needed settings and click **Publish** in the dialog box, the inquiry is published. That is, it is assigned a screen identifier and becomes available in the specified workspace. Also, the system adds the new site map node for this form to the site map and applies the appropriate access rights to this site map node.

**Attention:** If you publish a generic inquiry that is used as a substitute form for some data entry form, the system applies the access rights specified for the generic inquiry to the data entry form as well. For details on the publication of a generic inquiry that is configured as a substitute form, see [Generic Inquiry as a Substitute Form: General Information](GI_Making_GI_as_Entry_Point_GeneralInfo.md).

## Modification of Screen ID and a Title {#section_avx_bcg_krb .section}

You can change the automatically assigned screen identifier of a generic inquiry while publishing it. In the **Publish to the UI** dialog box, you enter the new screen ID for the generic inquiry, and click **Publish** to close the dialog box. The system begins the processing of the screen ID change. If this screen ID is not unique, the system displays an error on the form toolbar indicating that you need to enter another screen ID. If the processing of the change is successful, the system saves the generic inquiry with the new screen ID and changes this screen ID in all the system objects that are related to this generic inquiry.

To change the inquiry title \(specified in the **Inquiry Title** box\), you can click **Change Inquiry Title** on the More menu \(under **Actions**\) or on the form toolbar of the [Generic Inquiry](SM_20_80_00.md) form. In the dialog box, which opens, you enter the new title and click **OK**. The system begins the processing of the title change. If this title is not unique, the system displays an error indicating that you need to enter another title. If the processing of the change is successful, the system closes the dialog box and inserts the title in the **Inquiry Title** box. To save the changes, you need to click **Save** on the form toolbar.

## Modification of Access Rights of a Published Generic Inquiry { .section}

After you have published the generic inquiry, you can adjust access rights to generic inquiries. On the [Access Rights by Screen](SM_20_10_20.md) \(SM201020\) form, you select a role and one of the predefined levels of access rights. For more information, see [Access Rights to Generic Inquiries: General Information](GI_Access_Rights_GeneralInfo.md).

Alternatively, you can use the **Publish to the UI** button on the toolbar of the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form.

## Modification of a Published Generic Inquiry { .section}

Users of a published generic inquiry form or their supervisors may request changes to the form.

**Tip:** In some cases, you will modify the generic inquiry directly. In other situations, you will leave the original inquiry intact, copy it, and make changes to a copy of it.

If you want to modify a generic inquiry form, you can temporarily hide it \(that is, make it not visible to other users\). To temporarily hide the inquiry, you clear the values of the **Workspace** and **Category** boxes on the [Site Map](SM_20_05_20.md) \(SM200520\) form or on the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form.

Alternatively, you can remove a published generic inquiry from UI, by clicking the **Unpublish** button on the form toolbar of the [Generic Inquiry](SM_20_80_00.md) form. The system removes the respective node from the site map, clears the assignment of screen identifier and deletes all configured access rights from the database.

**Important:** We strongly recommend that you do not withdraw from publication an inquiry that has been published already. If you withdraw it, the system clears the assignment of screen identifier \(value of the **Screen ID** box\), which may cause issues with the widgets or pivot tables based on the published inquiry.

**Parent topic:**[Creating a Generic Inquiry](../UserGuide/GI_Creating_Generic_Inquiry_Mapref.md)

