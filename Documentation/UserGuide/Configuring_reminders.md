# To Enable Reminders {#_667e2765-09c0-4800-a02d-0e225b8203e1 .task}

In Acumatica ERP, you can enable the use of reminders for tasks and events in the system. With these capabilities enabled, if the settings of a particular task or event have reminders turned on, the system generates the reminders. By default, the reminder functionality is disabled.

**Important:** When you save changes to the `web.config` file, the website is automatically restarted. Make sure that all users have been warned about the restart so that they can save their work in advance.

## To Enable Reminders { .section}

1.  Open the `web.config` file for the site instance. Usually it is located in **%Program Files%\\Acumatica ERP\\&lt;instance name&gt;**, where *&lt;instance name&gt;* is the name of the application instance website.
2.  In the file, find the `Reminder` section, which has the following settings.

    ```
    <add key="ReminderVisible" value="false" /> <add key="ReminderRequestPeriod" value="60" /> <add key="ReminderActiveMode" value="false" />
    ```

3.  Change the following key values:
    -   `ReminderVisible` to *true*
    -   `ReminderActiveMode` to *true*
4.  Save the `web.config` file, which automatically restarts the website.

## Next Steps { .section}

After you have enabled the reminder functionality in the system, you should configure access to the Reminder dialog box for roles whose users use reminders. For more information on the configuration of roles, see [Configuring User Roles](User_Roles_Mapref.md).

**Parent topic:**[Maintaining Acumatica ERP Locally](../UserGuide/Maintaining_Acumatica.md)

