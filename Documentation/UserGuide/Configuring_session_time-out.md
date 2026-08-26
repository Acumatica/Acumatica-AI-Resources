# To Configure the Session Timeout {#_54775fb6-60d7-4995-99c0-8349f9b5d356 .task}

You can configure the session timeout value for your Acumatica ERP website. To change the timeout value, you change the session timeout and cookie timeout values in the `web.config` file of the application instance website. Also, you must make sure that the Application Pool Idle Time-out value in the Internet Information Services \(IIS\) Manager is greater than the session timeout and cookie timeout values for your website. This step is required, because IIS can recycle the application pool before the session has expired.

CAUTION:

Make sure that all users of your website are warned about the site restart so that they can save all documents.

## To Configure the Session Time-Out { .section}

1.  Open the `web.config` file for the instance. Usually it can be located in **%Program Files%\\Acumatica ERP\\&lt;instance name&gt;**, where *&lt;instance name&gt;* is the name of the application instance website.
2.  Change the session timeout to the appropriate value \(in minutes\), as shown below.

    ```
    <sessionState timeout="60">
    ```

    **Attention:** By default, the session timeout is set to 60 minutes. We strongly recommend not increasing the parameter value, especially for shared hosting.

3.  Change the cookie timeout to the appropriate value \(in minutes\), as shown in the following code line.

    ```
    <formsAuth loginUrl="Frames/Login.aspx" timeout="60" />
    ```

    **Tip:** By default, the cookie timeout is set to 60 minutes.

4.  Save the `web.config` file, which automatically restarts the website.
5.  Select **Start** &gt; **Administrative Tools** &gt; **Internet Information Services \(IIS\) Manager**.
6.  In the **Connections** pane, double-click the site name and then select **Application Pools**.
7.  On the feature page, select the application pool that you use on your website.
8.  In the **Actions** pane, click **Advanced Settings**.
9.  In the **Advanced Settings** dialog box, in the **Idle Time-out \(minutes\)** box, set the Application Pool Idle Time-out value \(in minutes\) so that this value is greater than the session and cookie timeout values that you set in Steps 2 and 3.
10. Click **OK** to save the settings.

**Parent topic:**[Maintaining Acumatica ERP Locally](../UserGuide/Maintaining_Acumatica.md)

