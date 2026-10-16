# Shop Floor Kiosk Administration: System Requirements and Prerequisites

## Software Requirements

Before you deploy the Shop Floor Kiosk, make sure that the workstations and server environment meet the requirements in the following table.

|Component|Requirement|
|---------|-----------|
|Acumatica ERP|2026 R1 or later|
|Windows Server|2016 64-bit edition|
|Web browser|Latest version of Google Chrome, Mozilla Firefox, or Microsoft Edge|

## Licensing

The Shop Floor Kiosk requires a valid Manufacturing license. If the **Shop Floor Kiosk** check box on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form is present but unavailable for selection after the *Manufacturing* feature is enabled, contact your Acumatica representative to verify that your license includes the Shop Floor Kiosk.

## Prerequisites

The Shop Floor Kiosk works only if the *Shop Floor Kiosk* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

Additionally, you may need to complete the following configuration steps:

-   **Enable the _Multibranch Support_ feature**: If your organization uses multiple branches, the *Multibranch Support* feature must also be enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. When it is enabled, the **Branch** box appears on the **Shop Floor Kiosk** tab of the [Portals](SP_70_10_00.md) \(SP701000\) form, allowing you to assign a specific branch to each kiosk portal.
-   **Configure shifts**: At least one shift must be defined on the [Shifts](AM_20_50_00.md) \(AM205000\) form before you can properly set up production employee records. If the **Shop Floor Shift** box on the [Employees](EP_20_30_00.md) \(EP203000\) form is blank for a production employee, that employee cannot sign in to the kiosk.
-   **Create employee records**: Each production employee who will use the kiosk must have an employee record on the [Employees](EP_20_30_00.md) \(EP203000\) form, and the **Production Employee** check box must be selected before the employee can appear in the kiosk sign-in list.
-   **Enable the _Lot and Serial Tracking_ feature**: This feature is required for issuing lot- or serial-tracked materials and for all lot/serial attribute functionality.
-   **Enable the _Lot/Serial Attributes_ feature**: This feature is required for entering, viewing, and searching lot or serial attributes. This feature requires *Lot and Serial Tracking*.

**Parent topic:**[Shop Floor Kiosk](../UserGuide/MFG_SFK_Mapref.md)

