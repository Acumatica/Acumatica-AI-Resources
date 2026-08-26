# Labor Items: Labor Cost Rates {#_e8dfc9f1-caf5-4cc6-9d88-f3df12eca2fa .concept}

In Acumatica ERP, you can define labor rates, which are used to determine the cost of employee time spent on a particular project, and bill the customers based on this cost. The following sections explain how the labor cost rates are specified and retrieved in projects.

## Creation of Labor Cost Rates { .section}

On the [Labor Rates](PM_20_99_00.md) \(PM209900\) form, you can define labor cost rates that are specific to particular entities, such as the employee, project, project task, labor item, date, union local, certified job, and workers' compensation code.

When you define a labor cost rate, you specify its type, the rate, and an optional description and external reference number of the rate. Based on the type you select, particular columns become available so you can specify the particular entity the rate applies to and other relevant details. In the **Type** column of the [Labor Rates](PM_20_99_00.md) form, you select one of the following options:

-   *Labor Item*: If you select this type, in the row, you must also select the labor item and the rate.
-   *Employee*: If you select this type, in the row, you must select the employee and the rate; optionally, you can also select a particular labor item to which the rate applies.
-   *Project*: If you select this type, in the row, you must select the project and the rate. Optionally, you can select any of the following to which the rate applies: the project task, the employee, and the labor item.
-   *Union Wage*: If you select this type, in the row, you must select the applicable union local and labor item.

    You might define a rate of this type if an employee is a member of a local branch of a union; in this case, the union requires the company to pay the dictated union rate, which is usually higher than the prevailing wage rate.

-   *Prevailing Wage*: If you select this type, in the row, you must select the project and labor item.

    You might define a rate of this type if a government entity requires the construction companies to pay a non-union employee no less than the dictated prevailing wage rate. The prevailing wage is a government mechanism to equalize the wage rates that are paid by a construction company to non-union workers compared to labor union workers for the same type of work performed for a certified job. \(A certified job is a job performed for government, such as a construction project of a municipal building.\)


For each labor cost rate, regardless of its type, you specify the effective date. If there are multiple labor cost rates with the same settings, the system uses the rate with the most recent effective date that precedes the current date. For project transactions created from time activities, the system uses the labor rate that’s effective on the time activity's reported date. You can also create a labor cost rate with the same settings as an existing labor cost rate but with an effective date that is later than the latest effective date of the existing labor cost rate.

## Units of Measure in Labor Cost Rates { .section}

When you specify the rate for a row with a labor item selected on the [Labor Rates](../Shared/../UserGuide/PM_20_99_00.md) \(PM209900\) form, you specify the rate for the base unit of measure \(UOM\) of the labor item. The base UOM of the labor item should be convertible into minutes so that the system can convert the base UOM to a minute. That is, there should be conversion rules from a minute to the base UOM and from the base UOM to a minute on the [Units of Measure](../Shared/../UserGuide/CS_20_35_00.md) \(CS203500\) form.

When you create a labor cost rate for a labor item with a base UOM that isn’t an hour, make sure that you enter the rate for the base UOM of the labor item on the [Labor Rates](../Shared/../UserGuide/PM_20_99_00.md) form so that the system calculates the correct amount when a time activity with this labor item is released.

For example, suppose that you have the *TRAINING* labor item, whose base UOM is *UNIT*. According to the conversion rules specified on the [Units of Measure](../Shared/../UserGuide/CS_20_35_00.md) \(CS203500\) form, one unit equals four hours. On the [Labor Rates](../Shared/../UserGuide/PM_20_99_00.md) form, when you add a labor cost rate with an employee and the *TRAINING* labor item, you should specify the rate in the base UOM, which is *UNIT*. When the employee enters a time card on the [Employee Time Cards](../Shared/../UserGuide/EP_30_50_00.md) \(EP305000\) form and selects the *TRAINING* labor item in a time activity on the [Activity](../Shared/../UserGuide/CR_30_60_10.md) \(CR306010\) form, the time is reported in hours even though the base UOM of the selected item isn’t an hour. When the time card with the corresponding time activities is released, the system generates a project transaction with the *TRAINING* labor item in the base UOM of the item. If the employee has reported eight hours, the project transaction will contain two *TRAINING* units.

## Time Card Population { .section}

When you create a time card on the [Employee Time Cards](EP_30_50_00.md) \(EP305000\) form, for each line, you select the employee, project, project task, labor item, date, union local, certified job, and worker compensation code.

In a time card, the system automatically populates the **Union Local** column with the union local copied from the settings of the employee specified on the **General Info** tab of the [Employees](EP_20_30_00.md) \(EP203000\) form if the employee’s union local specified is one of the union locals of the project specified on the **Union Locals** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form, or if the project has no union local. Otherwise, the system leaves the column blank.

The system automatically selects the **Certified Job** check box in the time card line if for the corresponding project, the **Certified Job** check box is selected in the **Project Properties** section on the **Summary** tab of the [Projects](PM_30_10_00.md) form. In a time card, you can override the automatically selected **Certified Job** and **Union Local** settings, if needed.

## Retrieval of Labor Cost Rates { .section}

For each time card line on the [Employee Time Cards](EP_30_50_00.md) \(EP305000\) form, the system retrieves the cost rate from the labor cost rate table on the [Labor Rates](PM_20_99_00.md) \(PM209900\) form as follows:

1.  Among labor cost rates of the *Project*, *Employee*, and *Labor Item* rate types, the system selects the most specific existing labor cost rate among the defined labor cost rates that matches all the settings specified in the time card line and is effective on the date of the document. The system looks for the following sets of settings that match the time card settings and uses the first set it finds:
    -   The *Project* rate type, project, project task, employee, and labor item
    -   The *Project* rate type, project, project task, and employee
    -   The *Project* rate type, project, project task, and labor item
    -   The *Project* rate type, project, and project task
    -   The *Project* rate type, project, employee, and labor item
    -   The *Project* rate type, project, and employee
    -   The *Project* rate type, project, and labor item
    -   The *Project* rate type, and project
    -   The *Employee* rate type, employee, and labor item
    -   The *Employee* rate type, and employee
    -   The *Labor Item* rate type, and labor item
2.  For the time card line, if the **Certified Job** check box is selected and a **Union Local** is specified, the system selects the *Union Wage* and *Prevailing Wage* rate types that match the settings specified in the time card line. Then the system compares the most specific labor cost rate that has been found in the previous step with the selected labor cost rates of the *Union Wage* and *Prevailing Wage* rate types. Based on the comparison, the system selects the higher labor cost rate.
3.  If there are multiple labor cost rates with the same settings, the system uses the rate with the actual effective date corresponding to the date of the time card line in the time zone in which the time card line was reported.

**Parent topic:**[Creating Labor Items](../UserGuide/Non_Stock_Item_Projects_Mapref.md)

