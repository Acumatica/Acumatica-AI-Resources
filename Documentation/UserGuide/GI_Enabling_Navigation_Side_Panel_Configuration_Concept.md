# Navigation Configuration: Side Panel {#_10c0d2c7-00de-4b6a-895e-e15fdc1db9b2 .concept}

By configuring a side panel for a generic inquiry, you give users the ability to quickly access additional information related to a record that they select in the inquiry results, while still viewing the main generic inquiry form.

In the simplest use case of a side panel of the generic inquiry, you can configure the side panel to have a single tab with information—an Acumatica ERP form \(or dashboard or report\) or an external webpage—related to the record the user selects in the inquiry results. You can also configure multiple tabs to be available on a side panel for a generic inquiry, with each tab providing a different aspect of information \(that is, a different form or webpage\) a user may need while reviewing the inquiry results.

On the resulting generic inquiry form, the side panel shows the icons you specify for the tab or tabs, and a user can click an icon to view the tab in the side panel. \(Only one tab can be displayed at a time.\)

## Configuration of Tabs on the Side Panel {#section_bh2_5jy_jrb .section}

Whether the side panel you are configuring has one tab or multiple tabs, each tab is configured in the same way. You specify the navigation target—the Acumatica ERP form \(which may be a dashboard or report\) or external webpage to be shown on the tab— and the additional settings for the tab.

For the navigation target of each side panel tab, on the **Navigation** tab of the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form, you add a row in the **Navigation Targets** pane. In the row, you specify its link and select the *Side Panel* option. In the **Icon** box, which appears above the **Navigation Parameters** tab in the right pane, you select the icon to be displayed on the side panel bar for the tab. On the resulting generic inquiry form, if the user selects a record in the inquiry results and clicks the icon, the system opens the side panel with the tab displaying the navigation target.

The only factor limiting the number of side panel navigation targets \(that is, tabs\) is the set of data fields \(specified on the **Data Sources** tab of the form\) that can be passed as parameters. If a navigation target requires a parameter for which the generic inquiry has no data field to pass, the navigation will not work—that is, on the side panel of the generic inquiry form, the system will not display the record of the form or webpage to which navigation has been configured. You can expand the set of data fields that can be passed as parameters by adding new tables on the **Data Sources** tab and setting up table relations on the **Relations** tab.

**Attention:** If a data field is used as a navigation parameter, it becomes read-only on the target form or a dashboard when the form or dashboard is displayed in the side panel.

## Visibility of Tabs {#section_avj_g4y_jrb .section}

You can specify the conditions that must be met for a side panel tab to be visible. In the **Navigation Targets** pane on the **Navigation** tab of the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form, you can click any row with *Side Panel* selected in the **Window Mode** column, which makes the **Visibility Conditions** tab visible in the right pane \(within the **Navigation** tab\). On this tab, you can specify a condition or a set of conditions that must be met for the side panel to be visible for users.

## Deactivation of a Tab {#section_b3l_4ny_jrb .section}

You may need to deactivate a side panel tab temporarily—for example, while editing its settings. To do this, on the **Navigation** tab of the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form, in the **Navigation Targets** pane, you clear the check box in the **Active** column of the row whose side panel tab should be deactivated. This check box is available for only the navigation targets for which **Window Mode** is set to *Side Panel*.

Once you save these changes to the generic inquiry and open the resulting generic inquiry form, the system does not display a side panel if the **Navigation Targets** pane has no other active rows with the *Side Panel* window mode. If other active rows have the *Side Panel* window mode, then the system hides the icon corresponding to the now-deactivated side panel tab. Thus, the user cannot view the corresponding navigation target in the side panel.

## Modification of the Order of Tabs {#section_nsl_yny_jrb .section}

You can quickly reorder the tabs in the side panel if multiple navigation targets have been configured to be displayed there. To reorder tabs in the side panel, on the **Navigation** tab of the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form, in the **Navigation Targets** pane, you drag any row in the list to the needed place; you then save the generic inquiry. In the resulting generic inquiry form, the system displays the icons of the tabs in the side panel in the order in which the navigation targets are listed in the **Navigation Targets** pane.

**Parent topic:**[Enabling Navigation](../UserGuide/GI_Enabling_Navigation_Mapref.md)

