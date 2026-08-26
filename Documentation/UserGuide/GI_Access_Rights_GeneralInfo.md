# Access Rights to Generic Inquiries: General Information {#_f91fd245-9627-430d-bcc1-b684573567dc .concept}

In Acumatica ERP, you create user accounts to manage user access to system resources. Based on users' job responsibilities, you can control their access to forms, entities created through these forms, and operations on these entities. Rather than assigning each individual user access rights to each object that the user must access, you define roles, which are sets of access rights that fit the job responsibilities in your company; you then assign these roles to individual users. Roles help you easily manage access rights for groups of users in the system. Changing one role alters the access rights for all users to whom this role is assigned.

Users are assigned one role or multiple roles, and based on these assignments, the users are then granted the appropriate levels of access to system objects. To be able to create, delete, or modify generic inquiries, you need a role that provides sufficient access rights \(the *Delete* level\) to the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form. By default, the built-in *Administrator* role provides the needed access rights for working with generic inquiries by using this form.

## Learning Objectives { .section}

In this chapter, you will learn how to set up access rights to generic inquiries.

## Applicable Scenarios { .section}

You may find the information in this chapter useful when you are responsible for administering user access to Acumatica ERP in your company. You need to manage access rights to different generic inquiries that your colleagues may need to do their jobs as efficiently as possible.

## Access Rights to Inquiry Forms { .section}

You set up access rights to a generic inquiry during the publication process. You click the **Publish to the UI** command on the toolbar of the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form—the system opens the **Publish to the UI** dialog box.

In the **Access Rights** section of the dialog box, you select one of the following option buttons to indicate which access rights should be specified for the inquiry:

-   **Set to Granted for All Roles**: The system will set the access rights for this form to *Granted* for all user roles in the system.
-   **Set to Revoked for All Roles**: The system will set the access rights for this form to *Revoked* for all user roles in the system.
-   **Copy Access Rights from Screen** \(default\): The system will copy the set of the access rights from the specified form.

After the inquiry is published, for each user role, you can modify the defined levels of access rights. You specify the levels of access to any form in the [Access Rights by Screen](SM_20_10_20.md) \(SM201020\) form.

## Access Rights to Inquiries as Substitute Forms { .section}

A generic inquiry can be configured as a substitute form to a data-entry form. That is, on the **Entry Point** tab of the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form, the **Entry Screen** box is filled in and the **Replace Entry Screen with This Inquiry in Menu** check box is selected for the inquiry.

If a particular generic inquiry form replaces an entry form \(that is, if it functions as a *substitute form*\), access rights to the generic inquiry are inherited from this entry form. Thus, to change the level of access that users have to the published substitute form, you change the level of access to the entry form, using the [Access Rights by Screen](SM_20_10_20.md) \(SM201020\) form.

Also, you can define access rights to the data entry form when you publish its substitute inquiry. In this case, the system shows a warning in the **Publish to the UI** dialog box. The warning explains that the inquiry is a substitute form and access rights that you select for this inquiry will be applied to its data entry form. If you do not need to change access rights to the data entry form, you select the *Copy Access Rights from Screen* option and specify the data entry form for this option.

If a generic inquiry defined as a substitute form is no longer defined as one—that is, if on the **Entry Point** tab of the [Generic Inquiry](SM_20_80_00.md) form, the **Replace Entry Screen with This Inquiry in Menu** check box is cleared—the access rights to the inquiry form revert to the initial state \(that is, the access rights the inquiry had before you used it to replace a data entry form\).

**Parent topic:**[Managing Access Rights To Generic Inquiries](../UserGuide/GI_Access_Rights_Mapref.md)

