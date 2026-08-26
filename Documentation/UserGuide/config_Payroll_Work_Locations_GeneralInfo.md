# Work Locations: General Information {#_fe9918f1-bf06-4b74-8a82-b94e7c9fe89b .concept}

A work location includes an address and other information pertaining to a physical location where work is performed. This may be a business location of the employer, or it may be a job site where work is being carried out.

Work locations are used in the calculation of state and local taxes and workers' compensation. All work locations where taxes may need to be withheld need to be set up, and the work associated with them needs to be tracked in payroll.

## Learning Objectives { .section}

In this chapter, you will learn how to create a work location.

## Applicable Scenarios { .section}

If your company has no branches, you create a single work location using the company's address. You configure multiple work locations if your company has business in multiple states and you need to calculate state and local taxes for each of those locations.

## Configuration of Work Locations { .section}

You create and edit work locations on the [Work Locations](PR_10_10_40.md) \(PR101040\) form. For each location, you specify an address, including the postal code, which the system will use for the calculation of state and local taxes. You cannot edit a work location if it is already used in an employee class or employee payroll settings.

If a work location shares the address of a branch, you can select that branch in the **Use Address from Branch ID** box, and the address boxes on the form will be automatically populated with the information from the branch record. In this case, if the branch address changes, the work location address will also change automatically.

You can specify multiple work locations for an employee class in the **Work Locations** table on the **Payroll** tab of the [Employee Payroll Class](PR_20_20_00.md) \(PR202000\) form. Only the work locations that are specified in the table will be available in an employee's paychecks and adjustments and in the related payroll batches if the **Use Class Default Work Locations** check box is selected for the employee on the **General** tab of the [Employee Payroll Settings](PR_20_30_00.md) \(PR203000\) form. You must mark one work location as the default for the system to use it on transaction entry if no specific work location is specified.

**Parent topic:**[Creating Work Locations](../UserGuide/config_Payroll_Work_Locations_Mapref.md)

