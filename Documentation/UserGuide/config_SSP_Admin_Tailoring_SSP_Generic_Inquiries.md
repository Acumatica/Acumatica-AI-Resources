# Tailoring the Self-Service Portal: Creation and Modification of Generic Inquiries {#_0698b36a-1829-4a4a-8c7b-88098b9d327a .concept}

A generic inquiry collects the data from the Acumatica ERP database based on the settings you specify when you design the inquiry. It then sorts, filters, and displays the inquiry results according to the settings specified for the inquiry on the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form, so that a user does not have to perform all these steps manually. Because generic inquiries provide so much flexibility, the inquiry design process depends on your organization’s specific business needs.

Acumatica ERP provides a number of predefined generic inquiries to address common needs for information. If any predefined generic inquiry provides similar results to those requested by users, you can make a copy of the predefined generic inquiry and modify the copy to meet the company's specific needs.

You can also build generic inquiries from the ground up. The design of a generic inquiry may include the following general steps, which are described further in this topic:

1.  Preparation for creation of a generic inquiry
2.  Creation of the generic inquiry
3.  Preview of the generic inquiry
4.  Refinement of the generic inquiry
5.  Publication of the generic inquiry
6.  Specification of access rights to the generic inquiry
7.  Modification of the published generic inquiry

## Preparation for the Creation of a Generic Inquiry { .section}

To design a generic inquiry in Acumatica ERP, you need to have general knowledge of data access classes \(DACs\). In Acumatica ERP, the data is stored in a database, but users do not access the database directly; instead, they access it through data access classes. When building inquiries, you retrieve data from the data access classes rather than working with the database tables directly.

Before you begin creating the generic inquiry, you gather the needed information by doing the following:

1.  *Identifying the DACs to be used for the inquiry*: The data to be used in a generic inquiry is available through DACs, which represent specific data from the system database. Based on the business needs the inquiry will meet, you need to decide what general type of data you want to collect from the system database in order to list it in the results grid of the inquiry form. Thus, you need to know on which form this data is entered.
2.  *Inspecting UI elements to find the DACs and data fields*: Based on the data you will use in the generic inquiry, you have to open the data entry forms where the data is entered and explore the user interface elements of the forms to find out which classes and data fields you can use to access this data.

    For example, to discover the data access class that provides access to the sales order numbers, you need to inspect the form elements of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form.


For more information, see [DAC Discovery: General Information](GI_Discovering_DACs_General_Info.md).

## Copying and Modification of a Predefined Generic Inquiry { .section}

Based on a request for a generic inquiry to be created, you may decide that modification of a predefined generic inquiry would be faster than designing and creating the generic inquiry from the ground up. In this case, you should work with a copy of the predefined generic inquiry rather than modifying it directly.

If you were to directly modify any predefined generic inquiries in the system, the system would not update the settings of any predefined generic inquiries that you have modified. That is, after an upgrade, any predefined generic inquiries that you have changed would not include any changes that may have been made to the system data with this upgrade. For example, if a database table previously included in the generic inquiry was removed in the system data of a newer version of Acumatica ERP, after an upgrade to this version, the modified generic inquiry that includes this table will no longer work.

Thus, we strongly recommend that instead of directly modifying a predefined generic inquiry, you make a copy of the predefined inquiry and modify the copy. This approach is shown in [Tailoring the Self-Service Portal: To Create a Generic Inquiry](config_SSP_Admin_Tailoring_SSP_To_Create_a_Generic_Inquiry.md).

## Creation of a Generic Inquiry { .section}

To create a generic inquiry, you perform the following general steps:

1.  Creating a generic inquiry: You create a generic inquiry on the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form. For easier navigation between inquiries, we recommend that your organization define and follow naming conventions for the inquiry titles that you will enter in the **Inquiry Title** box.

    **Tip:** On the [Generic Inquiry](SM_20_80_00.md) form, if you define user-selectable parameters that give users the ability to narrow the inquiry results, you can optionally specify the number of columns in which the inquiry parameters will be arranged on the resulting generic inquiry form, the maximum number of records to be displayed in the inquiry results, and the number of records to be displayed on every page of the inquiry results.

2.  Specifying DACs: On the **Data Sources** tab of this form, you select the DACs \(which are referred to as *tables* in most user interface elements\) to be used in your generic inquiry. For each table, you specify a value in the **Alias** column. This value will be used in SQL statements to designate the table. You can type the value in the **Alias** column manually or leave it empty; if you do not specify a value, the value from the **Source Name** column will be used instead.
3.  Configuring the results grid: On the **Results Grid** tab of the form, you select the column values from the DACs to display data. On this tab, you can specify how the results of the search in the database tables should be displayed, with each row on this tab corresponding to a column in the results grid of the inquiry form. You can specify formulas in the **Data Field** column to calculate the values of columns in the results grid by using the Formula Editor dialog box. In this dialog box, the formula can be entered directly in the formula editing area or composed by selecting fields and using operators and functions. For details, see [Modification of Inquiry Results: General Information](GI_Modifying_Inquiry_Results_General_Info.md) and [Formulas in Inquiry Results: General Information](GI_Using_Formulas_General_Info.md).

## Previewing of the Generic Inquiry { .section}

After you have completed the basic steps of creating the generic inquiry on the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form and saved the settings that you have specified on the form, you can preview the generic inquiry form to make sure it meets your expectations. You can preview an inquiry directly from this form by clicking the eye icon on the side panel of the [Generic Inquiry](SM_20_80_00.md) form. In this case, the system displays the resulting generic inquiry form on the panel of the form in the same browser tab. You can also preview an inquiry by clicking the **View Inquiry** button on the form toolbar. In this case, the system displays the resulting generic inquiry form in a new browser tab.

**Attention:** You can preview an inquiry form by clicking the eye icon on the side panel of the form except in the following cases:

-   The *Side Panel* option is selected in the **Window Mode** column of any row on the **Navigation Targets** pane of the **Navigation** tab of the [Generic Inquiry](SM_20_80_00.md) form.
-   Advanced filters have been created on the resulting inquiry form.

## Refinement of the Generic Inquiry { .section}

The creation of a generic inquiry can involve additional specifications, based on the business needs of the users. In this case, you can use other tabs of the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form to achieve the needed results, previewing the refined inquiry form as you make changes.

To further refine the generic inquiry you are designing, you can make changes to the following:

-   Table relations: You can specify table relations between data access classes on the **Relations** tab, so that the system can generate SQL requests to get the required data from the tables involved. In the **Table Relations** area of this tab, you can specify the relations between **Parent** and **Child** tables by selecting a **Join Type**. In the **Data Field Links for Active Relations** area of this tab, for each pair of related tables, you can specify the link condition between the columns of the tables. For more details about table relations, see [Data from Multiple Data Sources: General Information](GI_Getting_Data_from_Multiple_Tables_GeneralInfo.md).
-   Parameters: On the **Parameters** tab, you select and configure the parameters to be placed in the Selection area of the generic inquiry form. The user can make selections in this area to filter the data displayed in the table. For more details about parameters and conditions, see [Conditions and Parameters: General Information](GI_Conditions_and_Parameters_General_Info.md).
-   Conditions: You can use the **Conditions** tab to specify conditions that filter the data to be displayed. For example, an inquiry displaying a customer's balance, based on the specified conditions, can hide invoices with a balance of zero. For more details about parameters and conditions, see [Conditions and Parameters: General Information](GI_Conditions_and_Parameters_General_Info.md).
-   Grouping: You can group inquiry data by specifying grouping conditions on the **Grouping** tab. For example, you can group sales orders by date and status to get the count of sales orders and their total and average amounts for each day and each status.
-   Sorting: You can use the **Sort Order** tab to specify how the inquiry data is sorted—that is, the default order in which the results should be displayed on the inquiry form. For more details about the sorting and grouping, see [Sorting and Grouping: General Information](GI_Sorting_and_Grouping_General_Info.md).
-   Entry point: By using the **Entry Point** tab, you can optionally define the generic inquiry to be an entry point \(that is, a substitute form\) instead of the existing primary Acumatica ERP form. If you do this, when a user clicks the name of the primary form while navigating or searching, the system will open the generic inquiry form containing the list of records, and when the user clicks the name of a record in the list, the primary form will open with that record selected. For more details about making a generic inquiry an entry point, see [Generic Inquiry as a Substitute Form: General Information](GI_Making_GI_as_Entry_Point_GeneralInfo.md).
-   Navigation: On the **Navigation** tab, you can optionally configure inquiry columns to contain links to forms and webpages. For details, see [Navigation Configuration: General Information](GI_Enabling_Navigation_General_Info.md).

You might also want to change the inquiry title you have initially specified. To do this, you click **Change Inquiry Title** on the More menu of the [Generic Inquiry](SM_20_80_00.md) form. In the dialog box that opens, you enter the new inquiry title for the generic inquiry and click **OK**. If this inquiry title is not unique, the system displays an error; you can enter another inquiry title. If the title is unique, the dialog box is closed and the new title is inserted in the **Inquiry Title** box. You need to save your changes to the generic inquiry for this new title to be saved to the database.

## Publication of the Generic Inquiry { .section}

When the inquiry has been created and all the necessary settings have been specified, you can preview and then publish it, so that it can be used by other users. To publish the generic inquiry form, on the form toolbar of the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form, you click the **Publish to the UI** button. In the **Publish to the UI** dialog box, which opens, you can change the default settings of the title, workspace, and category. Also, you can change the automatically assigned screen identifier.

In the **Access Rights** section of the dialog box, you select one of the following option buttons to indicate which access rights should be specified for the newly added form:

-   **Set to Granted for All Roles**: The system will set the access rights for this form to *Granted* for all user roles in the system.
-   **Set to Revoked for All Roles**: The system will set the access rights for this form to *Revoked* for all user roles in the system.
-   **Copy Access Rights from Screen** \(default\): The system will copy the set of the access rights from the specified form.

To complete the publication process, you click **Publish** in the **Publish to the UI** dialog box.

**Attention:** For details on the publication of a generic inquiry that is configured as a substitute form, see [Generic Inquiry as a Substitute Form: General Information](GI_Making_GI_as_Entry_Point_GeneralInfo.md).

After you specify the needed settings and click **Publish** in the dialog box, the generic inquiry is published. That is, it is assigned a screen identifier and becomes available in the specified workspace. Also, the system adds the new site map node for this form to the site map and applies the appropriate access rights to this site map node.

The system assigns the inquiry form an automatically generated screen ID in a format similar to that of the screen IDs of other forms in the system. The ID consists of the following:

-   The *GI* module code
-   A six-digit number that is one greater than the numerical part of the most recently assigned screen ID for a generic inquiry

In the Summary area of the [Generic Inquiry](SM_20_80_00.md) form, the system fills in the default workspace \(that is, *Data Views*\) and the default category \(*Inquiries*\) for this inquiry form, but you can override these settings at any time.

**Tip:** The screen ID, site map title, workspace, and category of an inquiry can also be modified on the [Site Map](SM_20_05_20.md) \(SM200520\) form in Acumatica ERP.

## Specification of Access Rights to the Generic Inquiry { .section}

After you have published the generic inquiry, you can manage access rights to it. On the [Access Rights by Screen](SM_20_10_20.md) \(SM201020\) form, you select a role and one of the predefined levels of access rights. For more information, see [Access Rights to Generic Inquiries: General Information](GI_Access_Rights_GeneralInfo.md).

## Modification of the Published Generic Inquiry { .section}

Users of the published generic inquiry form or their supervisors may request changes to the form.

**Tip:** In some cases, you will modify the generic inquiry directly. In other situations, including when you work with predefined generic inquiries, you will leave the original inquiry intact, copy it, and make changes to a copy of it.

If you want to modify a generic inquiry form, you can temporarily hide it \(that is, make it not visible to other users\). To temporarily hide the inquiry, you clear the values of the **Workspace** and **Category** boxes on the [Site Map](SM_20_05_20.md) \(SM200520\) form in Acumatica ERP or on the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form in the Self-Service Portal.

**Parent topic:**[Tailoring the Self-Service Portal](../UserGuide/config_SSP_Admin_Tailoring_SSP_Mapref.md)

