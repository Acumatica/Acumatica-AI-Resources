# Shop Floor Kiosk Administration: General Information {#_2dbc3cb7-9c6c-4a19-bcc1-2bd78d329989 .concept}

The Shop Floor Kiosk is a production data collection application designed for the shop floor. It runs as a Modern Portal instance that shares the same database as your Acumatica ERP installation, and provides operators with a focused, simplified interface for capturing labor time, reporting quantities, and issuing materials without requiring them to interact directly with Acumatica ERP.

## Session Architecture { .section}

The kiosk operates through a dual-session architecture.

-   **Outer session**: A persistent session started by a dedicated service user account. This session launches the kiosk application and keeps it running on the workstation. Because the kiosk is intended to remain available continuously throughout a shift, the outer session does not time out during normal use. It supports multiple simultaneous sessions across workstations, so a single service account can serve an entire plant floor.
-   **Inner session**: An individual session started when a production employee selects their name on the landing page. Each inner session is scoped to that employee and ends when they sign out. The inner session gives the operator access to production reporting functions.

This architecture means that operators never need Acumatica ERP credentials. The service account maintains the connection to the database; operators identify themselves only within the kiosk application.

## Single-Form Design { .section}

The Shop Floor Kiosk is built on a single form, *Shop Floor Kiosk \(AM000000\)*, whose layout and available actions change dynamically based on the operator's context—for example, whether they are clocked in to an operation, selecting work from a dispatch list, or reviewing recent activity. Because the entire kiosk experience is delivered through this one form, production employees need access only to this form, and no additional form-level permissions need to be configured.

## Predefined Roles { .section}

When you enable the *Shop Floor Kiosk* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, two predefined kiosk-specific roles become available for user access configuration.

-   *SFK App Access*: Assigned to the service user account that starts the outer session and keeps the kiosk running.
-   *SFK User*: Assigned to production employees who sign in to the inner session to perform production reporting.

## Portal Administration Sequence { .section}

To set up the Shop Floor Kiosk, you perform the following tasks in order:

1.  Verify [system requirements and prerequisites](SFK_Admin_Sys_Requirements_and_Prerequisites.md).
2.  Enable the *Shop Floor Kiosk* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
3.  [Deploy a kiosk portal instance](SFK_Admin_Deploying_Kiosk_Instance.md) by using the Acumatica ERP Configuration wizard.
4.  Edit the `web.config` files of both the ERP installation and the kiosk instance.
5.  [Create and configure the portal](SFK_Admin_Configuring_Kiosk.md) on the [Portals](SP_70_10_00.md) \(SP701000\) form.
6.  [Create the service user account](SFK_Admin_Creating_Service_User_Account.md) and assign the *SFK App Access* role.
7.  [Create user accounts](SFK_Admin_Configuring_Kiosk_User_Access.md) for production employees and assign the *SFK User* role.

**Parent topic:**[Shop Floor Kiosk](../UserGuide/MFG_SFK_Mapref.md)

