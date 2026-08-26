# Instance Deployment: Accessing an Instance for the First Time {#_f91437b2-a185-4ef0-97a0-662b9d6d44fc .concept}

When you finish deploying an Acumatica ERP application instance, you need to access it initially to proceed with further configuration.

## Opening a Newly Created Instance { .section}

Typically, the Acumatica ERP Configuration wizard completes the deployment of a new instance and returns you to the Welcome page of the wizard so that you can continue working with it. You can use the Acumatica ERP Configuration wizard to open the newly created instance as follows:

1.  On the Welcome page, click **Perform Application Maintenance**.
2.  On the Application Maintenance page, which opens, in the list of the installed sites, click the instance you want to open, and then click the **Launch** button.

    The instance opens in a new tab of your default browser.


If you do not want to use the Acumatica ERP Configuration wizard, you can open the newly created instance in one of the following ways:

-   On the Start menu, find the instance, and then click its name.
-   In the address line of your web browser, enter the address: `http://localhost:80/Instance_name/`, where `Instance_name` is the name you have specified for your instance.

    You can omit the port number \(that is, *:80*\) in the URL if your server uses the default port *80* to connect to the HTTP protocol. In that case, you enter the following address: `http://localhost/Instance_name/`.

    To access the Acumatica ERP instance remotely, as any other user would, you would use the fully qualified domain name \(FQDN\) of the server instead of *localhost* in the URL.


**Tip:** The instance name is the name that you have specified in the **Virtual Directory Name** box on the Website Configuration page during instance creation.

## Accessing a New Instance { .section}

Every Acumatica ERP instance comes with an active default user account \(*admin*\) that you use to sign in to the system. The password for this user account for the first sign-in is *setup*. You start working with Acumatica ERP by changing the password for this user on the Sign-In page of the application instance.

**Important:** By default, a password must be at least eight characters and contain characters from three of the following four categories:

-   English uppercase characters \(*A* through *Z*\)
-   English lowercase characters \(*a* through *z*\)
-   Numerals \(*0* through *9*\)
-   Special characters \(such as *!*, *$*, *\#*, and *%*\)

For details, see [Preparing an Instance: System-Wide Security Policy](../ImplementationGuide/config_SA_Prep_Instance_for_Implem_Secure_Access_Implementers.md).

Before you proceed, you should click the link of the Acumatica User Agreement above the **Sign In** button, read the agreement, and then select the check box to indicate that you have read the terms of the agreement and agree to them.

After that, you can click the **Sign In** button on the Sign-In page. The home page of the Acumatica ERP instance opens.

**Parent topic:**[Deploying Acumatica ERP Instances](../UserGuide/INST_Deploying_Instances_Mapref.md)

