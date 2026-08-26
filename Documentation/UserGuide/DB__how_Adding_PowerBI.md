# Specific Widgets: To Add a Power BI Tile Widget {#_66f1e0b1-9c57-4ca5-9332-1e2f112e8935 .task}

You can add to a dashboard a widget with a Power BI tile. For more information on Power BI tile widgets in Acumatica ERP, see [Specific Widgets: Power BI Tile Widgets](DB__con_PowerBI.md).

This topic describes how you add a Power BI tile widget to a dashboard in Acumatica ERP.

## Before You Begin { .section}

Before adding a Power BI tile widget on a dashboard, ask your administrator for the client ID and client secret that he or she received after registering your Acumatica ERP instance on Microsoft Azure for Power BI. For details, see [Specific Widgets: To Register Your Acumatica ERP Instance for Power BI](DB__how_Registering_for_PowerBI.md).

## To Add a Power BI Tile Widget { .section}

1.  Open the **Add Widget** dialog box as follows:
    1.  Open the dashboard where you want to add a widget.
    2.  On the dashboard title bar, click **Design** to switch to design mode.
    3.  In one of the placeholders in the widgets area, click the ![](Images/Icon_Add_Widget.png)*Add a new widget* link to open the **Add Widget** dialog box.
2.  In the list of widgets, click **Power BI Tile**, and then click **Next** to open the **Widget Properties** dialog box.

    **Tip:** For a detailed description of the **Widget Properties** dialog box for Power BI tile widgets, see [Add Widget Dialog Box for Power BI Tile Widgets](DB__ref_PowerBI.md).

3.  In the **Client ID** box, paste the client ID that your system administrator has provided.
4.  In the **Client Secret** box, paste the client secret that your system administrator has provided.
5.  Click **Sign In** to log in to the Microsoft Power BI website. After the successful sign-in, you will be automatically redirected to Acumatica ERP. Notice that the **Dashboard** and **Tile** boxes appear in the **Widget Properties** dialog box.
6.  In the **Dashboard** box, select the Power BI dashboard with the tile that you want to embed in the Acumatica ERP dashboard.
7.  In the **Tile** box, select the Power BI tile that you want to embed in the Acumatica ERP dashboard.
8.  Optional: In the **Caption** box, type the name of the widget to be displayed on the dashboard.
9.  Click **Finish** to add the Power BI Tile widget to the dashboard.

**Parent topic:**[Configuring Widgets](../UserGuide/RPT_Configuring_Widgets_Mapref.md)

