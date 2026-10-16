# Color Theme: General Information

In Acumatica ERP, one of the facets of the interface style is the theme of the user interface: the color selections of different parts of the screen. A system administrator can select one of the predefined themes or a custom theme that is created for the tenant. The theme represents the package of the files that work together to determine the appearance of the system. Individual users can override the theme selected for the tenant in their user profiles.

## Learning Objectives

In this chapter, you will learn how to do the following:

-   Select the theme to be used for a tenant
-   Change the primary color of the color theme selected for your Acumatica ERP tenant
-   Override the primary color of the color theme selected for your Acumatica ERP tenant on the company and branch level

## Applicable Scenarios

You might need to change a color theme in the following cases:

-   There are brand guidelines in your company, and the Acumatica ERP website needs to comply with those guidelines.
-   There are multiple tenants in your Acumatica ERP instance, and some employees have access to multiple tenants. An individual color theme for each tenant will help those employees easily recognize to which tenant they are currently signed in.
-   There are multiple companies on a tenant of your Acumatica ERP instance, and some employees have access to multiple companies. An individual color theme for each company will help those employees easily recognize what company they are working with.
-   There are multiple branches in your company, and each of them is a separate organization. Multiple employees have access to multiple branches. An individual color theme for a branch will help them easily recognize what branch they are currently working with.

## Predefined Color Themes

In Acumatica ERP, the following predefined themes are available in the system:

-   *Light*: This theme, which is applied by default, consists primarily of warmer blue, light gray, and white colors.
-   *Dark*: This theme consists primarily of dark colors.

The theme is specified for a tenant in the **Interface Theme** box in the **General Defaults** section of the [Site Preferences](SM_20_05_05.md) \(SM200505\) form. The selected theme applies to all companies and branches in the tenant and to users whose **Default Theme** setting on the [User Profile](SM_20_30_10.md) \(SM203010\) form is set to *Default*.

## The Primary Color of the Selected Theme

On the [Site Preferences](SM_20_05_05.md) \(SM200505\) form, the *Light* theme is selected by default, and the **Primary Color** box is available under the **Interface Theme** box. You can leave the default color defined in the theme or select a different primary color to be used for the user interface of the tenant. You can also select a different primary color for the *Dark* theme.

**Tip:** You can reset the changed primary color to the default color by clicking the **Reset to Default Colors** button next to the **Primary Color** box on the [Site Preferences](SM_20_05_05.md) form. The system will revert to the primary color for all companies and branches of the tenant.

## Specific Primary Color for a Company or a Branch

You change the color palette of the user interface by using the **Primary Color** box on the [Site Preferences](SM_20_05_05.md) \(SM200505\) form. The selected color palette is applied to all companies and branches unless the settings of a specific company or branch provide the ability to override the site color and another color is selected. To change the color for a specific company or a branch, you do the following:

-   For a company: In the **Theme** section of the **Visual Appearance** tab of the [Companies](CS_10_15_00.md) \(CS101500\) form, you first select the **Override Colors for the Selected Company** check box. Then you select the needed color in the **Primary Color** box or specify the hexadecimal number of the color in the box next to the **Primary Color** box.
-   For a branch: In the **Theme** section of the **Visual Appearance** tab of the [Branches](CS_10_20_00.md) \(CS102000\) form, you first select the **Override Colors for the Selected Branch** check box. Then you select the needed color in the **Primary Color** box or specify the hexadecimal number of the color in the box next to the **Primary Color** box.

**Parent topic:**[Customizing the Color Theme](../UserGuide/SA_Customizing_Color_Theme_Mapref.md)

