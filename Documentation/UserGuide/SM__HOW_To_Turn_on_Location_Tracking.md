# To Turn On Location Tracking of a User {#_89a87bbb-5fe5-495a-9000-73e849f8cd26 .task}

You use the [Users](SM_20_10_10.md) \(SM201010\) form to turn on and configure location tracking for a particular user. With this location tracking turned on, the user's past location coordinates can be viewed on the [Location Tracking History](SM_20_20_00.md) \(SM202000\) form.

**Attention:** To open any form, you can navigate to it or search for it \(by its name or by its form ID without periods\).

## To Turn On Location Tracking for a User { .section}

1.  Open the [Users](SM_20_10_10.md) \(SM201010\) form.
2.  In the **Login** box, select the user whose location you want to track.
3.  On the **Location Tracking** tab, select the **Track Location** check box.
4.  In the **Tracking Frequency** box, check the default time interval at which the device registers the user location, and change this value if necessary.
5.  In the **Distance Frequency** box, check the default distance that the user has to move so that the device again registers the user location, and change this value if necessary.
6.  If the system has filled in the table, check the values in the table, and change them if necessary.

    If an employee account is selected in the **Linked Entity** box of the Summary area of the current form, when the **Location Tracking** check box is initially selected, the system copies the settings to this table from the calendar assigned to the employee in the **Calendar** box of the [Employees](EP_20_30_00.md) \(EP203000\) form.

7.  If the table is empty, do the following for each day of the week when the user's location should be tracked:
    1.  On the table toolbar, click **Add Row**.
    2.  In the **Day of Week** column of the added row, select the day of the week on which the user location has to be tracked.
    3.  In the **Start Time** column, specify the time when the location tracking starts for this day of the week.
    4.  In the **End Time** column, specify the time when the location tracking ends for this day of the week.
8.  On the form toolbar, click **Save**.

**Parent topic:**[Managing User Access](../UserGuide/SA_Managing_User_Access_Mapref.md)

