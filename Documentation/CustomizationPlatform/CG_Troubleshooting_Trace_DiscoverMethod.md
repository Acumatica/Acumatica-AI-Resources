# To Discover the Method That Has Thrown an Exception {#_a466e076-68db-4557-bd42-1366310a18d2 .concept}

If an exception has occurred at run time and a message box with an error or a warning has been displayed on the form, you can easily discover the method that has thrown the exception. To do this, perform the following actions:

1.  Read the message, and close the message box.
2.  On the title bar of an Acumatica ERP form, click **Settings** &gt; **Trace**.
3.  On the Acumatica Trace page, which opens to display the trace log, find the appropriate error message, and click the arrow left of the **Details** label for the message to show the detailed information on the error.

    In the list of the method calls that were on the stack at the moment of the error, the upper method is the one that threw the exception.

    **Note:** By default, the trace log is stored on the Acumatica ERP server for the current user session. If the user opens two Acumatica ERP forms simultaneously in two tabs or windows of a browser, the Acumatica ERP server creates a subsession for each opened form and stores the trace logs separately for each subsession. After a session or subsession of the user is completed \(due to the user logging off or being timed out\), the server clears the appropriate log.

    To save the trace logs of all subsessions of all users in a single file on the server, a user with the *Administrator* role has to change the `web.config` file of the Acumatica ERP instance to configure the appropriate trace provider. See the *Trace* section of [Using Logs](../Shared/../UserGuide/CON_Troubleshooting_Tools_Logs.md) for details.


**Parent topic:**[Troubleshooting Customization](../CustomizationPlatform/CG_Troubleshooting.md)

