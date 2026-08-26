# To Add a User Type {#_4e402478-7b3f-407c-a2e8-fdbd7fe932da .task}

To add a new user type, you use the [User Types](EP_20_25_00.md) \(EP202500\) form. For more information on user types, see [User Access: Linked Entities and User Types](SA_Managing_User_Access_User_Types_Usage_Concept.md).

## To Add a User Type { .section}

1.  Open the [User Types](EP_20_25_00.md) \(EP202500\) form.
2.  In the **User Type** box, type the name of the user type you want to add.
3.  In the **Linked Entity** box, select one of the following:
    -   *Employee*: To add an employee-related user type that is associated with employees in your system
    -   *Contact*: To add a contact-related user type that is associated with a contact in your system
4.  In the **Description** box, type the description of the user type.
5.  On the **Allowed Roles** tab, add the roles to be available for a user of this type. Do the following:
    1.  On the table toolbar, click **Add Row**.
    2.  In the **Role Name** column, select the role you want to add to the role set.

        **Note:** For contact-related user types, you can associate only roles that are marked as guest roles—that is, they have the **Guest Role** check box selected on the [User Roles](SM_20_10_05.md) \(SM201005\) form.

    3.  Optional: If the role must be assigned to each user of the user type by default, select the **Default** check box.
6.  On the form toolbar, click **Save**.

**Parent topic:**[Managing User Access](../UserGuide/SA_Managing_User_Access_Mapref.md)

