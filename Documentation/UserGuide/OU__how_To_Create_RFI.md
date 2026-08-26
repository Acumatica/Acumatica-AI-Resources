# To Create a Request for Information by Using the Acumatica Add-In {#_ff3eed33-5af3-499c-b513-973ecb6726be .task}

To create a new request for information based on an email, do the following:

1.  On the add-in form with the contact information displayed, click **Create Request for Information**.

    The **New Request for Information** group of elements appears on the form.

2.  In the **Summary** box, enter a brief description of the request for information or leave the subject of the email, which the system inserts by default.
3.  In the **Project** box, select the project to which the request for information is related.
4.  In the **Contact** box, select a contact on the customer side if you are creating an outgoing request for information or an external contact who can provide the requested information if you are creating an incoming request for information.
5.  Select the **Incoming** check box if you are creating an incoming request for information. For an outgoing request for information, leave the check box cleared.
6.  In the **Class ID** box, select the project management class that the project issue belongs to.

    As a result, the **Priority** and **Answer Date** boxes are populated based on the class default values.

7.  Review the default values in the **Priority**, **Owner**, and **Answer Date** boxes and change them, if needed.

    If you clear the values in these boxes, the system will use the class default values for **Priority** and **Answer Date** and your username as the issue owner when creating the request for information.

8.  Select the **Schedule Impact \(Days\)** check box if this request for information is to cause the project schedule to change; then in the **Schedule Impact \(Days\)** box, which appears, enter the number of days by which the project schedule is to be delayed.
9.  Select the **Cost Impact** check box if this request for information is to affect the cost of the project; then in the **Cost Impact** box, which appears, enter the amount by which the project budget is to be increased as a result.
10. Select the **Design Change** check box if this request for information is to affect the project design.
11. Click **Create Request for Information**.

As a result, a new request for information is created in Acumatica ERP. The email is attached to this record as a related email activity and the body of the email is also copied to the **Message** text box in the **Question** area on the **Details** tab of the [Request for Information](PJ_30_10_00.md#) \(PJ301000\) form. The request for information is associated with the selected project, and you can review the basic information about the request for information, such as the request for information identifier and summary, on the add-in form.

**Tip:** If you create multiple requests for information based on the same email, the information about the most recently created request for information is displayed on the add-in form for the email.

**Parent topic:**[Record Entry](../UserGuide/OU__con_Creating_Leads_Contacts.md)

