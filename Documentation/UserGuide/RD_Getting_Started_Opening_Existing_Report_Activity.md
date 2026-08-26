# Report Creation: To Copy an Existing Report {#_640dfd1d-add0-474c-bbd9-023e48c45715 .task}

In the following activity, you will learn how to copy an existing report, which can be a predefined report or a report designed through the Acumatica Report Designer \(for example, a report created by a colleague who works on customizations\).

## Story {#section_kvr_njz_dfc .section}

Suppose that you are a technical specialist in your company, and you are working on customizations. An accountant of the company has requested a report that displays the AR register. You have offered the accountant to use the [AR Register](AR_62_15_00.md) \(AR621500\) report, which is a predefined report in Acumatica ERP, but the accountant has asked for modifications to the report. You have decided to make a copy of the report and change the copy in the Report Designer rather than directly modifying the predefined report. As a first step, you will create and save the copy of the report.

## Process Overview {#section_lvr_njz_dfc .section}

In this activity, you will first open and examine the [AR Register](AR_62_15_00.md) \(AR621500\) report in Acumatica ERP. Then you will open the report in the Acumatica Report Designer and save a copy of it with a different name.

## System Preparation {#section_mvr_njz_dfc .section}

Before you perform the steps of this activity, make sure that the following tasks have been performed:

1.  You have installed the Acumatica Report Designer, as described in [Report Designer: To Install the Acumatica Report Designer](../Shared/../UserGuide/RD_Getting_Started_Installing_RD_Activity.md).
2.  You have installed an Acumatica ERP instance with the *U100* dataset, or a system administrator has performed this task for you.
3.  You have signed in to Acumatica ERP as the system administrator by using the *gibbs* username and the *123* password.

    **Tip:** The *gibbs* user is assigned the *Administrator* role and the *Report Designer* role. Thus, this user has sufficient access rights to manage system configuration and to preview, save, and publish reports.


## Step 1: Opening and Viewing the Existing Report in Acumatica ERP {#section_nvr_njz_dfc .section}

To open and view the [AR Register](AR_62_15_00.md) \(AR621500\) report, which is an existing report in Acumatica ERP, do the following:

1.  On the main menu, click the **Receivables** menu item.
2.  In the **Reports** category of the **Receivables** workspace, click the *AR Register* link to open the report form \(that is, the form you use to specify parameters and run the report\).

    Notice that in the address bar of the browser, the `ScreenId` parameter is *AR621500*. This is the form identifier of the report.

    **Tip:** Alternatively, to open a form, you can search for it by its name or by its form ID without periods.

3.  In the **From Period** box of the **Report Parameters** tab, select *01-2025*, in the **To Period** box, leave the default value.
4.  On the form toolbar, click **Run Report**.

    The resulting report is displayed.


## Step 2: Opening the Existing Report in the Acumatica Report Designer {#section_pvr_njz_dfc .section}

To open the existing report in the Acumatica Report Designer, do the following:

1.  On the Windows Start menu, select **All** &gt; **Acumatica** &gt; **Report Designer**.
2.  On the Report Designer menu bar, click **File** &gt; **Open From Server**.
3.  In the **Open Report from Server** dialog box, which opens, do the following:
    -   In the **Site URL to Load Reports** box, type the URL of your Acumatica ERP website in the following format:*http://&lt;URL&gt;*, where *&lt;URL&gt;* is the actual URL of your instance. The URL can be your local website or an external URL of Acumatica ERP.
    -   In the **Login** box, type your username as follows: `gibbs`.

        If your instance contains more than one tenant, in the **Login** box, type your tenant name after your username and the *@* symbol as follows: `gibbs@<tenant name>`.

    -   In the **Password** box, type your password: `123`.
    -   Click the **Load Reports** button to load the list of reports from the website.
    -   In the **Report to Load** box, select *AR621500.rpx*, and click **OK**.

The dialog box is closed, and the opened report file is displayed in the Design pane of the Report Designer.

**Tip:** While you are viewing the report form of any existing report in Acumatica ERP, you can start the Report Designer and open the report as follows:

1.  On the report form toolbar, click **Edit Report**.

    An .rps file is saved on your local machine.

2.  On the Report Designer menu bar, click **File** &gt; **Open**, locate the previously saved .rps file and open it.

    The **Open Report from Server** dialog box is displayed with all the boxes filled in except **Password**.

3.  Type your password in the **Password** box and click **OK**.

Note that this capability is available only if you are signed in to a user account with the *Report Designer* role.

## Step 3: Saving a Copy of the Opened Report on the Acumatica ERP Server {#section_rvr_njz_dfc .section}

To save the opened report in the Acumatica Report Designer to the Acumatica ERP server, do the following:

1.  On the Report Designer menu bar, click **File** &gt; **Save To Server**.

    The **Save Report on Server** dialog box opens.

2.  In the **Name of Report to Save** box, type `AR6215C1.rpx`.
3.  Type your username and your password, and click **OK**.

The copy of the report is saved to the server.

**Parent topic:**[Creating a Report](../UserGuide/RD_Creating_Report_Mapref.md)

