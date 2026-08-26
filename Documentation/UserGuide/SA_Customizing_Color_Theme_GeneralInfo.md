# Color Theme: General Information {#_92a7847e-a08b-4bb4-a6a3-d59f3176fc12 .concept}

In Acumatica ERP, one of the facets of the interface style is the theme of the user interface: the color selections of different parts of the screen. You can select one of the predefined themes or a custom theme that is created for the tenant. The theme represents the package of the files that work together to determine the appearance of the system.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Change the primary color of the color theme selected for your Acumatica ERP tenant
-   Override the primary color of the color theme selected for your Acumatica ERP tenant on the company and branch level

## Applicable Scenarios { .section}

You might need to change a color theme in the following cases:

-   There are brand guidelines in your company, and the Acumatica ERP website needs to comply with those guidelines.
-   There are multiple tenants in your Acumatica ERP instance, and some employees have access to multiple tenants. An individual color theme for each tenant will help those employees easily recognize to which tenant they are currently signed in.
-   There are multiple companies on a tenant of your Acumatica ERP instance, and some employees have access to multiple companies. An individual color theme for each company will help those employees easily recognize what company they are working with.
-   There are multiple branches in your company, and each of them is a separate organization. Multiple employees have access to multiple branches. An individual color theme for a branch will help them easily recognize what branch they are currently working with.

## Predefined Color Themes { .section}

In Acumatica ERP, there are two predefined themes available in the system:

-   *Default*: This theme, which is applied by default, consists primarily of warmer blue, light gray, and white colors.
-   *Indigo*: This theme consists primarily of cooler blue, cold gray, and white colors.

The color theme is specified for a tenant in the **Interface Theme** box in the **General Defaults** section of the [Site Preferences](SM_20_05_05.md) \(SM200505\) form.

## The Primary Color of the Default Theme { .section}

When you select the *Default* theme on the [Site Preferences](SM_20_05_05.md) \(SM200505\) form, the **Primary Color** box appears under the **Interface Theme** box. You can leave the default color defined in the theme or select a different primary color to be used for the user interface of the tenant.

**Tip:** You can reset the changed primary color to the default color by clicking the **Reset to Default Colors** button next to the **Interface Theme** box on the [Site Preferences](SM_20_05_05.md) form. The system will revert to the primary color for all companies and branches of the tenant.

## Specific Primary Color for a Company or a Branch { .section}

You change the color palette of the user interface by using the **Primary Color** box on the [Site Preferences](SM_20_05_05.md) \(SM200505\) form. The selected color palette is applied to all companies and branches unless the settings of a specific company or branch provide the ability to override the site color and another color is selected. To change the color for a specific company or a branch, you do the following:

-   For a company: In the **Theme** section of the **Visual Appearance** tab of the [Companies](CS_10_15_00.md) \(CS101500\) form, you first select the **Override Colors for the Selected Company** check box. Then you select the needed color in the **Primary Color** box or specify the hexadecimal number of the color in the box next to the **Primary Color** box.
-   For a branch: In the **Theme** section of the **Visual Appearance** tab of the [Branches](CS_10_20_00.md) \(CS102000\) form, you first select the **Override Colors for the Selected Branch** check box. Then you select the needed color in the **Primary Color** box or specify the hexadecimal number of the color in the box next to the **Primary Color** box.

**Parent topic:**[Customizing the Color Theme](../UserGuide/SA_Customizing_Color_Theme_Mapref.md)

