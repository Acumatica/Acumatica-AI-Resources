# To Enable Active Directory Integration {#_b3e862f3-ca9c-4244-ad9b-0be65b8b44e6 .task}

To integrate you Acumatica ERP instance with Active Directory \(AD\) you should first enable integration in Acumatica ERP, as described in this topic. For a description of all steps required for integration with AD, see [Integration with Active Directory](US__con_Integration_with_Active_Directory.md).

**Attention:** This functionality is available only if the *Active Directory and Other External SSO* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form.

## To Enable Active Directory Integration { .section}

1.  Create an AD user account that has *Read* permissions throughout the entire AD forest.

    This user account must be included in the *Domain Users* group or have at least *Read* permissions to the following properties defined in the AD schema: objectSid, distinguishedName, sAMAccountName, displayName, description, lastLogon, pwdLastSet, primaryGroupID, and memberOf.

2.  Modify the `web.config` file as follows:
    1.  Open the `web.config` file, which is located in the folder that contains the application instance website.

        **Important:** When you save changes to the `web.config` file, the website is automatically restarted. Make sure that all users have been warned about the restart so that they can save their work in advance.

    2.  In the file, find the `activeDirectory` section within the `px.core` section and edit it similarly to the example shown below.

        ```
        <activeDirectory
                       enabled="true"
                       path="Domain_Path"
                       dc="Domain_Name"
                       user="User_Name"
                       password="User_Password" />
        ```

        In the code shown above:

        -   *Domain\_Path* is the DNS name or the IP address of the domain controller \(DC\).
        -   *Domain\_Name* is the domain name, such as *terra*, *terra.com*, or *sing.terra.com*. This setting affects the visibility of the data of Acumatica ERP to the domain users.

            Preferably, you should use the highest-level domain of the domain name. For example, in the *sing.terra.com* domain name, the highest level domain is *sing*, and you would have to specify `dc="sing"`. For the *terra.net* domain, the highest level domain is *terra* and you would have to specify `dc="terra"`.

        -   *User\_Name* is the name of the user account you created in Step 1. Depending on the AD settings, you should use one of the following formats: *User\_Name*, *User\_Name@Domain\_Name*, or *Domain\_Name\\User\_Name*.
        -   *User\_Password* is the AD password of the user account you created in Step 1.
    3.  Save the `web.config` file. The website restarts automatically.

After you have enabled integration with Active Directory, you need to map AD groups to Acumatica ERP roles, as described in [To Map Active Directory Groups to Roles in Acumatica ERP](US__how_Active_Directory_Integration__Map_Roles.md).

**Parent topic:**[Integrating Acumatica ERP with Active Directory](../UserGuide/US__mng_Integration_with_Active_Directory.md)

