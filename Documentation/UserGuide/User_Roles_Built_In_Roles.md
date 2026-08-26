# User Roles: Predefined Roles {#_cdd2ae45-630a-4fae-9d7f-3dac7db2c297 .concept}

To ease the process of defining and administering roles, Acumatica ERP provides a set of predefined roles that are stored in the System tenant \(for details, see [Tenants: General Information](SA_Managing_Tenants_Using_Web_GeneralInfo.md)\).

Some of these roles grant users with the role access to specific functionality, while other roles are used by the system and should not be assigned to users manually.

## Service Roles { .section}

The following predefined service roles are available in the system:

-   *AcumaticaSupport*: The role, which is reserved for the predefined *AcumaticaSupport* user, is used to give support engineers access to a tenant.
-   *Anonymous*: This role is reserved for system use.
-   *DashboardDesigner*: The system has automatically designated this role as the dashboard owner role for dashboards that were created in previous versions of Acumatica ERP. We recommend that you create specific roles for users who should own particular dashboards. For details, see [Administering Dashboards](RPT_Administering_Dashboards_Mapref.md).
-   *Guest*: This role is used for backward compatibility.

## Administrative Roles { .section}

The following administrative roles are available in the system:

-   *Administrator*: A user with this role has full access to all system objects, and any access restrictions to system objects are not applied to this role. Therefore, we recommend that you assign users to this role only during initial system setup, so that these users can define roles and enter other users, and then assign the role only in extraordinary cases. We recommend that you create a separate user role for system administrators with access to only Acumatica ERP forms that are used for the configuration and management of the system.

    **Attention:**

    -   A user with the *Administrator* role cannot publish reports or modify original dashboards \(which have an owner role other than *Administrator*\).
    -   When you add a new form, such as a generic inquiry, to the site map, we strongly recommend that you set the *Granted* level to this form for the *Administrator* role.
-   *BI*: A user with this role can access the *BI Views*—that is, the generic inquiries that are exposed through the OData protocol, meaning that the **Expose via OData** check box is selected for the inquiry on the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form. For more information, see [Exposing Inquiry Results by Using OData](GI_Exposing_Inquiry_by_Using_OData_Mapref.md).
-   *BusinessDateOverride*: A user with this role can change the business date in the info area of Acumatica ERP. This role appears only if the *Secure Business Date* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. For details, see [User Roles: Restrictions on Changing the Business Date](User_Roles_User_Access_Business_Date_Change.md).
-   *Customizer*: A user with this role can customize Acumatica ERP applications. For details, see [To Assign the Customizer Role to a User Account](../CustomizationPlatform/CG_GL_Stages_Role.md).
-   *CS Admin*: Users with this role can access system functions and configuration entities that might be needed by users in financial positions. More specifically, they have administrative permissions to configure most of the common settings, including segmented keys, numbering sequences, tasks, and business process scenarios, as well as to manage business events, notification templates, and document templates. Users with the *CS Admin* role also have full access to row-level security settings and most of the integration functions.
-   *Data Privacy Controller*: A user with this role has access to the compliance tools for General Data Protection Regulation. For details, see [Handling Personal Data](GD__MNG_Handling_Personal_Data.md).
-   *eSign*: A user with this role has full access to the electronic signing functionality. That is, the user can send documents for electronic signing, track the signing process, and sync signed files with the system by using DocuSign™ and Adobe® Acrobat® Sign services.
-   *Field-Level Audit*: A user with this role can view the audit trail directly from an audited form. When you assign this role to a user, the **Audit History** command on the **Settings** menu on the form title bar becomes available to the user. The user can open any audited form, select a record created by using the form, and click **Audit History** to open the [Record Audit History](SM_20_55_40.md) \(SM205540\) form and view the audit trail for the selected record. For details, see [Managing Field-Level Auditing](SA_Managing_Field_Level_Auditing_Mapref.md).
-   *OData4 User*: A user with this role can access data exposed through the DAC-based OData interface.

    **Tip:** If a user does not have this role, through the DAC-based OData interface, the user has access to the same data that is visible to them via UI according to their access rights.

-   *ReportDesigner*: A user with this role can publish reports in Acumatica ERP. Any user can create reports in Report Designer, but for publishing reports in Acumatica ERP, the user needs to be granted this role.
-   *Wiki Admin*: A user with this role can set other users' access rights to wikis. For details, see [Wiki Access Management](SM__con_Wiki_Access_Setup.md).
-   *Wiki Author*: A user with this role can create wiki articles. For details, see [Wiki Access Management](SM__con_Wiki_Access_Setup.md).

## User Profile–Related Roles { .section}

The following roles that manage access to a user personal settings are available in the system:

-   *Internal Employee*: Users with this role have full access to personal settings, tasks, events, email, and time cards, as well as expense receipts and claims. Additionally, these users can view Help.
-   *Internal User*: A user with this role can change personal settings and view Help. It is automatically assigned to all user accounts linked with the *Employee* user type.

## CRM-Related Roles { .section}

The following roles that manage access to CRM functionality are available in the system:

-   *CR Marketing Manager*: A user with this role has access to marketing functions and settings.
-   *CR Sales &amp; Marketing Admin*: A user with this role has full access to sales and marketing functions and settings.
-   *CR Sales Representative*: A user with this role has access to sales functions and settings.
-   *CR Support Admin*: A user with this role has full access to support functions and settings.
-   *CR Support Representative*: A user with this role has access to support functions and settings.
-   *CR Viewer*: A user with this role has view-only access to marketing, sales, and support functions and settings.

## Finance-Related Roles { .section}

The following roles that manage access to finance functionality are available in the system:

-   *AP Admin*: A user with this role has access to functions and settings related to accounts payable, as well as view-only access to general ledger transactions.
-   *AP Clerk*: A user with this role has access to accounts payable functions, as well as view-only access to accounts payable settings and general ledger transactions.
-   *AP Viewer*: A user with this role has view-only access to accounts payable functions.
-   *AR Admin*: A user with this role has access to functions and settings related to accounts receivable, as well as view-only access to general ledger transactions.
-   *AR Clerk*: A user with this role has access to accounts receivable functions, as well as view-only access to accounts receivable settings and general ledger transactions.
-   *AR Viewer*: A user with this role has view-only access to accounts receivable functions.
-   *CA Admin*: A user with this role has access to cash management functions and settings.
-   *CA Clerk*: A user with this role has access to cash management functions and view-only access to cash management settings.
-   *CA Viewer*: A user with this role has view-only access to cash management functions.
-   *CM Admin*: A user with this role has access to functions and settings related to currency management.
-   *CM Viewer*: A user with this role has view-only access to currency management functions.
-   *DR Admin*: A user with this role has access to functions and settings related to deferred revenue.
-   *DR Viewer*: A user with this role has view-only access to deferred revenue functions.
-   *FA Admin*: A user with this role has access to functions and settings related to fixed assets.
-   *FA Clerk*: A user with this role has access to fixed asset functions, as well as view-only access to fixed asset settings.
-   *FA Viewer*: A user with this role has view-only access to fixed asset functions.
-   *Financial Supervisor*: When the **Restrict Access to Closed Periods** check box is selected on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form, a user with this role can post to closed financial periods, while all other users are not able to work with these periods. A financial supervisor can also reopen *Closed* periods and unlock *Locked* periods.
-   *GL Admin*: A user with this role has access to functions and settings related to the general ledger.
-   *GL Clerk*: A user with this role has access to general ledger functions, as well as view-only access to general ledger settings.
-   *GL Viewer*: A user with this role has view-only access to general ledger functions.
-   *Project Accountant*: A user with this role can upload and process GL and PM transactions for project tasks with the *Completed*, *Canceled*, or *In Planning* status, while all other users are not able to process transactions for such project tasks.
-   *TX Admin*: A user with this role has access to functions and settings related to taxes.
-   *TX Viewer*: A user with this role has view-only access to tax-related functions.
-   *Customer Data Manager*: A user with this role is responsible for entering master data related to customer profiles.
-   *Vendor Data Manager*: A user with this role is responsible for entering master data related to vendor profiles.

## Inventory and Order Management-Related Roles {#section_xlj_lpt_hwb .section}

The following roles that manage access to inventory and order management functionality are available in the system:

-   *SO Admin*: A user with this role performs the setup of the sales orders functionality and configures the sales processes.
-   *SO Manager*: A user with this role creates sales orders, manages customer contracts \(such as blanket sales orders\), views account receivables invoices and payments, negotiates customer terms, manages approvals, and oversees the sales operations staff and their activities.
-   *SO Clerk*: A user with this role enters data of sales orders, creates customer returns, prints and sends order confirmations, and manages customer inquiries.
-   *SO Viewer*: A user with this role can view the progress of the sales orders processing but cannot change the orders.
-   *PO Admin*: A user with this role performs the setup of the purchase orders functionality and configures the processes of purchasing.
-   *PO Manager*: A user with this role creates purchase orders, requisitions, views accounts payable bills and payments, negotiates vendor credit terms, manages vendor returns, manages approvals, and oversees the purchasing staff and their activities.
-   *PO Buyer*: A user with this role procures inventory to replenish the warehouse stock levels or to fulfill orders \(planning of purchases, creation of purchase orders, linking of purchase orders to fulfill sales orders\), reviews seasonality and replenishment settings for optimization and procurement.
-   *PO Clerk*: A user with this role enters data of purchase orders, creates vendor returns, and views inquiries and reports.
-   *PO Viewer*: A user with this role can view the progress of the purchase orders processing but cannot change the orders.
-   *IN Admin*: A user with this role performs the setup of the inventory functionality and configures the inventory processes.
-   *IN Manager*: A user with this role analyzes and manages warehouse activities and performance, takes responsibility for the physical movement of goods to and from the warehouse as well as inventory optimization and efficiency within the warehouse, and oversees the warehouse staff and their activities.
-   *IN Receiver*: A user with this role receives purchases, inbound transfers, and customer returns, puts away received goods into designated warehouse locations.
-   *IN Shipper*: A user with this role picks, packs, and ships customer sales orders, outbound transfers, and vendor returns, and confirms shipments.
-   *IN Clerk*: A user with this role performs cycle counts and inventory adjustments and restocks the inventory within the same warehouse according to the warehouse manager's plan.
-   *IN Viewer*: A user with this role can view the documents related to the warehouse processes and inventory settings but cannot change orders and settings.
-   *Inventory Data Manager*: A user with this role is responsible for entering master data related to inventory item profiles.

## Manufacturing-Related Roles { .section}

Acumatica ERP also provides a number of predefined roles to manage users' access to manufacturing functionality, including the following:

-   *MFG Engineer*: A user with this role has full access to the functions related to bills of material and engineering change control, as well as view-only access to bill of material settings.
-   *MFG Engineering MGR*: A user with this role has full access to the functions and settings related to bills of material, except for labor codes, overhead, and shifts.
-   *MFG Shop Floor*: A user with this role has view-only access to production orders, full access to clock entry functions, full access to production schedules, and view-only access to production dashboards.
-   *MFG Production MGR*: A user with this role has full access to production-related functions, production-related settings, and functions related to the approval of clock entries.
-   *MFG Scheduler*: A user with this role has full access to material requirements planning functions, full access to production schedules, and view-only access to material requirements planning settings.
-   *MFG Scheduling MGR*: A user with this role has full access to material requirements planning functions, material requirements planning settings, production schedules, and advanced planning and scheduling maintenance.
-   *MFG Planner*: A user with this role has full access to master production schedule functions, forecast functions, production schedules, and to some of the material requirements planning functions.
-   *MFG Planning MGR*: A user with this role has full access to master production schedule functions and settings, forecast functions, production schedules, and some of the material requirements planning functions.
-   *MFG Sales Engineer*: A user with this role has full access to estimating functions.
-   *MFG Warehouse*: A user with this role has full access to material transaction functions and to lot- or serial-tracking functions.
-   *MFG Viewer*: A user with this role has view-only access to production orders.
-   *MFG Admin*: A user with this role has full access to all manufacturing functions and settings.

## Payroll-Related Roles { .section}

The following roles for managing access to payroll functionality are available in the system:

-   *PR Admin*: A user with this role has full access to payroll functions and settings, and view-only access to banking, payables, projects, finance, and configuration settings.
-   *PR Clerk*: A user with this role has limited access to payroll functions \(such as data entry and internal reporting\), view-only access to payroll settings, and view-only access to banking, payables, projects, finance, and configuration settings.
-   *PR Manager*: A user with this role has full access to payroll functions, view-only access to payroll settings, and view-only access to banking, payables, projects, finance, and configuration settings.
-   *PR Viewer*: A user with this role has view-only access to payroll functions.

## Project- and Construction-Related Roles { .section}

The system provides predefined roles you can use to manage access to project and construction functionality. Users assigned the following roles have the noted access to system resources:

-   *PJ Admin*: Full access to configuration and maintenance construction-related forms.
-   *PM Admin*: Full access to configuration forms, mass processing forms, and project-related documents.
-   *PM Financial Controller*: View-only access to projects and full access to:
    -   Project budget, transactions, and quotes
    -   Change management documents
    -   Projects and construction reports
    -   Tasks, events, activities, and incoming and outgoing emails
    -   Approvals, employee time cards and activities, equipment time cards, expense claims, and expense receipts
    -   AR and AP project-related reports
-   *PM Operations Manager*: View-only access to daily field reports, photo logs, and submittals, as well as full access to financial and operational reports, including budgeting. The role also gives users full access to:
    -   Budgets and budget forecasts, change management documents, date-sensitive cost projections, pro forma invoices, and project quotes
    -   Subcontracts and compliance management documents
    -   Tasks, events, activities, and incoming and outgoing emails
    -   Approvals, employee time cards and activities, equipment time cards, expense claims, and expense receipts;
    -   AR and AP project-related reports
-   *PM Project Manager*: View-only access to progress worksheets, drawing logs, and submittals, as well as full access to:
    -   Projects, project tasks, budget and budget forecast, transaction details, commitments, date-sensitive cost projections, project quotes, and pro forma invoices
    -   Change management documents and subcontracts
    -   Daily field reports, photo logs, RFIs, project issues, and compliance management forms
    -   Tasks, events, activities, and incoming and outgoing emails
    -   Approvals, employee time cards and activities, equipment time cards, expense claims, and expense receipts
    -   AR and AP project-related reports
-   *PM Project Manager Assistant*: View-only access to approvals, employee time cards and activities, and weekly crew time entries, plus full access to:
    -   Projects and their templates, project tasks and their templates, budget and budget forecasts, transaction details, commitments, and project transactions
    -   Pro forma invoices and their correction history
    -   Project quotes
    -   Change management documents, subcontracts, submittals, expense receipts, and drawing and photo logs
    -   Project performance, profitability, and progress reports
    -   Vendor compliance documents and lien waivers
    -   Daily field reports, photo logs, RFIs, project issues, and compliance management forms
    -   Expense claims and expense receipts
    -   Tasks, events, activities, employee time cards, and incoming and outgoing emails
    -   AR and AP project-related reports
-   *PM Superintendent*: View-only access to subcontracts and submittals, and full access to:
    -   Daily field reports, progress worksheets, project issues and RFIs, change management documents, and drawing and photo logs
    -   Change management and compliance documents
    -   Tasks, events, and activities
    -   Incoming and outgoing emails
    -   Approvals, employee time cards and activities, equipment time cards, expense claims, expense receipts, and weekly crew time entries
-   *PM Viewer*: View-only access to projects and project tasks.

## Self-Service Portal–Related Roles { .section}

The following roles that manage access to Acumatica Self-Service Portal are available in the system:

-   *Guest*: This role is used for backward compatibility.
-   *Internal Employee*: Users with this role have full access to personal settings, tasks, events, email, and time cards, as well as expense receipts and claims. Additionally, these users can view Help, and they have view-only access to payroll inquiries.
-   *Internal User*: A user with this role can change personal settings and view Help. Also, these users have view-only access to payroll inquiries, such as personal pay stubs. This role is automatically assigned to all user accounts linked with the *Employee* user type.
-   *Portal Admin*: A user with this role can access the Acumatica Self-Service Portal configuration forms and configure Self-Service Portal.
-   *Portal User*: A user with this role can access the Self-Service Portal. You should assign this role only to contacts who must have access to Self-Service Portal.

**Parent topic:**[Configuring User Roles](../UserGuide/User_Roles_Mapref.md)

