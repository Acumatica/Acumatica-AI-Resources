# Modern UI Troubleshooting: Unreflected Changes in the Modern UI {#_4ab9a27d-09ac-43ae-9151-79089afed71f .concept}

In some cases, when you have made changes to the sources of the forms that have been migrated to the Modern UI and rebuilt the sources, you may not see these changes reflected in the web browser when you open one of these forms.

The following actions may help you resolve this issue:

-   Restart your Acumatica ERP instance by doing one of the following:
    -   Modify and save the `Web.config` file.
    -   Click the **Restart Application** button on the [Apply Updates](../UserGuide/SM_20_35_10.md) \(SM203510\) form.
    -   Use the Web Server \(IIS\).
-   Sign in to your Acumatica ERP instance as an administrative user, and navigate to the form whose changes do not appear in the web browser. Press *F12* on your keyboard to open the developer tools in the web browser. On the **Network** tab, select the **Disable cache** check box, and refresh the page. If your changes to the form still do not appear, proceed to the next instruction.

    **Attention:** The actions in this instruction are based on the assumption that you are using the Chrome web browser. The specific actions may differ for other web browsers.

-   On the More menu of the [Apply Updates](../UserGuide/SM_20_35_10.md) form, click the **Reset Caches** command. Navigate back to the form whose changes do not appear in the web browser, and refresh the page.

**Parent topic:**[Troubleshooting the Modern UI](../DeveloperGuide/UIDev_Troubleshooting_Mapref.md)

