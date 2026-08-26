# To Log an Email Activity {#_4f51a4d2-102b-4f8c-a2bc-c706a78606bf .task}

To associate an email with the corresponding record and store it as an email activity in Acumatica ERP, do the following:

1.  On the add-in form with the contact information displayed, click **Log Activity**.

    The **Log Activity** group of elements appears on the form.

2.  In the **Subject** box, specify the subject of your communication with the contact. By default, the subject of the selected email is specified in this box.
3.  Select the record that you want to associate your email activity with, as follows:
    -   Select the **Contact** check box if you want the email activity that will be created based on the selected email to be associated with a contact, and then select the needed contact in the **Person** box. By default, the contact associated with the email sender is specified in this box.
    -   Select the **Case** check box if you want the email activity to be associated with a case, and then select the needed case in the **Entity** box.

        You can associate an email with a case only if the system finds an existing case that has been associated with a contact or a business account of a contact. If no cases have been found, the **Case** check box is unavailable.

        The **Case** check box appears on the add-in form only if the *Case Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

    -   Select the **Opportunity** check box if you want the email activity to be associated with an opportunity, and then select the needed opportunity in the **Entity** box.

        You can associate an email with an opportunity only if the system finds an existing opportunity that has been associated with a contact or a business account of a contact. If no opportunities have been found, the **Opportunity** check box is unavailable.

    -   Select the **Project** check box if you want the email activity to be associated with a project, and then select the needed project in the **Entity** box.

        The **Project** check box appears only if the *Projects* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form.

    -   Select the **Request for Information** check box if you want the email activity to be associated with a request for information, and then select the needed request for information in the **Entity** box.

        The **Request for Information** check box appears only if the *Construction Project Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form.

    -   Select the **Project Issue** check box if you want the email activity to be associated with a project issue, and then select the needed project issue in the **Entity** box.

        The **Project Issue** check box appears only if the *Construction Project Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form.

4.  In the **Encoding** box, select the encoding used for the selected email, so that the email message will be correctly stored in Acumatica ERP.
5.  Click **Create**.

As a result, an email activity is created in Acumatica ERP based on the selected email; this activity is associated with the entity that you have specified.

**Parent topic:**[Logging of Communication Activities](../UserGuide/OU__con_Logging_Email_Activities.md)

