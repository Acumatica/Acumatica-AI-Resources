# Shop Floor Kiosk Administration: Setting Up and Starting the Kiosk {#_c3aafba4-8416-4780-9014-e6110c712662 .concept}

## Creating the Service User Account { .section}

The kiosk outer session is maintained by a dedicated service user account. A supervisor or administrator signs in to the kiosk URL with this account to start the application and keep it running. This account is not used for production reporting.

Because the kiosk is designed to run continuously on multiple workstations simultaneously, multiple active sessions are supported at the same time.

To create the service user account, do the following:

1.  Open the [Users](SM_20_10_10.md) \(SM201010\) form.
2.  On the form toolbar, click Add New Record.
3.  Fill in the username, password, and any other required profile fields.
4.  On the **Roles** tab, assign the *SFK App Access* role to this account.
5.  Click **Save**.

**Note:** The *SFK App Access* role grants only the access needed to start the kiosk and view the landing page. It does not provide access to any Acumatica ERP functionality or to the kiosk inner session.

## Launching the Kiosk { .section}

Once the service user account has been created, a supervisor or administrator opens the kiosk URL in a browser and signs in using that account. This action starts the outer session and displays the kiosk landing page, which is then available for production employees to sign in to their individual inner sessions.

## Session Behavior { .section}

The outer session is designed to run without interruption. The kiosk landing page refreshes automatically every 60 seconds to keep the **Operations in Progress** list current and to prevent the outer session from timing out. There is no sign-out button on the landing page; this is by design, as the kiosk is intended to remain available on the workstation throughout the shift.

To end the outer session, close the browser window. The session will then time out according to the timeout value configured in the `web.config` file of the kiosk instance.

**Parent topic:**[Shop Floor Kiosk](../UserGuide/MFG_SFK_Mapref.md)

