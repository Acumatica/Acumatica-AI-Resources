# Preparatory Steps {#_5199fbb9-0ffa-428a-bd50-105b79d121fc .concept}

To install the Acumatica add-in, you must use a manifest file that contains all deployment instructions. The system generates a manifest file individually for each user. Before you begin installing the add-in, you need to sign in to your Acumatica ERP instance and on the **Email Settings** tab of the [User Profile](SM_20_30_10.md) \(SM203010\) form, click the correct link to download the add-in manifest file:

-   *Get Outlook Add-In Manifest for Exchange Server On-Premises*: Use this link if you're using Exchange Server on-premises.
-   *Get Outlook Add-In Manifest for Microsoft 365*: Use this link if you're using a Microsoft 365 subscription. When you download the Microsoft 365 manifest, it comes prefilled with all the necessary Microsoft Entra identifiers—no extra configuration needed.

**Attention:**

The *Get Outlook Add-In Manifest for Exchange Server On-Premises* link is available only if the *Outlook Integration* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

The *Get Outlook Add-In Manifest for Microsoft 365* link is available if all of the following conditions are met:

-   The *Outlook Integration* and *OpenID Connect* features are enabled on the [Enable/Disable Features](CS_10_00_00.md) form.
-   The **Use Provider for Sign-In to Acumatica Add-In for Outlook** check box is selected for an OpenID provider on the [OpenID Providers](SM_30_30_20.md) \(SM303020\) form.

After that, if you want to customize the ribbon button that will appear on your Outlook client, edit the values of the following parameters in the manifest file:

-   `DisplayName`: The company name to be displayed
-   `Description`: The description for the company to be displayed
-   `SupportUrl`: An external link to an image file with the company logo

**Tip:** You can modify the manifest file at any time after the add-in has been installed, but you will have to update the add-in for the changes to take effect. For details on how to update the add-in, see [Acumatica Add-In for Outlook: To Update the Acumatica Add-In](OU__how_To_Update_AddIn.md).

**Parent topic:**[Installing and Updating the Acumatica Add-In for the AcumaticaClassic UI](../UserGuide/OU__MNG_Installing_Add_In.md)

