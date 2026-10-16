## Developer Guide 

# Mobile Framework Guide 

# 2025 R1 


<!-- PAGE_BREAK -->
 Contents | 2 

## Contents 

 Copyright...............................................................................................................................................5 

 Working with the Mobile Framework....................................................................................................... 6 

 To Start Acumatica ERP on a Mobile Device.............................................................................................. 8 

 System Requirements for the Acumatica Mobile App............................................................................... 11 

 Mobile Site Map.................................................................................................................................... 12 

 To Update the Main Menu of a Mobile App.................................................................................................... 12 

 To Manage the Workspaces of the Mobile App.............................................................................................. 12 

 To Configure Workspaces in the Acumatica ERP Instance................................................................... 13 

 To Manage Workspaces in a Customization Project............................................................................. 15 

 To Tailor A User's Workspaces in the Mobile App................................................................................. 17 

 To Update a Screen of a Mobile App.............................................................................................................. 18 

 To Add a Screen to the Mobile Site Map (Example)....................................................................................... 19 

 To Remove a Screen of a Mobile App............................................................................................................. 20 

 To Convert an XML Mobile Site Map to MSDL Format................................................................................... 21 

 To Reverse Changes Made to the Mobile Site Map........................................................................................ 21 

 Configuring the Mobile Site Map............................................................................................................ 23 

 Main Menu........................................................................................................................................................ 23 

 Sidebar Menu................................................................................................................................................... 29 

 Screens............................................................................................................................................................. 30 

 Getting the WSDL Schema..................................................................................................................... 30 

 Adding Attributes of Entities to Mobile Screens................................................................................... 32 

 Configuring Editing Screens...................................................................................................................35 

 Configuring Related Containers.............................................................................................................37 

 Configuring Selectors............................................................................................................................. 43 

 Configuring User-Defined Fields............................................................................................................44 

 Displaying Any Field as a Text Field.......................................................................................................47 

 Mapping Dashboards..............................................................................................................................47 

 Mapping Reports.....................................................................................................................................48 

 Redirecting the User to Different Screens and Containers...................................................................51 

 Configuring Screen Layout..............................................................................................................................54 

 Configuring Lists..................................................................................................................................... 54 

 Displaying Thumbnails...........................................................................................................................56 

 Grouping Fields on a Screen..................................................................................................................57 

 Configuring Specific Functionality of a Screen..............................................................................................58 


<!-- PAGE_BREAK -->
 Contents | 3 

 Creating the User Signature...................................................................................................................59 

 Configuring Attachments....................................................................................................................... 61 

 Dialog Boxes and Smart Panels...................................................................................................................... 63 

 Mapping a Smart Panel.......................................................................................................................... 63 

 Displaying a Simple Dialog Box............................................................................................................. 68 

 Configuring the Close Button of a Smart Panel....................................................................................69 

**Configuring the Mobile Site Map by Using XML (deprecated).................................................................... 71** 

 To Customize the Mobile Site Map for a Form............................................................................................... 71 

 To Add a Form to the Mobile Site Map by Using an XML File........................................................................ 71 

 To Generate the Delta from Two Mobile Site Maps....................................................................................... 73 

 How to Use XML Examples of This Section.................................................................................................... 74 

 Main Menu........................................................................................................................................................ 74 

 Sidebar Menu................................................................................................................................................... 79 

 Screens............................................................................................................................................................. 80 

 Getting the WSDL Schema..................................................................................................................... 81 

 Configuring Lists..................................................................................................................................... 82 

 Configuring Editing Forms..................................................................................................................... 87 

 Mapping Reports.....................................................................................................................................89 

 Mapping Dashboards..............................................................................................................................92 

 Grouping Fields on a Form.................................................................................................................... 93 

 Configuring Attachments....................................................................................................................... 94 

 Configuring Selectors............................................................................................................................. 96 

 Configuring Nested Containers..............................................................................................................98 

 Adding Entity Attributes to Mobile Screens........................................................................................ 105 

 Redirecting to Different Screens and Containers............................................................................... 107 

 Displaying Any Field as a Text Field.....................................................................................................111 

 Creating the User Signature.................................................................................................................111 

**Mobile Site Map Reference...................................................................................................................116** 

 MSDL............................................................................................................................................................... 116 

 Object Types......................................................................................................................................... 117 

 Constants.............................................................................................................................................. 145 

 Instructions........................................................................................................................................... 145 

 Error Messages......................................................................................................................................152 

 XML Tags.........................................................................................................................................................153 

 <sm:Action>...........................................................................................................................................155 

 <sm:Attachments>................................................................................................................................ 157 


<!-- PAGE_BREAK -->
 Contents | 4 

 <sm:Attributes>.....................................................................................................................................158 

 <sm:Container>.....................................................................................................................................158 

 <sm:ContainerLink>..............................................................................................................................159 

 <sm:Field>............................................................................................................................................. 160 

 <sm:Folder>.......................................................................................................................................... 163 

 <sm:Group>...........................................................................................................................................164 

 <sm:Include>.........................................................................................................................................165 

 <sm:Layout>..........................................................................................................................................165 

 <sm:RecordActionLink>........................................................................................................................167 

 <sm:Screen>..........................................................................................................................................168 

 <sm:SelectorContainer>.......................................................................................................................169 

 <sm:Type>............................................................................................................................................. 169 

 Icons................................................................................................................................................................169 

**Troubleshooting Tips...........................................................................................................................182** 

 To Access an Acumatica ERP Instance Running Locally from the Acumatica Mobile App......................... 182 

**Known Limitations..............................................................................................................................185** 

**ac.exe MOBILEITEMAP Reference..........................................................................................................186** 


<!-- PAGE_BREAK -->
 Copyright | 5 

## Copyright 

**©** (^) **2025 Acumatica, Inc. ALL RIGHTS RESERVED.** No part of this document may be reproduced, copied, or transmitted without the express prior consent of Acumatica, Inc. 3075 112th Avenue NE, Suite 200, Bellevue, WA 98004, USA 

#### Restricted Rights 

 The product is provided with restricted rights. Use, duplication, or disclosure by the United States Government is subject to restrictions as set forth in the applicable License and Services Agreement and in subparagraph (c)(1)(ii) of the Rights in Technical Data and Computer Soware clause at DFARS 252.227-7013 or subparagraphs (c)(1) and (c)(2) of the Commercial Computer Soware-Restricted Rights at 48 CFR 52.227-19, as applicable. 

#### Disclaimer 

 Acumatica, Inc. makes no representations or warranties with respect to the contents or use of this document, and specifically disclaims any express or implied warranties of merchantability or fitness for any particular purpose. Further, Acumatica, Inc. reserves the right to revise this document and make changes in its content at any time, without obligation to notify any person or entity of such revisions or changes. 

#### Trademarks 

 Acumatica is a registered trademark of Acumatica, Inc. HubSpot is a registered trademark of HubSpot, Inc. Microso Exchange and Microso Exchange Server are registered trademarks of Microso Corporation. All other product names and services herein are trademarks or service marks of their respective companies. 

 Soware Version: 2025 R1 

 Last Updated: 06/01/2025 


<!-- PAGE_BREAK -->
 Working with the Mobile Framework | 6 

## Working with the Mobile Framework 

 By using Acumatica Mobile Framework, you can access and use Acumatica ERP through a mobile device wherever you are. 

 Acumatica Mobile Framework is a modern web development platform that provides the following key features: 

- **Real-time access:** The Acumatica mobile app connects to your Acumatica ERP instance in real time, so     users always have access to up-to-date information. 

- **Developer-selected functionality:** Any Acumatica ERP functionality can be exposed on a mobile device. 

- **Mobile device integration:** The Acumatica mobile app uses the unique capabilities of the applicable mobile     device, such as the camera or fingerprint reader. 

- **Ease of customization:** The framework gives you the ability to configure the mobile app by using metadata     without coding. You do not need to learn how to program for iOS or Android. The framework contains the following components (see the diagram below): 

- The native mobile client application that Acumatica provides for iOS devices 

- The native mobile client application that Acumatica provides for Android devices 

- The Mobile API, which is a part of the Acumatica Framework API 

 Figure: Acumatica Mobile Framework architecture 

 An Acumatica mobile client application uses the Mobile API to access the data of the forms that are mapped for mobile apps in the Acumatica ERP instance. The metadata of the mobile site map is used to configure the user interface of the mobile client application. You can expose any form of Acumatica ERP on your mobile device if the mobile site map includes the metadata for the form. 

 The Acumatica mobile app is like a browser for an instance of Acumatica ERP in that it does not have built-in ERP-related functionality. The Acumatica mobile app instead uses the configuration and data in Acumatica ERP and displays it to the user. 


<!-- PAGE_BREAK -->
 Working with the Mobile Framework | 7 

This part of the guide describes how to configure the Acumatica ERP mobile site map. The part is intended for application developers who are learning how to customize Acumatica ERP or other Acumatica Framework–based applications. 


<!-- PAGE_BREAK -->
 To Start Acumatica ERP on a Mobile Device | 8 

## To Start Acumatica ERP on a Mobile Device 

 The Acumatica mobile app provides access to the functionality of Acumatica ERP, such as approving documents, managing time cards, processing sales orders, and handling expense receipts and claims. 

 The Acumatica mobile app is an out-of-the-box solution that gives users the ability to access Acumatica ERP from mobile devices so that they can enter and manage their work documents. This application provides the user interface to access the data and functionality of Acumatica ERP by using the predefined original mobile site map. 

 To start using Acumatica ERP on a mobile device, perform the following actions: 

1. Download the free Acumatica mobile app from Apple Store or Google Play, and install it on the mobile     device. 

2. Launch the app. 

3. Enter the URL and optional name of your Acumatica site (for example, _https://your.acumatica.site.com_ ), and     tap **Next**. 

 If both the Acumatica ERP server and the mobile device use the same local wireless network, you can specify the URL in one of the following ways: 

- _[http://<Computer](http://<Computer) Name>/<Website Name>_ , such as _[http://MyComputer/MySite](http://MyComputer/MySite)_ 

- _[http://<IP](http://<IP) Address>/<Website Name>_ , such as _[http://111.222.3.44/MySite](http://111.222.3.44/MySite)_ 

4. Enter the credentials of your user account. 

5. Tap **Sign In** to enter the site. 

 The app connects to the Acumatica ERP server, and the server authorizes the user and returns the metadata to render the Home screen of the mobile app. 

 The following screenshot shows the Home screen of the mobile app. The menu contains a placeholder for adding KPI widgets (see Item 1 in the screenshot), the list of recently visited screens and records (Item 2), the list of screens and records marked as favorites (Item 3), and the tiles with the workspaces (Item 4). 


<!-- PAGE_BREAK -->
 To Start Acumatica ERP on a Mobile Device | 9 

**_Figure: The Home screen of the mobile app_** 

At the bottom of the Home screen, there is a navigation bar highlighted in the following screenshot. The navigation bar contains access to the following: 

- The Home screen of the app 

- Search in the documents and mapped screens 

- The list of favorite workspaces and screens 

- Settings of the app where you can sign out of the instance 


<!-- PAGE_BREAK -->
 To Start Acumatica ERP on a Mobile Device | 10 

**_Figure: The navigation bar of the mobile app_** 


<!-- PAGE_BREAK -->
 System Requirements for the Acumatica Mobile App | 11 

## System Requirements for the Acumatica Mobile App 

 To support the Acumatica mobile app, a device must meet the following requirements: 

- A supported operating system: Android 5.1 and later, or iOS 15 and later 

- Sufficient free disk space (the amount depends on the particular device) 

- An internet connection Currently, the mobile app fully supports the following versions of Acumatica ERP: 

- 2023 R2 

- 2024 R1 

- 2024 R2 


<!-- PAGE_BREAK -->
 Mobile Site Map | 12 

## Mobile Site Map 

 The mobile site map is the metadata you use to configure the Acumatica mobile app. The mobile site map contains descriptions of the elements that should appear on the mobile device, including the main menu, the workspaces, the screens, and the fields and actions on the screens. 

 The mobile site map is defined with Mobile Site Map Definition Language (MSDL) code. You access and edit the mobile site map definition by using the Customization Project Editor. 

### To Update the Main Menu of a Mobile App 

 In a customization project, you can update the main menu of the customized Acumatica mobile app by using the Customization Project Editor. 

#### To Update the Main Menu of the Mobile App 

1. Open the _Customization Projects_ (SM204505) form, and in the **Project Name** column, click the link of the     customization project. The Customization Project Editor opens. 

2. Open the Mobile Application page. 

3. On the More menu of the page, click **Update Main Menu**.     The Update: MENU page opens. The _Update MENU_ screen appears in the list of modified screens on the     Mobile Application page of the Customization Project Editor. 

4. In the **Result Preview** area of the Update: MENU page, explore the original code of the main menu. 

5. In the **Commands** area of the Update: MENU page, implement your code by using Mobile Site Map Definition     Language (MSDL). For details, see _Main Menu_. 

6. Save your changes.     Your commands are applied to the menu. If any errors have occurred, you can see them in the **Errors** area     of the form. If your changes have been applied successfully, you can see the updated site map of the main     menu in the **Result Preview** area of the form. 

7. Publish your customization project. 

 Related Links 

- _Main Menu_ 

### To Manage the Workspaces of the Mobile App 

 The main menu of the Acumatica mobile app contains workspaces that are similar to those in your Acumatica ERP instance but that you configure separately. 

 You manage the workspaces of the main menu by using the Customization Project Editor and the Mobile Workspaces (AU220012) and Mobile Workspace (AU220013) forms in your instance, as well as in the mobile app itself. 

 If you configure the workspaces on the Mobile Workspaces and Mobile Workspace forms and in your customization project, the system applies these settings to all copies of the Acumatica mobile apps connected to the current tenant in the Acumatica ERP instance. To configure these settings, you need to have the Administrator or Customizer predefined role. 


<!-- PAGE_BREAK -->
 Mobile Site Map | 13 

 If any user configures workspaces, screens, and KPI widgets in the mobile app, these settings are applied to the mobile app for only this user. 

### To Configure Workspaces in the Acumatica ERP Instance 

 You configure the workspaces and their screens of the Acumatica mobile app in your Acumatica ERP instance by using the Mobile Workspaces (AU220012) and Mobile Workspace (AU220013) forms, as well as the Customization Project Editor. This topic describes the way you can configure the workspaces of the mobile app. 

 This configuration applies to all copies of the Acumatica mobile app connected to the current tenant in an Acumatica ERP instance. To perform this configuration, you need to have the Administrator or Customizer predefined role. To view the applied changes, if you are signed in to the mobile app, you need to sign out and then to sign in again. 

#### To Add a Workspace 

 You can add a workspace to the mobile app so that its tile is shown on the main menu. Do the following: 

1. In your Acumatica ERP instance, open the _Mobile Workspaces_ (AU220012) form. 

2. On the form toolbar, click **Add Row** and provide the following values: 

- **Workspace ID** : Internal identifier of the workspace 

- **Display Name** : Name of the workspace that is displayed in the mobile app 

3. Make sure that the **Visible** check box is selected in the row of the added workspace. 

4. Save your changes. 

#### To Change the Order of Workspaces 

 To change the order in which the workspaces are displayed on the main menu of the mobile app, perform the following steps: 

1. Open the _Mobile Workspaces_ (AU220012) form. 

2. Click the row with the workspace you want to move. 

3. On the form toolbar, click **Move Row Up** or **Move Row Down** to change the position of the workspace. 

4. Save your changes. 

#### To Remove a Workspace from the List of Workspaces 

 To remove a workspace from the main menu of the mobile app, perform the following steps: 

1. Open the _Mobile Workspaces_ (AU220012) form. 

2. Click the row with the workspace you want to delete. 

3. On the form toolbar, click **Delete Row**.     Alternatively, you can clear the check box in the **Visible** column of the row with the workspace. In this case,     the workspace will not be displayed on the mobile app, but the system will store its settings, and you can     make it visible again if needed. 

4. Save your changes. 


<!-- PAGE_BREAK -->
 Mobile Site Map | 14 

#### To Add a Screen to a Workspace 

 To add a screen to a workspace, perform the following steps: 

1. Open the _Mobile Workspaces_ (AU220012) form. 

2. In the **Workspace ID** column of the table on the form, click the link with the identifier of the workspace for     which you want to add a screen.     The _Mobile Workspace_ (AU220013) opens for the workplace. 

3. On the table toolbar of the **Screens** tab, click **Add Row**. 

4. In the **Item Name** column, select the required screen. 

 If you have added a new screen to the mobile site map and want to add it to a workspace, you have to publish the customization project first. The new screen is displayed in the Item Name selector only aer changes to the mobile site map are applied to the instance. 

5. Make sure the **Visible** check box is selected for the added screen. 

6. Save your changes. 

#### To Change the Position of a Screen in a Workspace 

 To change the position of any screen in a workspace, perform the following steps: 

1. Open the _Mobile Workspace_ (AU220013) form, and select the workspace. 

2. Click the row with the screen you want to move. 

3. On the form toolbar, click **Move Row Up** or **Move Row Down** to change the position of the screen. 

4. Save your changes. 

#### To Remove a Screen from a Workspace 

 To remove a screen from a workspace, perform the following steps: 

1. Open the _Mobile Workspace_ (AU220013) form for the required workspace. 

2. Click the row with the screen you want to delete. 

3. On the table toolbar, click **Delete Row**.     Alternatively, you can clear the check box in the **Visible** column of the row with this screen. In this case, the     screen will not be displayed in the workspace but will remain in the list of screens on the **Screens** tab of this     form, and you can make it visible again if needed. 

4. Save your changes. 

#### To Add a Widget to a Workspace 

 To add a widget to a workspace, perform the following steps: 

1. Open the _Mobile Workspace_ (AU220013) form for the required workspace. 

2. On the table toolbar of the **Widgets** tab, click **Add Row**. 

3. In the **Dashboard** column, select the dashboard that contains the widget. 

4. In the **Widget** column, select the widget you want to add to the dashboard. 


<!-- PAGE_BREAK -->
 Mobile Site Map | 15 

5. In the row, make sure the **Visible** check box is selected. 

6. Save your changes. 

#### To Change the Position of a Widget in a Workspace 

 To change the position of any widget in a workspace, perform the following steps: 

1. Open the _Mobile Workspace_ (AU220013) form for the workspace. 

2. On the **Widgets** tab, click the row with the widget you want to move. 

3. On the table toolbar, click **Move Row Up** or **Move Row Down** to change the position of the widget. 

4. Save your changes. 

#### To Remove a Widget from a Workspace 

 To remove a widget from a workspace, perform the following steps: 

1. Open the _Mobile Workspace_ (AU220013) form for the required workspace. 

2. On the **Widgets** tab, click the row with the widget you want to delete. 

3. On the table toolbar, click **Delete Row**. 

4. Save your changes. 

 Alternatively, you can clear the check box in the Visible column of the row with the widget. In this case, the widget will not be displayed in the workspace but will remain in the list of widgets on the Mobile Workspace (AU220013) form, and you can make it visible again if needed. 

### To Manage Workspaces in a Customization Project 

 You can add to a customization project the following types of items: 

- _MobileSitemapWorkspace_ : This item contains general data, such as the name of a workspace, its sequential     number, and its icon. 

- _MobileSitemapWorkspaceItems_ : This item contains the screens included in the workspace. 

- _MobileSitemapWorkspaceWidgets_ : This item contains the KPI widgets included in the workspace and its     screens. We recommend that you add screens to the workspace of the mobile app in Acumatica ERP. If you were to add a new screen to the mobile app by using the **Add New Screen** command on the Mobile Application page of the Customization Project Editor, the new screen would be added to the **Other** workspace by default. To avoid this, you need to add this screen to one of the workspaces on the _Mobile Workspace_ (AU220013) form, as described in the _To Add a Screen to a Workspace_ section of the _To Manage Workspaces in a Customization Project_ topic. 

#### To Add a Workspace to a Customization Project 

 To add any workspaces to a particular customization project, perform the following steps: 

1. Open the _Customization Projects_ (SM204505) form, and in the **Project Name** column, click the link of the     customization project. The Customization Project Editor opens. 

2. In the navigation pane, click **Mobile Application** to open the Mobile Application page. 

3. On the More menu of the page, click **Manage Workspaces**.     The Mobile Workspace page opens. 


<!-- PAGE_BREAK -->
 Mobile Site Map | 16 

4. On the page toolbar, click **Add New Record**.     The **Add Workspace** dialog box opens. The dialog box contains workspaces that you have modified. These     include workspaces for which you have added any screens or widgets on the _Mobile Workspace_ (AU220013)     form, new workspaces you have created on the form, as well as workspaces whose order you have changed     on the _Mobile Workspaces_ (AU220012) form. 

5. Select the unlabeled check box in each row with a workspace whose changes you want to add to the     project.     In the navigation pane, notice that the Mobile Workspaces page is listed under the **Mobile Application**     node. Open this page, and you can see that the More menu of this page contains the **Manage Workspaces**     command. 

6. Click **Save** to add the selected workspaces to the customization project and save your changes. 

#### To Configure Workspaces from a Customization Project 

 To configure workspaces from a customization project, perform the following steps: 

1. Open the _Customization Projects_ (SM204505) form, and in the **Project Name** column, click the link of the     customization project. The Customization Project Editor opens. 

2. In the navigation pane, click **Mobile Workspaces** to open the Mobile Application page. 

3. On the More menu of the page, click **Manage Workspaces**.     The _Mobile Workspaces_ (AU220012) form opens in a new window. 

4. On the form, configure the workspaces as described in _To Configure Workspaces in the Acumatica ERP_     _Instance_. 

5. Save your changes, and close the window. 

#### To Update a Workspace in a Customization Project 

 To update a workspace in a customization project aer you have modified it in the Acumatica ERP instance, perform the following steps: 

1. Open the _Customization Projects_ (SM204505) form, and in the **Project Name** column, click the link of the     customization project. The Customization Project Editor opens. 

2. In the navigation pane, click **Mobile Workspaces** to open the Mobile Application page. 

3. In the table on the page, click the workspace you want to update. 

4. On the More menu, click **Reload from Database**. 

#### To Remove a Workspace from a Customization Project 

 To remove a workspace from a customization project, perform the following steps: 

1. Open the _Customization Projects_ (SM204505) form, and in the **Project Name** column, click the link of the     customization project. The Customization Project Editor opens. 

2. On the navigation pane, click **Mobile Workspaces** to open the Mobile Application page. 

3. In the table on the page, click the row with the workspace you want to remove. 

4. On the page toolbar, click **Delete Row**. 

5. Save your changes. 


<!-- PAGE_BREAK -->
 Mobile Site Map | 17 

### To Tailor A User's Workspaces in the Mobile App 

 The configuration described in this topic is performed by a user of the Acumatica mobile app. The configuration applies to only this user's copy of the mobile app. 

 A workspace added on the Mobile Workspaces form is displayed on the main menu of the mobile app only if this workspace contains at least one screen or one KPI widget that is available to the mobile app user. 

#### To Change the Order of Workspaces 

 To change the order in which the workspaces are displayed on the main menu of the mobile app for your user account, perform the following steps: 

1. Sign in to the mobile app.     The main menu of the app opens. 

2. On the More menu of the **Workspaces** section, tap **Reorder Workspaces**.     The **Reorder Workspaces** screen opens. 

3. On the screen, tap and hold a tile, and then drag it to the required location. 

4. Click the back arrow to save your changes and return to the main menu. 

#### To Change the Order of Screens 

 To change the order in which the screens are displayed within a workspace, perform the following steps: 

1. Sign in to the mobile app.     The main menu of the app opens. 

2. Tap the tile with the required workspace. 

3. Tap the More (…) button of the **Screens** section, and then tap **Reorder Screens**.     The **Reorder Screens** screen opens. 

4. On the screen, tap and hold a tile, and then drag it to the required location. 

5. Click the back arrow to save your changes and return to the workspace. 

#### To Add KPI Widgets 

 On the main menu of the mobile app and in each of the workspaces, you can add KPI widgets of the following types: 

- Scorecard 

- Meter 

- Trend card By default, no widgets are displayed. To add a widget to the main menu or to a workspace, perform the following steps: 

1. Sign in to the mobile app.     The main menu of the app opens. 


<!-- PAGE_BREAK -->
 Mobile Site Map | 18 

2. On the menu, tap **Add KPI** , or open a workspace and then tap **Add KPI**.     The Search screen opens. 

3. On the screen, tap the widget you want to add.     Notice that the mobile app marks it as a favorite. 

4. Click the back arrow to save your changes and return to the workspace. 

 The mobile app adds the selected widget to the workspace or to the main menu. You can view the list of records of a widget by tapping it. 

 Aer you have added at least one widget to the workspace, the More (…) button of the KPIs section becomes available. You can edit the list of KPIs or add new ones by tapping the corresponding commands on this menu. 

 You can see a widget only if the corresponding dashboard is visible and your user account has the needed privileges to view this dashboard. 

#### To Add a Screen to Your List of Favorites 

 To add a screen to your list of favorites, perform the following steps: 

1. Sign in to the mobile app.     The main menu of the app opens. 

2. Tap the workspace that contains the screen, and then tap the screen you want to add to favorites. 

3. Tap the More (…) button of the screen, and then tap **Add Screen to Favorites**. 

4. Click the back arrow to save your changes and return to the workspace. 

 To view the added screens, click Favorites on the bottom menu of the mobile app. 

 You can remove screens from favorites by performing steps similar to those you performed to add these items to favorites. You tap the More (…) buttonof an item, and then you tap Remove Screen from Favorites. 

#### To Add a Record to Your List of Favorites 

 To add a record to your list of favorites, perform the following steps: 

1. Sign in to the mobile app.     The main menu of the app opens. 

2. Tap the required workspace, and then tap the required screen. 

3. Select the record you want to add to favorites. 

4. Tap the More (…) button of the record, and then tap **Add Record to Favorites** , and close the record. 

5. Click the back arrow to save your changes and return to the workspace. 

 To view the added records, click Favorites on the bottom menu of the mobile app. 

 You can remove records from favorites by performing steps similar to those you performed to add these items to favorites. You tap the More (…) button of an item, and then you tap Remove Record from Favorites. 

### To Update a Screen of a Mobile App 

 In a customization project, you can update an existing screen of the customized Acumatica mobile app by using the Customization Project Editor. 


<!-- PAGE_BREAK -->
 Mobile Site Map | 19 

#### To Update a Screen of a Mobile App 

1. Open the _Customization Projects_ (SM204505) form, and in the **Project Name** column, click the link of the     customization project. The Customization Project Editor opens. 

2. Open the Mobile Application page. 

3. On the More menu of the page, click **Update Existing Screen**.     The **Update Existing Screen** dialog box opens. 

4. In the dialog box, specify the ID of the screen you want to update, and click **OK**.     The Update: <screen_name> page opens. The new _update_ screen with its details appears in the list of     modified screens on the Mobile Application page of the Customization Project Editor. 

5. Explore the original code of the screen in the **Result Preview** area of the Update: <screen_name> page. 

6. Implement your code by using Mobile Site Map Definition Language (MSDL) in the **Commands** area of the     page. For details, see _Screens_. 

7. Save your changes.     Your commands are applied to the site map. If any errors have occurred, you can see them in the **Errors** area     of the page. If your changes have been applied successfully, you can see the updated site map of the main     menu in the **Result Preview** area of the form. 

8. Publish the customization project. 

### To Add a Screen to the Mobile Site Map (Example) 

 Suppose that you need to add to the Acumatica mobile app a screen that corresponds to an Acumatica ERP form. The form ID is XXX. The desired mobile screen has to contain the Date and Description fields and the Insert and Delete actions of the original XXX form of Acumatica ERP. Further suppose that you need to add the screen to a workspace. 

 Figure: Use of MSDL to configure a screen in the mobile app 

 The diagram above shows how the Acumatica Mobile Framework uses the MSDL code to configure the XXX screen in the mobile app. (See Configuring the Mobile Site Map for details.) You declare the desired screen, 


<!-- PAGE_BREAK -->
 Mobile Site Map | 20 

 workspace, containers, fields, actions, and other objects by using Mobile Site Map Definition Language (MSDL) in the Customization Project Editor. The objects you want to be displayed on the mobile app screen must be present on the original Acumatica ERP form (see Getting the WSDL Schema ). 

 Aer you publish your customization project, the screen you have defined by using MSDL appears in the mobile app. 

#### To Add a Screen to the Mobile Site Map 

 To add a screen to the mobile site map, perform the following steps: 

1. Get the WSDL schema for the original _XXX_ screen of Acumatica ERP, as described in _Getting the WSDL_     _Schema_. 

2. Open the _Customization Projects_ (SM204505) form, and in the **Project Name** column, click the link of the     customization project. The Customization Project Editor opens. 

3. Open the Mobile Application page. 

4. On the More menu of the page, click **Add New Screen**.     The **Add New Screen** dialog box opens. 

5. In the dialog box, enter the form ID of the Acumatica ERP form (and thus of the corresponding screen in the     mobile app) that you want to add to the mobile app, and click **OK**.     The Add: <screen_name> page opens. The row with the _add_ screen and its details appears in the list of     modified screens on the Mobile Application page of the Customization Project Editor. 

6. Notice that the initial code of the screen includes only one add instruction. 

 add screen <screen_ID> { # you can add commands here # ObjectAttribute = Value } 

 (See add for details about the instruction.) 

7. Implement the code of the new screen in the **Commands** area of the Add page. For details, see _Screens_.     While implementing the code, use the WSDL schema to understand which actions and fields are available     for the form you are adding. For details, see _Getting the WSDL Schema_. 

8. Save your changes.     Your commands are applied to the site map. If any errors have occurred, you can see them in the **Errors** area     of the page. If your changes have been applied successfully, you can see the updated site map of the main     menu in the **Result Preview** area of the form. 

9. On the Update: MENU page, add a shortcut for the new screen in the main menu, as illustrated in the     following code. 

 add item <screen_ID> { visible = True displayName = "screen_title" } 

 10.Save your changes, and publish your customization project. 

### To Remove a Screen of a Mobile App 

 You can remove a screen of the customized Acumatica mobile app from a customization project by using the Customization Project Editor. 


<!-- PAGE_BREAK -->
 Mobile Site Map | 21 

#### To Remove a Screen of a Mobile App 

1. Open the _Customization Projects_ (SM204505) form, and in the **Project Name** column, click the link of the     customization project. The Customization Project Editor opens. 

2. Open the Mobile Application page. 

3. On the More menu of the page, click **Remove Existing Screen**.     The **Remove Existing Screen** dialog box opens. 

4. In the dialog box, specify the ID of the screen you want to remove, and click **OK**.     The selected screen is removed. The _Remove <screen_name>_ row appears in the list of modified screens on     the Mobile Application page of the Customization Project Editor. 

### To Convert an XML Mobile Site Map to MSDL Format 

 You can convert an XML mobile site map to MSDL format any time you want by using the ac.exe command-line utility, as described in this topic. 

#### To Convert an XML Site Map to MSDL Format 

 Run the ac.exe command-line utility, which is located in the Data folder of your Acumatica ERP installation folder, with the MOBILESITEMAP command, the convert argument, and the following parameters: 

- The path to the folder with the mobile site map, which is the \App_Data\Mobile folder of the Acumatica     ERP application instance. The file containing the mobile site map must be named mobilesitemap.xml. 

- The path to the MSD script file to which you want to save the generated site map. The following code shows an example of the command line. (The line breaks are only for display purposes.) 

 ac.exe MOBILESITEMAP c s "D:\ProgramFiles\AcumaticaERP\CustomizedAcumaticaDB\App_Data\Mobile" "D:\ProgramFiles\AcumaticaERP\CustomizedAcumaticaDB\App_Data\Mobile\sitemap.msd" 

 You can use the short name of the convert argument, which is c. 

 Related Links 

- _ac.exe MOBILEITEMAP Reference_ 

### To Reverse Changes Made to the Mobile Site Map 

 When you are customizing the mobile site map in a customization project by using the Customization Project Editor, you might need to reverse the changes you have made to the site map of the Acumatica mobile app in this project. You can return to the original site map for one tenant or for all tenants without removing the other changes you have made in the customization project. 

#### To Reverse Changes Made to the Mobile Site Map 

 To reverse the changes to the mobile site map in a particular customization project, perform the following steps: 


<!-- PAGE_BREAK -->
 Mobile Site Map | 22 

1. Open the customization project in the Customization Project Editor. 

2. Click **Mobile Application** in the navigation pane to open the Mobile Application page. 

3. On the More menu of the page, click **Clear Current Tenant** if you want to reverse the changes to the current     tenant only. If you want to reverse the changes to all tenants, click **Clear All Tenants**. 

The mobile app customization is unpublished from the selected tenants. 

To return to your changes, publish your customization project, as described in _To Publish the Current Project_. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 23 

## Configuring the Mobile Site Map 

 You develop the code that creates or changes the mobile site map in the memory of the Acumatica ERP server by using Mobile Site Map Definition Language (MSDL). 

 Before Acumatica Framework 2021 R2, XML was used to configure the mobile site map. 

#### MSDL Overview 

 MSDL provides the capability to configure the user interface of the Acumatica mobile app. It transcends XML in terms of its flexibility of usage for the mobile site map, because you can apply MSDL code multiple times for any Acumatica ERP form, whether it is a custom, customized, or original form. In contrast with XML, Acumatica Mobile Framework can successively apply MSDL code for a form from multiple customizations without problems or restrictions. 

 If you already have an XML site map in MSDL format, you should convert the XML mobile site map to MSDL format, as described in To Convert an XML Mobile Site Map to MSDL Format. 

 See the MSDL section of Mobile Site Map Reference for details about MSDL syntax, object types, and instructions. 

#### User Interface Structure 

 You can modify the elements of the Acumatica mobile app user interface by using MSDL. The user interface of the Acumatica mobile app has the following structure: 

- _Main Menu_ : You can customize the main menu by using instructions that work with the Folder and     Screen objects. 

- _Screens_ : You can customize the mobile app screens by using instructions that work with Container,     Field, Action, and other objects. 

 In previous versions of Acumatica ERP, you could customize the sidebar menu by populating it with links ti favorite records and screens. As of Acumatica ERP 2025 R1, the sidebar menu has been deprecated. Customization projects that contain sidebar modification will no longer work. We recommend that you use the workspace functionality and add the required records and screens to Favorites. (For details, see Main Menu .) 

#### How to Use the MSDL Examples of This Section 

 In this section, each example contains a list of MSDL instructions that modify the mobile site map for your instance of Acumatica ERP. 

 To use the examples from this section, you should first add a new page (or modify an existing one) in the Customization Project Editor, and then insert the code in the Commands area. You can see your changes aer you publish the customization project. For details, see the topics of the Mobile Site Map chapter. 

### Main Menu 

 The main menu of the Acumatica mobile app consists of workspaces, a placeholder for adding KPI widgets, the list of recently visited screens and records, the list of screens and records marked as favorites, and the bottom menu with the Home , Search , Favorites , and Settings buttons. A user can go to any of these parts of the mobile app by tapping the needed part of the screen. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 24 

 The workspaces in the mobile app are not the same as the workspaces in the web version. You configure mobile workspaces separately (see To Manage the Workspaces of the Mobile App ). 

 To add a screen to the main menu, you perform the following steps: 

1. Map the screen to the mobile site map, as described in _To Add a Screen to the Mobile Site Map (Example)_ 

2. Add the screen to the mobile site map, as described in _To Update the Main Menu of a Mobile App_ 

3. Add the screen to a workspace, as described in _To Manage the Workspaces of the Mobile App_ 

 The access rights for screens in the mobile application are the same as the access rights for screens in Acumatica ERP. 

 The start page of the main menu contains all child tags of the sitemap instruction. 

 In this topic, you can read about and perform several simple examples that demonstrate how to build the main menu of the mobile application. 

#### Exploring of the Original Main Menu Code 

 You can view the original code of the main menu of the Acumatica mobile app by doing the following: 

1. Open the _Customization Projects_ (SM204505) form, and in the **Project Name** column, click the link of the     customization project. The Customization Project Editor opens. 

2. Open the Mobile Application page. 

3. On the More menu of the page, click **Update Main Menu**.     The Update: MENU page opens. The _Update: MENU_ screen appears in the list of modified screens on the     Mobile Application page. 

4. On the Update: MENU page, explore the original code of the main menu in the **Result Preview** area. 

 The mobile app's main menu is shown in the following screenshot. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 25 

 Figure: The main menu of the mobile app 

#### Example: Adding a Screen to a Workspace 

 Adding a screen to a workspace consists of two actions: 

- Adding the new screen to the mobile site map, as described in _To Add a Screen to the Mobile Site Map_     _(Example)_ 

- Adding the new screen to a workspace In this example, you will add the _Unreconciled transactions_ widget of the _Controller_ dashboard to the **CRM** workspace by using the _Mobile Workspaces_ (AU220012) and _Mobile Workspace_ (AU220013) forms. 

 To add the widget, perform the following steps: 

1. Open the _Mobile Workspaces_ form. 

2. In the **Workspace ID** column, click _CRM_.     The _Mobile Workspace_ form opens. 

3. On the table toolbar of the **Widgets** tab, click **Add Row** , and specify the following settings in the added row: 

- **Dashboard** : _Controller_ 

- **Widget** : _Unreconciled transactions_ 

4. Save your changes. 

5. Sign out of the mobile app, and then sign in again. 

6. On the main menu, tap **CRM**.     The workspace should look similar to the one shown in the following screenshot: 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 26 

 Figure: The CRM workspace with the added widget 

#### Example: Adding a Screen to a Folder 

 As of Acumatica ERP 2025 R1, the adding of screens by methods described in the section has been deprecated. We recommend that you use the workspace functionality as described in To Configure Workspaces in the Acumatica ERP Instance. 

 Adding a screen to a folder consists of two actions: 

- Adding a new screen to the mobile site map, as described in _To Add a Screen to the Mobile Site Map_     _(Example)_ 

- Adding the new screen shortcut to the main menu. In this example, you will add a shortcut of the Controller screen to the Dashboards folder of the main menu. Copy the code below to the Commands area of the Update: MENU page in the Customization Project Editor. 

 update sitemap { add folder "Folder_0" { displayName = "Dashboards" icon = "system://Folder" add item "DB000015" { displayName = "Controller" icon = "system://Graph1" } } } 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 27 

 The screenshots below show the results of this code on the mobile device. 

 Figure: The main menu, the contents of the folder, and the screen 

 A folder must include at least one screen. 

 A folder can be of one of the following types, which determine how the folder contents are displayed: 

- ListFolder (default): With a folder of this type, folders and screens are represented as tiles with icons     (see the first screenshot in the example in this section, shown above). You need to tap an icon to open a     folder or screen. 

- HubFolder: In a folder of this type (see an example in the right screenshot at the end of the next section),     the content of a screen is displayed like a tab item on a form. You swipe le and right to navigate through     the contents of the folder. 

 Nested folders of the HubFolder type are not supported. That is, you may not add a folder of the HubFolder type within another folder of HubFolder type. 

#### Example: Configuring Screens for Forms with Tabs 

 Some Acumatica ERP forms display lists on multiple tabs (as the following screenshot shows). 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 28 

**_Figure: Acumatica ERP form with multiple tabs_** 

In the mobile app, such a form is represented as multiple subscreens, with each subscreen corresponding to a single tab. However, you have to configure only one screen because the mobile API server automatically performs the screen expansion into multiple screens. 

 In the following example and the screenshot shown above, we will use the Invoiced Items generic inquiry (GI000008). If you don't have this generic inquiry in your instance of Acumatica ERP you can create this generic inquiry. For details, see Managing Generic Inquiries. 

To configure a screen for a form, do the following: 

1. Add the GI000008 screen to the mobile site map by performing the steps described in _To Add a Screen to the_     _Mobile Site Map (Example)_. 

2. Copy the following code to the **Commands** area of the Add: GI000008 page, and save your changes. 

 add screen GI000008 { add container "Result" { add field "AccountName" add field "CustomerClassID" add field "InvoiceDate" } } 

3. Update the main menu of the mobile app with the following code. For details, see _To Update the Main Menu_     _of a Mobile App_. 

 add folder "Invoiced_Items" { type = HubFolder displayName = "Invoiced Items" icon = "system://Pen" add item "GI000008" { displayName = "Invoiced Items" } } 

4. Add the screens to the **CRM** workspace, as described in _To Configure Workspaces in the Acumatica ERP_     _Instance_. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 29 

5. Publish your customization project, and open the mobile app. 

 The following screenshots show the result of this code on a mobile device. The first screenshot shows the changes to the main menu. The second screenshot shows the added screen with tabs. 

 Figure: The multi-tab screen represented as a folder 

### Sidebar Menu 

 As of Acumatica ERP 2025 R1, the sidebar menu of the Acumatica mobile app has been deprecated. Customization projects that contain modification to the sidebar menu will no longer work. We recommend that you use the workspace functionality and add the required records and screens to Favorites. (For details, see Main Menu .) 

 The mobile app has a sidebar menu , which is the shortcut menu for favorite folders and screens. You can add links to folders and screens to the sidebar menu. 

#### Example: Adding a Screen to the Sidebar Menu 

 To add a folder or screen to the sidebar menu, you need to set the IsDefaultFavorite attribute of the folder or screen to true. 

 To do this, copy the code below to the Commands area of the Update: MENU page, and publish the customization project. 

 update sitemap { ... update item "PM301000" { isDefaultFavorite = True } ... } 

 The resulting sidebar menu of the mobile app will include a link for quick access to the Projects (PM301000) screen. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 30 

 Figure: A link to the screen in the sidebar menu 

### Screens 

 This section consists of the following topics, which describe different tasks of configuring screens in the mobile application: 

- _Getting the WSDL Schema_ 

- _Adding Attributes of Entities to Mobile Screens_ 

- _Configuring Editing Screens_ 

- _Configuring Related Containers_ 

- _Configuring Selectors_ 

- _Configuring User-Defined Fields_ 

- _Displaying Any Field as a Text Field_ 

- _Mapping Dashboards_ 

- _Mapping Reports_ 

- _Redirecting the User to Different Screens and Containers_ 

### Getting the WSDL Schema 

 You can get the needed information to configure a screen from the WSDL schema, which is available on the title bar of the form in Acumatica ERP through Tools > Web Service in the UI. 

 For any container (that is, a form, tab, grid, tree, or panel), element, or action with the # or % title, the generated WSDL file contains NUMBER instead of the # symbol, and PERCENT instead of the % symbol. 

 To obtain the WSDL schema, perform the following steps: 

1. In Acumatica ERP, open the form for which you want information. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 31 

2. On the title bar of the form, click **Tools > Web Service** in the UI. 

3. On the screen with the web service links, click **Service Description** , as shown in the following screenshot. 

 Figure: Getting the service description for a form 

See the following screenshot for an example of the WSDL schema. The schema includes containers (such as the ReceiptDetails container in this example), the list of container fields, and the Actions list. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 32 

 Figure: Viewing an example of the WSDL schema 

 With this information, you can start configuring the screen. 

 Before configuring a screen in the mobile app, you should check how the form looks in the web version of Acumatica ERP to decide how to configure the screen. 

### Adding Attributes of Entities to Mobile Screens 

 In Acumatica ERP, a class is a grouping of entities of a particular type—such as leads, opportunities, customers, cases, projects, and stock or non-stock items—that have similar properties. For each class, you can define a list of attributes to gather specific information about entities of the class. In Acumatica ERP, an attribute is some quality or characteristic beyond those already tracked on the data entry form for the entity. 

 If attributes have been defined for an entity class, on the data entry form for the entity, the attributes are usually displayed on a separate tab as a table that contains a set of key-value pairs. Attributes of entities can be redefined, added, or removed at any time; thus, it is not possible to explicitly specify them in a mobile site map. Instead, you use specific definitions to show attributes of entities in a mobile application. 

 In a mobile application, the attributes of entities are displayed as a screen or a part of a screen with input fields rather than being displayed in a table. For improved usability, you can apply a group as a container for attributes. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 33 

#### Example: Displaying a Group of Attributes on the Summary Tab 

 Suppose that in the mobile app, you need to display the attributes that are defined for a case class and displayed on the Cases (CR306000) form of Acumatica ERP. (These attributes are shown in the following screenshot.) 

 On screens that have been predefined for the Acumatica mobile app, there are usually two additional tabs that are not present on the corresponding Acumatica ERP form: the Summary tab and the Settings tab. The Summary tab contains most of the elements from the Summary area of the corresponding form. The Settings tab contains group objects, each of which is related to a tab from the tab area of the corresponding form. 

 Figure: Viewing the Attributes tab on the Cases form 

 To display attributes on the Summary tab, you should use the add attributes instruction inside the add group instruction. The following example adds a group of attributes in the CaseSummary container. 

 add screen CR306000 { openAs = Form … add container "CaseSummary" { add group "AttributesGroup" { displayName = "Attributes" collapsable = True collapsed = True add attributes "Attributes" } } … } 

 In this code, the attributes object is wrapped in the group named AttributesGroup. 

 The following screenshot shows the resulting screen in the mobile app. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 34 

 Figure: Viewing the Cases screen and the Attributes group 

#### Example: Displaying Attributes on Other Tabs of a Screen 

 To display attributes on a tab other than the Summary tab, you need to add a container with attributes and use a containerLink object, as the following code shows. 

 add screen CR306000 { add container "CaseSummary" { add layout "Settings" { displayName = "Settings" layout = "Tab" add containerLink "Attributes" } } add container "Attributes" { attributes = True attachments {} } } 

 In this code, the link to the Attributes container is added inside the Settings tab. To see the full example, in the navigation pane of the Customization Project Editor, select the Mobile Application page, and click Customize > Update Existing Screen > CR306000 

 The following screenshots show the Settings tab with a link to the list of attributes and the list of attributes (on the second screen). 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 35 

 Figure: Viewing the Settings tab and the list of attributes 

### Configuring Editing Screens 

 You may have to configure an editing screen (that is, a screen that can be used to enter and edit a data record) based on the use of the corresponding form in Acumatica ERP. 

 In some cases, Acumatica ERP uses a single form to manage data records of a particular type (that is, the .aspx page contains the FormView and Grid controls). In these cases, in the mobile site map, you have to configure both the form view and the list view by using a single declaration of the Screen object. 

 In other cases, Acumatica ERP uses the following separate forms for data records of a particular type: 

- A list view (the _.aspx_ page contains one Grid control) to manage records, which is called the _substitute_     _form_. (It has this name because this form is brought up instead of the data entry form when a user navigates     to or searches for the form; it shows these records in a tabular format. On the substitute form, when the user     clicks a record, the entry form opens to show the details of the selected record.) 

- A form view (the _.aspx_ page with one FormView control) to enter and edit settings, which is usually called a     _form_ or _entry form_. In these cases, you have to configure two separate declarations of the Screen object (that is, two screens): the list screen (which corresponds to the Acumatica ERP substitute form), and the editing screen. 

#### Example: Creating the Same Layout for the List View and the Form View 

 An example of a screen with the same layout for the list view and the form view is presented in the Configuring Lists topic. You can see the list of fields and edit them at the same time. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 36 

#### Example: Configuring the List and the Editing Form Separately 

 In this example, we will add the Invoices (SO3030PL) list screen, which corresponds to the Invoices (SO3030PL) substitute form (a grid listing all available invoices), and the Invoices (SO303000) editing screen, which corresponds to the Invoices (SO303000) entry form (used to enter and edit the data of one invoice) in Acumatica ERP. 

 To configure these screens, do the following: 

1. Add the Invoices (SO3030PL) list screen, as described in _To Add a Screen to the Mobile Site Map (Example)_. 

2. Insert the following code in the **Commands** area of the Add: SO3030PL page. 

 add screen SO3030PL { add container "Result" { add field "ReferenceNbrSOInvoiceRefNbr" add field "Status" add field "Customer" add field "Date" add containerAction "Insert" { icon = "system://Plus" behavior = Create redirect = True } add containerAction "EditDetail" { behavior = Open redirect = True } } } 

 In the screen, you find two actions that can be invoked to open the editing screen for a data record: behavior = Create and behavior = Open. The redirect = True attribute indicates that the editing screen needs to be opened separately. The actual screen that will be opened is determined by the server logic. 

3. Add the Invoices (SO303000) screen, as described in _To Add a Screen to the Mobile Site Map (Example)_. 

4. Insert the following code in the **Commands** area of the Add: SO303000 page. 

 add screen SO303000 { add container "InvoiceSummary" { add field "Customer" add field "Location" add field "Terms" add field "DueDate" add field "CashDiscountDate" add field "Currency" { selector { add field "CurrencyID" } PickerType = Attached } add recordAction "Save" { behavior = Save } add recordAction "Cancel" { behavior = Cancel } } 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 37 

 } 

5. Add the screens to the main menu of the mobile app using the **Update Main Menu** page as shown below. 

 add item "SO3030PL" { displayName = "Invoices" icon = "system://NewsPaper" } add item "SO303000" { displayName = "Invoice" visible = False } 

 The visible attribute of the Invoices (SO303000) screen is set to false to hide the editing screen from the main menu of the mobile app so that a user can access it only from the Invoices (SO3030PL) screen. 

 Aer you publish the customization project, you should see a new tile on the main menu of the mobile app and the corresponding screens, as shown below. 

 Figure: The List and the Editing Forms 

 In this example, you use the Invoices (SO3030PL) screen to display the list screen, and you use the Invoices (SO303000) screen to display the editing screen. The same approach is used with forms in Acumatica ERP. 

### Configuring Related Containers 

 This topic describes how to configure different types of related containers on the same screen. 

#### Example: Configuring a Screen with One-to-Many (Master-Detail) Containers 

 With one-to-many containers declared inside the screen object, one container is considered the master container, while all other containers are considered detail containers. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 38 

The following code is an example of the one-to-many-containers scheme. You can see the full example if you select **Update Existing Screen > EP301000** on the toolbar of the Mobile Application page in the Customization Project Editor. 

 add screen EP301000 { openAs = Form add container "DocumentSummary" { ... } add container "AddReceipts" { type = SelectionActionList visible = False listActionsToExpand = 1 add field "Description" add field "ClaimAmount" add field "Date" add field "Currency" add listAction "SubmitReceipt" { icon = "system://Check" behavior = Void } attachments {} } add container "ExpenseClaimDetails" { fieldsToShow = 6 listActionsToExpand = 3 containerActionsToExpand = 3 add field "Description" add field "Amount" ... attachments {} } ... } 

In this example, DocumentSummary is the master container. All other declared detail containers are displayed on the screen below the master container in the order of their declaration. 

The following screenshot shows the resulting screen in the mobile application. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 39 

 Figure: Screen with one-to-many containers 

#### Example: Displaying Fields from Different Containers in One Container 

 You can configure a container so that it displays fields form different containers. 

 The screen in this example includes the ClaimDetails container, which also has a field from the ReceiptDetailsExpenseDetails container. You do not need to declare both containers. Instead, in the field object, you separate the corresponding container name and its field with the # symbol, as shown in the following sample code. 

 add screen EP301020 { openAs = Form add container "ClaimDetails" { … add field "ReceiptDetailsExpenseDetails#Description" add field "Date" add field "ExpenseItem" { pickerType = Searchable selector { add field "Description" add field "InventoryID" } } … } … } 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 40 

 In this example, the Description field of the ReceiptDetailsExpenseDetails container is displayed (among other fields). To see the full example, in the navigation pane of the Customization Project Editor select the Mobile Application page and click Customize > Update Existing Screen > EP301020. 

 The following screenshot shows the resulting screens with containers containing declared fields. 

 Figure: Screens with containers containing declared fields 

#### Example: Configuring a Screen with Many-to-One (Master-Detail) Containers 

 Acumatica ERP includes dialog boxes that are opened from forms and that provide additional actions for items in a grid. For example, on the Expense Claims (EP301030) form, you could use the Add Receipts dialog box to add receipts to an expense claim entity. See the following screenshot. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 41 

**_Figure: Example of a dialog box with a grid_** 

To map this kind of dialog box to the mobile app, you need to specify type = SelectionActionList for the container corresponding to this dialog box in the form's WSDL schema and specify a _listAction_ , as shown in the following code. 

 add screen EP301000 { openAs = Form … add container "AddReceipts" { type = SelectionActionList visible = False listActionsToExpand = 1 add field "Description" add field "ClaimAmount" add field "Date" add field "Currency" add listAction "SubmitReceipt" { icon = "system://Check" behavior = Void } attachments {} } … } 

To see the full example, in the navigation pane of the Customization Project Editor select the Mobile Application page and click **Customize > Update Existing Screen > EP301000**. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 42 

 The screenshots below show the resulting screens in the mobile app. Screens with list actions support selecting multiple items. 

 The first screenshot shows the content of the DocumentSummary container of the Expense Claims (EP301030) screen and the Add Receipts button, which corresponds to the listAction "SubmitReceipt". 

 The DisplayName attribute is not defined for the nested container; therefore, for the container, the mobile application displays the Add Receipts name, which is obtained from the Mobile API server. 

 If a user taps the Add Receipts button, the mobile app displays the content of this container and provides multiselection, as the second screenshot shows. The user can tap Expense Claim Details , as shown in the third screenshot, to view the Expense Claim Details screen, shown in the fourth screenshot. 

 Figure: Container supporting list actions 

#### Example: Configuring a Screen with a Container Link 

 In the mobile app, a container can contain a link to another container on the screen toolbar or on the screen among the fields. To use a container link, do the following: 

- Declare the container to which you want to add a link 

- Add the _containerLink_ object See the following code for an example of the creation of a link to the Summary container. 

 add screen EP305000 { add container "DocumentSummary" { … add containerLink "Summary" { control = "ListItem" formPriority = 52 } … } add container "Summary" { …} … } 

 Based on this code, you can open the Summary screen by using the list entry. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 43 

 The screenshots below show the Timecard (EP305000) screen with the container links and the opened Summary screen. 

 Figure: Use of container link to open a container 

### Configuring Selectors 

 You can configure selector fields to be displayed as pop-up windows or grids by using the selector instruction. 

#### Example: Configuring a Screen with Selectors 

 The following example configures a selector for the Currency field of the Invoices (SO303000) screen. To see an example, copy the code below to the Add: SO303000 Invoices page of the Customization Project Editor, and publish the project. 

 add screen SO303000 { add container "InvoiceSummary" { add field "Customer" add field "Location" add field "Terms" add field "DueDate" add field "CashDiscountDate" add field "Currency" { selector { add field "CurrencyID" } pickerType = Attached } add recordAction "Save" { behavior = Save } } } 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 44 

 A selector with pickerType="Attached" is displayed as a field on the first screenshot and as a pop-up window on the second screenshot. 

 Figure: A selector as a pop-up window 

 Related Links 

- _selector_ 

### Configuring User-Defined Fields 

 You can configure the mapping of user-defined field to a mobile app screen by using the add UDFields instruction. 

 Because not all system entities have entity classes, attributes cannot always be added to data entry forms via classes. In these cases, user-defined fields can be added directly to the data entry forms where these entities are created. When these fields are defined for a form, they are specified on the User-Defined Fields tab. By default, the User-Defined Fields tab is displayed on a mobile screen if the associated form has user-defined fields. For example, the following screenshots show user-defined fields displayed on the Cases (CS306000) form and on the Cases screen of the mobile app. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 45 

 Figure: The User-Defined Fields tab on the Cases form 

 Figure: The User-Defined Fields tab on the Cases screen 

 User-defined fields that are attributes of the Selector control type specified on the Attributes (CS205000) form cannot be mapped. 

#### Organizing the Layout of User-Defined Fields 

 You can organize the layout of user-defined fields by putting all user-defined fields into an object of the following types: 

- layout 

- container 

- group You do this by specifying the add UDFields instruction inside an object of the listed types. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 46 

 For example, if user-defined fields should be displayed as a group of fields alongside other fields (rather than on a separate tab), a developer can use the following code. The add instruction should be used with an object of the UDFields type, as you can see from the highlighted line in the example. 

 update screen CR306000 { update container "CaseSummary" { update layout "Settings" { add group "UDFGroup" { displayName = "User-Defined Fields" add UDFields "UDFInline" placeAt 0 } } } } 

 The code above puts all user-defined fields in a group on the Settings tab of the Cases screen, as shown in the screenshot below. 

 UDFInline is an arbitrary name that has not been used anywhere else in the mapping. 

 Figure: User-defined fields displayed in a group 

#### Hiding User-Defined Fields 

 You can cancel the display of user-defined fields on a screen by using the hideUDF attribute of the screen object, as the following code shows. 

 update screen CR306000 { hideUDF = True } 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 47 

 The hideUDF attribute and the add UDFields instruction cannot be used in the same screen mapping. 

 Related Links 

- _UDFields_ 

- _screen_ 

### Displaying Any Field as a Text Field 

 The mobile API gives you the ability to map a control of any type from an Acumatica ERP form to a text box in the mobile app. This ability can be useful when both of the following conditions are met: 

- You have one of the following problems with the use of the field in the mobile application: 

- A value in the control for the field is displayed oddly or incorrectly. 

- The mapping of the field raises an exception. 

- You do not need to add a new value for the field in the mobile app. When these conditions are met, you can force the mobile application to treat this field as a common text field. 

 To do this, in the Field object of the field, specify the ForceType="String" attribute. The input value is inserted directly into the cache of the corresponding container. 

 We do not recommend that you use the ForceType attribute unless you have extensive experience developing custom controls and fully understand the outcome of using this attribute. Note that by using the ForceType attribute, you could switch off some types of field validation, which could damage data in the database. 

 Related Links 

- _field_ 

### Mapping Dashboards 

 To map a dashboard to the mobile app, you have to do the following: 

- Add a screen with the corresponding dashboard. For details, see _To Add a Screen to the Mobile Site Map_     _(Example)_. 

 If a user taps a dashboard widget, the mobile app tries to open the appropriate screen that supplies data to the widget. You may also want to add the screens that contain the data on which dashboard widgets are based. If the screen is absent in the mobile site map, the mobile app displays a warning. 

- Add a shortcut of the added dashboard screen to the main menu. A screen of the _Dashboard_ type can display the following types of dashboard widgets: 

- Chart 

- Data Table 

- Score Card 

- Trend Card 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 48 

 Widgets of other types are not available in the mobile app. For details on widget types, see Configuring Widgets. 

#### Example: Adding a Dashboard Screen 

 In this example, you will add the Controller (DB000015) screen with a set of dashboard widgets. Do the following: 

- Add the Controller (DB000015) screen in the Customization Project Editor by using the following code. 

 add screen DB000015 { type = Dashboard } 

- Add the Dashboards folder and the Controller (DB000015) screen to the main menu of the mobile app, as     shown in the following code. The code must be inside the sitemap instruction. 

 ... add folder "Folder_0" { displayName = "Dashboards" icon = "system://Folder" add item "DB000015" { displayName = "Controller" icon = "system://Graph1" } } ... 

 The following screenshot displays the Controller (DB000015) screen for that is defined in an instance of Acumatica ERP. If you click on any widget, the screen is not displayed because the appropriate screens were not added to the mobile site map. You can add them to the mobile site map later. 

 Figure: Viewing a dashboard screen 

### Mapping Reports 

 A user can create and view an Acumatica Report Designer report through the mobile app if the following conditions are met: 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 49 

- The report form already exists in Acumatica ERP. 

- The report form metadata has been added to the mobile site map. 

- The user account has been granted access rights to view the report. To map a report form to the mobile app, you have to add a screen for the report form. This screen must have the type attribute set to _Report_. 

 The following screenshot displays a sample screen of the Report type with the DisplayName attribute set to Shipment Report. 

 Figure: Viewing a report screen 

 On the screenshot, notice the round blue button, which corresponds to the Run Report button on the report form toolbar in Acumatica ERP. 

#### Using an Action to Generate a Report 

 Acumatica Mobile Framework supports the Acumatica ERP actions that generate reports. To enable such an action in the mobile app, you should map the action to the form on which the action is invoked. For example, you could map the action to print a document to the entry form on which the document is created. In the mobile site map, the containerAction, recordAction, or selectionAction object has to contain the Redirect attribute set to True. 

 To map a report to the mobile app, do the following: 

1. Add the report form to the mobile site map. For details, see _To Add a Screen to the Mobile Site Map_     _(Example)_. 

2. Add the report form to the main menu of the mobile app. For details, see _To Update the Main Menu of a_     _Mobile App_. 

3. Map the action that opens the report. 

 For example, if you need to map the Sales Order (SO641010) report to the Sales Orders (SO301000) screen, do the following: 

1. Add the Sales Order report to the mobile site map. The screen code should look as follows. 

 add screen SO641010 { type = Report 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 50 

 } 

2. Add the report to the main menu. The code for the main menu should look as follows. 

 update sitemap { ... add item "SO641010" { displayName="Sales Order" visible=False } } 

3. In the Sales Orders screen, map the action that opens the Sales Order report. The mapping of the action     should look as follows. 

 update screen SO301000 { update container "OrderSummary" { add recordAction "PrintSalesOrder" { redirect = True } } } 

The following screenshot shows the resulting action button for the report in the screen's menu. 

**_Figure: Viewing the report action button on the Sales Orders screen_** 

When a user performs the action by using the mobile app, the app immediately receives the corresponding report in PDF format from the Acumatica ERP server and displays the report for the user, as shown in the following screenshot. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 51 

 Figure: Viewing the report 

### Redirecting the User to Different Screens and Containers 

 You can redirect the user to different screens and containers in a mobile app in one of the following ways: 

- Allow a redirection that is already implemented in Acumatica ERP 

- Create a new redirection Redirections can be performed to the following objects: 

- A container inside the current screen 

- Another screen 

- A container inside another screen 

#### Allowing of a Redirection That Is Implemented in Acumatica ERP 

 While executing an action, you may need to redirect the mobile app from the current screen to a different screen or to an external URL. As a rule, the business logic of Acumatica ERP handles redirection to a screen by using the PXRedirectRequiredException and PXPopupRedirectException exceptions. 

 In the mobile app, you can allow a redirection that is implemented in an action of Acumatica ERP. To do this, you set the redirect attribute of the appropriate containerAction, recordAction, or selectionAction object to True. 

 Use of an Existing Redirection from the List Form View to the Editing Form View 

 You can see an example of redirecting from the list form view to the editing form view in the Configuring Editing Screens topic. 

 In the Invoices (SO3030PL) list screen, you can find two actions that can be invoked to open the editing form for a data record: Behavior="Create" and Behavior="Open". The Redirect="true" attribute indicates that the editing screen needs to be opened separately. The actual screen that will be opened is determined by the server logic. 

 You can still control the current screen aer an action is completed by using the After attribute of the corresponding action object. The After attribute defines more complex behavior of the container when the 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 52 

 redirect attribute of this object is set to True. The possible values for the after attribute have the following meanings: 

- If redirection doesn't happen: 

- Refresh: The current container is refreshed. 

- Close: The current container is closed, and the previous container in the stack is loaded. 

- If redirection happens: 

- Refresh: A new screen is loaded, and the previous one is saved in the stack. 

- Close: The current container is closed, and the new one is opened, which takes the position of the     closed container in the stack. The default value of the after attribute is Refresh. 

 Example: Using the Existing Redirection to an External URL 

 If an action on an Acumatica ERP form provides redirection to an external URL, you can map the action to use it in the mobile app. To do this, you need no additional attributes in the action object. However, the redirect attribute of the tag must be set to True , as shown in the following example. 

 ... add recordAction "ViewOnMap" { behavior = Void redirect = True } ... 

 On a mobile device, such action launches the default browser and passes the URL, which is obtained from the Acumatica ERP server, to the browser that opens the webpage specified in the URL. 

#### Creation of a New Redirection to a Screen or Container 

 You can create a redirection to any container or screen in the mobile app when the redirection does not exist in Acumatica ERP. For example, you can do this to implement pop-up windows in the mobile app. 

 To create a redirection, you use the following attributes: 

- RedirectToScreen specifies the ID of the screen to redirect the user to. If the redirection target is within     the current screen (such as a different container), don't use this attribute. 

- RedirectToContainer specifies the name of the container to redirect the user to. If you don't specify     this attribute, you are redirected to the primary container of the target screen. **Example: Creating a Redirection to Another Container Inside the Screen** 

 The following is an example of redirecting the user to another container inside the screen. 

 add screen "EP301000" { openAs = Form add container "DocumentSummary" { add field "ReferenceNbr" { forceIsDisabled = True } add field "Description" add recordAction "ShowSubmitReceipt" { behavior = Void redirect = True redirectToScreen = "EP301000" redirectToContainer = "SubmitReceipts$List" } add recordAction "Save" { 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 53 

 behavior = Save after = Close } add recordAction "Cancel" { behavior = Cancel } attachments { disabled = True } } add container "SubmitReceipts" { type = SelectionActionList visible = False add field "Description" add field "Date" add field "ClaimAmount" add listAction "SubmitReceipt" { behavior = Void } } } 

In this example, the Expense Claims (EP301000) screen includes the following containers: 

- DocumentSummary, which contains the following redirection on the record action. 

 add recordAction "ShowSubmitReceipt" { behavior = Void redirect = True redirectToScreen = "EP301000" redirectToContainer = "SubmitReceipts$List" } 

- SubmitReceipts, to which the redirection is declared by the redirectToContainer =     "SubmitReceipts$List" attribute. 

The RedirectToScreen attribute is not applicable here because both containers belong to the same screen. 

The value of the redirectToContainer attribute can be expanded with special arguments separated with the _$_ symbol (as shown in the following example). 

 RedirectToContainer="InventoryLookup$List$InventoryLookupInventory" 

These arguments allow more detailed configuration of the container behavior. The arguments are specified as follows: 

1. The first argument is the name is the name of the container. 

2. The second argument specifies how to open the container: 

- List: The container should be opened as a list view 

- Form: The container should be opened as a form view 

3. If the second argument is set to List, you may specify a third argument to indicate an additional container     that is used as a filter for the data records in the main container. 

 To use the expanded way of configuring a redirection, you should clearly understand how the target screen works, how its business logic operates, and how the state of the business logic objects changes aer any of the actions is executed. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 54 

### Configuring Screen Layout 

 The following section contains information about configuring layout of a mobile screen such as configuring lists and fields on a screen. 

### Configuring Lists 

 This topic describes how to configure a screen that contains a list of records created by an entry form in Acumatica ERP. 

#### Example: Creating a Simple List View Layout 

 A list view (that is, a list of records) is the simplest screen layout. 

 In this example, you will add a list of records that have been created on the Invoices and Memos (AR301000) form or its corresponding screen. To prepare a screen for this example, you should do the following: 

- Add a screen based on the Invoices and Memos (AR301000) form to the mobile site map. For details, see _To_     _Add a Screen to the Mobile Site Map (Example)_. 

- Add a screen shortcut to the main menu of the mobile app. For details, see _Main Menu_. Before adding a list of records created by a particular form, you explore the WSDL schema of the Invoices and Memos (AR301000) form, which the screen will be based on, as described in _Getting the WSDL Schema_ , and find the elements you want to add to the mobile screen. In this example, we want to add an action button and several fields of a record that will be displayed in the list. The WSDL schema elements are shown below. 

 Figure: WSDL schema elements used in the example 

 So to add the highlighted action buttons and fields to the screen you are creating, you should use the following code. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 55 

 add screen AR301000 { add container "InvoiceSummary" { add field "Customer" add field "Location" add field "ReferenceNbr" add field "Terms" add field "DueDate" 

 add recordAction "Save" { behavior = Save } add recordAction "Cancel" { behavior = Cancel } } } 

 You must declare the Cancel action for all screens that include it in the WSDL schema. Without the Cancel action mapped, the changes discarded in the mobile app might not be discarded on the server. 

The le screenshot below shows the resulting screen you will see in the mobile application; you can tap any record to make changes to it. The right screenshot shows the form view of an individual record. Once you change any setting in this view, the ✓ symbol appears. Tap it to save your changes. 

**_Figure: List view layout and form view layout_** 

 All list views in Acumatica ERP mobile app support multi-selection. You can select multiple records and perform actions that have been declared as selectionAction. 

**Related Links** 

- _container_ 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 56 

### Displaying Thumbnails 

 In Acumatica ERP, the system can display thumbnails—that is, small images—for the records in the list view of a mobile app screen. For each listed record, a thumbnail can be displayed next to the record description if the record includes a field containing an image. An example is shown in the following screenshot, where thumbnails are displayed for each record in the Photo Log list view. 

 Figure: Thumbnails in the list view 

 When the app displays the list view with the images, it asynchronously downloads the images for each record and displays them in the list. If an image is not available, the icon of an image file is displayed instead (see the second record in the screenshot above). 

#### Configuring Thumbnails 

 For thumbnails to be displayed in the list view of the mobile screen, you need to configure the mapping of the list in MSDL: In the list mapping, specify elementType = FilePreview in the field object that contains the image file. 

 A field marked with FilePreview should have a FileID value that corresponds to the FileID value in the UploadFile table in the instance database. 

 The following code shows an example implementing the screenshot above. 

 add container "Photos" 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 57 

 { fieldsToShow = 5 containerActionsToExpand = 1 add field "Name" { listDisplayFormat = CaptionValue } add field "PhotoID" { listDisplayFormat = CaptionValue } add field "UploadedOn" { listDisplayFormat = CaptionValue } add field "UploadedBy" { displayName = "Created By" listDisplayFormat = CaptionValue } add field "Description" { listDisplayFormat = CaptionValue } add field "FileId" { elementType = FilePreview } add selectionAction "Delete" { icon = "system://Trash" behavior = Delete after = Close } add containerAction "ViewPhoto" { behavior = Open redirect = True } } 

 Related Links 

- _field_ 

### Grouping Fields on a Screen 

 You can combine fields into groups to make data entry more logical and intuitive by using the group object, as the following example shows. 

#### Example: Grouping Fields 

 The following example enhances the Sales Order Preferences (SO101000) screen. To see an example of grouping fields into a group, add the Sales Orders Preferences (SO101000) screen to your customization project (as described in To Add a Screen to the Mobile Site Map (Example) ), copy the code below to the Commands area of the Add: SO101000 page, and publish the project. 

 add screen SO101000 { add container "GeneralSettingsDataEntrySettings" { add field "DefaultSalesOrderType" add group "DataEntrySettings" { displayName = "Data Entry Settings" 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 58 

 collapsable = True collapsed = True add field "DefaultTransferOrderType" add field "ShipmentNumberingSequence" } add recordAction "Save" { behavior = Save } } } 

 While entering data, the user may collapse or expand a particular group of fields. You can prevent a group from being collapsed by setting the collapsable attribute of the group to False (by default, the attribute value is True ). If a group is collapsible (the collapsable attribute is set to True ), the collapsed attribute indicates whether a group is initially collapsed (by default, the attribute value is False ). 

 You can see the result in the mobile application in the following screenshots. 

 The le screenshot shows the Data Entry Settings group, which is initially collapsed. If the user clicks on the header of the group, the group is expanded, as shown in the right screenshot. 

 Figure: A collapsible group on a screen 

 Related Links 

- _group_ 

### Configuring Specific Functionality of a Screen 

 The following section contains instructions and examples on configuring specific functionality such as signatures and scanning of receipts. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 59 

### Creating the User Signature 

 The mobile app provides the additional functionality for user to create a signature and attach the signature image file to an Acumatica ERP form that supports file attachments. 

 This functionality does not work in the container object with attachments disabled (the attachments instruction with the disabled attribute set to True ). 

 To add this functionality to your mobile app, you should update the corresponding page by adding the recordAction object with the behavior attribute set to SignReport. The container to which you add the recordAction object must support attachments. 

 For example, to add an area for adding a user signature to the Sales Orders (SO301000) screen, open the Update: SO301000 page (for details, see To Update a Screen of a Mobile App ), and insert the following code in the Commands area. 

 update screen SO301000 { update container "OrderSummary" { ... add recordAction "SignReport" { behavior = SignReport displayName = "Sign" } ... } } 

 As a result, the Sign action appears on the appropriate screen of the mobile app, as the following screenshot shows. 

 Figure: Viewing the Sign action on the screen toolbar 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 60 

When the user clicks this action, the app displays a blank form with the **Cancel** and **OK** buttons and the words _Sign here_ to instruct the user to add the signature, as shown in the following screenshot. A user can add multiple signatures to one record. 

**_Figure: Creating a signature_** 

Aer the user clicks the Save (✓) button on the screen toolbar (shown in the following screenshot), the mobile app sends the signature file to the Acumatica ERP server, which saves the file in the database as a file attached to the appropriate form. In the mobile app, the attachment is displayed as an image that is attached to the Acumatica ERP form. 

**_Figure: Viewing signatures added to the screen_** 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 61 

### Configuring Attachments 

 By default, the mobile application enables file attachments and displays them on a screen if the screen supports the attachments. However, the default handling of attachments can be overridden. 

 On iOS devices, it is possible to upload only image files. Files of other types are not supported. 

#### Example: Configuring a Screen with Attachments 

 The following sample code gives the Invoices (SO303000) screen the ability to accept attachments of various formats. To see an example, add the Invoices (SO303000) screen to your customization project (as described in To Add a Screen to the Mobile Site Map (Example) ), copy the code below to the Commands area of the Add: SO303000 page, and publish the project. 

 add screen SO303000 { add container "InvoiceSummary" { add field "Customer" add field "Location" add field "Terms" add field "DueDate" add field "CashDiscountDate" add field "Currency" { selector { add field "CurrencyID" } PickerType = Attached } add recordAction "Save" { behavior = Save } add recordAction "Cancel" { behavior = Cancel } attachments { add type "jpg" { extension = "jpg" } add type "png" { extension = "png" } add type "pdf" { extension = "pdf" } } } } 

 To enable or disable attachments and configure the file types that are allowed, you use the attachments instruction inside the container object. 

 If a screen does not support attachments, the attachments are not displayed even if you set the disabled attribute of the attachments instruction to False. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 62 

 The screenshot below shows the resulting screen in the mobile application. To attach an item, the user taps the paper clip symbol in the top right corner of the screen. Aer at least one item has been attached, the number next to the paper clip indicates how many items have been attached. 

 Figure: A screen with attachments 

#### The Enhancement of Images Taken from the Camera 

 The functionality of enhancing images taken from the camera of a mobile device is implemented in the Acumatica mobile app with the help of Azure Form Recognizer (AFR) version 3.1. This image enhancement makes the image look better and more readable. This functionality is useful for any printed document, such as expense receipts that may be attached to documents in Acumatica ERP. 

 To switch on image enhancement in the Acumatica mobile app, you should set the imageAdjustmentPreset attribute to Receipt in the attachments instruction of the mobile site map as follows. 

 attachments { imageAdjustmentPreset = Receipt } 

 When the imageAdjustmentPreset attribute is set to Receipt , a corresponding button appears in the attachment area (see the screenshot below). When a user taps the highlighted button, a special camera mode is switched on in the Acumatica mobile app. In this mode, the following enhancements of the image captured by the camera are performed: 

- The image is cropped by the bounding box of the detected edges. 

- Any image distortion is removed. 

- The image is converted into black and white. 

- The contrast of the image is maximized. Each of these enhancements is first performed automatically and then the user can also add manual adjustments. The automatic changes cannot be undone. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 63 

 Figure: A screen with the attachment area to add photos in enhanced mode 

 If the imageAdjustmentPreset attribute is not specified or has value other than Receipt, the Acumatica mobile app attaches the original image taken from the camera. 

 Related Links 

- _attachments_ 

### Dialog Boxes and Smart Panels 

 The following section contains information about mapping of simple dialog boxes and smart panels (complex dialog boxes). 

### Mapping a Smart Panel 

 This section describes how to map a smart panel (a complex dialog box) to the Acumatica mobile app. For details on smart panels, see Dialog Box (PXSmartPanel). 

 To map a smart panel, you need to perform the following steps, which are described in a greater detail below: 

1. In the form ASPX, learn the name of the smart panel and the name of the action which opens it. See _Locating_     _of Objects to Be Mapped_. 

2. In the screen mapping, add an action that opens the smart panel. See _Mapping of an Action That Opens a_     _Smart Panel_. 

3. In the screen mapping, map the smart panel, including its containers and actions. _Mapping of a Smart Panel_ 

 You can see a complete example of a smart panel mapping in Example: Adding a Smart Panel on the Sales Orders (SO301000) Form. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 64 

#### Locating of Objects to Be Mapped 

 The general idea of learning the object names that you need to map is the following: To learn the name of an action, you search for the name of the action in the ASPX file of the form. To learn the name of a container and its fields, you search for the container and its fields in the WSDL schema of the form. 

 Before mapping an action to the mobile app, you need to learn its name. You can do this by analyzing the WSDL schema and the form ASPX. 

 Before mapping a smart panel to the mobile app, you need to learn the names of the UI controls on the smart panel as follows: 

1. Open the WSDL schema of the form. For details on opening the WSDL schema, see _Getting the WSDL_     _Schema_. 

2. In the WSDL schema, find the complexType element with the fields that match the fields you see on the     smart panel. 

 If a smart panel consists of multiple containers, such as a Summary area and a grid, you should map these containers separately. 

3. Learn the name of the complexType element and the names of the elements inside it. 

 To map actions on the smart panel, you should learn their names by doing the following: 

1. Open the form ASPX by using the Element Inspector. 

2. Find the PXSmartPanel element that defines the smart panel. You can do this by using comments in the     ASPX and comparing elements in the UI and in the ASPX. 

3. In the PXSmartPanel element, locate the PXPanel element. The PXPanel element contains the     PXButton elements, which define actions on the smart panel. In the PXButton element you want to     map, learn the value of the CommandName or DialogResult attribute (either of which exists in the     definition of an action). You will later use the CommandName attribute value for the action name, and the     DialogResult attribute value for the DialogResult action attribute. 

 If an action does not have the CommandName attribute, you can use any name for it in the mapping. For example, for the action with no CommandName and DialogResult = "Ok", you can add the action under the "Ok" name. 

#### Mapping of an Action That Opens a Smart Panel 

 To map an action that opens a smart panel, do the following: 

1. Learn the name of the action in the WSDL schema. 

2. In the screen mapping, inside the update container or add container instruction, add the     recordAction object. For the object, specify the following attributes: 

- displayName: The name to be displayed in the UI 

- redirect: _true_ 

- redirectToDialog: The custom name of the smart panel you will map later An example of the mapping is shown below. 

 add recordAction "AddInvBySite" { displayName = "Add Stock Item" redirect = true redirectToDialog = "SO301000D1" 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 65 

 } 

 For details, see recordAction. 

#### Mapping of a Smart Panel 

 To map a smart panel, do the following: 

1. Learn the names of containers, fields, and actions that you want to map inside the smart panel as described     in _Locating of Objects to Be Mapped_. 

2. In the screen mapping, inside the update screen or add screen instruction, add the dialog object.     For the dialog object, specify the following attributes: 

- Type: The type of the smart panel 

- OpenAs: The display type of the smart panel See the following example of a dialog object. For details on the dialog object, see _dialog_. 

 add dialog SO301000D1 { type = FilterListScreen openAs = List ... } 

3. Inside the dialog object, add the actions that you want to display on the smart panel. For each action, add     the dialogAction object, and specify the following attributes for it: 

- DisplayName: The name of the action in the UI. 

- DialogResult: The same value that is specified in the DialogResult attribute of the action in the     form ASPX. 

 If the DialogResult attribute is not specified for the action in the form ASPX, you do not need to map it in MSDL. 

- CloseDialog: An indicator of whether the app should close the smart panel aer the user taps the     action. An example of the dialog action is shown in the following code. For details on the dialogAction object, see _dialogAction_. 

 add dialogAction "Ok" { DisplayName = "Add&Close" DialogAnswer = "OK" closeDialog = true } 

4. Inside the dialog object, add the containers that you want to display on the smart panel.     If the container should contain actions such as listAction and containerAction, in the container,     specify includeDialogActions = true.     An example of a container is shown in the following code. For details, see _container_. 

 add container "AddTag" { includeDialogActions = True add field "Customer" add field "Contact" add field "Barcode" { special = BarCodeScan 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 66 

 } 

5. If you have added any dialogAction objects (in Instruction 3), for each dialogAction object, you also     need to add a recordAction, containerAction, or listAction object inside a container where     you want the action to be displayed. The new object should have the same name as the dialogAction     object.     Suppose that you have added the dialogAction "Ok", as described in Instruction 3, and a container, as     described in Instruction 4. Then you need to add the recordAction object inside the container as shown     in the following code. 

 add container "AddTag" { ... add recordAction "Ok" } 

#### Example: Adding a Smart Panel on the Sales Orders (SO301000) Form 

 The following code demonstrates how to map the Inventory Lookup smart panel, which is implemented on the Details tab of the Sales Orders (SO301000) form. For details on creating a mapping of a form in a customization project, see To Update a Screen of a Mobile App and To Add a Screen to the Mobile Site Map (Example). 

 update screen SO301000 { update container "OrderSummary" { formActionsToExpand = 3 add recordAction "AddInvBySite" { displayName = "Add Stock Item" redirect = true redirectToDialog = "SO301000D1" } } 

 add dialog SO301000D1 { type = FilterListScreen openAs = List add dialogAction "Ok" { DisplayName = "Add&Close" DialogResult = "OK" closeDialog = true } add dialogAction "Cancel" { DisplayName = "Cancel" DialogResult = "Cancel" closeDialog = true } add dialogAction "AddInvSelBySite" { DisplayName = "Add" closeDialog = false } add container "InventoryLookupInventory" { add field "Inventory" ... add field "HistoryDate" } 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 67 

 add container "InventoryLookup"{ type = SelectionActionList includeDialogActions = true add field "QtySelected" add field "Selected" { special = "ListSelection" } add field "Warehouse" ... add field "AlternateDescription" 

 add listAction "AddInvSelBySite" { DisplayName = "Add" } add containerAction "Cancel" { displayName = "Cancel" } add listAction "Ok" { DisplayName = "Add&Close" after = Close } } } } 

The resulting smart panel looks as shown in the following screenshots. The first screenshot shows the mapped **Add Stock Item** action on the menu of the Sales Order screen. The second screenshot shows the **Inventory** smart panel with two stock items selected. The third screenshot shows the stock items added to the **Details** tab of the Sales Order screen. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 68 

 Figure: Using the Inventory smart panel 

 Related Links 

- _dialogAction_ 

- _dialog_ 

### Displaying a Simple Dialog Box 

 In Acumatica ERP, the system can display a dialog box for confirmation purposes either when user invokes an action or during a commit of a field value to the server. The system supports the following types of dialog boxes: 

- Simple dialog boxes that contain text and two buttons, such as **OK** and **Cancel** or **Yes** and **No**. These dialog     boxes are implemented by using the Ask() method. 

- Extended dialog boxes with UI elements, grids, or both. These dialog boxes can be used as a part of a     workflow. Currently, the Acumatica mobile app supports simple dialog boxes, which are displayed when a user selects an action. You do not need to map these dialog boxes; if a simple dialog box is displayed in the desktop version of Acumatica ERP, the dialog box will also be displayed in the mobile app. 

#### Enabling a Dialog Box in Application Code 

 Before Acumatica ERP 2020 R2, dialog boxes were not supported in the mobile app. Thus, they are oen suppressed by checking the IsMobile property value of a graph. For a dialog box to be displayed in the mobile app, you need to remove this checking. 

 For example, in the following code, the dialog box is not displayed for the mobile app. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 69 

 if (this.Transactions.Select().Count > 0 && !IsMobile ) { this.Document.Ask(Messages.Warning, Messages.POOrderOrderDateChangeConfirmation, MessageButtons.YesNo, MessageIcon.Question); } 

 To enable the dialog box for the mobile app, the code should look as follows. 

 if (this.Transactions.Select().Count > 0) { this.Document.Ask(Messages.Warning, Messages.POOrderOrderDateChangeConfirmation, MessageButtons.YesNo, MessageIcon.Question); } 

### Configuring the Close Button of a Smart Panel 

 A mobile screen that corresponds to a smart panel in the browser version of Acumatica ERP can have the Close button. This button corresponds to the X button on a screen toolbar on Android devices and to the Back ( < ) button on iOS devices. By default, the button opens the previous container and does not have a callback to the server. 

 You can configure the Close button to have a callback to the server by specifying the dialog result for the button. You can do this in one of the following ways: 

- Specify the dialog result in the CloseButtonDialogResult attribute of the dialog object 

- Define the Close action in detail by using the CloseButtonDialogAction property of the dialog     object 

 For each button, you can use only one of these approaches. 

#### Specifying the Dialog Result in the CloseButtonDialogResult Attribute 

 You can specify the dialog result for a button in the CloseButtonDialogResult attribute of the dialog object. The possible values of the attribute correspond to the elements of the WebDialogResult enumeration. The following code shows an example of the dialog result value being specified for the Close action. 

 update screen SO301000 { add dialog "AddLine" { CloseButtonDialogResult = "No" ... } } 

#### Defining the Close Action 

 You can define the Close action by doing the following: 

1. In the _dialog_ object, define the action by adding the _dialogAction_ object. 

2. In the _dialogAction_ object, specify the dialog result in the dialogResult property. 

 In the dialogAction object, you don't need to specify the CloseDialog property because the button closes the screen by default. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map | 70 

3. In the dialog object, specify the name of the action in the CloseButtonDialogAction property. 

The following code shows an example of the Close action being defined in a dialog box. 

 update screen SO301000 { ... update dialog "AddLine" { CloseButtonDialogAction = "NoAction" update dialogAction "NoAction" { dialogResult = "No" } } } 

**Related Links** 

- _dialog_ 

- _dialogAction_ 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 71 

## Configuring the Mobile Site Map by Using XML 

## (deprecated) 

 Using XML for customizing the Mobile Site Map is deprecated since Acumatica 2025 R1. Use Configuring the Mobile Site Map instead. 

 The user interface of the Acumatica mobile app has the following structure: 

- _Main Menu_ , which can include the sm:Folder and sm:Screen elements 

- _Sidebar Menu_ , which can include links to favorite folders and screens 

- _Screens_ , which can include sm:Container, sm:Field, sm:Action, and other elements See _Mobile Site Map Reference_ for detailed descriptions of all tags. 

### To Customize the Mobile Site Map for a Form 

 Before you start to customize the original mobile site map, we recommend that you explore the files in the \App_Data\Mobile folder of the website to learn which forms of Acumatica ERP are used in the map. The folder can contain the files with the XML metadata and MSDL code of not only the original mobile site map but also any customizations that have been applied to the map. 

 To customize the mapping for an Acumatica ERP form that is included in the original mobile site map, we recommend that you develop custom MSDL code. (See Configuring the Mobile Site Map for details.) 

 We recommend that you avoid including in the mobile site map the XML metadata for an Acumatica ERP form that is already included in the original mobile site map. Currently, the mobile framework does not allow the merging of multiple sets of metadata for the same form of Acumatica ERP. Also, we recommend that you not customize the files of the original mobile site map. In a future version of Acumatica ERP, an XML file can contain additional metadata for new functionality, about which you would never know because the file is replaced by the customized one. 

 Aer you have saved the MSDL code in a .msd file in the \App_Data\Mobile folder of the website, you can add this file to a customization project that can be deployed to an instance of Acumatica ERP. 

### To Add a Form to the Mobile Site Map by Using an XML File 

 To add the metadata for an Acumatica ERP form to the mobile site map, you have to include it in a new .xml file in the \App_Data\Mobile folder of the website. If the metadata must contain multiple new .xml.inc files, place the files in the \App_Data\Mobile\includes folder of the website. 

 Suppose that you need to add to the mobile site map an Acumatica ERP form with the XXX screen ID, and you are sure that the mobile site map does not contain the XML metadata for this form. Further suppose that you have to add the Date and Description fields and the Insert and Delete actions of the original XXX screen of Acumatica ERP to the screen on the mobile device, as the following diagram shows. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 72 

**_Figure: Use of an XML file to configure a screen in the mobile app_** 

The diagram shows how Acumatica Mobile Framework uses the metadata of the example.xml file to configure the _XXX_ screen in the mobile app. (See _Configuring the Mobile Site Map by Using XML (deprecated)_ for details.) 

To create the metadata for the form, perform the following actions: 

1. In the \App_Data\Mobile folder, create the example.xml file, which contains the XML header and the     sm:SiteMap tag, as follows. 

 <?xml version="1.0" encoding="UTF-8"?> <sm:SiteMap xmlns:sm="http://acumatica.com/mobilesitemap" xmlns:xsi="http:// http://www.w3.org/2001/XMLSchema-instance"> 

 </sm:SiteMap> 

 See Mobile Site Map Reference for detailed descriptions of all tags used in the mobile site map. 

2. Get the WSDL schema for the original _XXX_ screen of Acumatica ERP, as described in _Getting the WSDL_     _Schema_. 

3. Add the sm:Screen tag to the sm:SiteMap tag, as described in _Configuring Lists_. 

4. In the WSDL schema, find the Insert and Delete actions and make sure that these actions belong to the     _Action_ container. 

5. In the WSDL schema, find the Date and Description fields and make sure that these fields belong to the     _NameX_ container. 

6. Add the sm:Container tag to the sm:Screen tag, assigning it the _NameX_ name to map the _NameX_     container of the original _XXX_ screen of Acumatica ERP to the _XXX_ screen in the mobile app (see the figure     above). 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 73 

7. For each required field, add an sm:Field tag with the original name to the container tag to map the field     to the _XXX_ screen in the mobile app. 

8. For each required action, add an sm:Action tag with the original name to the container tag to map the     action to the _XXX_ screen in the mobile app. 

 Once you have changed the mobile site map, you can include the added .xml and .xml.inc files in a customization project as File items to deploy the customization on the target system. For details, see Custom Files in the Customization Guide. 

### To Generate the Delta from Two Mobile Site Maps 

 The following information is applicable only for Acumatica Framework versions earlier than 2025 R1. 

 If you have developed a custom site map for the mobile application and want to redistribute it to multiple Acumatica ERP instances, you can generate a delta script file that can be applied to the default site map. You then add this delta file to the customization project, as described in this topic. 

#### To Generate the Delta from Two Mobile Site Maps 

1. For an Acumatica ERP instance, customize the site map for the mobile application. (For details, see _To_     _Customize the Mobile Site Map for a Form_ .) 

 Make sure all nodes of the site map have the Name attribute specified. This attribute is used by the system during the generation of the delta file. 

2. Deploy another Acumatica ERP instance of the same version with the default site map for the mobile     application. 

3. Run the ac.exe command-line utility, which is located in the Data folder of your Acumatica ERP     installation folder, with the MOBILESITEMAP command, the delta argument, and the following     parameters: 

- The path to the folder with the default site map, which is the \App_Data\Mobile folder of the     corresponding Acumatica ERP application instance. 

 If the folder specified in this parameter is empty, the utility converts the XML site map specified in the second parameter to MSDL format. 

- The path to the folder with the customized site map, which is the \App_Data\Mobile folder of the     customized Acumatica ERP application instance. 

- The path to the MSD script file to save the generated delta. You have to save the MSD file with the delta     in the \App_Data\Mobile folder of the Acumatica ERP application instance to make Acumatica ERP     apply the delta automatically when a user starts the mobile application connected to this instance. The following code shows an example of the command line. (The line breaks are only for display purposes.) 

 ac.exe MOBILESITEMAP d s "D:\ProgramFiles\AcumaticaERP\DefaultAcumaticaDB\App_Data\Mobile" "D:\ProgramFiles\AcumaticaERP\CustomizedAcumaticaDB\App_Data\Mobile" "D:\ProgramFiles\AcumaticaERP\CustomizedAcumaticaDB\App_Data\Mobile\delta.msd" 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 74 

 You can use the short name of the delta argument, which is d. 

4. Add the delta file to a customization project to apply the changes in the mobile site map to other instances     of Acumatica ERP. 

 Related Links 

- _ac.exe MOBILEITEMAP Reference_ 

### How to Use XML Examples of This Section 

 In this section, each example contains the XML metadata that you can use as the mobile site map for your instance of Acumatica ERP. 

 All examples include the metadata for the Acumatica ERP forms that are used in the original mobile site map. Because the Acumatica Mobile Framework does not allow the merging of multiple sets of metadata for the same form of Acumatica ERP, you cannot use the examples while the website contains the original mobile site map. To avoid possible errors on the server, you should temporarily (during the period while you are reading the guide and completing its examples) cancel the original mapping in the instance of Acumatica ERP where you intend to test the examples. 

 To do this, perform the following actions: 

1. In the \App_Data\Mobile folder of the website, rename the mobilesitemap.xml file to     mobilesitemap.xml.bak. 

2. In the same folder, create the mobilesitemap.xml file, which contains the following XML code. 

 <?xml version="1.0" encoding="UTF-8"?> <sm:SiteMap xmlns:sm="http://acumatica.com/mobilesitemap" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"> </sm:SiteMap> 

 If you want the Acumatica ERP server to load all XML files from the \App_Data\Mobile folder of the website, the mobilesitemap.xml file is mandatory in this folder. If the file is absent, the server does not load other XML files, and the mobile site map is empty. 

 Aer you have completed these actions, the mobile site map is empty, and the server loads all other XML files from the \App_Data\Mobile folder of the website. Therefore, you can add .xml files with the sample code provided in the examples to the \App_Data\Mobile folder to perform testing. 

 We recommend that you remove the code of each tested example before testing the next one, because some examples contain the metadata for the same forms of Acumatica ERP. 

### Main Menu 

 The main menu of the Acumatica mobile application consists of links to folders and screens. Clicking on a folder link opens the folder, which may include links to screens and other folders. Thus, the folders have a hierarchy, as the folders in file systems do. The main menu provides access to screens in the mobile site map, and folders are used to organize the screens. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 75 

 Access rights for screens in the mobile application are the same as the access rights for screens in Acumatica ERP. 

 The start page of the main menu contains all child tags of the sm:SiteMap tag. 

 In this topic, you can read about and perform several simple examples that demonstrate how to build the main menu of the mobile application. 

#### Example: Viewing the Simplest Configuration of the Mobile Application 

 To see an example of the mobile application with a simple configuration, copy the code below to an .xml file, place the file in the \App_Data\Mobile folder of the Acumatica ERP website, and start the mobile application. 

 <?xml version="1.0" encoding="UTF-8"?> <sm:SiteMap xmlns:sm="http://acumatica.com/mobilesitemap" xmlns:xsi="http:// http://www.w3.org/2001/XMLSchema-instance"> <sm:Screen Id="PM301000" Type="SimpleScreen" DisplayName="Projects" Icon="system:// Display1"> <sm:Container Name="ProjectSummary"> <sm:Field Name="Status" /> <sm:Field Name="ProjectID" /> <sm:Field Name="Customer" /> <sm:Field Name="TemplateID" /> <sm:Field Name="Hold" /> <sm:Field Name="Description" /> </sm:Container> </sm:Screen> </sm:SiteMap> 

 On a mobile device, the mobile application will look like the application shown in the following screenshots. 

 Figure: The simple mobile application 

 Notice that the main menu contains only the link to the Projects screen; there are no folders on the menu. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 76 

#### Example: Adding a Screen to a Folder 

 In this example, you will add a screen to a folder. If you copy the code below to an .xml file in the \App_Data \Mobile folder, the Projects screen will be located in the Organization folder. 

 <?xml version="1.0" encoding="UTF-8"?> <sm:SiteMap xmlns:sm="http://acumatica.com/mobilesitemap" xmlns:xsi="http:// http://www.w3.org/2001/XMLSchema-instance"> 

 <sm:Folder DisplayName="Organization" Icon="system://NewsPaper" > 

 <sm:Screen Id="PM301000" Type="SimpleScreen" DisplayName="Projects" Icon="system:// Display1"> <sm:Container Name="ProjectSummary"> <sm:Field Name="Status" /> <sm:Field Name="ProjectID" /> <sm:Field Name="Customer" /> <sm:Field Name="TemplateID" /> <sm:Field Name="Hold" /> <sm:Field Name="Description" /> </sm:Container> </sm:Screen> 

 </sm:Folder> 

 </sm:SiteMap> 

 The screenshots below show the results of this code on the mobile device. 

 Figure: The main menu, the contents of the folder, and the screen 

 A folder must include at least one screen. 

 A folder can be of one of the following types, which determine how the folder contents are displayed: 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 77 

- ListFolder (default): With a folder of this type, folders and screens are represented as icons (see the     example in this section, shown above). You need to tap an icon to open a folder or screen. 

- HubFolder: In a folder of this type, the content of a screen is displayed like a tab item on a form. You swipe     le and right to navigate through the contents of the folder, as the example in the next section shows. 

 Nested folders of the HubFolder type are not supported. That is, you may not add a folder of the HubFolder type within another folder of HubFolder type. 

#### Example: Creating a Folder of the HubFolder Type 

 In this example, you will create a folder of the HubFolder type and add two screens to it. Copy the code below to an .xml file in the \App_Data\Mobile folder, and start the mobile application. 

 <?xml version="1.0" encoding="UTF-8"?> <sm:SiteMap xmlns:sm="http://acumatica.com/mobilesitemap" xmlns:xsi="http:// http://www.w3.org/2001/XMLSchema-instance"> 

 <sm:Folder DisplayName="Organization" Icon="system://NewsPaper" Type="HubFolder"> 

 <sm:Screen Id="PM301000" Type="SimpleScreen" DisplayName="Projects"> <sm:Container Name="ProjectSummary"> <sm:Field Name="Status" /> <sm:Field Name="ProjectID" /> <sm:Field Name="Customer" /> <sm:Field Name="TemplateID" /> <sm:Field Name="Hold" /> <sm:Field Name="Description" /> </sm:Container> </sm:Screen> <sm:Screen Id="CR306020" Type="SimpleScreen" DisplayName="Tasks"> <sm:Container Name="Details"> <sm:Field Name="Summary" /> <sm:Field Name="StartDate" /> <sm:Field Name="Internal" /> <sm:Field Name="DueDate" /> <sm:Field Name="Completion" /> <sm:Field Name="Workgroup" /> <sm:Field Name="Owner" /> <sm:Field Name="Reminder" /> <sm:Field Name="RemindAtReminderDateDate" /> <sm:Field Name="RemindAtReminderDateTime" /> </sm:Container> </sm:Screen> 

 </sm:Folder> 

 </sm:SiteMap> 

 In the following screenshots, you can see the results of this code on a mobile device. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 78 

 Figure: The main menu and the folder of HubFolder type 

 When you tap the Organization icon, the mobile application opens the folder with the Projects and Tasks lists in it. You can switch between these lists by swiping right and le. 

#### Example: Configuring Screens with Tabs 

 Some Acumatica ERP forms display lists on multiple tabs (as the following screenshot shows). 

 Figure: Acumatica ERP form with multiple tabs 

 In the mobile application, such a form is represented as multiple screens, with each screen corresponding to a single tab. However, you have to configure the screen only once because the mobile API server automatically performs the screen expansion into multiple screens. 

 Copy the code below to an .xml file in the \App_Data\Mobile folder, and start the mobile application. In this example, you will notice that the Expense Receipts form (EP301010) is represented by a number of screens, each corresponding to a single tab ( All Records , On Hold , Open , or Pending Approval ). This example adds the screens to a folder of the HubFolder type, so you will switch between tabs by swiping right and le. If you changed the folder type to ListFolder, the tabs would be represented by icons. 

 <?xml version="1.0" encoding="UTF-8"?> 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 79 

 <sm:SiteMap xmlns:sm="http://acumatica.com/mobilesitemap" xmlns:xsi="http:// http://www.w3.org/2001/XMLSchema-instance"> 

 <sm:Folder DisplayName="Expense Receipts" Type="HubFolder" Icon="system://NewsPaper"> 

 <sm:Screen Id="EP301010" Type="SimpleScreen" DisplayName="Expense Receipts"> <sm:Container Name="ExpenseReceipts"> <sm:Field Name="Date" /> <sm:Field Name="ClaimAmount"/> <sm:Field Name="DescriptionTranDesc"/> <sm:Field Name="Currency" /> </sm:Container> </sm:Screen> 

 </sm:Folder> 

 </sm:SiteMap> 

 The following screenshots show the result of this code on a mobile device. 

 Figure: The multi-tab screen represented as a folder 

### Sidebar Menu 

 The mobile application has a sidebar menu , which is the shortcut menu for favorite folders and screens. You can insert links to folders and screens into the sidebar menu. 

#### Example: Adding a Screen to the Sidebar Menu 

 To add a folder or screen to the sidebar menu, you need to set the IsDefaultFavorite attribute of the folder or screen to true. 

 Copy the code below to an .xml file, put the file in the \App_Data\Mobile folder of the Acumatica ERP website, and start the mobile application. 

 <?xml version="1.0" encoding="UTF-8"?> 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 80 

 <sm:SiteMap xmlns:sm="http://acumatica.com/mobilesitemap" xmlns:xsi="http:// http://www.w3.org/2001/XMLSchema-instance"> 

 <sm:Folder DisplayName="Organization" Icon="system://NewsPaper" > 

 <sm:Screen Id="PM301000" Type="SimpleScreen" DisplayName="Projects" Icon="system:// Display1" IsDefaultFavorite="true"> <sm:Container Name="ProjectSummary"> <sm:Field Name="Status" /> <sm:Field Name="ProjectID" /> <sm:Field Name="Customer" /> <sm:Field Name="TemplateID" /> <sm:Field Name="Hold" /> <sm:Field Name="Description" /> </sm:Container> </sm:Screen> 

 </sm:Folder> 

 </sm:SiteMap> 

 The resulting sidebar menu of the mobile application will include a link for quick access to the Projects screen. 

 Figure: A link to the screen in the sidebar menu 

### Screens 

 This section describes how to configure screens in the mobile application. 

 The section consists of the following topics: 

- _Getting the WSDL Schema_ 

- _Configuring Lists_ 

- _Configuring Editing Forms_ 

- _Mapping Reports_ 

- _Mapping Dashboards_ 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 81 

- _Grouping Fields on a Form_ 

- _Configuring Attachments_ 

- _Configuring Selectors_ 

- _Configuring Nested Containers_ 

- _Adding Entity Attributes to Mobile Screens_ 

- _Redirecting to Different Screens and Containers_ 

- _Displaying Any Field as a Text Field_ 

- _Creating the User Signature_ 

### Getting the WSDL Schema 

 You can get the needed information to configure a screen from the WSDL schema, which is available on the title bar of the form in Acumatica ERP through Tools > Web Service in the UI. 

 For any container (that is, a form, tab, grid, tree, or panel), element, or action with the # or % title, the generated WSDL file contains NUMBER instead of the # symbol, and PERCENT instead of the % symbol. 

 To obtain the WSDL schema, perform the following steps: 

1. In Acumatica ERP, open the form for which you want information. 

2. On the title bar of the form, click **Tools > Web Service** in the UI. 

3. On the screen with the web service links, click **Service Description** , as shown in the following screenshot. 

 Figure: Getting the service description for a form 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 82 

 See the following screenshot for an example of the WSDL schema. The schema includes containers (such as the ReceiptDetails container in this example), the list of container fields, and the Actions list. 

 Figure: Viewing an example of the WSDL schema 

 With this information, you can start configuring the screen. 

 Before configuring a screen in the mobile app, you should check how the form looks in the web version of Acumatica ERP to decide how to configure the screen. 

### Configuring Lists 

 This topic describes how to configure a screen that contains a list of records. 

#### Example: Creating a Simple List View Layout 

 A list of records is the simplest screen layout. 

 To complete an example of configuring the simplest screen layout, copy the code below to an .xml file, put the file in the \App_Data\Mobile folder of the Acumatica ERP website, and start the mobile application. 

 <?xml version="1.0" encoding="UTF-8"?> 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 83 

 <sm:SiteMap xmlns:sm="http://acumatica.com/mobilesitemap" xmlns:xsi="http:// http://www.w3.org/2001/XMLSchema-instance"> 

 <sm:Screen DisplayName="Expense Receipt" Icon="system://Display1" Id="EP301020" Type="SimpleScreen"> <sm:Container FieldsToShow="3" Name="ReceiptDetails"> <sm:Field Name="Date" /> <sm:Field Name="Description" /> <sm:Field Name="ExpenseItem" /> <sm:Field Name="TotalAmount" /> 

 <sm:Action Behavior="Create" Context="Container" DisplayName="Add" Icon="system://Plus" Name="Insert" /> <sm:Action Behavior="Delete" Context="Selection" Icon="system://Trash" Name="Delete" /> </sm:Container> </sm:Screen> </sm:SiteMap> 

This example uses the WSDL schema elements marked in the screenshot below. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 84 

**_Figure: WSDL schema elements used in the example_** 

The following screenshot shows the resulting screen you will see in the mobile application. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 85 

**_Figure: List view layout_** 

The FieldsToShow attribute of the sm:Container tag is used to limit the number of fields for a record that will be shown in the list. You use this attribute only when the same screen description is used for both the list view and form view. 

You use the sm:Action tag for actions that are available in the UI. (You can get the list of actions from the WSDL schema; see _Getting the WSDL Schema_ .) The Name attribute should be set to the name of the action, as found in the WSDL schema. 

Actions are divided into standard actions (such as **Open** , **Save** , and **Cancel** ) and all other actions (such as **Void** ). The placement of the standard actions can be different from that of other actions, and some standard actions (such as **Open** ) are not displayed on the UI at all. Whether an action is considered standard depends on the value of the Behavior attribute. 

The Context attribute is used to set the target of the action. For example, you can use an action with Context="Selection" when the multiple selection of records, as shown in the screenshot below, is activated. 

**_Figure: Selection of multiple records_** 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 86 

 You use the Icon attribute to set the icon that is displayed on the UI. 

 See <sm:Action> for more information about the attributes of the sm:Action tag. 

#### Example: Creating a Screen with a Filtered List 

 To see an example of configuring a screen with a filtered list, copy the code below to an .xml file, put the file in the \App_Data\Mobile folder of the Acumatica ERP website, and start the mobile application. 

 <?xml version="1.0" encoding="UTF-8"?> <sm:SiteMap xmlns:sm="http://acumatica.com/mobilesitemap" xmlns:xsi="http:// http://www.w3.org/2001/XMLSchema-instance"> 

 <sm:Folder DisplayName="Expense Claims" Type="HubFolder" Icon="system://Folder" > 

 <sm:Screen Id="EP301030" Type="FilterListScreen" DisplayName="Expense Claims" > 

 <sm:Container Name="Selection" > <sm:Field Name="Employee" /> </sm:Container> 

 <sm:Container Name="Claim" > <sm:Field Name="Date" /> <sm:Field Name="Status" /> <sm:Field Name="Description" /> <sm:Field Name="ClaimTotal" /> </sm:Container> </sm:Screen> 

 </sm:Folder> 

 </sm:SiteMap> 

 To configure a screen with a filtered list, do the following: 

1. Specify the screen type: Type="FilterListScreen". 

2. In the WSDL schema, find the container corresponding to the filter, and add it to the screen description (     sm:Container Name="Selection" in the example above). 

3. In the WSDL schema, find the container corresponding to the list of records, and add it to the screen     description ( sm:Container Name="Claim" in the example above). 

 As a result, in the mobile application, the screen will include a button that opens the filter. When you tap the button, you open the form so you can edit the filter fields (see the screenshots below). 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 87 

 Figure: Use of a filter on a screen 

### Configuring Editing Forms 

 You have to configure an editing form (that is, a form that is used to enter and edit a data record) based on the use of the form in Acumatica ERP. 

 In some cases, Acumatica ERP uses a single form to manage data records of a particular type (that is, the .aspx page contains the FormView and Grid controls). In these cases, in the mobile site map, you have to configure both the editing form and the list form by using a single declaration of the sm:Screen tag. 

 In other cases, Acumatica ERP uses the following separate forms for data records of a particular type: 

- A list view (the _.aspx_ page contains one Grid control) to manage records 

- A form view (the _.aspx_ page with one FormView control) to edit fields In these cases, you have to configure two separate declarations of the sm:Screen tag: one for the list form, and another for the editing form. 

#### Example: Creating the Same Layout for the Editing Form and the List 

 To see an example of configuring an editing form to use the same layout as a list does, copy the code below to an .xml file, put the file in the \App_Data\Mobile folder of the Acumatica ERP website, and start the mobile application. 

 <?xml version="1.0" encoding="UTF-8"?> <sm:SiteMap xmlns:sm="http://acumatica.com/mobilesitemap" xmlns:xsi="http:// http://www.w3.org/2001/XMLSchema-instance"> 

 <sm:Screen DisplayName="Expense Receipt" Icon="system://Display1" Id="EP301020" Type="SimpleScreen"> <sm:Container FieldsToShow="3" Name="ReceiptDetails"> <sm:Field Name="Date" /> <sm:Field Name="Description" /> <sm:Field Name="ExpenseItem" /> <sm:Field Name="TotalAmount" /> 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 88 

 <sm:Action Behavior="Save" Context="Record" Name="Save" /> <sm:Action Behavior="Cancel" Context="Record" Name="Cancel" /> 

 <sm:Action Behavior="Create" Context="Container" DisplayName="Add" Icon="system://Plus" Name="Insert" /> <sm:Action Behavior="Delete" Context="Selection" Icon="system://Trash" Name="Delete" /> </sm:Container> </sm:Screen> </sm:SiteMap> 

 This example is almost identical to Example: Creating a Simple List View Layout , except that it adds two actions, Save and Cancel , which you need to save or cancel changes to a data record. 

#### Example: Configuring the List and the Editing Form Separately 

 To see an example of configuring the editing form differently than you do a list form, copy the code below to an .xml file, put the file in the \App_Data\Mobile folder of the Acumatica ERP website, and start the mobile application. 

 <?xml version="1.0" encoding="UTF-8"?> <sm:SiteMap xmlns:sm="http://acumatica.com/mobilesitemap" xmlns:xsi="http:// http://www.w3.org/2001/XMLSchema-instance"> 

 <sm:Folder DisplayName="Expense Receipts" Type="HubFolder" Icon="system://NewsPaper" > <sm:Screen Id="EP301010" Type="SimpleScreen" DisplayName="Expense Receipts" > <sm:Container Name="ExpenseReceipts" > <sm:Field Name="Date" /> <sm:Field Name="ClaimAmount" /> <sm:Field Name="DescriptionTranDesc" /> <sm:Field Name="Currency" /> 

 <sm:Action Name="addNew" Context="Container" Behavior="Create" Redirect="true" Icon="system://Plus" /> <sm:Action Name="editDetail" Context="Container" Behavior="Open" Redirect="true" /> <sm:Action Name="Delete" Context="Selection" Behavior="Delete" Icon="system://Trash" /> </sm:Container> </sm:Screen> </sm:Folder> 

 <sm:Screen Id="EP301020" Type="SimpleScreen" Icon="system://Display1" DisplayName="Expense Receipt" Visible="false" OpenAs="Form"> <sm:Container Name="ReceiptDetails" > <sm:Field Name="Date" /> <sm:Field Name="Description" /> <sm:Field Name="ExpenseItem" /> <sm:Field Name="TotalAmount" /> 

 <sm:Action Name="Save" Context="Record" Behavior="Save" /> <sm:Action Name="Cancel" Context="Record" Behavior="Cancel" /> </sm:Container> </sm:Screen> </sm:SiteMap> 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 89 

 In this example, you use the EP301010 screen to display the list form, and you use the EP301020 screen to display the editing form. The same approach is used in Acumatica ERP. 

 To hide the editing form from the main menu of the mobile application, set the Visible attribute to false for the sm:Screen tag; see the EP301020 screen configuration above. 

 In the list form ( EP301010 ), you find two actions that can be invoked to open the editing form for a data record: Behavior="Create" and Behavior="Open". The Redirect="true" attribute indicates that the editing form needs to be opened as a different screen. The actual screen that will be opened is determined by the server logic. 

### Mapping Reports 

 The user can create and view an Acumatica Report Designer report through the mobile app, if the following conditions are met: 

- The report form is implemented in Acumatica ERP. 

- The report form metadata is added to the mobile site map. 

- The user is granted the access rights to the report. To map a report form, you have to add to the mobile site map the sm:Screen tag with the Id attribute set to the report form ID and the Type attribute set to _Report_. The following example provides mapping of the Shipment Summary report (SO620500). 

 ... <sm:Screen DisplayName="Shipment Summary" Icon="system://Credit" Id="SO620500" Type="Report"/> ... 

 In the mobile site map, you cannot define the content of a report form, for example, to change the set of parameters or the form layout. The Report type of the screen forces the system to map the screen as is without changes. Therefore, within the sm:Screen tag with the Type attribute set to Report , a nested tag is ignored. 

 The following screenshot displays a screen of the Report type with the DisplayName attribute set to Test Report. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 90 

 Figure: Viewing a report screen 

 On the screenshot, the red button corresponds to the Run Report button of the report in Acumatica ERP. 

 In the main menu of the mobile app, to organize report screens, you can create a special folder of the ListFolder type and include in the folder the links to multiple reports, as in the following example. 

 ... <sm:Folder DisplayName="Reports" Icon="system://Folder" Type="ListFolder"> <sm:Screen DisplayName="Test Report" Icon="system://Clock" Id="CR621010" Type="Report"/ > <sm:Screen DisplayName="Sales Order Summary" Icon="system://Cash" Id="SO610500" Type="Report"/> <sm:Screen DisplayName="Shipment Summary" Icon="system://Credit" Id="SO620500" Type="Report"/> </sm:Folder> ... 

#### Using an Action to Generate a Report 

 The system supports the Acumatica ERP actions that generate reports. To enable such action for a business entity in the mobile app, you should map the action, for example, in the entry form for the entity. In the mobile site map, the sm:Action tag has to contain the Redirect attribute set to true , as in the following example. 

 ... <sm:Screen DisplayName="Sales Orders"> ... <sm:Container Name="OrderSummary"> ... <sm:Action Behavior="Record" Context="Record" Name="PrintSalesOrderQuoteReport" Redirect="true"/> ... </sm:Container> ... </sm:Screen> 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 91 

**_Figure: Viewing the report action button on the Sales Orders screen_** 

 For a report action, the appropriate report form must be mapped because the action uses this form to create the report. 

Once the action is performed by using the mobile app, the app immediately receives the corresponding report in PDF format from the Acumatica ERP server and displays the report for the user, as shown in the following screenshot. 

**_Figure: Viewing the report_** 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 92 

### Mapping Dashboards 

 You can add a dashboard to the mobile site map. To do this, you have to add to the mobile site map the sm:Screen tag with the Id attribute set to the dashboard form ID and the Type attribute set to Dashboard. The following example provides mapping of three dashboard screens for the mobile app. 

 ... <sm:Folder DisplayName="Dashboards" Icon="system://Folder" Type="ListFolder"> <sm:Screen DisplayName="Controller" Icon="system://Graph1" Id="DH000025" Type="Dashboard" /> <sm:Screen DisplayName="Financial" Icon="system://Graph1" Id="DH000045" Type="Dashboard" /> <sm:Screen DisplayName="Sales Manager" Icon="system://Graph1" Id="DH000005" Type="Dashboard" /> </sm:Folder> ... 

 A screen of the Dashboard type can display the following types of dashboard widgets: 

- Chart 

- Data Table 

- Score Card 

- Trend Card Widgets of other types will be hidden. 

 If you click a dashboard widget, the mobile app tries to open the appropriate screen. If the screen is absent in the mobile site map, the mobile app displays a warning. 

 The following screenshot displays a screen for the Sales Manager dashboard page that is defined in an instance of Acumatica ERP. 

 Figure: Viewing a dashboard screen 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 93 

### Grouping Fields on a Form 

 You can combine fields into groups, as the following example shows, to make data entry more logical and intuitive. 

#### Example: Grouping Fields 

 To see an example of grouping fields into groups, copy the code below to an .xml file, put the file in the \App_Data\Mobile folder of the Acumatica ERP website, and start the mobile application. 

 <?xml version="1.0" encoding="UTF-8"?> <sm:SiteMap xmlns:sm="http://acumatica.com/mobilesitemap" xmlns:xsi="http:// http://www.w3.org/2001/XMLSchema-instance"> 

 <sm:Folder DisplayName="Expense Receipts" Type="HubFolder" Icon="system://NewsPaper" > <sm:Screen Id="EP301010" Type="SimpleScreen" DisplayName="Expense Receipts" > <sm:Container Name="ExpenseReceipts" > <sm:Field Name="Date" /> <sm:Field Name="ClaimAmount" /> <sm:Field Name="DescriptionTranDesc" /> <sm:Field Name="Currency" /> 

 <sm:Action Name="addNew" Context="Container" Behavior="Create" Redirect="true" Icon="system://Plus" /> <sm:Action Name="editDetail" Context="Container" Behavior="Open" Redirect="true" /> <sm:Action Name="Delete" Context="Selection" Behavior="Delete" Icon="system://Trash" /> </sm:Container> </sm:Screen> </sm:Folder> 

 <sm:Screen Id="EP301020" Type="SimpleScreen" Icon="system://Display1" DisplayName="Expense Receipt" Visible="false" OpenAs="Form"> <sm:Container Name="ReceiptDetails" > <sm:Field Name="Date" /> <sm:Field Name="Description" /> 

 <sm:Group DisplayName="Details" Collapsable="true" Collapsed="true"> <sm:Field Name="ExpenseItem" /> <sm:Field Name="TotalAmount" /> </sm:Group> 

 <sm:Action Name="Save" Context="Record" Behavior="Save" /> <sm:Action Name="Cancel" Context="Record" Behavior="Cancel" /> </sm:Container> </sm:Screen> </sm:SiteMap> 

 While entering data, the user may collapse or expand a particular group of fields. You can prevent a group from being collapsed by setting the Collapsable attribute of the group to false (by default, the attribute value is true ). If a group is collapsible (the Collapsable attribute is set to true ), the Collapsed attribute indicates whether a group is initially collapsed (by default, the attribute value is false ). 

 You can see the result in the mobile application in the following screenshots. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 94 

 Figure: A collapsible group on a screen 

 The le screenshot shows the Details group that is initially collapsed. If the user clicks on the header of the group, the group will expand, as shown in the right screenshot. 

### Configuring Attachments 

 By default, the mobile application enables attachments and displays them on a screen if the screen supports the attachments. However, the default handling of attachments can be overridden. 

#### Example: Configuring a Screen with Attachments 

 To see an example of changing the way attachments are handled, copy the code below to an .xml file, put the file in the \App_Data\Mobile folder of the Acumatica ERP website, and start the mobile application. 

 <?xml version="1.0" encoding="UTF-8"?> <sm:SiteMap xmlns:sm="http://acumatica.com/mobilesitemap" xmlns:xsi="http:// http://www.w3.org/2001/XMLSchema-instance"> 

 <sm:Folder DisplayName="Expense Receipts" Type="HubFolder" Icon="system://NewsPaper" > <sm:Screen Id="EP301010" Type="SimpleScreen" DisplayName="Expense Receipts" > <sm:Container Name="ExpenseReceipts" > <sm:Field Name="Date" /> <sm:Field Name="ClaimAmount" /> <sm:Field Name="DescriptionTranDesc" /> <sm:Field Name="Currency" /> 

 <sm:Action Name="addNew" Context="Container" Behavior="Create" Redirect="true" Icon="system://Plus" /> <sm:Action Name="editDetail" Context="Container" Behavior="Open" Redirect="true" /> <sm:Action Name="Delete" Context="Selection" Behavior="Delete" Icon="system://Trash" /> </sm:Container> </sm:Screen> 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 95 

 </sm:Folder> 

 <sm:Screen Id="EP301020" Type="SimpleScreen" Icon="system://Display1" DisplayName="Expense Receipt" Visible="false" OpenAs="Form"> <sm:Container Name="ReceiptDetails" AttachmentsControlPriority="75"> 

 <sm:Attachments Disabled="false"> <sm:Type Extension="jpg" /> <sm:Type Extension="png" /> <sm:Type Extension="pdf" /> </sm:Attachments> 

 <sm:Field Name="Date" FormPriority="90"/> <sm:Field Name="Description" FormPriority="80" /> <sm:Field Name="ExpenseItem" FormPriority="70" /> <sm:Field Name="TotalAmount" FormPriority="60" /> 

 <sm:Action Name="Save" Context="Record" Behavior="Save" /> <sm:Action Name="Cancel" Context="Record" Behavior="Cancel" /> </sm:Container> </sm:Screen> </sm:SiteMap> 

 If a screen does not support attachments, the attachments will not be displayed even if you specify <sm:Attachments Disabled="false">. 

You specify the position of the attachments by using the AttachmentsControlPriority container attribute and the FormPriority field attribute. The fields and attachments are aligned vertically according to the priority —the higher the priority, the higher the element's position. 

To disable attachments and configure the file types that are allowed, you use the sm:Attachments tag inside the sm:Container tag. 

The screenshot below shows the resulting screen in the mobile application. 

**_Figure: A screen with attachments_** 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 96 

#### Enhancing Images Taken from the Camera 

 The functionality of enhancing images taken from the camera of a mobile device is implemented in the Acumatica mobile app. This image enhancement makes the image look better and more readable. This functionality is useful for photos of expense receipts that may be attached to documents in Acumatica ERP. 

 To switch on image enhancement in the Acumatica mobile app, you should set the ImageAdjustmentPreset attribute to Receipt in the sm:Attachments tag of the mobile site map as follows: 

 <sm:Attachments ImageAdjustmentPreset="Receipt"/> 

 When the ImageAdjustmentPreset attribute is set to Receipt , a special camera mode is switched on in the Acumatica mobile app. In this mode, the following enhancements of the image captured by the camera are preformed automatically: 

- The image is cropped by the bounding box of the detected edges. 

- The image distortion is removed. 

- The image is converted into black and white. 

- The contrast of the image is maximized. If the ImageAdjustmentPreset attribute is not specified or has another value, the Acumatica mobile app attaches an original image taken from the camera. 

### Configuring Selectors 

 You can configure selector fields to be displayed as pop-up windows or grids. 

#### Example: Configuring a Screen with Selectors 

 To see an example of configuring a selector field, copy the code below to an .xml file, put the file in the \App_Data\Mobile folder of the Acumatica ERP website, and start the mobile application. 

 <?xml version="1.0" encoding="UTF-8"?> <sm:SiteMap xmlns:sm="http://acumatica.com/mobilesitemap" xmlns:xsi="http:// http://www.w3.org/2001/XMLSchema-instance"> 

 <sm:Folder DisplayName="Expense Receipts" Type="HubFolder" Icon="system://NewsPaper" > <sm:Screen Id="EP301010" Type="SimpleScreen" DisplayName="Expense Receipts" > <sm:Container Name="ExpenseReceipts" > <sm:Field Name="Date" /> <sm:Field Name="ClaimAmount" /> <sm:Field Name="DescriptionTranDesc" /> <sm:Field Name="Currency" /> 

 <sm:Action Name="addNew" Context="Container" Behavior="Create" Redirect="true" Icon="system://Plus" /> <sm:Action Name="editDetail" Context="Container" Behavior="Open" Redirect="true" /> <sm:Action Name="Delete" Context="Selection" Behavior="Delete" Icon="system://Trash" /> </sm:Container> </sm:Screen> </sm:Folder> 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 97 

 <sm:Screen Id="EP301020" Type="SimpleScreen" Icon="system://Display1" DisplayName="Expense Receipt" Visible="false" OpenAs="Form"> <sm:Container Name="ReceiptDetails" > 

 <sm:Field Name="Date" /> <sm:Field Name="Description" /> 

 <sm:Field Name="ExpenseItem" > <sm:SelectorContainer FieldsToShow="2" PickerType="Detached"> <sm:Field Name="InventoryID" /> <sm:Field Name="Description" /> </sm:SelectorContainer> </sm:Field> 

 <sm:Field Name="Currency" > <sm:SelectorContainer PickerType="Attached"> <sm:Field Name="CurrencyID" /> </sm:SelectorContainer> </sm:Field> 

 <sm:Action Name="Save" Context="Record" Behavior="Save" /> <sm:Action Name="Cancel" Context="Record" Behavior="Cancel" /> </sm:Container> </sm:Screen> </sm:SiteMap> 

To configure a selector field, you use the sm:SelectorContainer tag inside the sm:Field tag. The PickerType attribute specifies which of the two ways the selector should be displayed. 

A selector with PickerType="Attached" is displayed as a pop-up window (see the screenshot below). 

**_Figure: A selector as a pop-up window_** 

A selector with PickerType="Detached" is displayed as a grid (as shown in the screenshot below). You can configure the fields to display by adding nested sm:Field tags. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 98 

 Figure: A selector as a grid 

### Configuring Nested Containers 

 This topic describes how to configure the types of related containers on the same screen. 

#### Example: Configuring a Screen with One-to-Many (Master-Detail) Containers 

 With one-to-many containers, one container declared inside the sm:Screen tag is considered the master container, while all other containers are considered detail containers. 

 To see an example of configuring one-to-many containers, copy the code below to an .xml file, put the file in the \App_Data\Mobile folder of the Acumatica ERP website, and start the mobile application. 

 <?xml version="1.0" encoding="UTF-8"?> <sm:SiteMap xmlns:sm="http://acumatica.com/mobilesitemap" xmlns:xsi="http:// http://www.w3.org/2001/XMLSchema-instance"> 

 <sm:Folder DisplayName="Expense Claims" Type="HubFolder" Icon="system://Folder" IsDefaultFavorite="true"> <sm:Screen Id="EP301030" Type="FilterListScreen" DisplayName="Expense Claims" Visible="true" > 

 <sm:Container Name="Selection"> <sm:Field Name="Employee"/> </sm:Container> 

 <sm:Container Name="Claim" > <sm:Field Name="Date" /> <sm:Field Name="Status" /> <sm:Field Name="Description" /> <sm:Field Name="ClaimTotal" /> 

 <sm:Action Name="CreateNew" Context="Container" Behavior="Create" Redirect="true" Icon="system://Plus" /> 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 99 

 <sm:Action Name="EditDetail" Context="Container" Behavior="Open" Redirect="true" /> </sm:Container> </sm:Screen> </sm:Folder> <sm:Screen Id="EP301000" Type="SimpleScreen" DisplayName="Expense Claim" Visible="false" OpenAs="Form"> 

 <sm:Container Name="DocumentSummary" > <sm:Attachments Disabled="true"/> 

 <sm:Field Name="Date" /> <sm:Field Name="Status" /> <sm:Field Name="Description" /> <sm:Field Name="ClaimTotal" /> <sm:Field Name="Currency" /> 

 <sm:Action Name="Save" Context="Record" Behavior="Save" /> <sm:Action Name="Cancel" Context="Record" Behavior="Cancel" /> </sm:Container> 

 <sm:Container Name="ExpenseClaimDetails" > <sm:Attachments Disabled="true"/> <sm:Field Name="Date" ListPrioruty="99" FormPriority="99" /> <sm:Field Name="Description" FormPriority="98" /> <sm:Field Name="ExpenseItem" FormPriority="97"/> <sm:Field Name="Currency" FormPriority="95"/> 

 <sm:Field Name="TotalAmount" ListPriority="96" FormPriority="94" /> <sm:Field Name="ProjectContract" Container="ReceiptClassification" FormPriority="93" /> <sm:Field Name="ProjectTask" Container="ReceiptClassification" FormPriority="92" /> 

 <sm:Action Name="Insert" Context="Container" Behavior="Create" Icon="system:// Plus"/> <sm:Action Name="Delete" Context="Selection" Behavior="Delete" /> <sm:Action Name="Save" Context="Record" Behavior="Save" /> <sm:Action Name="Cancel" Context="Record" Behavior="Cancel" /> </sm:Container> 

 </sm:Screen> </sm:SiteMap> 

All declared detail containers are displayed on a screen below the screen fields in the order of their declaration. 

To add, update, and delete data records in a detail container, you use the Behavior="Create", Behavior="Open" and Behavior="Delete" actions, as you do on the master screen. 

The screenshot below shows the resulting screen in the mobile application. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 100 

 Figure: Screen with one-to-many containers 

#### Example: Configuring a Screen with Many-as-One Containers 

 Some screens include multiple containers that are displayed as one container. 

 The screen in this example includes the ReceiptDetails and ReceiptClassification containers, which have a many-as-one relationship. You do not declare both containers; instead, you use the Container attribute of the sm:Field tag to display fields from the ReceiptClassification container. 

 To configure these containers, copy the code below to an .xml file, put the file in the \App_Data\Mobile folder of the Acumatica ERP website, and start the mobile application. 

 <?xml version="1.0" encoding="UTF-8"?> <sm:SiteMap xmlns:sm="http://acumatica.com/mobilesitemap" xmlns:xsi="http:// http://www.w3.org/2001/XMLSchema-instance"> 

 <sm:Folder DisplayName="Expense Receipts" Type="HubFolder" Icon="system://NewsPaper" > <sm:Screen Id="EP301010" Type="SimpleScreen" DisplayName="Expense Receipts" > <sm:Container Name="ExpenseReceipts" > <sm:Field Name="Date" /> <sm:Field Name="ClaimAmount" /> <sm:Field Name="DescriptionTranDesc" /> <sm:Field Name="Currency" /> 

 <sm:Action Name="addNew" Context="Container" Behavior="Create" Redirect="true" Icon="system://Plus" /> <sm:Action Name="editDetail" Context="Container" Behavior="Open" Redirect="true" /> <sm:Action Name="Delete" Context="Selection" Behavior="Delete" Icon="system://Trash" /> </sm:Container> </sm:Screen> </sm:Folder> 

 <sm:Screen Id="EP301020" Type="SimpleScreen" Icon="system://Display1" DisplayName="Expense Receipt" Visible="false" OpenAs="Form"> <sm:Container Name="ReceiptDetails" > 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 101 

 <sm:Field Name="Date" /> <sm:Field Name="Description" /> <sm:Field Name="ExpenseItem" /> <sm:Field Name="Currency" /> 

 <sm:Field Name="ProjectContract" Container="ReceiptClassification" /> <sm:Field Name="ProjectTask" Container="ReceiptClassification" /> 

 <sm:Action Name="Save" Context="Record" Behavior="Save" /> <sm:Action Name="Cancel" Context="Record" Behavior="Cancel" /> </sm:Container> </sm:Screen> </sm:SiteMap> 

 The following screenshot shows the resulting screen in the mobile application. 

 Figure: Screen with many-as-one containers 

#### Example: Configuring a Screen with Many-to-One (Master-Detail) Containers with Multi-Selection 

 Acumatica ERP includes a special type of container that supports multi-selection—selection of multiple items or options. 

 To see an example of configuring a container with multi-selection, copy the code below to an .xml file, put the file in the \App_Data\Mobile folder of the Acumatica ERP website, and start the mobile application. 

 <?xml version="1.0" encoding="UTF-8"?> <sm:SiteMap xmlns:sm="http://acumatica.com/mobilesitemap" xmlns:xsi="http:// http://www.w3.org/2001/XMLSchema-instance"> 

 <sm:Folder DisplayName="Expense Claims" Type="HubFolder" Icon="system://Folder" IsDefaultFavorite="true"> <sm:Screen Id="EP301030" Type="FilterListScreen" DisplayName="Expense Claims" Visible="true" > 

 <sm:Container Name="Selection"> <sm:Field Name="Employee"/> 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 102 

 </sm:Container> 

 <sm:Container Name="Claim" > <sm:Field Name="Date" /> <sm:Field Name="Status" /> <sm:Field Name="Description" /> <sm:Field Name="ClaimTotal" /> 

 <sm:Action Name="CreateNew" Context="Container" Behavior="Create" Redirect="true" Icon="system://Plus" /> <sm:Action Name="EditDetail" Context="Container" Behavior="Open" Redirect="true" /> </sm:Container> </sm:Screen> </sm:Folder> 

 <sm:Screen Id="EP301000" Type="SimpleScreen" DisplayName="Expense Claim" Visible="false" OpenAs="Form"> 

 <sm:Container Name="DocumentSummary" > <sm:Attachments Disabled="true"/> 

 <sm:Field Name="Date" /> <sm:Field Name="Status" /> <sm:Field Name="Description" /> <sm:Field Name="ClaimTotal" /> <sm:Field Name="Currency" /> 

 <sm:Action Name="Save" Context="Record" Behavior="Save" /> <sm:Action Name="Cancel" Context="Record" Behavior="Cancel" /> </sm:Container> 

 <sm:Container Name="SubmitReceipts" Type="SelectionActionList" > <sm:Field Name="Description" /> <sm:Field Name="Date" /> <sm:Field Name="ClaimAmount" /> <sm:Action Name="SubmitReceipt" Context="List" Behavior="Void" Icon="system:// Plus" /> </sm:Container> 

 </sm:Screen> </sm:SiteMap> 

In the code, you enable multi-selection by setting the container type with Type="SelectionActionList" and specifying the action context with Context="List". 

The screenshots below show the resulting screen in the mobile application. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 103 

 Figure: Container supporting multi-selection 

 The le screenshot shows the content of the DocumentSummary container of the Expense Claim screen and the header of the SubmitReceipts nested container. If the user taps the header of the nested container, the mobile application displays the content of this container and provides multi-selection, as the second screenshot shows. 

 The DisplayName attribute is not defined for the nested container, therefore for the container, the mobile application displays the Submit Receipts name that is obtained from the Mobile API server. 

#### Example: Configuring a Screen with a Container Link 

 In the mobile application, a container can contain a link to another container on the action panel or on the screen among the fields. To create a container link on the action panel, use the sm:ContainerLink tag, as the following example shows. 

 To see an example of creating a container link on the action panel, copy the code below to an .xml file, put the file in the \App_Data\Mobile folder of the Acumatica ERP website, and start the mobile application. 

 <?xml version="1.0" encoding="UTF-8"?> <sm:SiteMap xmlns:sm="http://acumatica.com/mobilesitemap" xmlns:xsi="http:// http://www.w3.org/2001/XMLSchema-instance"> 

 <sm:Folder DisplayName="Expense Claims" Type="HubFolder" Icon="system://Folder" IsDefaultFavorite="true"> <sm:Screen Id="EP301030" Type="FilterListScreen" DisplayName="Expense Claims" Visible="true" > 

 <sm:Container Name="Selection"> <sm:Field Name="Employee"/> </sm:Container> 

 <sm:Container Name="Claim" > <sm:Field Name="Date" /> <sm:Field Name="Status" /> <sm:Field Name="Description" /> <sm:Field Name="ClaimTotal" /> 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 104 

 <sm:Action Name="CreateNew" Context="Container" Behavior="Create" Redirect="true" Icon="system://Plus" /> <sm:Action Name="EditDetail" Context="Container" Behavior="Open" Redirect="true" /> </sm:Container> </sm:Screen> </sm:Folder> <sm:Screen Id="EP301000" Type="SimpleScreen" DisplayName="Expense Claim" Visible="false" OpenAs="Form"> 

 <sm:Container Name="DocumentSummary" > <sm:Attachments Disabled="true"/> 

 <sm:Field Name="Date" /> <sm:Field Name="Status" /> <sm:Field Name="Description" /> <sm:Field Name="ClaimTotal" /> <sm:Field Name="Currency" /> 

 <sm:ContainerLink Container="SubmitReceipts" Control="Button"/> 

 <sm:Action Name="Save" Context="Record" Behavior="Save" /> <sm:Action Name="Cancel" Context="Record" Behavior="Cancel" /> </sm:Container> 

 <sm:Container Name="SubmitReceipts" Type="SelectionActionList" > <sm:Field Name="Description" /> <sm:Field Name="Date" /> <sm:Field Name="ClaimAmount" /> <sm:Action Name="SubmitReceipt" Context="List" Behavior="Void" Icon="system:// Plus" /> </sm:Container> 

 </sm:Screen> </sm:SiteMap> 

In this code, you can open the SubmitReceipts container by using the button in the action panel (because of the Control="Button" attribute of sm:ContainerLink). 

The screenshot below shows the resulting screen, which displays the container link on the action panel in the mobile application. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 105 

 Figure: Use of a button on the action panel to open a container 

 To locate the container link among the screen fields, you use the Control="ListItem" attribute instead of the Control="Button" one. To set the exact position of the container link among the screen fields, specify the appropriate value for the Priority attribute. 

### Adding Entity Attributes to Mobile Screens 

 In Acumatica ERP, for a class as a business object, you can define a list of entity attributes to gather specific information about members of the class. Attributes are defined for a particular class, which is a grouping of entities—such as leads, opportunities, customers, cases, projects, and stock or non-stock items—that have similar properties. 

 On an Acumatica ERP form where attributes for an entity is defined, the attributes are usually displayed on a separate tab as a table that contains a set of key-value pairs. Because entity attributes are dynamic, it is not possible to explicitly specify them in a mobile site map. Therefore, specific definitions are used to show the attributes in a mobile application. 

 Thus, in a mobile application, entity attributes are displayed as a form or part of a form with input fields rather than as a table. For improved usability, you can apply a group as a container for attributes. 

 Suppose that in the mobile app you need to display the attributes of the Case Classes form (CR206000) of Acumatica ERP, which are shown in the screenshot below. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 106 

 Figure: Viewing the Attributes tab on the Case Classes form 

#### Example: Configuring a Screen with a Group of Attributes 

 To see an example of creating a group for the attributes of a particular form, copy the code below to an .xml file, put the file in the \App_Data\Mobile folder of the Acumatica ERP website, and start the mobile application. 

 <?xml version="1.0" encoding="UTF-8"?> <sm:SiteMap xmlns:sm="http://acumatica.com/mobilesitemap" xmlns:xsi="http:// http://www.w3.org/2001/XMLSchema-instance"> 

 <sm:Screen DisplayName="Case" Id="CR306000" OpenAs="Form" Type="SimpleScreen"> 

 <sm:Container FormActionsToExpand="1" Name="CaseSummary"> 

 <sm:Field Name="ClassID"> <sm:SelectorContainer PickerType="Attached" /> </sm:Field> 

 <sm:Group Collapsable="true" Collapsed="true" DisplayName="Case Attributes"> <sm:Attributes From="Attributes" /> </sm:Group> 

 </sm:Container> </sm:Screen> 

 </sm:SiteMap> 

 The From attribute of the sm:Attributes tag specifies the name of the screen container that holds the entity attributes. 

 In this code, note that the sm:Attributes tag is wrapped in the group named Case Attributes. 

 The screenshot below shows the resulting screen in the mobile application. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 107 

 Figure: Viewing the Case Attributes group 

 Also, you can use the sm:Attributes tag to map a pair of columns from any grid of Acumatica ERP to a form view in the mobile app as a key-value pair. For example, if a grid contains a key field, a value field, and a field for sorting, to create a sorted group of key-value pairs of the grid on a form view of the mobile app, you might define the following <sm:Attributes> tag (see <sm:Attributes> for details). 

 ... <sm:Container ...> ... <sm:Group ...> <sm:Attributes From="GridDataView" IDField="Column1_FieldName" IDValue="Column5_FieldName" OrderField="Column3_FieldName" /> </sm:Group> 

 </sm:Container> ... 

 In the example above, GridDataView is the DataMember defined for the grid; Column1_FieldName, Column5_FieldName, and Column3_FieldName are correspondingly the key field, the value field, and the field for sorting. 

### Redirecting to Different Screens and Containers 

 You can redirect the user to different screens and containers in a mobile application in one of the following ways: 

1. Allow a redirection that is already implemented in Acumatica ERP 

2. Create a new redirection to a screen or container 

 These ways are described in the following sections. 

#### Allowing a Redirection That Is Implemented in Acumatica ERP 

 While executing an action, you may need to redirect the application from the current screen to a different screen or to an external URL. As a rule, the business logic of Acumatica ERP handles redirection to a screen by using the PXRedirectRequiredException and PXPopupRedirectException exceptions. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 108 

In a mobile application, you can allow a redirection that is implemented in an action of Acumatica ERP. To do this, you set the Redirect attribute of the _<sm:Action>_ tag to _true_ in an .xml file of the mobile site map. 

**Example: Using Existing Redirection from the List to the Editing Form** 

To see an example of allowing a redirection implemented in an action, copy the code below to an .xml file, put the file in the \App_Data\Mobile folder of the Acumatica ERP website, and start the mobile application. 

 <?xml version="1.0" encoding="UTF-8"?> <sm:SiteMap xmlns:sm="http://acumatica.com/mobilesitemap" xmlns:xsi="http:// http://www.w3.org/2001/XMLSchema-instance"> 

 <sm:Folder DisplayName="Expense Receipts" Type="HubFolder" Icon="system://NewsPaper" > <sm:Screen Id="EP301010" Type="SimpleScreen" DisplayName="Expense Receipts" > <sm:Container Name="ExpenseReceipts" > <sm:Field Name="Date" /> <sm:Field Name="ClaimAmount" /> <sm:Field Name="DescriptionTranDesc" /> <sm:Field Name="Currency" /> 

 <sm:Action Name="addNew" Context="Container" Behavior="Create" Redirect="true" Icon="system://Plus" /> <sm:Action Name="editDetail" Context="Container" Behavior="Open" Redirect="true" /> <sm:Action Name="Delete" Context="Selection" Behavior="Delete" Icon="system://Trash" /> </sm:Container> </sm:Screen> </sm:Folder> 

 <sm:Screen Id="EP301020" Type="SimpleScreen" Icon="system://Display1" DisplayName="Expense Receipt" Visible="false" OpenAs="Form"> <sm:Container Name="ReceiptDetails" > <sm:Field Name="Date" /> <sm:Field Name="Description" /> <sm:Field Name="ExpenseItem" /> <sm:Field Name="TotalAmount" /> 

 <sm:Action Name="Save" Context="Record" Behavior="Save" /> <sm:Action Name="Cancel" Context="Record" Behavior="Cancel" /> </sm:Container> </sm:Screen> </sm:SiteMap> 

In this example, you use the _EP301010_ screen to display the list and the _EP301020_ screen to display the editing form. In the list view ( _EP301010_ ), notice two actions that result in opening the form view for a data record: Behavior="Create" and Behavior="Open". The Redirect="true" attribute indicates that the editing form needs to be opened as a different screen. 

You can still control the current screen aer an action is completed by using the After attribute of the corresponding sm:Action tag. The After attribute defines more complex behavior of the container when the Redirect attribute of this tag is set to _true_. Possible values for the After attribute have the following meanings: 

- If redirection doesn't happen: 

- Refresh: The current container is refreshed. 

- Close: The current container is closed, and the previous container in the stack is loaded. 

- If redirection happens: 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 109 

- Refresh: A new screen is loaded, and the previous one is saved in the stack. 

- Close: The current container is closed, and the new one is opened and takes the position of the closed     container in the stack. The default value of the After attribute is Refresh. 

 Example: Using Existing Redirection to an External URL 

 If an action on an Acumatica ERP form provides redirection to an external URL, you can map the action to use in the mobile app. To do this, you need no additional attributes in the <sm:Action> tag. However, the Redirect attribute of the tag must be set to true as in the following example. 

 ... <sm:Action Behavior="Void" Context="Record" Name="ViewOnMap" Redirect="true"/> ... 

 On a mobile device, such action launches the default browser and passes the URL, which is obtained from the Acumatica ERP server, to the browser that opens the webpage specified in the URL. 

#### Creating a New Redirection to a Screen or Container 

 You can create a redirection to any container or screen in the mobile application when the redirection is absent in Acumatica ERP. For example, you can do this to implement pop-up windows in the mobile application. 

 To create a redirection, you use the following attributes: 

- RedirectToScreen sets the ID of the screen to redirect to. If the redirection target is within the current     screen (such as a different container), don't use this attribute. 

- RedirectToContainer sets the name of the container to redirect to. If you don't specify this attribute,     you are redirected to the primary container of the target screen. **Example: Creating a Redirection to Another Container Inside the Screen** 

 To see an example of creating a new redirection to another container inside the screen, copy the code below to an .xml file, put the file in the \App_Data\Mobile folder of the Acumatica ERP website, and start the mobile application. 

 <?xml version="1.0" encoding="UTF-8"?> <sm:SiteMap xmlns:sm="http://acumatica.com/mobilesitemap" xmlns:xsi="http:// http://www.w3.org/2001/XMLSchema-instance"> 

 <sm:Folder DisplayName="Expense Claims" Icon="system://Folder" Type="HubFolder"> <sm:Screen DisplayName="Expense Claims" Id="EP301030" Type="FilterListScreen"> 

 <sm:Container Name="Selection"> <sm:Field Name="Employee"/> </sm:Container> 

 <sm:Container Name="Claim"> <sm:Field ForceIsDisabled="true" Name="ReferenceNbr"/> <sm:Field Name="Status"/> <sm:Field Name="Date"/> <sm:Field Name="ClaimTotal"/> <sm:Field Name="Description"/> 

 <sm:Action Behavior="Open" Context="Container" Name="EditDetail" Redirect="true"/> <sm:Action Behavior="Create" Context="Container" Icon="system://Plus" Name="CreateNew" Redirect="true"/> </sm:Container> 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 110 

 </sm:Screen> </sm:Folder> 

 <sm:Screen DisplayName="Expense Claim" Id="EP301000" OpenAs="Form" Type="SimpleScreen" Visible="false"> 

 <sm:Container Name="DocumentSummary"> <sm:Attachments Disabled="true"/> <sm:Field ForceIsDisabled="true" Name="ReferenceNbr"/> <sm:Field Name="Description"/> 

 <sm:Action Behavior="Void" Context="Record" Name="ShowSubmitReceipt" Redirect="true" RedirectToScreen="EP301000" RedirectToContainer="SubmitReceipts$List"/> 

 <sm:Action After="Close" Behavior="Save" Context="Record" Name="Save"/> <sm:Action Behavior="Cancel" Context="Record" Name="Cancel"/> </sm:Container> 

 <sm:Container Name="SubmitReceipts" Type="SelectionActionList" Visible="false"> <sm:Field Name="Description"/> <sm:Field Name="Date"/> <sm:Field Name="ClaimAmount"/> 

 <sm:Action Behavior="Void" Context="List" Name="SubmitReceipt"/> </sm:Container> 

 </sm:Screen> </sm:SiteMap> 

In this example, the _EP301000_ screen with DisplayName="Expense Claim" includes the following containers: 

- DocumentSummary, which contains the following redirection on the Record action: 

 <sm:Action ... Context="Record" Name="ShowSubmitReceipt" Redirect="true" RedirectToScreen="EP301000" RedirectToContainer="SubmitReceipts$List"/> 

- SubmitReceipts, to which the redirection is declared by the RedirectToContainer attribute 

The RedirectToScreen attribute cannot be declared because both containers belong to the same screen. 

In the example presented in this section, the container name has the "SubmitReceipts$List" value, which consists of two parts. You can expand the name of the container with special arguments for more detailed configuration of the container behavior (as shown in the following example). 

 RedirectToContainer="InventoryLookup$List$InventoryLookupInventory" 

In this example, the RedirectToContainer value consists of the following parts: 

- Part of the string (up to the first _$_ sign) is the name of the container. 

- Part of the string (between the first and second _$_ sign) specifies how to open the container: 

- List: Open as a list 

- Form: Open as a form (default) 

- If the second parameter is set explicitly to List, in the rest of the string, you can specify an additional     container that is used as a filter for the data records in the main container. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 111 

 To use the expanded way of configuring a redirection, you should clearly understand how the target screen works, how its business logic operates, and how the state of the business logic objects changes aer any of the actions is executed. 

### Displaying Any Field as a Text Field 

 The mobile API gives you the ability to map a control of any type from an Acumatica ERP form to a text box in the mobile application. This ability can be useful when both of the following conditions are met: 

- You have one of the following problems with the use of the field in the mobile application: 

- A value in the control for the field is displayed oddly or incorrectly. 

- The mapping of the field raises an exception. 

- You do not need to specify a new value for the field in the mobile application. For these conditions, you can force the mobile application to treat this field as a common text field. 

 To do this, in the sm:Field tag for the field, you can specify the ForceType="String" attribute. The input value is inserted directly into the cache of the corresponding container. 

 We do not recommend that you use the ForceType attribute unless you have extensive experience developing custom controls and fully understand the outcome of using this attribute. Note that by using the ForceType attribute, you could switch off some types of field validation, which could damage data in the database. 

### Creating the User Signature 

 The mobile app provides an additional functionality to create the user signature and attach the signature image file to an Acumatica ERP form that supports file attachments. 

 This functionality does not work in the <sm:Container> tag that contains the <sm:Attachments> tag with the Disabled attribute set to true. 

 To add this functionality to the mobile site map, you should add the <sm:Action> tag with the Behavior attribute set to SignReport to a container of a screen that is mapped to a form, which supports attachments. In the action tag, you should also specify the Name and Context attributes as shown in the following example. 

 ... <sm:Action Behavior="SignReport" Context="Record" DisplayName="Sign" Name="SignReport"/> ... 

 As a result, the SIGN action will appear on the appropriate screen of the mobile app, as the following screenshot shows. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 112 

**_Figure: Viewing the SIGN action on the toolbar of a screen_** 

When the user clicks this action, the application displays a blank form with the **Cancel** and **OK** buttons and suggests the user to add the signature, as shown in the following screenshot. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 113 

**_Figure: Creating a signature_** 

Aer the user signs the form and clicks **OK** , an attachment with the signature adds to the screen in the mobile app (see the following screenshot). To save the signature file in the database, the user should click the Save button. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 114 

**_Figure: Viewing the signature added to the screen of the mobile app_** 

Aer the user clicks Save on the screen toolbar, the mobile app sends the signature file to the Acumatica ERP server that saves the file in the database as a file attached to the appropriate form. In the mobile application, the attachment is displayed as an image that is attached to the Acumatica ERP form. 


<!-- PAGE_BREAK -->
 Configuring the Mobile Site Map by Using XML (deprecated) | 115 

**_Figure: Viewing the signature added to the Acumatica ERP form_** 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 116 

## Mobile Site Map Reference 

 This chapter contains reference information for the elements that are used to configure the mobile site map of the Acumatica mobile app. 

#### In This Chapter 

##### • MSDL 

- _XML Tags_ (deprecated) 

- _Icons_ 

### MSDL 

 Mobile Site Map Definition Language (MSDL) can be used for the following purposes: 

- To change the mobile site map 

- To create the content for the empty mobile site map MSDL includes the following regulations and recommendations: 

- Instruction names are not case sensitive. For example, you can enter the add instruction as _Add_ , _ADD_ , or     _aDD_. 

- Each instruction must be written in a new line of MSDL code. 

- You can use any number of spaces before an instruction in a line of code. 

- If an instruction is located inside braces, this instruction is executed in the context of the object of the     instruction that contains the opening bracket. 

- An instruction can contain multiple nested instructions within braces. 

- To specify or update the value of an attribute of an object in the mobile site map, add the attribute     assignment within braces for the instruction for the object, as shown in the following code. 

 add recordAction "EditDetail" { behavior = Open } 

- An instruction can contain multiple assignment commands within braces. 

- Braces for an instruction can be placed on the same line aer the instruction or on the next line, as shown in     the following code. 

 add field "Date" { ... } add field "Description" { ... } 

- You can omit the space before and aer braces, as the following example shows. 

 add item "EP301010"{ displayName = "Expense Receipts"} 

- A comment starts with the _#_ symbol and is considered finished at the end of the line. 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 117 

 # this is a comment 

 This section contains detailed information about the following elements of MSDL: 

- _Object Types_ 

- _Constants_ 

- _Instructions_ 

- _Error Messages_ 

### Object Types 

 An MSDL instruction can be applied to the following object types: 

- The following action object types: 

- _containerAction_ (applied to a whole container) 

- _listAction_ (applied to a list view) 

- _recordAction_ (applied a single opened record) 

- _selectionAction_ (applied to a list of selected records) 

- These link object types: 

- _containerLink_ 

- _recordActionLink_ 

- _attributes_ 

- _container_ 

- _field_ 

- _folder_ 

- _group_ 

- _item_ 

- _screen_ 

- _type_ 

- _UDFields_ Objects have attributes, and each attribute can have any number of possible values. If the attribute is an indicator, it can have only the _true_ or _false_ value. 

 The topics in this section provide reference information on each of these object types, including a list of attributes and an example of the use of the object type. 

### attributes 

 An object that maps an entity attributes to the mobile app screen. 

#### Attributes 

 Attribute Description 

 From The name of the data view for the grid that contains the entity attributes. 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 118 

 Attribute Description 

 FormPriority The priority value that defines the position of the entity attributes on the screen. 

 Name The identifier of the attributes, as found in the WSDL schema. 

 The attributes object can also be used to map a grid of Acumatica ERP to a form view that displays key-value pairs. Then you should also use the following attributes inside the instruction. 

 Attribute Description 

 IDField The identifier of the grid field, as found in the WSDL schema, that specifies the key field for the key-value pairs. By default, the value is AttributeID. 

 IDValue The identifier of the grid field, as found in the WSDL schema, that specifies the value field for the key-value pairs. By default, the value is Value. 

 OrderField Optional. The grid field identifier, as found in the WSDL schema, that is used for sorting rows in the grid to display in the form view. By default, the value is Order. 

#### Example 

 In the following example, a grid containing two entity attributes is added. 

 add attributes "GridDataView" { displayName = "Status" displayName = "Quantity" } 

 Related Links 

- _<sm:Attributes>_ 

- _Adding Attributes of Entities to Mobile Screens_ 

### container 

 An object that maps a form container to the mobile app. The object can include fields, actions, nested containers, and other elements. 

#### Attributes 

 Attribute Description 

 AttachmentsControlPriority 

 The priority value that defines the position of the attachments in the list. 

 This attribute is deprecated. Now the attachments icon is displayed on the top toolbar of the app screen. For details, see Configuring Attachments. 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 119 

 Attribute Description 

 Attributes An indicator of whether this container holds entity attributes. If the indicator value is true , you should not specify the items of the container, because the container configuration is generated dynamically. 

 ContainerActionsToExpand 

 The number of containerAction objects to be visible in the bottom part of the list screen. The default value depends on the platform of the particular mobile device running the app. 

 Setting ContainerActionsToExpand = 1 for a container will cause the action corresponding to the containerAction object that is defined first to be displayed as a button in the bottom part of the corresponding screen. 

 DisplayName The name of the container on the UI. 

 FieldsToShow The number of fields to be displayed in the list. 

 FormActionsToExpand 

 The number of recordAction objects to be visible in the toolbar on the editing screen. The default value depends on the platform of particular mobile device running the app. 

 ListActionsToExpand 

 The number of listAction and selectionAction objects to be visible in the bottom part of the list screen when the multiple selection of records is activated. The default value depends on the platform of the particular mobile device running the app. 

 Setting ListActionsToExpand = 1 for a container will cause the action corresponding to the listAction or selectionAction object that is defined first to be displayed as a button in the bottom part of the corresponding screen. 

 Type An optional attribute that specifies the type of the container. The only possible value is SelectionActionList , which is used for a listAction object. See Example: Configuring a Screen with Many-to-One (Master-Detail) Containers or listAction for details. 

 Visible An indicator of whether the link to the container is visible on the editing screen. This attribute can be applied to a secondary container. By default, the value is true. 

 includeDialogActions 

 An indicator of whether the container includes actions for a smart panel. The attribute can be used only for a container object inside the dialog object. For details, see dialog. 

#### Example 

 In the following example, a container with two fields is added. 

 add container "OrdersToApply" { fieldsToShow = 2 add field "AppliedToOrder" { listPriority = 90 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 120 

 } add field "NoteText" { textType = PlainMultiLine } } 

 Related Links 

- _<sm:Container>_ 

### containerAction 

 In the mobile site map, an object that defines the appearance and behavior of an action that is related to a container and performs the business logic implemented in Acumatica ERP. This type of action is displayed only on the list view. 

#### Attributes 

 Attribute Description 

 After The behavior of the current container after the action is completed. The value can be one of the following: 

- _Refresh_ : The current container should be refreshed after the action is complet-     ed. 

- _Close_ : The current container should be closed after the action is completed. If the Redirect attribute of an action object is set to _true_ , the After attribute of this object defines more complex behavior for the current container. See _Redirect- ing the User to Different Screens and Containers_ for details. 

 Behavior Required. The behavior of the action—which defines how the mobile app obtains from the server the data resulting from the action and processes this data. The value can be one of the following: 

- _Create_ : Creates a new data record. If the Redirect attribute value is _true_ , this     action redirects the user to a container defined on a different screen. 

- _Open_ : Opens the data record for editing on a different screen. If the Redirect     attribute value is _true_ , this action redirects the user to a container defined on a     different screen. 

- _Record_ : Indicates that the mobile app should to expect a single record as the     server response. 

- _SignReport_ : Indicates that the mobile app should add the **Sign** action to the     container. This action is not implemented in Acumatica ERP and uses the spe-     cific capabilities of the mobile devices to create the user signature as an image     file. The user can save the signature in the database of the Acumatica ERP in-     stance as a file attachment for the appropriate form. See _Creating the User Sig-_     _nature_ for details. 

- _Void_ : Tells the mobile app to not use any records that are returned in the server     response. 

 DisplayName The name of the action in the UI. 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 121 

**Attribute Description** 

Icon The name of the image that is used to display the action icon on the UI. If this attribute is not specified for an action, the action is displayed on the UI without an icon. 

 See Icons for the possible values and the corresponding images for the Icon attribute. 

Priority The priority value that defines the position of the action on the screen or the toolbar relative to other container actions. 

Redirect An indicator of whether the action redirects the user to a container of a screen. You can use this attribute to do the following: 

- Allow a redirection defined for the action in Acumatica ERP by setting the at-     tribute to _true_. 

- Deny a redirection defined for the action in Acumatica ERP by setting the at-     tribute to _false_. This is the default setting of the Redirect attribute. 

- Define a new redirection for the action by setting the attribute to _true_ and spec-     ifying the attributes of this tag to set one of the following as the destination of     the redirection: 

- RedirectToScreen, to redirect to the primary container of the specified     screen 

- RedirectToContainer, to redirect to another container of the current     screen 

- RedirectToScreen and RedirectToContainer, to redirect to a     specified container of a specified screen 

 See Redirecting the User to Different Screens and Containers for more details. 

RedirectToContainer 

 The name of the destination container. The name can consist of the following parts separated by the $ symbol: 

- The name of the container 

- The display type of the container: _List_ or _Form_ (default) 

- The optional name of the additional container whose data is used as a filter The mobile site map has to include the metadata for this container. 

 For details, see Redirecting the User to Different Screens and Containers. 

RedirectToDialog The name of the complex dialog box (smart panel) that is the destination. For details, see _Mapping a Smart Panel_. 

RedirectToScreen The name of the destination screen. The mobile site map has to include the metadata for this screen. For details, see _Redirecting the User to Different Screens and Containers_. 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 122 

 Attribute Description 

 SyncLongOperation An indicator of whether the mobile app should wait until the action is completed if this action is defined as a PXLongRunOperation one and is executed asynchronously in Acumatica ERP. By default, the SyncLongOperation attribute is set to false. 

 The SyncLongOperation attribute will be deprecated in a future release. 

#### Example 

 In the following example, an action for creating a new record is added. 

 add containerAction "Insert" { icon = "system://Plus" behavior = Create } 

 Related Links 

- _<sm:Action>_ 

### containerLink 

 An object that specifies a link to another container on the screen toolbar or on the screen among the fields. 

#### Attributes 

 Attribute Description 

 Container The name that that will serve as the link to the container. 

 Control The type of control, which is one of the following values: 

- _ListItem_ : An indicator that the link to the container is displayed among the fields     on the screen according to the value defined in the Priority attribute of this     object. 

- _Button_ : An indicator that the link to the container is displayed in the screen tool-     bar according to the value defined in the Priority attribute of this object. 

 Icon The name of the image that is used to display the link when the Control attribute is set to Button and the link is displayed in the action panel in the UI. If this attribute is not specified for a link, the link is displayed in the UI without an icon. See the possible values and the corresponding images for the Icon attribute in Icons. 

 Priority The priority value that defines the position of the link in the enclosing container on the screen. 

 ValueField The name of the field whose value is used as the link text. The field must be declared in the container. 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 123 

 Attribute Description 

 Weight The value that is used to set the width of the link within the row of the UI element defined by the layout object with the Template attribute set to Inline. The default value is 1. 

#### Example 

 In the following example, a link to a container is added. 

 add containerLink "Details" { control = "ListItem" formPriority = 51 } 

 Related Links 

- _Configuring Related Containers_ 

- _<sm:ContainerLink>_ 

### dialog 

 An object that defines the appearance and behavior of a complex dialog box (smart panel). 

#### Attributes 

 Attribute Description 

 CloseButtonDialogResult 

 The dialog result for the Close action. The possible values of the property correspond to the elements of the WebDialogResult enumeration. 

 For more details, see Configuring the Close Button of a Smart Panel. 

 OpenAs The display type of the dialog box. When the dialog box is opened, this attribute specifies how to open the primary container. The value can be one of the following: 

- _List_ (default): The smart panel opens as a list. 

- _Form_ : The smart panel opens as a form. 

 Type The type of the smart panel, which is one of the following values: 

- _SimpleScreen_ : The smart panel is a common screen. 

- _FilterListScreen_ : The smart panel corresponds to the Acumatica ERP form based     on the FormDetail form template. Such a smart panel must include two con-     tainers: The first container maps the form area of the smart panel (filter), and     the second one maps the grid. 

#### Allowed Parent and Child Objects 

 The dialog object can be present inside the screen object. 

 The dialog object can contain the following objects: 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 124 

- _container_ 

- _dialogAction_ 

#### Example 

 In the following example, a smart panel is implemented. 

 add dialog SO301000D1 { type = SimpleScreen openAs = Form add dialogAction "Ok" { DisplayName = "Add & Close" DialogResult = "Ok" CloseDialog = true } add container "InventoryLookupInventory" { add field "Inventory" add field "BarCode" add field "SiteID" } } 

 Related Links 

- _Mapping a Smart Panel_ 

### dialogAction 

 An object that defines the appearance and behavior of an action that is related to a complex dialog box (smart panel). This type of action is displayed only inside a smart panel. 

 The action element may not be present in the WSDL schema of a form. 

#### Attributes 

 Attribute Description 

 dialogResult The type of the action. The attribute value should be the same as the type of the action on the smart panel being mapped. For details, see WebDialogResult Enumeration. The attribute can have one of the following values: 

- _OK_ 

- _Abort_ 

- _Cancel_ 

- _Ignore_ 

- _No_ 

- _None_ 

- _Retry_ 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 125 

 Attribute Description 

 DisplayName The name of the action in the UI. 

 CloseDialog An indicator of whether the app should close the smart panel after the action has been invoked. 

#### Allowed Parent and Child Objects 

 The dialogAction object can be present inside the dialog object. 

 The dialogAction object cannot contain any objects. 

#### Example 

 In the following example, an action is implemented that saves data entered on the screen and closes the smart panel. 

 add dialogAction "DialogOK" { DisplayName = "Save&Close" DialogResult = OK CloseDialog = true } 

 Related Links 

- _Mapping a Smart Panel_ 

### field 

 An object that maps a UI element field to the mobile app. This object can include fields, actions, nested containers, and other elements. 

 If a field from one container is also used in another container, you should use the ContainerName#FieldName format of the field name, where ContainerName is the name of the container (as it is specified in the WSDL schema) that contains the field, and FieldName is the name of the field in this container. See Example: Displaying Fields from Different Containers in One Container for details. 

#### Attributes 

 Attribute Description 

 displayName The name for the field, which by default is automatically set by the system. However, you can change it. 

 elementType The type of the field. The attribute can have only one value: FilePreview. 

 A field marked with FilePreview should have a FileID value that corresponds to the FileID value in the UploadFile table in the instance database. 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 126 

**Attribute Description** 

forceIsDisabled An indicator of whether the field will be unavailable on the editing form regardless of the server logic. By default, the field availability depends on the server logic. 

forceIsVisible An indicator of whether the field is visible on the editing form regardless of the server logic. By default, the field visibility depends on the server logic. 

forceRequired An indicator of whether the field is mandatory and must be filled in on the screen. If its value is _true_ , the field is mandatory. If its value is _false_ , the field is not mandatory. If the attribute is not specified, the need to fill the field is determined by the data obtained from the server. 

forceType The field type that is used by the application instead of the original field type. The only value of this attribute is _String_ , which is an indicator of whether the field is visible on the editing form regardless of the server logic. By default, the field visibility depends on the server logic. 

formPriority The priority value that defines the position of the field on the form. 

listDisplayFormat The format that is used to display the field in the list. The value can be one of the following: 

- _Value_ : An indicator that the field is represented only by the field value in the list. 

- _CaptionValue_ : An indicator that the field is represented by the caption and the     value in the list. This attribute is applicable only to selector fields. See _selector_ and _Configuring Selectors_ for details. 

listPriority The priority value that defines the position of the field in the list. 

pickerType The processing type of the selector field value; this attribute is applicable to only selector fields. The value can be one of the following: 

- _Attached_ : An indicator that the selector is displayed as a pop-up dialog box. 

- _Detached_ : An indicator that the selector is displayed as a separate screen. 

- _Searchable_ : An indicator that the mobile app should display the Search but- 

 ton ( ) right of the field control. If the user enters a text fragment in the control and clicks the button, the app sends to the Acumatica ERP server a query to search the records, and find those that contain the specified fragment in the field value. After the response, the mobile app opens the selector screen and displays the list of the field values obtained from the server. The user uses the list to select a value for the selector control. 

selectorDisplayFormat 

 The selector field format that is used to display the field value. The value can be one of the following: 

- _Key_ : An indicator that the value is represented by the key field of the selector. 

- _Description_ : An indicator that the value is represented by the value field of the     selector. This is the default value of the SelectorDisplayFormat attribute. 

- _KeyDescription_ : An indicator that the value is represented by the combination of     the key and value fields of the selector. This attribute is applicable to only selector fields. See _selector_ and _Configuring Selectors_ for details. 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 127 

**Attribute Description** 

special The field type that is used by the mobile app for a specific purpose. The value can be one of the following: 

- _AllowEdit_ (applicable to selector fields only): An indicator that the app should dis- 

 play the Edit button ( ) right of the field. If the user taps the button, the mobile app opens the data entry form for the business entity (such as a customer or sales order), selected in the field. The button appears if both of the following conditions are met: 

- On the Acumatica ERP form, the edit button is displayed for the correspond-     ing control. 

- In the mobile app, the field is not empty and contains an ID that can be used     to select the appropriate data record of the business entity. 

- _EmailAddress_ : An indicator that the app should treat this field as an input box     for an email address. It enables auto-complete for email addresses: As the user     types an email address for a new email activity by using the on-screen keyboard,     the system displays a list of possible completions, which are derived from the     system database or from the device's address book. The _EmailAddress_ value is     not supported in iOS apps. 

-     _EmailSend_ : An indicator that the app should display the Send Email button ( )     right of the field control. If the user clicks the button, the mobile app forces the     system of the mobile device to create a new email message and use the field val-     ue as the destination address for the message. In iOS, the Mail app is opened. 

-     _PhoneCall_ : An indicator that the app should display the Phone Call button ( )     right of the field. If the user taps the button, the mobile app forces the system of     the mobile device to open an app for voice calls with the phone number that has     been specified in the field. 

- _GpsCoords_ : An indicator that the app should obtain the location of the user's mo-     bile device and fill the field before sending to the Acumatica ERP server the da-     ta record that is being modified on the screen. If the field with this attribute val-     ue does not have a value, an action mapped on the screen cannot be executed;     for example, the user cannot save a data record that contains an empty field with     the _Special_ attribute set to _GpsCoords_.     The location is reported as a string in the following format: _<Latitude>:<Longi-_     _tude>_ (for instance, _65.61295166666667:-20.137938333333334_ ).     You can forcibly hide the field by setting the ForceIsVisible attribute to     _false_ , so it is not shown in the user interface, or you can make the field unavail-     able for editing by setting the ForceIsDisabled attribute to _true_. If the     ForceIsVisible and ForceIsDisabled attributes are not specified, then     the appropriate field state will be defined by the Acumatica ERP server. 

-     _UrlOpen_ : An indicator that the app should display the Open URL button ( )     right of the field control. If the user clicks the button, the mobile app forces the     system of the mobile device to launch the default browser (Safari in iOS) for the     external URL specified in the field control. 

- ListSelection: An indicator that a field holds the current state of selection of     an item in the list ( _true_ for selected, _false_ for unselected). The option can be used     only for Boolean fields. The following screenshot shows an example of using the Special attribute for fields mapped on a screen in the mobile app. 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 128 

**Attribute Description** 

 Figure: Viewing the fields with the Special attribute in the mobile app 

textType The type of text to be used for the field value. The value can be one of the following: 

- _HTML_ : The text can be HTML markup. 

- _PlainSingleLine_ : The text is displayed on a single line. 

- _PlainMultiLine_ : The text is displayed on multiple lines. The look of the input con-     trol depends on the platform. 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 129 

 Attribute Description 

 weight The value that is used to set the width of the field within the UI element line defined by the layout object with the layout attribute set to Inline. The default value is 1. 

 In the following example, the TotalAmount field takes two-thirds of the total width, and the Currency field takes one-third. 

 add layout "Layout_1" { layout = "Inline" add field "ReceiptDetailsExpenseDetails#TotalAmount" { weight = 2 } add field "ReceiptDetailsExpenseDetails#Currency" { pickerType = Attached } } 

#### Example 

 In the following example, a field is added. 

 add field "OrderNbr" { forceIsDisabled = True listPriority = 100 } 

 Related Links 

- _<sm:Field>_ 

### folder 

 An object of the main menu of the mobile app that can hold multiple folders and screen shortcuts. 

#### Attributes 

 Attribute Description 

 DisplayName The name of the folder in the UI. 

 Icon The name of the image that is used to display the folder icon on the main menu (and on the sidebar menu, if specified) of the mobile application. This attribute is optional; if this attribute is not specified for a folder, the folder is displayed in the UI without an icon. 

 See the possible values and the corresponding images for the Icon attribute in Icons. 

 IsDefaultFavorite An indicator of whether a link for the folder is added to the sidebar menu as a favorite folder. If the attribute is set to True , a link is added to the sidebar menu. By default, this attribute is set to False. 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 130 

 Attribute Description 

 Type The type of the folder (that is, the way it is displayed and used), which is one of the following values: 

- _ListFolder_ : An indicator that the folder contents are displayed as tiles. 

- _HubFolder_ : An indicator that the folder contents are displayed as pages that the     user navigates by swiping. 

#### Example 

 In the following example, a new folder containing the Expense Rexeipts (EP301010) screen is added to the main menu of the mobile app. The added folder will also appear in the sidebar menu of the mobile app. 

 add folder "ExpenseReceipts" { type = HubFolder isDefaultFavorite = True displayName = "Expense Receipts" icon = "system://NewsPaper" add item "EP301010" { displayName = "Expense Receipts" } } 

 Related Links 

- _<sm:Folder>_ 

### group 

 An object that maps a field group to the mobile app. The object can contain the following objects and instructions: 

- _field_ 

- _layout_ 

- Attributes 

- _recordActionLink_ 

#### Attributes 

 Attribute Description 

 Collapsable An indicator of whether this group may be collapsed or expanded. If its value is true , the group can be collapsed or expanded, and you can specify whether the group is collapsed when the screen is opened by using the Collapsed attribute. If the value is false , the group is expanded and cannot be collapsed. 

 If the Template attribute is set to ExpansionPanel , the value of the attribute is ignored. Expansion panels are always collapsible. 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 131 

 Attribute Description 

 Collapsed An indicator of whether this group is collapsed by default. If its value is true , the group is collapsed when the screen is opened. If the value is false , the group is expanded when the screen is opened. 

 If Template=Group (or the Template attribute is not set) and Collapsable=false, the value of the attribute is ignored. 

 For expansion panels (Template=ExpansionPanel) and collapsible groups (Template=Group and Collapsable=true), if the value of the attribute is not specified, the group is collapsed when the screen is opened. 

 DisplayName The name of the group in the UI. 

 If the Template attribute is set to ExpansionPanel , the value of the attribute is ignored. An expansion panel does not have the name of the group in the UI. 

 Field Obsolete. The name of the field whose value is displayed when the group is collapsed. 

 The value of this field is ignored. Expansion panels (Template=ExpansionPanel) always display the first field (sm:field) or layout definition (sm:layout) in the group. Other groups (Template=Group) do not display any fields when the group is collapsed. 

 FormPriority The priority value that defines the position of the group on the screen. 

 Template The template that is used for the group. The following values can be used for this attribute: 

- _ExpansionPanel_ : An expansion panel, which can be collapsed or expanded. The     collapsed expansion panel displays only the first field (field) or layout defini-     tion (layout) in the group. An expansion panel does not have the name of the     group in the UI. You can configure how the expansion panel is displayed by using     the Collapsed and FormPriority attributes of the object. 

- _Group_ : A group of UI elements. You can configure how the group is displayed by     using the DisplayName, Collapsable, Collapsed, and FormPriority     attributes of the object. If the value of the attribute is not specified, the _Group_ template is used. 

#### Example 

 In the following example, a group of fields is added to a screen. Fields from the added group contain information from the PaymentSettings container. 

 add group "PayInfoGroup" { displayName = "Payment Settings" collapsable = True collapsed = True add field "PaymentSettings#PaymentMethod" add field "PaymentSettings#CardAccountNo" add field "PaymentSettings#CashAccount" add field "PaymentSettings#PaymentRef" add field "PaymentSettings#ProcessingStatus" { displayName = "CC Processing Status" } 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 132 

 } 

 Related Links 

- _<sm:Group>_ 

### item 

 An object of the main menu that defines a screen of a mobile app. 

#### Attributes 

 Attribute Description 

 DisplayName The name of the menu item on the UI. 

 ExpandSelector The name of a selector field from the primary container. An Acumatica ERP form can contain a selector control that acts like a filter. For example, the Order Type selector control on the Sales Orders form (SO301000) works as a filter. If the ExpandSelector attribute is specified for a screen, then the mobile app represents the screen as multiple tabs, where each tab corresponds to a single value of the referenced selector field. 

 Icon The name of an image that is used to display the screen icon on the main menu (and on the sidebar menu, if item is specified as favorite) of a mobile application. If this optional attribute is not specified for a screen, the screen is displayed in the UI without an icon. See Icons for the possible values and the corresponding images for the Icon attribute. 

 isDefaultFavorite An indicator of whether a link for the screen is added to the sidebar menu as a favorite screen. This attribute has the following possible values: 

- _true_ , indicating that the screen is displayed in the sidebar menu. 

- _false_ , meaning that the screen is not displayed in the sidebar menu. This value is     set by default. 

 Visible An indicator of the visibility of the screen in the main menu. If the value of this attribute is true , the screen is visible on the main menu. By default, the value is true. 

#### Example 

 In the following example, the Transaction (CA304000) screen is added to the main menu of the mobile app. 

 add item "CA304000" { expandSelector = "TranType" displayName = "Cash Transactions" icon = "system://Credit" } 

 Related Links 

- _<sm:Screen>_ 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 133 

### layout 

 An object that helps to arrange multiple UI elements on a screen of the mobile app. The object can contain the following types of nested objects: 

- _field_ 

- _group_ 

- _containerLink_ 

- _recordActionLink_ 

- layout 

 The layout object with the layout attribute set to HeaderSimple , HeaderFirstAttachment , and Tab can include nested layout objects with Template=Inline. The layout objects for which the Template attribute is Inline cannot include any nested layout objects. The layout objects for which the Template attribute is DataTab can include only containerLink objects. 

#### Attributes 

 Attribute Description 

 Layout The template that is used to define the layout. The following values can be used for this attribute: 

- _HeaderFirstAttachment_ : An indicator that the mobile app should arrange the UI elements,     which are mapped by the nested objects, in a group-like header container with an attach-     ment icon on the le. If you click the attachment icon, you can take a photo and attach     the photo to the screen of the mobile app. The camera behavior is affected by the attrib-     utes of the attachments instruction.     The tag with the attribute set to _HeaderFirstAttachment_ can include nested layout ob-     jects with layout=Inline. The objects with the attribute set to _HeaderFirstAttachment_     cannot be nested in other layout instuction and can be nested only in container ob-     jects. 

 Fields inside a layout object of the HeaderFirstAttachment type are always displayed read-only. 

- _HeaderSimple_ : An indicator that the mobile app should arrange the UI elements, which     are mapped by the nested objects, in a group-like header container.     An object with the attribute set to _HeaderSimple_ can include nested layout objects with     Layout=Inline. An object with the attribute set to _HeaderSimple_ cannot be nested in     other layout objects and can be nested only in container objects. 

 Fields inside a layout object of the HeaderSimple type are always displayed read-only. 

- _HeaderSticky_ : An indicator that the mobile app should arrange the UI elements, which are     mapped by the nested objects, in a group-like header container that is always displayed     at the top of the screen. It means that when a user scrolls a screen, the header container     stays at the top of the screen. 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 134 

 Attribute Description 

 An object with the attribute set to HeaderSticky can include nested layout objects with Layout=Inline. An object with the attribute set to HeaderSticky cannot be nested in other layout objects and can be nested only in container objects. 

 Fields inside a layout object of the HeaderSticky type are always displayed read-only. 

- _Inline_ : An indicator that the mobile app should arrange UI elements that are mapped by     the nested tags, in a line by using the Weight attributes specified for these elements. If     the Weight attribute is not defined for a nested tag, the mobile app uses _1_ as the default     value.     The object with the attribute set to _Inline_ cannot include nested layout objects. The ob-     jects with the attribute set to _Inline_ can be nested in other layout objects. 

- _Tab_ : An indicator that the mobile app can contain elements valid for templates, such as     other layouts with _Inline_ template, recordAction objects, and cotainerLink ob-     jects.     Objects that are inside the object wrapping the tab object but not included in the tab ex-     plicitly are located in a default tab that is always displayed in the mobile app as the first     tab on the screen. The name of the default tab is _Summary_. 

- _DataTab_ : A layout object that can contain only _containerLink_ objects. Containers that are     referenced using containerLink objects from the dataTab are displayed as a list of     elements, not links to containers. 

- _EmbeddedList_ : A layout object that can contain a single _containerLink_ object. The option     allows the support of embedded list markup. 

#### Example 

 In the following example, the fields are arranged in three rows using the layout object. 

 add layout "OrderHeader" { displayName = "OrderHeader" layout = "HeaderSimple" add layout "OrderHeaderNbrRow" { layout = "Inline" add field "OrderNbr" add field "OrderTotal" } add layout "OrderHeaderTaxTotalRow" { layout = "Inline" add field "Status" add field "DiscountTotal" } add layout "OrderHeaderTotalRow" { layout = "Inline" add field "OrderedQty" add field "TaxTotal" } } 

 The result is presented on the following screenshot. 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 135 

 Figure: Viewing the organized layout 

 Related Links 

- _<sm:Layout>_ 

### listAction 

 This object type is deprecated. 

 In the mobile site map, an object that defines the appearance and behavior of an action that is performed on the data records selected in the list. Such an action is displayed only on the list view. You can use this object if the implementation of the action in Acumatica ERP supports the processing of multiple records. Then if the user has selected multiple records in the list, the action is applied at once to all the rows selected in the list. 

#### Attributes 

 Attribute Description 

 After The behavior of the current container after the action is completed. The value can be one of the following: 

- _Refresh_ : The current container should be refreshed after the action is complet-     ed. 

- _Close_ : The current container should be closed after the action is completed. If the Redirect attribute of the sm:Action tag is set to _true_ , the After at- tribute of this object defines more complex behavior for the current container. See _Redirecting to Different Screens and Containers_ for details. 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 136 

**Attribute Description** 

Behavior Required. The behavior of the action—which defines how the mobile app obtains from the server the data resulting from the action and processes this data. The value can be one of the following: 

- _Cancel_ : Discards the unsaved changes. You must declare the action if it is     present in the WSDL. 

- _Create_ : Creates a new data record. If the Redirect attribute value is _true_ , this     action redirects the user to a container defined on a different screen. 

- _Delete_ : Deletes the data record. 

- _Open_ : Opens the data record for editing on a different screen. If the Redirect     attribute value is _true_ , this action redirects the user to a container defined on a     different screen. 

- _Record_ : Indicates that the mobile app should expect a single record as the server     response. 

- _Save_ : Saves the data record. 

- _SignReport_ : Indicates that the mobile app should add the **Sign** action to the con-     tainer. This action is not implemented in Acumatica ERP and uses the specific     capabilities of the mobile devices to create the user signature as an image file.     The user can save the signature in the database of the Acumatica ERP instance     as a file attachment for the appropriate form. See _Creating the User Signature_ for     details. 

- _Void_ : Tells the mobile app to not use any records that are returned in the server     response. 

DisplayName The name of the action in the UI. 

Icon The name of the image that is used to display the action icon on the UI. If this attribute is not specified for an action, the action is displayed on the UI without an icon. 

 See Icons for the possible values and the corresponding images for the Icon attribute. 

Priority The priority value that defines the position of the action on the screen or the toolbar relative to other list actions. 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 137 

 Attribute Description 

 Redirect An indicator of whether the action redirects the user to a container of a screen. You can use this attribute to do the following: 

- Allow a redirection defined for the action in Acumatica ERP by setting the at-     tribute to _true_. 

- Deny a redirection defined for the action in Acumatica ERP by setting the at-     tribute to _false_. This is the default setting of the Redirect attribute. 

- Define a new redirection for the action by setting the attribute to _true_ and spec-     ifying the attributes of this tag to set one of the following as the destination of     the redirection: 

- RedirectToScreen, to redirect to the primary container of the specified     screen 

- RedirectToContainer, to redirect to another container of the current     screen 

- RedirectToScreen and RedirectToContainer, to redirect to a spec-     ified container of a specified screen 

 See Redirecting to Different Screens and Containers for more details. 

 RedirectToContainer 

 The name of the destination container. The name can consist of the following parts separated by the $ symbol: 

- The name of the container 

- The display type of the container: _List_ or _Form_ (default) 

- The optional name of the additional container whose data is used as a filter The mobile site map has to include the metadata for this container. 

 RedirectToDialog The name of the destination complex dialog box (smart panel). For details, see Mapping a Smart Panel. 

 RedirectToScreen The name of the destination screen. The mobile site map has to include the metadata for this screen. 

 SyncLongOperation An indicator of whether the mobile app should wait until the action is completed if this action is defined as a PXLongRunOperation one and is executed asynchronously in Acumatica ERP. By default, the SyncLongOperation attribute is set to false. 

 The SyncLongOperation attribute will be deprecated in a future release. 

#### Example 

 In the following example, an action for processing the list of records is added. 

 add listAction "Process" { behavior = Void redirect = True syncLongOperation = True 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 138 

 } 

 Related Links 

- _<sm:Action>_ 

### recordAction 

 In the mobile site map, an object that defines the appearance and behavior of an action that is performed on the current data record. This type of action is displayed only on the form view (editing screen). 

#### Attributes 

 Attribute Description 

 After The behavior of the current container after the action is completed. The following possible values indicate what to do: 

- _Refresh_ : Refresh the current container after the action is completed. 

- _Close_ : Closed the current container after the action is completed. If the Redirect attribute of the sm:Action tag is set to _true_ , the After at- tribute of this object defines more complex behavior for the current container. See _Redirecting to Different Screens and Containers_ for details. 

 Behavior Required. The behavior of the action—which defines how the mobile app obtains from the server the data resulting from the action and processes this data. The value can be one of the following: 

- _Cancel_ : Discards the unsaved changes. You must declare this action if it is     present in the WSDL. 

- _Create_ : Creates a new data record. If the Redirect attribute value is _true_ , this     action redirects the user to a container defined on a different screen. 

- _Delete_ : Deletes the data record. 

- _Open_ : Opens the data record for editing on a different screen. If the Redirect     attribute value is _true_ , this action redirects the user to a container defined on a     different screen. 

- _Record_ : Tells the mobile app to expect a single record as the server response. 

- _Save_ : Saves the data record. 

- _SignReport_ : Indicates that the mobile app should add the **Sign** action to the con-     tainer. This action is not implemented in Acumatica ERP and uses the specific     capabilities of the mobile devices to create the user signature as an image file.     The user can save the signature in the database of the Acumatica ERP instance     as a file attachment for the appropriate form. See _Creating the User Signature_ for     details. 

- _Void_ : Indicates to the mobile app to not use any records that are returned in the     server response. 

 DisplayName The name of the action in the UI. 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 139 

**Attribute Description** 

Icon The name of the image that is used to display the action icon on the UI. If this attribute is not specified for an action, the action is displayed on the UI without an icon. 

 See Icons for the possible values and the corresponding images for the Icon attribute. 

Priority The priority value that defines the position of the action on the screen or the toolbar relative to other record actions. 

Redirect An indicator of whether the action redirects the user to a container of a screen. You can use this attribute to do the following: 

- Allow a redirection defined for the action in Acumatica ERP by setting the at-     tribute to _true_. 

- Deny a redirection defined for the action in Acumatica ERP by setting the at-     tribute to _false_. This is the default setting of the Redirect attribute. 

- Define a new redirection for the action by setting the attribute to _true_ and spec-     ifying the attributes of this tag to set one of the following as the destination of     the redirection: 

- RedirectToScreen, to redirect to the primary container of the specified     screen 

- RedirectToContainer, to redirect to another container of the current     screen 

- RedirectToScreen and RedirectToContainer, to redirect to a spec-     ified container of a specified screen 

 See Redirecting to Different Screens and Containers for more details. 

RedirectToContainer 

 The name of the destination container. The name can consist of the following parts separated by the $ symbol: 

- The name of the container 

- The display type of the container: _List_ or _Form_ (default) 

- The name of the additional container whose data is used as a filter (optional) The mobile site map has to include the metadata for this container. 

RedirectToDialog The name of the destination complex dialog box (smart panel). For details, see _Mapping a Smart Panel_. 

RedirectToScreen The name of the destination screen. The mobile site map has to include the metadata for this screen. 

SyncLongOperation An indicator of whether the mobile app should wait until the action is completed if this action is defined as a PXLongRunOperation one and is executed asynchronously in Acumatica ERP. By default, the SyncLongOperation attribute is set to _false_. 

 The SyncLongOperation attribute will be deprecated in a future release. 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 140 

#### Example 

 In the following example, an action to delete an opened record is added. 

 add recordAction "Delete" { Icon = "system://Trash" Behavior = Delete After = Close } 

 Related Links 

- _<sm:Action>_ 

### recordActionLink 

 An object that you can use to remove an action from the screen toolbar and put the action among the field objects on an editing screen. The action to which this object refers must be declared with the same name within the same container by using any action object (for details, see Object Types ). 

#### Attributes 

 Attribute Description 

 weight The value that is used to set the width of the link within the UI element line defined by the layout object with the Template attribute set to Inline. The default value is 1. 

#### Example 

 In the following example, a container with an action and corresponding action link is added. 

 add container "SampleContainer" { add recordActionLink "ViewOnMap" add recordAction "ViewOnMap" { behavior = Void redirect = True } } 

 Related Links 

- _<sm:RecordActionLink>_ 

### screen 

 An object that maps an Acumatica ERP form to the mobile app. This object can include the definition of screen containers and the assignment of attributes. 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 141 

#### Attributes 

 Attribute Description 

 OpenAs The display type of the screen. When the screen is opened from a menu, this attribute specifies how to open the primary container. Otherwise, when the screen is opened by a redirection from an action and the RedirectToContainer attribute of this action does not explicitly specify how to open the container, then this attribute specifies how to open the redirected container of the screen. The value can be one of the following: 

- _List_ : The screen opens as a list. 

- _Form_ : The screen opens as a form. 

 Type The type of the screen, which is one of the following values: 

- _SimpleScreen_ : The screen is a common screen. 

- _FilterListScreen_ : The screen corresponds to the Acumatica ERP form based on     the FormDetail form template. Such a screen must include two containers.     The first container maps the form area of the form (filter), and the second one     maps the grid. 

- _Report_ : The screen is an Acumatica Report Designer report. 

- _Dashboard_ : The screen is a dashboard. A screen of this type can display the fol-     lowing types of dashboard widgets: 

- _Chart_ 

- _Data Table_ 

- _Score Card_ 

- _Trend Card_ Other widget types will be hidden. 

 hideUDF An indicator of whether user-defined fields should not be displayed on a screen. Default value is False. 

 The hideUDF attribute and the add UDFields instruction cannot be used in the same screen mapping. 

#### Example 

 In the following example, the Sales Orders (SO301000) screen that has been present in the original mobile site map is updated. 

 update screen SO301000 { hideUDF = True update container "OrderSummary" { add recordAction "PrintSalesOrderQuoteReport" { redirect = True } add recordAction "SignReport" { behavior = SignReport displayName = "Sign" } } 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 142 

 } 

 Related Links 

- _<sm:Screen>_ 

### selectionAction 

 In the mobile site app, an action can be performed with data records selected in the list. The selectionAction object defines the appearance and behavior of this action. This type of action is displayed only on the list view. If the user has selected multiple records in the list, the action is applied successively to each selected record. 

#### Attributes 

 Attribute Description 

 After The behavior of the current container after the action is completed. The value can be one of the following: 

- _Refresh_ : The current container should be refreshed after the action is complet-     ed. 

- _Close_ : The current container should be closed after the action is completed. If the Redirect attribute of an action object is set to _true_ , the After attribute of this object defines more complex behavior for the current container. See _Redirect- ing to Different Screens and Containers_ for details. 

 Behavior Required. The behavior of the action—which defines how the mobile app obtains from the server the data resulting from the action and processes this data. The value can be one of the following: 

- _Cancel_ : Discards the unsaved changes. You must declare this action if it is     present in the WSDL. 

- _Create_ : Creates a new data record. If the Redirect attribute value is _true_ , this     action redirects the user to a container defined on a different screen. 

- _Delete_ : Deletes the data record. 

- _Open_ : Opens the data record for editing on a different screen. If the Redirect     attribute value is _true_ , this action redirects the user to a container defined on a     different screen. 

- _Record_ : Indicated that the mobile app should expect a single record as the server     response. 

- _Save_ : Saves the data record. 

- _SignReport_ : Indicates that the mobile app should add the **Sign** action to the con-     tainer. This action is not implemented in Acumatica ERP and uses the specific     capabilities of the mobile devices to create the user signature as an image file.     The user can save the signature in the database of the Acumatica ERP instance     as a file attachment for the appropriate form. See _Creating the User Signature_ for     details. 

- _Void_ : Tells the mobile app to not use any records that are returned in the server     response. 

 DisplayName The name of the action in the UI. 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 143 

**Attribute Description** 

Icon The name of the image that is used to display the action icon on the UI. If this attribute is not specified for an action, the action is displayed on the UI without an icon. 

 See Icons for the possible values and the corresponding images for the Icon attribute. 

Priority The priority value that defines the position of the action on the screen or the toolbar relative to other selection actions. 

Redirect An indicator of whether the action redirects the user to a container of a screen. You can use this attribute to do the following: 

- Allow a redirection defined for the action in Acumatica ERP by setting the at-     tribute to _true_. 

- Deny a redirection defined for the action in Acumatica ERP by setting the at-     tribute to _false_. This is the default setting of the Redirect attribute. 

- Define a new redirection for the action by setting the attribute to _true_ and spec-     ifying the attributes of this tag to set one of the following as the destination of     the redirection: 

- RedirectToScreen, to redirect to the primary container of the specified     screen 

- RedirectToContainer, to redirect to another container of the current     screen 

- RedirectToScreen and RedirectToContainer, to redirect to a spec-     ified container of a specified screen 

 See Redirecting to Different Screens and Containers for more details. 

RedirectToContainer 

 The name of the destination container. The name can consist of the following parts separated by the $ symbol: 

- The name of the container 

- The display type of the container: _List_ or _Form_ (default) 

- The optional name of the additional container whose data is used as a filter The mobile site map has to include the metadata for this container. 

RedirectToDialog The name of the destination complex dialog box (smart panel). For details, see _Mapping a Smart Panel_. 

RedirectToScreen The name of the destination screen. The mobile site map has to include the metadata for this screen. 

SyncLongOperation An indicator of whether the mobile app should wait until the action is completed if this action is defined as a PXLongRunOperation one and is executed asynchronously in Acumatica ERP. By default, the SyncLongOperation attribute is set to _false_. 

 The SyncLongOperation attribute will be deprecated in a future release. 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 144 

#### Example 

 In the following example, a new action for deleting selected records is defined. 

 add selectionAction "Delete" { icon = "system://Trash" behavior = Delete } 

 Related Links 

- _<sm:Action>_ 

### type 

 For attachments, an object that defines a file name extension of the permitted file type. 

 On iOS devices, it is possible to upload only image files. Files of other types are not supported. 

#### Attributes 

 Attribute Description 

 Extension The file name extension of the permitted file type. 

#### Example 

 The following examples defines three types of files that can be attached to the record: JPG, PNG, and PDF. 

 attachments { add type "jpg" { extension = "jpg" } add type "png" { extension = "png" } add type "pdf" { extension = "pdf" } } 

 Related Links 

- _<sm:Type>_ 

### UDFields 

 An object that maps user-defined fields of a form to the equivalent screen in the mobile app. A single use of the UDFields object maps all user-defined fields of a particular screen. 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 145 

#### Attributes 

 The object contains no attributes. 

#### Example 

 The following example maps user-defined fields of the Cases (CR306000) form to the Cases screen. UDFInline is an arbitrary name that has not been used anywhere else in the mapping. 

 update screen "CR306000" { update container "CaseSummary" { add UDFields "UDFInline" } } 

### Constants 

 The following types of constants are supported in MSDL. 

 Type Example 

 integer 100500 

 string "Expense Receipts" 

 boolean true and false 

 enum hubFolder 

### Instructions 

 Format: 

 # comment instructionName objectType "objectName" { attributeName1 = newValue1 attributeName2 = newValue2 ... instructionName1 objectType1 "objectName1" { ... } } 

 MSDL provides the following instructions. 

 Instruction Description 

 add Appends the specified object as a child to the object that is referenced in the outer scope of this instruction. 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 146 

 Instruction Description 

 attachments In a container, switches the MSDL interpreter to the mode of setting the attachment attributes. 

 placeAfter In the mobile site map, moves the object that is referenced in the outer scope of this instruction after the specified object. 

 placeAt In the mobile site map, moves the object that is referenced in the outer scope of this instruction to the specified position. 

 placeBefore In the mobile site map, moves the object that is referenced in the outer scope of this instruction to the position before the specified object. 

 remove Removes the specified object from the mobile site map. 

 sitemap Switches the MSDL interpreter to the mode of editing the main menu of the mobile site map. 

 selector In a field, switches the MSDL interpreter to the mode of editing the selector content. 

 update Switches the MSDL interpreter to the mode of editing the specified object. 

### add 

 In the mobile site map of the Acumatica ERP instance, appends the referenced object as a child to the object that was processed by a previous instruction with an opening brace. 

 Syntax: 

 add objectType "objectName" 

 Parameters: 

- objectType: The keyword that specifies one of the object types, as described in _Object Types_. 

- objectName: The string constant that specifies the object name as it is defined in the WSDL schema.     (See _Getting the WSDL Schema_ for details.) If objectType is field, to add to the container a     child field from another container, you specify the value of this parameter in the following format:     ContainerName#FieldName, where ContainerName is the name of the container (as it is specified in     the WSDL schema) that contains the field, and FieldName is the name of the field in this container. _Example:_ 

 Suppose that you need to add a new field to a container that is defined in the mobile site map. We recommend that you do this as shown in the following example. 

 update screen "ERP_ScreenID" { update container "WSDL_ContainerName" { add field "WSDL_FieldName" { FieldTagAttribute1 = Value1 FieldTagAttribute2 = Value2 } } 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 147 

 } 

 The code above performs the following operations: 

1. Finds the screen by the specified name in the mobile site map 

2. If the previous operation has succeeded, finds the container with the specified name in the mobile site map 

3. If the previous operation has succeeded, finds the container in the WSDL schema of the form 

4. In the WSDL schema, finds the field that has the name specified in the add instruction 

5. If the previous operation has succeeded, adds the field to the mobile site map 

6. If an assignment command for an attribute of the field is specified for the add instruction within braces, sets     the attribute to the specified value 

### attachments 

 In a container in the mobile site map of the Acumatica ERP instance, switches the MSDL interpreter to the mode in which the attachment attributes can be set. 

 On iOS devices, it is possible to upload only image files. Files of other types are not supported. 

 Syntax: 

 attachments {} 

 The braces are mandatory. Within the braces, you can add assignment commands for the attributes of the instruction. 

 Attributes : 

 Attribute Description 

 Disabled An indicator of whether attachments are disabled. If its value is true , the attachments are disabled. 

 ImageAdjustmentPreset 

 The type of the image adjustment that is processed by the application for enhancing images taken from the camera of a mobile device. The only value of this attribute is Receipt , which is an indicator that a special camera mode is switched on in the Acumatica mobile app. In this mode, the following enhancements of the image captured by the camera are preformed automatically: 

- The image is cropped based the bounding box of the receipt's detected edges. 

- The image distortion is removed. 

- The image is converted into black and white. 

- The contrast of the image is maximized. 

 Name The identifier of the attachments, as found in the WSDL schema. 

 MaxFileSize The maximum size of an attached file. 

 MaxImageHeight The maximum height of an attached image (in pixels). 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 148 

 Attribute Description 

 MaxImageWidth The maximum width of an attached image (in pixels). 

 Example: 

 Suppose that you need to specify the following requirements related to attachments: 

- The attachments of an Acumatica ERP form are allowed in the container. 

- The attachments can contain files that have the JPG or PNG extension. 

- Image adjustment is not used for an attached file. You can add the following code within the instruction for the appropriate container. 

 any instruction for the container { ... attachments { disabled = false add type "jpg" add type "png" imageAdjustmentPreset = Receipt } } 

 Related Links 

- _<sm:Attachments>_ 

- _Managing External Storage for File Attachments_ 

### placeAer 

 In the mobile site map, moves the object that is referenced in the outer scope of this instruction immediately aer the specified object. The instruction is used to order child objects within a parent object of the mobile site map. You cannot use the instruction to move an object from one parent object to another. 

 Syntax: 

 placeAfter objectType "objectName" 

 Parameters: 

- objectType: A keyword that specifies an object type, as described in _Object Types_. 

- objectName: The string constant that specifies the name of the object of the type specified by the     objectType parameter. The object must exist in the instance of the mobile site map in the memory of     Acumatica ERP server before the MSDL interpreter processes the placeAfter instruction. _Example:_ 

 Suppose that you need to move the EP503010 form shortcut within the ExpenseReceipts folder of the main menu to the position aer the EP301010 form shortcut. You can add the following code within the sitemap instruction. 

 update folder "ExpenseReceipts" { update item "EP503010" { placeAfter item "EP301010" } } 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 149 

### placeAt 

 In the mobile site map, moves the object that is referenced in the outer scope of this instruction to the specified position in the same parent object of the mobile site map. 

 Syntax: 

 placeAt positionNumber 

 Parameter: 

- positionNumber: The non-negative integer value that specifies the number of the target position in the     parent object. _Example:_ 

 Suppose that you need to add a shortcut to the Expense Receipts (EP301010) screen to the first position in the ExpenseReceipts folder of the main menu and change the display name of the shortcut. You can add the following code within the sitemap instruction. 

 update folder "ExpenseReceipts" { add item "EP301010" { displayName = "Expense Receipts" placeAt 0 } } 

### placeBefore 

 In the mobile site map, moves the object that is referenced in the outer scope of this instruction immediately before the specified object. The instruction is used to order child objects within a parent object of the mobile site map. You cannot use the instruction to move an object from one parent object to another. 

 Syntax: 

 placeBefore objectType "objectName" 

 Parameters: 

- objectType: A keyword that specifies an object type, as described in _Object Types_. 

- objectName: The string constant that specifies the name of the object of the type specified by the     objectType parameter. The object must exist in the instance of the mobile site map in the memory of     Acumatica ERP server before the MSDL interpreter processes the placeBefore instruction. _Example:_ 

 Suppose that you need to add the CompanyName field within the ContactSummary container to the position before the Address group. You can add the following code within an instruction for the container. 

 update screen "CR302000" { update container "ContactSummary" { ... add group "Address" {...} ... 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 150 

 add field "CompanyName" { container = "DetailsSummary" placeBefore group "Address" } } } 

### remove 

 In the mobile site map of the Acumatica ERP instance, removes the referenced object, along with any child objects it has, from the mobile site map. 

 Syntax: 

 remove objectType "objectName" 

 Parameters: 

- objectType: A keyword that specifies one of the object types, as described in _Object Types_. 

- objectName: The string constant that specifies the object name as it is defined in the WSDL schema. (See     _Getting the WSDL Schema_ for details.) _Example:_ 

 Suppose that you need to remove a field from a container that is defined in the mobile site map. We recommend that you do this as shown in the following example. 

 update screen "ERP_ScreenID" { update container "WSDL_ContainerName" { remove field "WSDL_FieldName" } } 

 The code above performs the following operations: 

1. Finds the screen with the specified name in the mobile site map 

2. If the previous operation has succeeded, finds the container with the specified name in the mobile site map 

3. If the previous operation has succeeded, removes the field from the mobile site map 

 If the field contains a selector container, the container is also removed from the mobile site map. 

### sitemap 

 Switches the MSDL interpreter to editing mode for the main menu of the mobile site map. 

 Syntax: 

 sitemap {} 

 The braces are mandatory. Within the braces, you can add instructions for objects of the main menu of the mobile site map. 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 151 

 Examples: 

 The following code adds the new folder to the main menu, sets the attributes of the folder in the mobile site map (see folder for details), and adds the shortcut for the Expense Receipts (EP301010) screen with the specified display name to the folder. 

 sitemap { add folder "ExpenseReceipts" { type = HubFolder isDefaultFavorite = True displayName = "Expense Receipts" icon = "system://NewsPaper" add item "EP301010" { displayName = "Expense Receipts" } } 

 The code below updates the ExpenseReceipts folder of the main menu in the following ways: 

- Switches the MSDL interpreter to editing mode for the main menu 

- Changes the display name of the folder 

- Removes the shortcut to the Expense Receipts screen from the folder 

- Adds the shortcut to the Expense Receipts screen to the folder with the specified display name 

- Switches the MSDL interpreter back to editing mode for the content of the mobile site map 

 update folder "ExpenseReceipts" { displayName = "New display name" remove item "EP301010" add item "EP503010" { displayName = "Other screen" } } 

 The code above can be executed because it operates with the objects that are created in the previous code example. 

### selector 

 In a field in the mobile site map of the Acumatica ERP instance, switches the MSDL interpreter to editing mode for the selector content. 

 Syntax: 

 selector {} 

 The braces are mandatory. Within the braces, you can add assignment commands for attributes of the container object and instructions for the fields that are used as selector columns. 

 Example: 

 Suppose that you need to define for a field a selector container that contains four columns but displays only three. You can add the following code within an instruction for the field. 

 any instruction for the field { selector { fieldsToShow = 3 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 152 

 add field "BusinessAccount" add field "Type" add field "BusinessAccountName" add field "BAccountID" } } 

### update 

 In the mobile site map of the Acumatica ERP instance, switches the MSDL interpreter to editing mode for specified object. 

 Syntax: 

 update objectType "objectName" 

 Parameters: 

- objectType: A keyword that specifies one of the object types, as described in _Object Types_. 

- objectName: The string constant that specifies the object name as it is defined in the WSDL schema. (See     _Getting the WSDL Schema_ for details.) _Example:_ 

 Suppose that you need to add a new field to a container of a screen that is defined in the mobile site map. We recommend that you do this as shown in the following example. 

 update screen "ERP_ScreenID" { update container "WSDL_ContainerName" { add field "WSDL_FieldName" { ... } } } 

 The code above performs the following operations: 

1. Finds the screen with the specified name in the mobile site map 

2. If the previous operation has succeeded, finds the container with the specified name in the mobile site map 

3. If the previous operation has succeeded, finds the container in the WSDL schema of the form 

4. In the WSDL schema, finds the field with the name specified in the add instruction 

5. If the previous operation has succeeded, adds the field to the mobile site map 

### Error Messages 

 The MSDL interpreter can work in the following modes: 

- Production mode, in which the interpreter ignores most errors while processing the MSDL code, for greater     stability 

- Debugging mode, in which the interpreter logs every error and stops executing the MSDL code if an error     occurs 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 153 

 Production mode is used by default; here the MSDL interpreter does not log errors that occur. The interpreter ignores any MSDL file that contains a syntax error. It also ignores any instruction that contains a semantic error; if such an instruction contains nested instructions and assignment commands, the interpreter also ignores them. 

 To turn on debugging mode, you should turn on the mobileSitemapDebug key by including the following string in the <appSettings> section of the web.config file, which is located in the website folder:<add key="mobileSitemapDebug" value="True" />. 

 If the key is turned on, the MSDL interpreter logs errors and sends the error messages to the mobile app, which displays these messages on the mobile device. 

 The error messages are logged in the following format. 

 path\\fileName:lineNumber errorMessage 

 The interpreter logs the following types of errors. 

 Example of Error Message Description 

 Invalid command 'ad'. The instruction name is invalid. 

 Can't use entity type 'scren' in current context. 

 The interpreter detects an unknown object or an attempt to use the object in the wrong context. The interpreter ignores the instruction and all the nested commands and instructions. 

 Invalid argument '1' The instruction contains an invalid type of a parameter. 

 Invalid argument count The instruction contains the wrong number of parameters. The interpreter ignores the instruction and all the nested commands and instructions. 

 Can't find entity with key 'ExpenseReceipts' in current context. 

 The object specified in the instruction (for example, update or remove) is not found in the mobile site map. 

 Only one instance of entity type 'sitemap'. 

 The instruction is trying to add an object that exists in the mobile site map, and the site map can contain only one such object. 

 Entity with key 'EP301010' already exists. 

 The instruction is trying to add an object that exists in the parent object. 

 Can't use attribute 'someAttr' in current context. 

 The assignment command is trying to set an attribute that does not rely on the specified object. 

 Can't assign value to attribute 'forceRequired' 

 The assignment command is trying to assign to the attribute a value of an inappropriate type. 

 Syntax error: extraneous input '}' The interpreter has detected a syntax error in the specified line of the MSDL code. 

### XML Tags 

 XML tags for customizing the Mobile Site Map is deprecated since Acumatica 2025 R1. Use MSDL instead. 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 154 

 The figure below shows the relationships between tag types in the mobile site map. In the figure, each line connecting a le tag type and a right tag type indicates that the le tag may contain any number of right tags. The exception to this rule is the sm:Container tag, which may include only a single sm:Attachments tag. 

 The sm:Include tag can be located in any place of another tag. 

#### In This Section 

- _<sm:Action>_ 

- _<sm:Attachments>_ 

- _<sm:Attributes>_ 

- _<sm:Container>_ 

- _<sm:ContainerLink>_ 

- _<sm:Field>_ 

- _<sm:Folder>_ 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 155 

- _<sm:Group>_ 

- _<sm:Include>_ 

- _<sm:Layout>_ 

- _<sm:RecordActionLink>_ 

- _<sm:Screen>_ 

- _<sm:SelectorContainer>_ 

- _<sm:Type>_ 

### <sm:Action> 

 The sm:Action tag has the following attributes. 

 Attribute Description 

 After The behavior of the current container after the action is completed. The value can be one of the following: 

- _Refresh_ : An indicator that the current container is refreshed after the action is     completed. 

- _Close_ : An indicator that the current container is closed after the action is com-     pleted. If the Redirect attribute of the sm:Action tag is set to _true_ , the After at- tribute of this tag defines more complex behavior of the current container. See _Redirecting to Different Screens and Containers_ for details. 

 Behavior Required. The behavior of the action—which defines how the mobile app obtains from the server the data resulting from the action and processes this data. The value can be one of the following: 

- _Cancel_ : The action that discards the unsaved changes. You must declare the ac-     tion if it is present in the WSDL. 

- _Create_ : The action that creates a new data record. If the Redirect attribute     value is _true_ , the action redirects the user to a container defined on a different     screen. 

- _Delete_ : The action that deletes the data record. 

- _Open_ : The action that opens the data record for editing from a different screen. If     the Redirect attribute value is _true_ , the action redirects the user to a contain-     er defined on a different screen. 

- _Record_ : The type of behavior that is a hint for the mobile app to expect a single     record as the server response. 

- _Save_ : The action that saves the data record. 

- _SignReport_ : An indicator that the mobile app should add the **SIGN** action to the     container. This action is not implemented in Acumatica ERP and uses specific     capabilities of mobile devices to create the user signature as an image file. The     user can save the signature in the database of the Acumatica ERP instance as a     file attachment for the appropriate form. See _Creating the User Signature_ for de-     tails. 

- _Void_ : The type of behavior that is a hint for the mobile app to do not use any     records that are returned in the server response. 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 156 

**Attribute Description** 

Context Required. The context of the action—that is, what the action is performed on. The value can be one of the following: 

- _Container_ : The action that is related to a container and performs the business     logic implemented in Acumatica ERP. Such an action is displayed only on the list     view. 

- _List_ : The action that is performed on the data records selected in the list. Such     an action is displayed only on the list view. You can use this value if the im-     plementation of the action in Acumatica ERP supports processing of multiple     records. Then if the user has selected multiple records in the list, the action is     applied at once to all the rows selected in the list. 

- _Record_ : The action that is performed on the current data record. Such an action     is displayed only on the form view. 

- _Selection_ : The action that is performed on the data records selected in the list.     Such an action is displayed only on the list view. If the user has selected multiple     records in the list, the action is applied successively to each selected record. 

DisplayName The name of the action in the UI. 

Icon The name of the image that is used to display the action icon on the UI. This attribute is optional. If this attribute is not specified for an action, the action is displayed in the UI without an icon. See the possible values and the corresponding images for the Icon attribute in _Icons_. 

Name The action identifier, as found in the WSDL schema. 

Priority The priority value that defines the position of the action on the screen or the toolbar, depending on the Context value of this tag. 

Redirect An indicator of whether the action redirects the user to a container of a screen. You can use this attribute to do the following: 

- Allow a redirection defined for the action in Acumatica ERP by setting the at-     tribute to _true_. 

- Deny a redirection defined for the action in Acumatica ERP by setting the at-     tribute to _false_. This is the default setting of the Redirect attribute. 

- Define a new redirection for the action by setting the attribute to _true_ and speci-     fying the attributes of this tag to set the following destination of the redirection: 

- RedirectToScreen, to redirect to the primary container of the specified     screen 

- RedirectToContainer, to redirect to another container of the current     screen 

- RedirectToScreen and RedirectToContainer, to redirect to a spec-     ified container of a specified screen 

 See Redirecting to Different Screens and Containers for more details. 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 157 

 Attribute Description 

 RedirectToContainer 

 The name of the destination container. The name can consist of the following parts separated by the $ sign: 

- The name of the container 

- The display type of the container: _List_ or _Form_ (default) 

- Optional: The name of the additional container whose data is used as a filter The mobile site map has to include the metadata for this container. 

 RedirectToScreen The name of the destination screen. The mobile site map has to include the metadata for this screen. 

 SyncLongOperation An indicator of whether the mobile app should wait until the action is completed if this action is defined as a PXLongRunOperation one and is executed asynchronously in Acumatica ERP. By default, the SyncLongOperation attribute is set to false. 

 Related Links 

- _XML Tags_ 

### <sm:Attachments> 

 The sm:Attachments tag has the following attributes. 

 Attribute Description 

 Disabled An indicator of whether attachments are disabled. If its value is true , the attachments are disabled. 

 ImageAdjustmentPreset 

 The type of the image adjustment that is processed by the application for enhancing images taken from the camera of a mobile device. The only value of this attribute is Receipt , which is an indicator that a special camera mode is switched on in the Acumatica mobile application. In this mode, the following enhancements of the image captured by the camera are preformed automatically: 

- The image is cropped by the bounding box of the detected edges. 

- The image distortion is removed. 

- The image is converted into black and white. 

- The contrast of the image is maximized. 

 Name The identifier of the attachments, as found in the WSDL schema. 

 MaxFileSize The maximum size of an attached file. 

 MaxImageHeight The maximum height of an attached image (in pixels). 

 MaxImageWidth The maximum width of an attached image (in pixels). 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 158 

 Related Links 

- _XML Tags_ 

### <sm:Attributes> 

 The sm:Attributes tag has the following attributes. 

 Attribute Description 

 From The name of the data view for the grid that contains the entity attributes. 

 FormPriority The priority value that defines the position of the entity attributes on the screen. 

 Name The identifier of the attributes, as found in the WSDL schema. 

 If the sm:Attributes tag is used to map a grid of Acumatica ERP to a form view that displays key-value pairs, you should also use the following attributes in this tag. 

 Attribute Description 

 IDField The identifier of the grid field, as found in the WSDL schema, that specifies the key field for the key-value pairs. By default, the value is AttributeID. 

 IDValue The identifier of the grid field, as found in the WSDL schema, that specifies the value field for the key-value pairs. By default, the value is Value. 

 OrderField Optional. The grid field identifier, as found in the WSDL schema, that is used for sorting rows in the grid to display in the form view. By default, the value is Order. 

 Related Links 

- _XML Tags_ 

### <sm:Container> 

 The sm:Container tag has the following attributes. 

 Attribute Description 

 AttachmentsControlPriority 

 The priority value that defines the position of the attachments in the list. 

 Attributes An indicator of whether that this container holds entity attributes. If the indicator value is true , you should not specify the items of the container, because the container configuration is generated dynamically. 

 ContainerActionsToExpand 

 The number of actions with the Context attribute set to Container to be visible in the toolbar on the list form. The default value depends on the platform. 

 DisplayName The name of the container on the UI. 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 159 

 Attribute Description 

 FieldsToShow The number of fields to display in the list. 

 FormActionsToExpand 

 The number of actions with the Context attribute set to Record to be visible in the toolbar on the editing form. The default value depends on the platform. 

 ListActionsToExpand 

 The number of actions with the Context attribute set to Selection or List to be visible in the toolbar on the list form when the multiple selection of records is activated. The default value depends on the platform. 

 Name The identifier of the container, as found in the WSDL schema. 

 Type An optional attribute that specifies the type of the container. The only possible value is SelectionActionList , which is used for an action with the Context attribute set to List. See <sm:Action> for details. 

 Visible An indicator of whether the link to the container is visible on the editing form. This attribute can be applied to a secondary container. By default, the value is true. 

 Related Links 

- _XML Tags_ 

### <sm:ContainerLink> 

 The sm:ContainerLink tag has the following attributes. 

 Attribute Description 

 Container The name that is the link to the container. The name is specified in the Name attribute of the sm:Container tag for the container. 

 Control The type of control, which is one of the following values: 

- _ListItem_ : An indicator that the link to the container is displayed among the form     fields according to the value defined in the Priority attribute of this tag. 

- _Button_ : An indicator that the link to the container is displayed in the action pan-     el according to the value defined in the Priority attribute of this tag. 

 Icon The name of the image that is used to display the link when the Control attribute is set to Button and the link is displayed in the action panel in the UI. This attribute is optional. If this attribute is not specified for a link, it is displayed in the UI without an icon. See the possible values and the corresponding images for the Icon attribute in Icons. 

 Name The identifier of the link to the container, as found in the WSDL schema. 

 Priority The priority value that defines the position of the link in the enclosing container on the form. 

 ValueField The name of the field whose value is used as the link text. The field must be declared in the container. 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 160 

 Attribute Description 

 Weight The value that is used to set the width of the link within the UI element line defined by the <sm:Layout> tag with the Template attribute set to Inline. The default value is 1. 

 Related Links 

- _XML Tags_ 

### <sm:Field> 

 The sm:Field tag has the following attributes. 

 Attribute Description 

 Container The name of the container object of the field, as it is specified in the WSDL schema. This attribute is specified if the field from another container is used in the container. 

 DisplayName The name for the field, which by default is automatically set by the system. However, you can change it. 

 ForceIsDisabled An indicator of whether the field will be unavailable on the editing form regardless of the server logic. By default, the field availability depends on the server logic. 

 ForceIsVisible An indicator of whether the field is visible on the editing form regardless of the server logic. By default, the field visibility depends on the server logic. 

 ForceRequired An indicator of whether the field is mandatory and must be filled on the screen. If its value is true , the field is mandatory. If its value is false , the field is not mandatory. If the attribute is not specified, the need to fill the field is determined by the data obtained from the server. 

 ForceType The field type that is used by the application instead of the original field type. The only value of this attribute is String , which is an indicator of whether the field is visible on the editing form regardless of the server logic. By default, the field visibility depends on the server logic. 

 FormPriority The priority value that defines the position of the field on the form. 

 ListDisplayFormat The format that is used to display the field in the list. The value can be one of the following: 

- _Value_ : An indicator that the field is represented only by the field value in the list. 

- _CaptionValue_ : An indicator that the field is represented by the caption and the     value in the list. 

 ListPriority The priority value that defines the position of the field in the list. 

 Name The field identifier, as found in the WSDL schema. 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 161 

**Attribute Description** 

PickerType (Applicable to a selector field.) The processing type of the selector field value. The value can be one of the following: 

- _Attached_ : An indicator that the selector is displayed as a pop-up dialog. 

- _Detached_ : An indicator that the selector is displayed as a separate screen. 

- _Searchable_ : An indicator that the mobile app should display the Search but- 

 ton ( ) right of the field control. If the user enters a text fragment in the control and clicks the button, the app sends to the Acumatica ERP server a query to search the records, which contain the specified fragment in the field value. After the response, the mobile app opens the selector screen and displays the list of the field values obtained from the server. The user uses the list to select a value for the selector control. 

SelectorDisplayFormat 

 The selector field format that is used to display the field value. The value can be one of the following: 

- _Key_ : An indicator that the value is represented by the key field of the selector. 

- _Description_ : An indicator that the value is represented by the value field of the     selector. This is the default value of the SelectorDisplayFormat attribute. 

- _KeyDescription_ : An indicator that the value is represented by the combination of     the key and value fields of the selector. 

Special The field type that is used by the mobile app for a special purpose. The value can be one of the following: 

- _AllowEdit_ : (Applicable to a selector field.) An indicator that the app should dis- 

 play the Edit button ( ) right of the field control. If the user clicks the button, the mobile app tries to open the data entry form for the business entity (such as a customer or sales order), selected in the field. The button appears if the following conditions are met: 

- In the Acumatica ERP form, the edit button is displayed for the corresponding     field control. 

- In the mobile app, the data field is not empty and contains an ID that can be     used to select the appropriate data record of the business entity. 

- _EmailAddress_ : An indicator that the app should treat this field as an input box for     an email address. It enables auto-complete for email addresses, and the system     displays a list of possible completions as the user types an email address for a     new email activity by using the on-screen keyboard. The suggested completions     are taken from the system database or from the device's address book. The value     is not supported in iOS apps. 

-     _EmailSend_ : An indicator that the app should display the Send Email button ( )     right of the field control. If the user clicks the button, the mobile app forces the     system of the mobile device to create a new email message and use the field val-     ue as the destination address for the message. In iOS. the Mail app is opened. 

-     _PhoneCall_ : An indicator that the app should display the Phone Call button ( )     right of the field control. If the user clicks the button, the mobile app forces the     system of the mobile device to open an application for voice calls with the phone     number specified in the field control. 

- _GpsCoords_ : An indicator that the app should get a user location and fill the field     before sending to the Acumatica ERP server the data record, which is modified on     the screen. If the field value is not defined, an action mapped on the screen can- 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 162 

**Attribute Description** 

 not be executed; for example, the user cannot save a data record, which contains an empty field with the Special attribute set to GpsCoords. The location is reported as a string in the following format: <Latitude>:<Longitude> , for instance, 65.61295166666667:-20.137938333333334. You can forcibly hide the field by setting the ForceIsVisible attribute to false , so it is not shown in the user interface, or you can make the field unavailable for editing by setting the ForceIsDisabled attribute to true. If the ForceIsVisible and ForceIsDisabled attributes are not specified, then an appropriate field state will be defined by the Acumatica ERP server. 

-     _UrlOpen_ : An indicator that the app should display the Open URL button ( )     right of the field control. If the user clicks the button, the mobile app forces the     system of the mobile device to launch a default browser (Safari in iOS) for the ex-     ternal URL specified in the field control. The following screenshot shows an example of using the Special attribute for fields mapped on a screen in the mobile app. 

 Figure: Viewing the fields with the Special attribute in the mobile app 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 163 

 Attribute Description 

 TextType The type of text to be used for the field value. The value can be one of the following: 

- _HTML_ : An indicator that the text can be HTML markup. 

- _PlainSingleLine_ : An indicator that the text is displayed on a single line. 

- _PlainMultiLine_ : An indicator that the text is displayed on multiple lines. The look     of the input control depends on the platform. 

 Weight The value that is used to set the width of the field within the UI element line defined by the <sm:Layout> tag with the Template attribute set to Inline. The default value is 1. 

 In the following example, the TotalAmount field takes 2/3 of the total width, and the Currency field takes 1/3. 

 <sm:Layout Template="Inline"> <sm:Field Container="ReceiptDetailsExpenseDetails" Name="TotalAmount" Weight="2"/> <sm:Field Container="ReceiptDetailsExpenseDetails" Name="Currency" PickerType="Attached"/> </sm:Layout> 

 Related Links 

- _XML Tags_ 

### <sm:Folder> 

 The sm:Folder tag has the following attributes. 

 Attribute Description 

 DisplayName The name of the folder in the UI. 

 Icon The name of an image that is used to display the folder icon on the main menu (and on the sidebar menu, if specified) of a mobile application. This attribute is optional; if this attribute is not specified for a folder, the folder is displayed in the UI without an icon. See the possible values and the corresponding images for the Icon attribute in Icons. 

 IsDefaultFavorite An indicator of whether a link for the folder is added to the sidebar menu as a favorite folder. If the attribute is set to true , a link is added to the sidebar menu. By default, this attribute is set to false. 

 Name The identifier of the folder, as found in the WSDL schema. 

 Type The type of the folder (that is, the way it is displayed and used), which is one of the following values: 

- _ListFolder_ : An indicator that the folder contents are displayed as icons. 

- _HubFolder_ : An indicator that the folder contents are displayed as pages that the     user navigates by swiping. 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 164 

 Related Links 

- _XML Tags_ 

### <sm:Group> 

 The sm:Group tag is used to group multiple UI elements on a screen of the mobile app. The tag can contain the following types of nested tags: 

- _<sm:Field>_ 

- _<sm:Layout>_ 

- _<sm:Attributes>_ 

- _<sm:RecordActionLink>_ For details about the relationships between tag types in the mobile site map, see the diagram in _XML Tags_. 

#### Attributes 

 The sm:Group tag has the following attributes. 

 Attribute Description 

 Collapsable An indicator of whether this group may be collapsed or expanded. If its value is true , the group can be collapsed or expanded, and you can specify whether the group is collapsed when the screen is opened by using the Collapsed attribute. If the value is false , the group is expanded and cannot be collapsed. 

 If the Template attribute is set to ExpansionPanel , the value of the attribute is ignored. Expansion panels are always collapsible. 

 Collapsed An indicator of whether this group is collapsed by default. If its value is true , the group is collapsed when the screen is opened. If the value is false , the group is expanded when the screen is opened. 

 If Template=Group (or the Template attribute is not set) and Collapsable=false, the value of the attribute is ignored. 

 For expansion panels (Template=ExpansionPanel) and collapsible groups (Template=Group and Collapsable=true), if the value of the attribute is not specified, the group is collapsed when the screen is opened. 

 DisplayName The name of the group in the UI. 

 If the Template attribute is set to ExpansionPanel , the value of the attribute is ignored. An expansion panel does not have the name of the group in the UI. 

 Field Obsolete. The name of the field whose value is displayed when the group is collapsed. 

 The value of this field is ignored. Expansion panels (Template=ExpansionPanel) always display the first field (sm:field) or layout definition (sm:layout) in the group. Other groups (Template=Group) do not display any fields when the group is collapsed. 

 FormPriority The priority value that defines the position of the group on the screen. 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 165 

 Attribute Description 

 Name The name of the group. The attribute is optional; however, we recommend that you specify its value because the value is used as the identifier of the group and the system tracks changes in the mobile site map by using the value of this attribute. 

 Template The template that is used for the group. The following values can be used for this attribute: 

- _ExpansionPanel_ : An expansion panel, which can be collapsed or expanded. The     collapsed expansion panel displays only the first field (sm:field) or layout de-     finition (sm:layout) in the group. Expansion panels does not have the name of     the group in the UI. You can configure how the expansion panel is displayed by     using the Collapsed and FormPriority attributes of the tag. 

- _Group_ : A group of UI elements. You can configure how the group is displayed by     using the DisplayName, Collapsable, Collapsed, and FormPriority     attributes of the tag. If the value of the attribute is not specified, the _Group_ template is used. 

 Related Links 

- _XML Tags_ 

### <sm:Include> 

 The sm:Include tag has the following attribute. 

 Attribute Description 

 filename The namepath of the file that is included in the mobile site map. You can include in the mobile site map a metadata file located in any folder within the website folder. However, we recommend that you place an included file in the \App_Data\Mobile\includes folder of the website. 

 Related Links 

- _XML Tags_ 

### <sm:Layout> 

 The sm:Layout tag is used to arrange multiple UI elements on a screen of the mobile app. The tag can contain the following types of nested tags: 

- _<sm:Field>_ 

- _<sm:ContainerLink>_ 

- _<sm:RecordActionLink>_ 

- <sm:Layout> 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 166 

 The sm:Layout tags with the Template attribute set to HeaderSimple or HeaderFirstAttachment can include nested sm:Layout tags with Template="Inline". The sm:Layout tags for which the Template attribute is Inline cannot include any nested sm:Layout tags. 

 For details about the relationships between tag types in the mobile site map, see the diagram in XML Tags. 

#### Attributes 

 The sm:Layout tag has the following attributes. 

 Attribute Description 

 Name The identifier of the line layout, as found in the WSDL schema. 

 Template The template that is used to define the layout. The following values can be used for this attribute: 

- _HeaderFirstAttachment_ : An indicator that the mobile app should arrange the UI     elements, which are mapped by the nested tags, in a group-like header contain-     er with an attachment icon on the le. If you click the attachment icon, you can     take a photo and attach the photo to the screen of the mobile app. The cam-     era behavior is affected by the attributes of the sm:attachments tag. If the     screen of the mobile app already has attachments, the first attachment thumb-     nail is shown instead of the attachment icon.     The tag with the attribute set to _HeaderFirstAttachment_ can include nested     sm:Layout tags with Template="Inline". The tags with the attribute set     to _HeaderFirstAttachment_ cannot be nested in other sm:Layout tags and can     be nested only in sm:Container tags. 

- _HeaderSimple_ : An indicator that the mobile app should arrange the UI elements,     which are mapped by the nested tags, in a group-like header container.     The tag with the attribute set to _HeaderSimple_ can include nested sm:Lay-     out tags with Template="Inline". The tag with the attribute set to _Head-_     _erSimple_ cannot be nested in other sm:Layout tags and can be nested only in     sm:Container tags. 

- _Inline_ : An indicator that the mobile app should arrange UI elements, which are     mapped by the nested tags, in a line by using the Weight attributes specified     for these elements. If the Weight attribute is not defined for a nested tag, the     mobile app uses _1_ as the default value.     The tag with the attribute set to _Inline_ cannot include nested sm:Layout tags.     The tags with the attribute set to _Inline_ can be nested in other sm:Layout tags. 

#### Examples 

 In the following example, the TotalAmount field takes 3/6 of the total width, the Save action link takes 1/6, and the Currency field takes 2/6. 

 <sm:Layout Template="Inline"> <sm:Field Container="ReceiptDetailsExpenseDetails" Name="TotalAmount" Weight="3"/> <sm:RecordActionLink Name="Save"/> <sm:Field Container="ReceiptDetailsExpenseDetails" Name="Currency" PickerType="Attached" Weight="2"/> 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 167 

 </sm:Layout> 

 The following example shows how nested sm:Layout tags can be used. 

 <sm:Layout Name="ReceiptHeader" Template="HeaderSimple"> <sm:Layout Name="ReceiptIdLine" Template="Inline"> <sm:Field Name="ReceiptID" ForceIsDisabled="true"/> <sm:Field Name="Status" ForceIsDisabled="true"/> </sm:Layout> </sm:Layout> 

 Related Links 

- _XML Tags_ 

### <sm:RecordActionLink> 

 You can use the sm:RecordActionLink tag to remove an action from the screen toolbar and put the action among the <sm:Field> tags on a data entry form. The action to which this tag refers must be declared with the same name within the same container by using the <sm:Action> tag. 

#### Attributes 

 The sm:RecordActionLink tag has the following attributes. 

 Attribute Description 

 Name The action identifier, as found in the WSDL schema. 

 Weight The value that is used to set the width of the link within the UI element line defined by the <sm:Layout> tag with the Template attribute set to Inline. The default value is 1. 

#### Example 

 The following example shows how to use the sm:RecordActionLink tag in the mobile site map. 

 <sm:Container ...> ... <sm:RecordActionLink Name="ViewOnMap"/> ... <sm:Action Behavior="Void" Context="Record" Name="ViewOnMap" Redirect="true"/> ... </sm:Container> 

 Related Links 

- _XML Tags_ 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 168 

### <sm:Screen> 

 The sm:Screen tag has the following attributes. 

 Attribute Description 

 DisplayName The name of the screen on the UI. 

 ExpandSelector The name of a selector field from the primary container. An Acumatica ERP form can contain a selector control that acts like a filter. For example, the Order Type selector control on the Sales Orders form (SO301000) works as a filter. If the ExpandSelector attribute is specified for a screen, then the mobile application represents the screen as multiple screens, where each screen corresponds to a single value of the referenced selector field. 

 Icon The name of an image that is used to display the screen icon on the main menu (and on the sidebar menu, if specified) of a mobile application. This attribute is optional. If this attribute is not specified for a screen, the screen is displayed in the UI without an icon. See the possible values and the corresponding images for the Icon attribute in Icons. 

 Id The screen identifier, such as IN201000. You can find the value to specify there in the screen URL of the corresponding Acumatica ERP form. 

 OpenAs The display type of the screen. When the screen is opened from a menu, this attribute specifies how to open the primary container. Otherwise, when the screen is opened by a redirection from an action and the RedirectToContainer attribute of this action does not explicitly specify how to open the container, then this attribute specifies how to open the redirected container of the screen. The value can be one of the following: 

- _List_ : An indicator that the screen opens as a list. 

- _Form_ : An indicator that the screen opens as a form. 

 Type The type of the screen, which is one of the following values: 

- _SimpleScreen_ : An indicator that the screen is a common screen. 

- _FilterListScreen_ : An indicator that the screen corresponds to the Acumatica ERP     form based on the FormDetail form template. Such a screen should include     at least two containers. The first container maps the form area of the form (fil-     ter), and the second one maps the grid. 

- _Report_ : An indicator that the screen is an Acumatica Report Designer report. 

- _Dashboard_ : An indicator that the screen is a dashboard. A screen of this type can     display the following types of dashboard widgets: 

- Chart 

- Data Table 

- Score Card 

- Trend Card Other widget types will be hidden. 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 169 

 Attribute Description 

 Visible An indicator of the visibility of the screen in the main menu. If the value of this attribute is true , the screen is visible on the main menu. By default, the value is true. 

 Related Links 

- _XML Tags_ 

### <sm:SelectorContainer> 

 The sm:SelectorContainer tag has same attributes as sm:Container, as well as the following attributes. 

 Attribute Description 

 FieldsToShow The number of columns to display in the selector. 

 Name The identifier of the selector container, as found in the WSDL schema. 

 Related Links 

- _XML Tags_ 

### <sm:Type> 

 The sm:Type tag has the following attribute. 

 Attribute Description 

 Extension The file name extension of the permitted file type. 

 Related Links 

- _XML Tags_ 

### Icons 

 In the mobile site map, you can use the Icon attribute to set the icon that is displayed on the UI for the following MSDL objects: 

- containerAction 

- listAction 

- recordAction 

- selectionAction 

- folder 

- item 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 170 

To specify an icon for an MSDL object, use the following format of the attribute value: system://IconName, where the IconName is one of the following values. 

 Icon Name Description 

 Alarm 

 Albums 

 AngleDownCircle 

 AngleLeftCircle 

 AngleRightCircle 

 AngleUpCircle 

 Attention 

 Bell 

 Bookmarks 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 171 

**Icon Name Description** 

_BottomArrow_ 

_Box1_ 

_Box2_ 

_Browser_ 

_Calculator_ 

_Camera_ 

_Cart_ 

_Cash_ 

_Chat_ 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 172 

**Icon Name Description** 

_Check_ 

_Clock_ 

_CloseCircle_ 

_Cloud_ 

_CloudDownload_ 

_CloudUpload_ 

_Comment_ 

_Compass_ 

_Config_ 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 173 

**Icon Name Description** 

_CopyFile_ 

_Credit_ 

_Culture_ 

_Date_ 

_Display1_ 

_Display2_ 

_Download_ 

_Drawer_ 

_Drop_ 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 174 

**Icon Name Description** 

_Edit_ 

_File_ 

_Filter_ 

_Flag_ 

_Folder_ 

_Gleam_ 

_Global_ 

_Graph_ 

_Graph1_ 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 175 

**Icon Name Description** 

_Graph2_ 

_Graph3_ 

_Home_ 

_Id_ 

_Info_ 

_Key_ 

_Keypad_ 

_LeftArrow_ 

_Less_ 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 176 

**Icon Name Description** 

_Link_ 

_Lock_ 

_Mail_ 

_MailOpen_ 

_MailOpenFile_ 

_Map_ 

_MapMarker_ 

_Menu_ 

_Monitor_ 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 177 

**Icon Name Description** 

_More_ 

_Network_ 

_NewsPaper_ 

_Next_ 

_Note_ 

_Note2_ 

_Notebook_ 

_Paperclip_ 

_PaperPlane_ 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 178 

**Icon Name Description** 

_Pen_ 

_Phone_ 

_PhotoGallery_ 

_Plane_ 

_Plus_ 

_Portfolio_ 

_Prev_ 

_Print_ 

_Refresh_ 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 179 

**Icon Name Description** 

_RefreshCloud_ 

_Repeat_ 

_Request_ 

_Ribbon_ 

_RightArrow_ 

_Safe_ 

_Search_ 

_Server_ 

_Share_ 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 180 

**Icon Name Description** 

_Shopbag_ 

_Signal_ 

_Star_ 

_Stopwatch_ 

_Target_ 

_Ticket_ 

_Timer_ 

_Trash_ 

_Umbrella_ 


<!-- PAGE_BREAK -->
 Mobile Site Map Reference | 181 

**Icon Name Description** 

_Unlock_ 

_UpArrow_ 

_Upload_ 

_User_ 

_UserFemale_ 

_UserFilter_ 

_Users_ 

_Way_ 

_World_ 


<!-- PAGE_BREAK -->
 Troubleshooting Tips | 182 

## Troubleshooting Tips 

 This chapter contains troubleshooting information about common issues that you may encounter when working with the Acumatica mobile app. 

### To Access an Acumatica ERP Instance Running Locally from the Acumatica Mobile 

### App 

 When you are trying to access an Acumatica ERP instance that is running on a computer in your local network from the Acumatica mobile app, you may encounter some connection issues that prevent you from accessing this instance. The following sections describe the actions that can help you to resolve such issues. 

#### Check the Network Connection and Firewall Settings 

 You must make sure that the mobile device that is running the Acumatica mobile app is connected to the same WiFi network as the computer with the Acumatica ERP instance installed. Once you have confirmed that this is the case, you should check the firewall settings on the computer to ensure that it can accept inbound connections from other devices over this network. Do the following: 

1. On the computer, run the _Allow an app through Windows Firewall_ program. You can find the program by     opening the **Start** menu and typing the name of the program in the search box. 

2. Click the **Change settings** button. 

3. In the **Allowed apps and features** table, find the _World Wide Web Services (HTTP)_ row. In this row, make sure     that the check box le of its name is selected.     Also, if the local network that you are connected to is a private network, you should select the check box in     the **Private** column. If it is a public network, you should select the check box in the **Public** column. If you are     unsure about the type of the network to which you are connected, you should select both check boxes. The     following screenshot shows an example. 


<!-- PAGE_BREAK -->
 Troubleshooting Tips | 183 

 Figure: The update of the firewall settings 

4. Click **OK** to save your changes. 

 For security reasons, you should revert the changes you have made to the firewall settings aer you no longer need to access your Acumatica ERP instance from another device on your local network. 

#### Check the Connection URL 

 To access the Acumatica ERP instance that is installed on the computer from the Acumatica mobile app, you need to know the IP address of this computer. Do the following: 

1. Run the Command Prompt program on the computer. You can find the program by opening the **Start** menu     and typing the name of the program in the search box. 

2. Once the program launches, type ipconfig, and press _Enter_ on your keyboard. The program displays the     Windows IP configuration, as shown in the following screenshot. 


<!-- PAGE_BREAK -->
 Troubleshooting Tips | 184 

 Figure: The IP address of the computer 

 To construct the connection URL, you should follow this pattern: http://<IP Address>/<Website Name>. Suppose that the name of your Acumatica ERP instance is MyAcumatica and the IP address of the computer that is running this instance is the same as the one highlighted in the previous screenshot. In this case, your connection URL will be http://192.168.4.53/MyAcumatica. 

3. In the mobile app, enter the URL that you have constructed based on the instance name and your own     computer's IP address, and tap **Next**. 

4. Enter the credentials of your user account. 

5. Tap **Sign In** to enter the site. 


<!-- PAGE_BREAK -->
 Known Limitations | 185 

## Known Limitations 

 The Acumatica mobile app has the following functionality limitations: 

- Analytical Report Manager (ARM) reports are not supported in the mobile app. 

- Related entity selector elements, such as **Related Svc. Doc. Nbr.** on the Expense Receipts screen, are not     supported in the mobile app. The selector for such elements may display incorrect values. 

- Filters inside selector elements, such as **Cost Code** on the Expense Receipts screen, are not supported in the     mobile app. 


<!-- PAGE_BREAK -->
 ac.exe MOBILEITEMAP Reference | 186 

## ac.exe MOBILEITEMAP Reference 

 The command-line tool (executable name ac.exe) provides multiple parameters and applications. This topic describes the list of possible parameters and values of ac.exe that can be applied to mobile site maps. When working with mobile site maps, the first key that you must always use is MOBILESITEMAP. 

 By default, ac.exe is located in the folder on the computer that has Acumatica ERP installed, which is C:\Program Files (x86)\Acumatica ERP\Data\. 

 Syntax Description 

 d[elta] s[cript] path_to_old_sitemap_folder path_to_new_sitemap_folder path_to_msdl_script_file 

 Compares two mobile site maps and saves an MSDL script with the delta of these site maps. 

 d[elta] p[roject] path_to_old_sitemap_folder path_to_new_sitemap_folder path_to_customization_project_file 

 Compares two mobile site maps and saves the delta of these site maps to the customization project. 

 c[onvert] s[cript] path_to_sitemap_folder path_to_msdl_script_file 

 Converts an XML mobile site map to MSDL format. 

 c[onvert] p[roject] path_to_sitemap_folder path_to_customization_project_file 

 Converts an XML mobile site map to MSDL format and saves the result to the specified customization project. 

 u[pgrade] s[cript] path_to_custom_sitemap_folder path_to_msdl_script_file 

 Compares an XML mobile site map with the default mobile site map and saves an MSDL script with the delta of these site maps. 

 u[pgrade] p[roject] path_to_custom_sitemap_folder path_to_customization_project_file 

 Compares an XML mobile site map with the default mobile site map and saves the delta of these site maps to the customization project. 

 Related Links 

- _Using the Acumatica ERP Command-Line Tool_ 


