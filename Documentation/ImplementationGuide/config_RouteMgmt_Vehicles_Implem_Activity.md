# Vehicles: To Create Vehicles {#_abba7366-4df6-4ef4-9f4c-6d43d8c54cba .task}

In Acumatica ERP, a *vehicle* is a record created on the [Vehicles](../UserGuide/FS_20_36_00.md) \(FS203600\) form that contains the details of a particular vehicle used by your company to perform route services for customers. When you create a new vehicle, the system automatically creates a corresponding piece of equipment on the [Equipment](../UserGuide/FS_20_50_00.md) \(FS205000\) form with the **Vehicle** check box selected; on this form, however, the details of the equipment are read-only.

## Story {#section_zbj_yw1_ldc .section}

Suppose that the SweetLife Equipment and Service Center has multiple types of vehicles that they use for providing route services. Acting as an administrative user, you will create vehicle records in Acumatica ERP.

## Process Overview { .section}

On the [Vehicles](../UserGuide/FS_20_36_00.md) \(FS203600\) form, you will create two vehicle records and then find the newly created vehicle records in the list of equipment on the [Equipment](../UserGuide/FS_20_50_00.md) \(FS205000\) form.

## System Preparation {#section_xyr_cbv_3dc .section}

Before you start creating vehicles, do the following:

1.  On the Acumatica ERP website, sign in to a company with the *U100* dataset preloaded as a system administrator by using the *gibbs* username and the *123* password.
2.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, select the *SWEETEQUIP - Service and Equipment Sales Center* branch.

## Step 1: Creating Vehicles {#section_l1x_yw1_ldc .section}

Perform the following instructions:

1.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, select the *SWEETEQUIP - Service and Equipment Sales Center* branch.
2.  On the [Vehicles](../UserGuide/FS_20_36_00.md) \(FS203600\) form, add a new record.
3.  In the Summary area, specify the following settings:
    -   **Vehicle Type ID**: *VAN*
    -   **VIN**: `1234567890`
    -   **Description**: `White Ford`
    -   **Branch Location**: *WEST BRIGHTON*
4.  On the form toolbar, click **Save**.

    When you saved the vehicle settings you have entered, the system also created a corresponding equipment record on the [Equipment](../UserGuide/FS_20_50_00.md) \(FS205000\) form. In the **Equipment Nbr.** box on this form, the system assigned an identifier to the equipment \(that is, the vehicle\) based on the numbering sequence specified in the **Equipment Numbering Sequence** box on the [Service Management Preferences](../UserGuide/FS_10_01_00.md) \(FS100100\) form. The system copied this number to the **Vehicle ID** box of the [Vehicles](../UserGuide/FS_20_36_00.md) form when you saved the new vehicle.

5.  On the form toolbar, click **Add New Record** to create another vehicle and specify the following settings:
    -   **Vehicle Type ID**: *VAN*
    -   **VIN**: `987654321`
    -   **Description**: `Brown Nissan`
    -   **Branch Location**: *WEST BRIGHTON*
6.  On the form toolbar, click **Save**.

    Notice that the system has inserted the vehicle ID in the **Vehicle ID** box.


## Step 2: Reviewing the Equipment {#section_k3l_zw1_ldc .section}

Perform the following instructions:

1.  On the [Equipment](../UserGuide/FS_20_50_00.md) \(FS205000\) form, open the *White Ford* record.
2.  Verify that for this equipment, the **Vehicle** check box \(which is read-only on this form\) is selected.
3.  By performing similar instructions, verify that the *Brown Nissan* equipment has been created and defined as a vehicle.

**Parent topic:**[Vehicles](../ImplementationGuide/config_RouteMgmt_Vehicles_Mapref.md)

