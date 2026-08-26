# Modification of a Predefined Inquiry: General Information {#_40f8eaa5-8a6d-49aa-b81f-c3cf4a75dac9 .concept}

Acumatica ERP includes predefined generic inquiries, whose settings can be viewed on the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form. These predefined generic inquiries are stored in the system data—that is, the data of the *System* tenant, which is the tenant installed by the system.

## Learning Objectives { .section}

In this chapter, you will learn how to make a copy of an existing generic inquiry.

## Applicable Scenarios { .section}

You may find the information in this chapter useful when you are responsible for the customization of Acumatica ERP in your company, and you need to modify a predefined generic inquiry to meet particular specifications.

## Modification of a Predefined Inquiry {#section_gvh_2cl_jrb .section}

You can adjust any predefined generic inquiry to the needs of your organization by changing the tables that are used in the inquiry, adding or removing parameters, or changing the results grid. However, note that the system does not update the settings of customized generic inquiries during an upgrade of Acumatica ERP. That is, after an upgrade, any predefined generic inquiries that you have customized will not include any changes that may have been made to the system data with this upgrade. For example, if a database table previously included in the generic inquiry was removed in the system data of a newer version of Acumatica ERP, after an upgrade to this version, the customized generic inquiry that includes this table will no longer work.

Thus, we strongly recommend that instead of directly modifying a predefined generic inquiry, you make a copy of the predefined inquiry and modify the copy.

## Copying of a Predefined Inquiry Configured as an Entry Point {#section_hvh_2cl_jrb .section}

Some predefined generic inquiries are configured as entry point forms on the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form—that is, for these inquiries, the **Replace Entry Screen with this Inquiry in Menu** check box is selected on the **Entry Point** tab, and the navigation path to the corresponding entry form is configured on the **Navigation** tab.

When you copy one of these generic inquiries, the system does not copy the settings defined on the **Entry Point** tab. Also, on the **Navigation** tab, the system changes the value in the **Window Mode** box to *Same Tab* for the copied navigation path that was defined for the original generic inquiry on the **Navigation** tab, indicating that the entry point form will be opened instead of the predefined generic inquiry in the same browser tab.

## Resetting of Changes Made to a Predefined Inquiry { .section}

If you have directly customized a generic inquiry instead of making a copy and customizing the copy, you can revert your changes to the generic inquiry. You reset the settings of the customized generic inquiry to the default settings by clicking **Clipboard** &gt; **Reset to Default** on the form toolbar of the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form. The system restores the predefined settings of the generic inquiry from the system data.

**Important:** When you perform this step, all customizations for this generic inquiry in the tenant will be lost.

**Parent topic:**[Copying a Predefined Inquiry](../UserGuide/GI_Copying_Predefined_Inquiry_Mapref.md)

