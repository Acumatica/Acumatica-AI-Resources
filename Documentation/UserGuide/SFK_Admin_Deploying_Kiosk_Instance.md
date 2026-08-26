# Shop Floor Kiosk Administration: Deploying a Kiosk Instance {#_53a7ed2a-390d-41a6-8a06-8b49349d2d98 .concept}

**At a glance**: Kiosk deployment

1.  Deploy a portal instance by using the Acumatica ERP Configuration wizard.
2.  Edit the `web.config` file of the ERP installation.
3.  Edit the `web.config` file of the kiosk installation.

## Creating a Kiosk Portal Instance { .section}

The Shop Floor Kiosk runs as a Modern Portal instance that is separate from your main Acumatica ERP site but shares the same database. You create it by using the Acumatica ERP Configuration wizard.

To deploy the kiosk instance, do the following:

1.  Launch the Acumatica ERP Configuration wizard on the web server where the kiosk will be hosted.
2.  On the Welcome page, click **Deploy a New Acumatica ERP Instance**.
3.  On the **Database Configuration** page, select **Connect to an Existing Database**, and select the database used by your Acumatica ERP instance.
4.  On the **Instance Configuration** page, enter a name for the kiosk instance. Under the instance type options, select **Create Modern Portal**.
5.  Complete the remaining steps of the wizard and click **Finish**.

## Editing the Web.config Files { .section}

After the kiosk instance is deployed, you must add a parameter to the `web.config` files of both the ERP installation and the kiosk installation. This setting enables both applications to work with the same database.

To edit the `web.config` files, do the following:

1.  On the web server, open the `web.config` file located in the website folder of the main Acumatica ERP installation.
2.  In the `appSettings` section of the file, add the following line:

    ```
    <add key="IsMultiSiteMode" value="True" />
    ```

3.  Save the file.
4.  Open the `web.config` file located in the website folder of the kiosk installation.
5.  Add the same line to the `appSettings` section of that file.
6.  Save the file.

**Attention:** When the `web.config` file is saved, the website restarts automatically. Notify all users to save their work before you make this change.

**Parent topic:**[Shop Floor Kiosk](../UserGuide/MFG_SFK_Mapref.md)

