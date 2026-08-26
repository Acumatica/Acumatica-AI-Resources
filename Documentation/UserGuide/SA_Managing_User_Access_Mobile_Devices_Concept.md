# User Access: Mobile Devices {#_c5bad5c5-372b-40c8-906e-572cbbb582ed .concept}

Users of the system can use the Acumatica mobile app to perform their job responsibilities. They just need to download the application to a mobile device and enter the connection parameters: the Acumatica ERP website address and the user credentials. The system keeps track of only those devices for which a user has allowed push notifications from the app.

## Registering Mobile Devices { .section}

If a user of the system is using the Acumatica mobile app and has allowed push notifications from the app for a device, the information about this device is stored in their Acumatica ERP user profile. The details can be viewed on the **Devices** tab of the [User Profile](SM_20_30_10.md) \(SM203010\) form.

When a user signs in to the mobile app for the first time, the application sends details about the device to Acumatica ERP, and then the information is updated with each subsequent sign-in.

The system administrator can manage the registered devices of a user on the **Devices** tab of the [Users](SM_20_10_10.md) \(SM201010\) form.

## Deleting Mobile Devices { .section}

For any user, you can delete any registered device listed on the **Devices** tab of the [Users](SM_20_10_10.md) \(SM201010\) form by clicking it and clicking the standard **Delete Row** button on the table toolbar, or you can delete all devices for a user by clicking the **Delete All** button on this toolbar.

## Enabling Push Notifications { .section}

You can control to which devices the system can send push notifications on the **Devices** tab of the [Users](SM_20_10_10.md) \(SM201010\) form. In the row listing each device, you can use the **Turn On Notifications** check box to selectively allow or disallow these notifications for the device. You can also enable or disable sending push notifications for all of this user's devices by clicking the **Enable All** and **Disable All** buttons, respectively, on the table toolbar.

If push notifications are disabled for a device, the owner of this device will not be able to use the following functionality that uses push notifications:

-   Receiving a push notification if a business event occurred. For details, see [Using Business Events](SA_Using_Business_Events_Mapref.md).
-   Uploading images to Acumatica ERP by using a mobile device. For details, see [Managing External Storage for File Attachments](SA_External_Storage_Management_Mapref.md).
-   Using two-factor authentication. For details, see [Managing Two-Factor Authentication](SA_Two_Factor_Auth_Mapref.md).

## Tracking User Location { .section}

In Acumatica ERP, you can view the GPS location coordinates of users that are tracked through their mobile devices. To be able to view a user's coordinates in the system, you have to configure location tracking for each necessary user on the [Users](SM_20_10_10.md) \(SM201010\) form. You use the **Location Tracking** tab to turn on the tracking functionality for the selected user, specify the time and distance intervals at which the coordinates will be tracked in the system, and specify on which days and during which time periods the system registers the user location. For detailed instructions on how to turn on and configure the location tracking, see [To Turn On Location Tracking of a User](SM__HOW_To_Turn_on_Location_Tracking.md).

**Attention:** For GPS location coordinates to be tracked, on the user's device, GPS location recording has to be switched on.

You can view the history of the location coordinates of all users that have been tracked in the system on the [Location Tracking History](SM_20_20_00.md) \(SM202000\) form.

**Parent topic:**[Managing User Access](../UserGuide/SA_Managing_User_Access_Mapref.md)

