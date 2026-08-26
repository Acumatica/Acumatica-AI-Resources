# Shop Floor Kiosk Administration: Configuring Production Employee Access {#_3c6d89df-6342-432e-9cc3-39dcf24ae922 .concept}

Each production employee who will use the kiosk must have:

-   An Acumatica ERP user account with the *SFK User* role assigned on the [Users](SM_20_10_10.md) \(SM201010\) form
-   A linked employee record with the **Production Employee** check box selected and the **Shop Floor Shift** box filled in on the [Employees](EP_20_30_00.md) \(EP203000\) form

## Scenario 1: New Production Employee { .section}

Use this procedure when creating a new employee who does not yet have a user account or an employee record in Acumatica ERP.

1.  On the [Users](SM_20_10_10.md) \(SM201010\) form:
    1.  Click Add New Record on the form toolbar.
    2.  Fill in the username, password, and required profile fields.
    3.  On the **Roles** tab, assign the *SFK User* role.
    4.  Click **Save**.
2.  On the [Employees](EP_20_30_00.md) \(EP203000\) form:
    1.  Click Add New Record on the form toolbar.
    2.  Fill in the employee’s details. Make sure that the **Production Employee** check box is selected and the appropriate shift is specified in the **Shop Floor Shift** box.
    3.  On the **User** tab, in the **User Account** box, select the user account you created in step 1.
    4.  Click **Save**.

## Scenario 2: Existing Employee with a Linked User Account { .section}

Use this procedure when the employee already has an employee record and a user account that are linked to each other.

1.  On the [Users](SM_20_10_10.md) \(SM201010\) form:
    1.  Open the user account linked to the employee.
    2.  On the **Roles** tab, assign the *SFK User* role if it is not already assigned.
    3.  Click **Save**.
2.  On the [Employees](EP_20_30_00.md) \(EP203000\) form:
    1.  Open the employee record.
    2.  Ensure that the **Production Employee** check box is selected and that the **Shop Floor Shift** box is filled in.

## Scenario 3: Existing Employee Record Without a User Account { .section}

Use this procedure when an employee record exists but no user account has been created for the employee.

1.  On the [Users](SM_20_10_10.md) \(SM201010\) form:
    1.  Click Add New Record on the form toolbar.
    2.  In the **Linked Entity** box, select the employee’s record. Specifying the linked entity here establishes the association between the user account and the employee record.
    3.  On the **Roles** tab, assign the *SFK User* role.
    4.  Click **Save**.
2.  On the [Employees](EP_20_30_00.md) \(EP203000\) form:
    1.  Open the employee record.
    2.  Ensure that the **Production Employee** check box is selected and that the **Shop Floor Shift** box is filled in.



## Scenario 4: Existing Employee Record with an Unlinked User Account { .section}

Use this procedure when both an employee record and a user account exist, but the two have not been associated with each other.

-   Open the employee record on the [Employees](EP_20_30_00.md) \(EP203000\) form.
-   On the **User** tab, in the **User Account** box, select the user account you want to link to this employee.
-   Click **Save**.
-   On the [Users](SM_20_10_10.md) \(SM201010\) form, ensure that the *SFK User* role is assigned to the user account. If it is not, add it and click **Save**.

**Parent topic:**[Shop Floor Kiosk](../UserGuide/MFG_SFK_Mapref.md)

