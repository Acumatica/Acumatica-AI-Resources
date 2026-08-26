# To Sign In {#_973017ee-f6c1-432c-b393-16e681867dcc .task}

To attest your identity when using the Acumatica add-in, you provide your credentials \(that is, the username and password of your Acumatica ERP account\) to sign in to your Acumatica ERP instance. On the Sign-In page that appears when you activate the add-in, do the following:

1.  In the **My Username** and **My Password** boxes, type your username and password, respectively.
2.  In the **Company** box, select the company to which you want to sign in.

    Note that this box is available only if multiple companies are registered in your Acumatica ERP instance.

3.  Click **Sign In**.

This grants the add-in access to your Acumatica ERP instance. You do not have to enter your credentials during each subsequent run of the add-in unless you previously signed out.

**Note:** The incorrect configuration of Exchange Server may cause an error during your sign-in attempt if the system receives an empty identity token from Exchange. If this is the case, your system administrator should [update the Exchange Server OAuth configuration](https://docs.microsoft.com/ru-ru/archive/blogs/stephen_griffin/mail-apps-and-oauth-aka-your-mail-app-is-busted) so that a valid certificate is used in the process.

**Parent topic:**[Getting Started](../UserGuide/OU__MNG_Getting_Started.md)

