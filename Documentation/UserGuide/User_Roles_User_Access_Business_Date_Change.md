# User Roles: Restrictions on Changing the Business Date {#_7a2f7fc0-c030-4773-99ae-676dacef1946 .concept}

In Acumatica ERP, the business date is displayed in the info area, which is in the right corner of the top pane. The business date is the date that the system will insert by default into the records that you add to the system. By default, the current date is set as the business date.

Some companies might want to restrict the availability of changing the business date in the system. This can be done to avoid issues with generated documents that have the dates of closed periods inserted into them.

By default, all users can change the business date in the Acumatica ERP system.

## Configuring Permissions to Change the Business Date { .section}

To restrict the availability to change the business date, you should enable the *Secure Business Date* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. This will make the Business Date menu button generally unavailable for clicking and editing, except to the employees in your company who might need the ability to change the business date in the system.

You can grant these users access rights to change the business date by assigning the *BusinessDateOverride* role to them on the [Users](SM_20_10_10.md) \(SM201010\) form or the [User Roles](SM_20_10_05.md) \(SM201005\) form.

**Attention:** This role is available only if the *Secure Business Date* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form.

## Incrementing the Business Date { .section}

The system handles the incrementing of the business date at midnight individually for each user session: The date is automatically incremented at midnight only if you have not modified the business date in any way during your user session.

That is, if you do not change the business date during your user session and your session is active at midnight, the system increments the date. If you have modified the business date, the system will keep the changed date as long as your user session is active.

**Parent topic:**[Configuring User Roles](../UserGuide/User_Roles_Mapref.md)

