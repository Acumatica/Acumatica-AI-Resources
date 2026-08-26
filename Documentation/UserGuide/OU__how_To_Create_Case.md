# To Create a Case by Using the Acumatica Add-In {#_ec9c6e40-1a9a-4632-a2bd-36f38a89faf4 .task}

To create a new case associated with the selected contact, do the following:

1.  On the add-in form with the contact information displayed, click **Create Case**.

    The **New Case Details** group of elements appears on the form.

2.  In the **Class ID** box, select the case class to which the case will belong. By default, the case class specified in the **Default Case Class** box on the **General Settings** tab of the [Customer Management Preferences](CR_10_10_00.md) \(CR101000\) form \(if any\) is selected.

    **Note:** If the selected case class requires that a customer be specified for cases of the class, make sure that a business account of the *Customer* type is specified for the contact record; otherwise, you will not be able to create the case.

3.  If you want to associate the case with a contract \(or if a contract is required by the selected case class\), select a contract in the **Contract** box.
4.  In the **Severity** box, select the severity level of the case. The following options are available: *Low*, *Medium* \(the default setting\), and *High*.
5.  In the **Subject** box, type a short description of the case. By default, the email's subject is specified in this box.
6.  In the **Encoding** box, select the encoding used for the selected email so that the email message will be correctly stored in Acumatica ERP.
7.  Click **Create Case**.

As a result, a new case record is created in Acumatica ERP, and the email is attached to this record as a related email activity. The case is associated with the selected contact, and you can review the basic information about the case, such as the case identifier and description, on the add-in form.

**Note:** If you create multiple cases based on the same email, the information about the most recently created case is displayed on the add-in form for the contact.

**Parent topic:**[Record Entry](../UserGuide/OU__con_Creating_Leads_Contacts.md)

