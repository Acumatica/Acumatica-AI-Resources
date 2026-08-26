# Shop Floor Kiosk Administration: Deploying Multiple Kiosk Portals {#_c9857306-3c46-4539-9a2d-649ce5c6d157 .concept}

If your organization operates multiple plants, production sites, or work center groups with different operational needs, you can deploy a separate kiosk portal for each location. Each portal is configured independently and can be assigned its own branch, so that manufacturing transactions are posted to the correct entity for each site.

## What Is Shared Across Portals { .section}

The following are shared across all kiosk portals within the same tenant:

-   The *SFK App Access* and *SFK User* predefined user roles.
-   The Acumatica ERP database and all records within it.
-   User accounts. The same user account can be used as the service account for more than one kiosk portal, and a production employee’s user account with the *SFK User* role gives them access to any kiosk portal in the tenant.

## What Is Configured Per Portal { .section}

The following are specific to each kiosk portal and must be configured separately:

-   The portal record on the [Portals](SP_70_10_00.md) \(SP701000\) form, including its name, URL, and settings.
-   The branch assigned to the portal record on the **Shop Floor Kiosk** tab of the [Portals](SP_70_10_00.md) \(SP701000\) form.
-   The deployed kiosk instance \(website\) associated with the portal URL.

## Steps for Each Additional Portal { .section}

**At a glance**: Additional portal deployment

1.  Deploy a new portal instance using the Acumatica ERP Configuration wizard.
2.  Edit the `web.config` file of the new kiosk instance to add the `IsMultiSiteMode` setting.
3.  Create a new portal record on the [Portals](SP_70_10_00.md) \(SP701000\) form and assign the appropriate branch.

Follow the same procedures described in [Shop Floor Kiosk Administration: Deploying a Kiosk Instance](SFK_Admin_Deploying_Kiosk_Instance.md) and [Shop Floor Kiosk Administration: Configuring the Kiosk Portal](SFK_Admin_Configuring_Kiosk.md) for each additional portal. You do not need to repeat the `web.config` edit for the main ERP installation; that change persists across all portals.

**Parent topic:**[Shop Floor Kiosk](../UserGuide/MFG_SFK_Mapref.md)

