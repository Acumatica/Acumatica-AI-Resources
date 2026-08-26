# Shop Floor Kiosk Administration: Configuring the Kiosk Portal {#_de669aed-873d-4347-8b0a-42439815a367 .concept}

You create and configure the kiosk portal on the [Portals](SP_70_10_00.md) \(SP701000\) form.

**At a glance**: Portal configuration

1.  Create a portal record for the kiosk.
2.  Make the kiosk form available in the portal.
3.  Set up the sign-in page and kiosk layout.
4.  Specify the branch and user role for the kiosk.
5.  Save the portal record.

## Creating a Portal Record for the Kiosk { .section}

To start creating a new portal record, click Add New Record on the form toolbar and specify the following settings in the Summary area of the form:

-   **Portal Name**: Enter a short name for the portal that will serve as the portal identifier.
-   **Portal URL**: Enter the full URL of the kiosk website you deployed.
-   **Portal Description**: Enter a descriptive name for the kiosk \(for example, the name of the plant or site it will serve\).
-   **Portal Type**: Select the *Shop Floor Kiosk* option.
-   **Portal Access Role**: Make sure the predefined *SFK App Access* role is selected automatically when you choose the *Shop Floor Kiosk* portal type. This is the role that the service user account must have to start the kiosk outer session.

## Making the Kiosk Form Available in the Portal { .section}

On the **General** tab, make sure that the **Shop Floor Kiosk** category and the **AM000000 – Shop Floor Kiosk** check box beneath it were selected automatically when you selected the *Shop Floor Kiosk* portal type.

Because the kiosk is built on a single form, no additional forms need to be enabled on this tab.

## Setting Up the Sign-In Page and Kiosk Layout { .section}

On the **Portal Settings** tab, specify the following settings:

-   **Default Home Form**: Select *Shop Floor Kiosk \(AM000000\)*. This is a required step that ensures that the kiosk landing page opens immediately when the service user account signs in.
-   **Display Navigation Panels**, **Display Top Message**, and **Display Go to Catalog Button**: Make sure these check boxes are cleared.
-   **Sign-In Page Image**: Upload an image to be displayed on the administrative sign-in screen.

**Note:** When the *Shop Floor Kiosk* portal type is selected, several display options on this tab may be cleared and disabled automatically. These options are not applicable to the kiosk and do not need to be configured.

## Specifying the Branch and User Role { .section}

On the **Shop Floor Kiosk** tab, specify the following settings:

-   **Branch**: Select the branch to be used as the active session branch when operators create manufacturing transactions through the kiosk. This field is required and must be filled in before you can save the portal record.

    **Note:** The **Branch** box appears only if the *Multibranch Support* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

-   **Kiosk User Role**: Select the role that production employees must have to sign in to the inner session of the kiosk. The predefined *SFK User* role is selected by default.

## Saving the Portal Record { .section}

After you have filled in all required settings, make sure that the **Online** check box is selected in the Summary area and click **Save** on the form toolbar. The portal becomes active and available at the URL you specified.

**Parent topic:**[Shop Floor Kiosk](../UserGuide/MFG_SFK_Mapref.md)

