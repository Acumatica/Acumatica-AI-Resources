# Color Theme: Usage of Custom Images and Theme {#_c0d14c53-9548-4bf0-a008-9a77e8a6e36f .concept}

Users that have administrative access to the site database that is located on the server can edit the existing themes or create their own to apply them in the system. They also can customize the images displayed on the left side of the Sign-In page.

## Changing the Images on the Sign-In Page {#section_r2d_h2x_nqb .section}

The system displays a custom image from a set of images stored in the `Icons` folder \(from `login_bg1.jpg` to `login_bg9.jpg`\) on the path that was specified for the site while the product was installed. We recommend that you save the images that you will use for the Sign-In page with the same names as the original images have and that you reserve the original images for future use by changing the extension of these files from `.jpg` to `.bak`. The recommended size of each image is 1500 by 1000 pixels.

## Creating a Custom Theme {#section_p2d_h2x_nqb .section}

All themes are saved in the `App_Themes` folder on the path that was specified for the site while the product was installed. When you insert a new folder into the `App_Themes` folder, Acumatica ERP detects this folder and displays its name \(which is also the name of the theme\) in the list of the themes in the **Interface Theme** box on the [Site Preferences](SM_20_05_05.md) \(SM200505\) form. We highly recommend that you create new themes rather than edit the existing ones to avoid issues with the look and feel of the site.

The following two files define the look and feel of the Acumatica ERP site:

-   `00_Controls.css`: Defines the formatting of the forms that appear on the UI. This file can be found through the following path: `C:\Program Files\Acumatica ERP\MySite\App_Themes\ThemeName`.
-   `Site.css`: Defines the formatting of the navigation panels, tooltips, headers, and footers of the UI. This file can be found through the following path: `C:\Program Files\Acumatica ERP\MySite\Content`.

To create a custom theme, you copy the folder with the existing theme, insert it into the `App_Themes` folder, and rename the copied folder to `MyTheme`, where *MyTheme* is the name you want to use for the theme being created. Then you copy the `Site.css` file and rename it to `SiteMyTheme.css`, where *MyTheme* is replaced by the name you want to use for the theme you are creating. To modify the look and feel of the forms, change the color scheme in the `00_Controls.css` file of the folder that has the name of your theme, and save the changes. To modify the look and feel of the other elements of the UI, change the color scheme in the `SiteMyTheme.css` file \(where *MyTheme* is the name you want to use for the theme being created\) and save the changes.

For instance, if you want to name your new theme *Green*, you copy the `Default` theme folder and rename it to `Green`. Then you copy the `Site.css` file and you rename it to `SiteGreen.css` so that the system can detect that they are interconnected.

When all files have been configured, you can select the created theme in the **Interface Theme** box of the [Site Preferences](SM_20_05_05.md) form to apply the changes.

## Inspecting Elements of the Webpage {#_c372ac2e-893a-4fda-b037-be51ed038b7c .section}

While creating a custom theme, a user may wonder how to find the selector that is responsible for the formatting of a specific user interface element. Each browser has a set of web development and debugging tools called Developer Tools. These Developer Tools display the document object model \(DOM\) of the webpage or the DOM of a separate element on that page. On the **Elements** tab of the Developer Tools, the user can find the name of the source file where the code of the element is specified and the line of this code.

On the needed page, a user can press F12 to open the **Developer Tools** window. To view the node for a specific element, the user can click the **Select Element** tool button on the **Command Menu** bar of the **Developer Tools** window and select that specific element on the webpage. The HTML node of the selected element appears on the **Elements** tab of the **Developer Tools** window. The CSS code of the selected element is displayed on the **Styles** tab on the right side of the same window.

The following table displays the list of browsers and the name of the tool for each particular browser.

|Browser|Tool Name|
|-------|---------|
|Microsoft Edge|**Select Element**|
|Mozilla Firefox|**Select Element by Click**|
|Apple Safari|**Start Element Selection**|
|Google Chrome|**Select an element in the page to inspect it**|

Each `.CSS` file has commented lines that indicate the name of the class defined below these lines. You can use these lines to easily find the needed node through the document.

## Examples of CSS Modifications {#section_ufc_4fx_nqb .section}

Open the copied earlier `.CSS` file, and make the needed changes in the code to affect the look of the UI elements. You can perform any of the following actions:

-   If you want to change the background color of the header, find the `.navbar.master` selector, and specify the required value for the `background-color:` property, as shown in the following sample code.

    ``` {#codeblock_jsh_4fx_nqb}
    .navbar.master
    {
      min-height: 50px;
      font-size: 11pt;
      background-color: #007acc;
    }
    ```

-   If you want to change the color of the main menu icons, find the `.list-group.modules .ac, .list-group.modules .svg-icon` selector, and specify the required value for the `color:` property, as shown in the following sample code.

    ``` {#codeblock_ksh_4fx_nqb}
    .list-group.modules .ac, .list-group.modules .svg-icon 
    {
      font-size: 20pt;
      color: #0078D7;
    }
    ```

-   If you want to change the background color of the tiles on the working area, find the `.top-links > a` selector, and specify the required value for the background-color: property, as shown in the following sample code.

    ``` {#codeblock_lsh_4fx_nqb}
    .top-links > a 
    {
          position: relative;
          float: left;
          font-size: 11pt;
          text-decoration: none;
          padding: 10px;
          margin-right: 15px;
          margin-top: 10px;
          width: 135px;
          height: 80px;
          background-color: #007acc;
          color: white;
          border-radius: 2px;
    }
    ```

-   If you want to change the color of the tile font, specify the required value for the `color:` property of the `.top-links > a` selector.
-   If you want to change the background color of the footer, find the `.lic-banner` selector and specify the required value for the `background-color:` property:

    ``` {#codeblock_msh_4fx_nqb}
    .lic-banner 
    {
          position: relative;
          padding: 5px 15px;
          height: 30px;
          background-color: #007acc;
          color: white;
    }
    ```

-   If you want to change the color of the footer font, specify the required value for the `color:` property of the `.lic-banner` selector.

**Parent topic:**[Customizing the Color Theme](../UserGuide/SA_Customizing_Color_Theme_Mapref.md)

