## Developer Guide 

# UI Development 

# 2025 R2 


<!-- PAGE_BREAK -->
 Contents | 2 

## Contents 

 Copyright...............................................................................................................................................5 

 UI Developer Guide.................................................................................................................................6 

 Getting Started with the Modern UI......................................................................................................... 7 

 Modern UI Development: General Information............................................................................................... 7 

 Modern UI Development: Creating Modern UI Source Files for Custom and Customized Forms................ 10 

 Modern UI Development: Building the Source Code.....................................................................................11 

 Modern UI Development: To Deploy an Instance with Custom Forms and the Modern UI..........................13 

 Modern UI Development: To Build the Source Code of All Acumatica ERP Forms for Modern UI Development....................................................................................................................................................15 

 Modern UI Development: To Build the Source Code of a Particular Form for the Modern UI Development....................................................................................................................................................15 

 Modern UI Development: Switching a Form Between the Modern UI and the Classic UI............................17 

 Defining Acumatica ERP Forms in HTML and TypeScript.......................................................................... 22 

 UI Definition in HTML and TypeScript: General Information.........................................................................22 

 UI Definition in HTML and TypeScript: To Create the UI of a Form...............................................................27 

 UI Definition in HTML and TypeScript: Built-In Converter.............................................................................30 

 UI Definition in HTML and TypeScript: To Convert an Acumatica ERP Form to the Modern UI with the Converter..........................................................................................................................................................31 

 UI Definition in HTML and TypeScript: Joined Fields.................................................................................... 35 

 UI Definition in HTML and TypeScript: View Parameters in the viewInfo Decorator.................................... 37 

 UI Definition in HTML and TypeScript: Backend Action with Parameters.................................................... 39 

 Designing the Layout of an Acumatica ERP Form.....................................................................................41 

 Form Layout: General Information................................................................................................................. 41 

 Form Layout: Predefined Templates.............................................................................................................. 41 

 Form Layout: Grid Presets...............................................................................................................................48 

 Form Layout: CSS Classes............................................................................................................................... 52 

 Form Layout: Box Connotations..................................................................................................................... 61 

 Form Layout: An Element Next to Another Element..................................................................................... 62 

 Defining a Setup Form.......................................................................................................................... 66 

 UI of a Setup Form: General Information.......................................................................................................66 

 UI of a Setup Form: A Form with Only a Summary Area............................................................................... 67 

 UI of a Setup Form: A Form with Tabs............................................................................................................70 

 UI of a Setup Form: To Create the UI of a Setup Form.................................................................................. 73 

 Defining a Data Entry Form................................................................................................................... 78 

 Data Entry Form: General Information...........................................................................................................78 


<!-- PAGE_BREAK -->
 Contents | 3 

 Data Entry Form: Definition in TypeScript and HTML................................................................................... 82 

 Data Entry Form: To Create the UI of a Data Entry Form.............................................................................. 85 

**Defining a Processing Form................................................................................................................... 92** 

 Processing Form: General Information...........................................................................................................92 

 Processing Form: UI Guidelines...................................................................................................................... 94 

 Processing Form: A Form with Only a Grid.................................................................................................... 95 

 Processing Form: To Create a Simple Processing Form ............................................................................... 97 

 Processing Form: A Form with a Selection Area and a Grid........................................................................ 101 

 Processing Form: To Create the UI of a Processing Form............................................................................105 

 Processing Form: Processing Dialog Box......................................................................................................110 

**Defining an Inquiry Form.....................................................................................................................112** 

 Inquiry Forms: General Information............................................................................................................. 112 

 Inquiry Forms: To Set Up an Inquiry Form...................................................................................................113 

 Inquiry Forms: To Create the UI of an Inquiry Form with Only a Grid........................................................ 117 

**Adding Filtering Parameters to a Form................................................................................................. 123** 

 Filtering Parameters: General Information...................................................................................................123 

 Filtering Parameters: Filtered Data on a Processing Form.......................................................................... 125 

 Filtering Parameters: Filtered Data on an Inquiry Form..............................................................................126 

 Filtering Parameters: To Add a Filter for a Processing Form....................................................................... 126 

 Filtering Parameters: To Add a Filter for an Inquiry Form........................................................................... 134 

 Filtering Parameters: To Display the Filter Values in the URL..................................................................... 137 

**Customizing Acumatica ERP Forms in HTML and TypeScript................................................................... 140** 

 UI Customization Development: General Information................................................................................ 140 

 UI Customization Development: To Add Elements to an Acumatica ERP Form......................................... 142 

 UI Customization Development: To Add a Tab to an Acumatica ERP Form............................................... 146 

**Including the Modern UI Changes in a Customization Project................................................................. 149** 

 Customization Project with UI Changes: General Information................................................................... 149 

 Customization Project with UI Changes: How UI Customization Works.....................................................150 

 Customization Project with UI Changes: To Include Source Files in a Customization Project...................152 

**Adjusting HTML and TypeScript Code................................................................................................... 154** 

 UI Adjustments in HTML and TypeScript: General Information.................................................................. 154 

 UI Adjustments in HTML and TypeScript: HTML Examples......................................................................... 155 

 UI Adjustments in HTML and TypeScript: TypeScript Examples................................................................. 156 

**Customizing Modern UI Forms in the Customization Project Editor......................................................... 159** 

 Modern UI Editor: General Information........................................................................................................159 

 Modern UI Editor: To Add a Field..................................................................................................................161 


<!-- PAGE_BREAK -->
 Contents | 4 

 Modern UI Editor: Adding a View..................................................................................................................163 

 Modern UI Editor: Creating and Editing a Custom TypeScript Extension................................................... 165 

 Modern UI Editor: Adding Decorators to the Selected View or Field.......................................................... 167 

**Reusing a UI Definition ....................................................................................................................... 171** 

 Reusing of UI Definitions: General Information........................................................................................... 171 

 Reusing of UI Definitions: Creation of a Reusable UI Definition................................................................. 175 

 Reusing of UI Definitions: Reusable UI Definitions with Parameters.......................................................... 178 

**Handling UI Events..............................................................................................................................179** 

 UI Events: General Information.....................................................................................................................179 

 UI Events: Changing of the CSS for a Row of a Table...................................................................................180 

 UI Events: Debugging the UI Code in the Browser.......................................................................................180 

 Activity 7.2.1: To Implement and Debug an Event Handler.........................................................................181 

 UI Events: Changing of Availability of a UI Element.................................................................................... 183 

 UI Events: Handling of Data That Is Unrelated to Any View........................................................................ 184 

 UI Events: Handling of Large Binary Data.................................................................................................... 186 

 UI Events: Displaying of Relative Dates........................................................................................................ 187 

**Testing the Modern UI......................................................................................................................... 188** 

 Testing of the Modern UI: General Information........................................................................................... 188 

 Testing of the Modern UI: Names of WG Containers....................................................................................191 

 Testing of the Modern UI: Update of Tests Written for the Classic UI......................................................... 194 

 Testing of the Modern UI: Frontend Actions in Wrappers............................................................................196 

**Supporting UI Localization.................................................................................................................. 197** 

 UI Localization: General Information............................................................................................................197 

 UI Localization: TypeScript and HTML Code of the Modern UI................................................................... 198 

 UI Localization: DACs..................................................................................................................................... 200 

 UI Localization: Application Messages in C#................................................................................................ 201 

 UI Localization: Multilanguage Fields...........................................................................................................203 

 UI Localization: Optimization of Memory Consumption of Localized Data................................................205 

**Troubleshooting the Modern UI............................................................................................................211** 

 Modern UI Troubleshooting: General Information...................................................................................... 211 

 Modern UI Troubleshooting: Developer Tools in the Browser.................................................................... 211 

 Modern UI Troubleshooting: Unreflected Changes in the Modern UI.........................................................213 

 Modern UI Troubleshooting: Build Options................................................................................................. 214 


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

 Soware Version: 2025 R2 

 Last Updated: 12/15/2025 


<!-- PAGE_BREAK -->
 UI Developer Guide | 6 

## UI Developer Guide 

 In this guide, you can find information about how to develop the UI for an Acumatica Framework–based application. You will learn how to configure your development environment and how to design the layout of a form. 


<!-- PAGE_BREAK -->
 Getting Started with the Modern UI | 7 

## Getting Started with the Modern UI 

 In this part, you will find an overview of the main principles of the Modern UI of Acumatica ERP and learn about its architecture and features. You’ll also learn how to: 

- Use the development folder to create the Modern UI source files for custom and customized forms 

- Build the source code for the development of the Modern UI 

- Switch a form between the Modern UI and the Classic UI 

### Modern UI Development: General Information 

 The Modern UI is a .NET-compatible product that delivers updated UI capabilities without relying on ASPX pages. On the server side, the Modern UI is represented by web services. On the client side, it’s represented by a templatebased single-page application (SPA) framework based on Aurelia. 

 The application code is written in TypeScript. The framework transcribes this code into JavaScript code for execution in the web browser. This approach simplifies code maintenance. Developers use HTML and CSS to design form layouts. 

#### Learning Objectives 

 In this chapter, you will learn how to do the following: 

- Enable the Modern UI while deploying an instance 

- Use the development folder for creating Modern UI source files for custom and customized forms 

- Verify that certain prerequisite installation and configuration tasks have been performed before building the     UI from the source code 

- Build the Modern UI from the source code 

- Automatically rebuild the source code for a form when its source files are modified and saved 

- Switch a form between the Modern UI and the Classic UI 

#### Applicable Scenarios 

 You will work with the Modern UI in the following cases: 

- You need to make it possible to use the Modern UI for your instance. 

- You need to convert any number of forms of your Acumatica ERP instance to the Modern UI. 

- You need to create a new form that is based on the Modern UI. 

- You need to be able to switch between the Modern UI and the Classic UI of a form. 

#### Enabling of the Modern UI in the Acumatica ERP Configuration Wizard 

 By default, the system uses the Modern UI for a newly deployed instance. That is, the Use Modern UI as Default check box is selected on the Website Configuration page of the Acumatica ERP Configuration wizard, as shown below. 


<!-- PAGE_BREAK -->
 Getting Started with the Modern UI | 8 

 Make sure that you have the Install NodeJS check box selected so that the Acumatica ERP Configuration wizard installs the needed version of Node.js for compilation of the customization code of the Modern UI. If you want to use the version of Node.js that has already been installed in your system, you can clear the Install NodeJS check box and add the following key to the appSettings section of the Web.config file of your instance: <add key="NodeJs:NodeJsPath" value="C:\Program Files\NodeJs"/>. In this key, value specifies the path to the location where Node.js has been installed. 

 When the Use Modern UI as Default check box is selected, the system sets the value of the Default UI box to Modern on the Site Preferences (SM200505) form. 

#### Architecture of the Modern UI 

 The architecture of the Modern UI is based on the Model-View-ViewModel (MVVM) pattern , with the parts of the architecture represented as follows: 

- A view is represented by an HTML template. 

- A view model is represented by the code written in TypeScript. 

- A model is represented by a graph on the server that exchanges data from the client side. The following diagram shows the architecture of the Modern UI and the interaction between its components. 


<!-- PAGE_BREAK -->
 Getting Started with the Modern UI | 9 

 Currently, the Modern UI is embedded in the infrastructure of the Classic UI. The Modern UI is represented by a new frame that enables TypeScript controls in the Classic UI infrastructure. Also, the Modern UI includes web API controllers that are added to the controllers of the Classic UI. Some parts of the Modern UI have been connected to the Classic UI architecture via an Aurelia adapter, which adapts TypeScript's controllers to work in the Classic UI architecture. The forms that are fully converted to the Modern UI (highlighted in yellow in the preceding diagram) work directly with web API controllers. 

 JSON serves as the protocol between the client side and the server side. As a result, all requests can be seen in a unified format and used for debugging. 

#### Capabilities of the Modern UI 

 The Modern UI provides a variety of new capabilities for both developers and users. For developers, the Modern UI provides the following capabilities in comparison to the Classic UI: 

- The template (HTML and CSS) and presentation logic layers (TypeScript) are fully customizable. 

- The client-side model can be programmed by using the event-driven model, which is similar to the server-     side model. 

- The graph code generally does not require any modifications. The Modern UI and the Classic UI share the     same graph. 

- The developers can always switch between the Modern UI and the Classic UI. For users, the Modern UI provides exciting new features. For details, see the following topics: 


<!-- PAGE_BREAK -->
 Getting Started with the Modern UI | 10 

- _Modern UI: Changes in UI Elements_ 

- _Modern UI: Filters_ 

- _Modern UI: User Personalization_ 

- _Modern UI: Site-Wide Personalization_ 

- _Modern UI: Managing User-Defined Fields_ 

### Modern UI Development: Creating Modern UI Source Files for Custom and 

### Customized Forms 

 The Modern UI of a form is defined by an HTML file and a TypeScript file. If you’re customizing the Modern UI of an existing form, you create extension files that are derived from its original HTML and TypeScript code. For details, see Defining Acumatica ERP Forms in HTML and TypeScript and Customizing Acumatica ERP Forms in HTML and TypeScript. 

#### Using the Development Folder 

 You use the development folder—located in the FrontendSources\screen\src\ folder of your instance— to create new forms or to customize existing forms for the Modern UI. 

 The source files of the forms that you create or customize in this folder aren’t affected by system operations, such as the publishing and unpublishing of customization projects. Also, you can build the source files in this folder and check the results in the browser without affecting any system files. Because of this isolation, the development folder is the ideal location for developing custom and customized forms. Once you’re satisfied with the results, you can include the source files in your customization project. For details, see Including the Modern UI Changes in a Customization Project. 

 By default, the development folder doesn’t exist in the instance—you must create it manually. Within it, you create the screens folder. 

#### Creating Modern UI Source Files in the Development Folder 

 In the FrontendSources\screen\src\development\screens\ folder, you should create subfolders with two-letter names. Each subfolder will contain the source code of the forms whose screen IDs start with these letters. For each form in the subfolder, you should create a folder named aer its screen ID, such as RS201000. Within this folder, you should create HTML and TypeScript files with the screen ID as the file name, such as RS201000.ts and RS201000.html. 

 The following example shows the folder structure you need to create within the development folder for a custom form with the RS201000 screen ID and a customized Sales Orders (SO301000) form. For customized forms, the HTML and TypeScript files are stored in the extensions folder: 

- screens 

- - RS 

- - - RS201000 

- - - - RS201000.html 

- - - - RS201000.ts 

- - SO 

- - - SO301000 

- - - - extensions 

- - - - - SO301000_extension1.html 

- - - - - SO301000_extension1.ts 


<!-- PAGE_BREAK -->
 Getting Started with the Modern UI | 11 

 If you create a custom form by clicking Create New Screen on the Screens page of the Customization Project Editor, the system automatically: 

- Generates the HTML and TypeScript files for the new form. 

- Displays these files on the _Modern UI Files_ page. You can click **Export to Development Folder**     on the page toolbar to export the files to the development folder. 

- Generates the development folder (if it doesn't already exist) and the appropriate subfolder     structure, and places the HTML and TypeScript files in the appropriate folder. 

### Modern UI Development: Building the Source Code 

 When you want to start migrating Acumatica ERP forms to the Modern UI or you want create a new form based on it, you need to build the source code of each form to see its Modern UI version. 

#### Performing the Prerequisite Actions 

 Before you begin building the source code for the first time, you do the following: 

1. Make sure you have Node.js installed on your computer. By default, the Acumatica ERP Configuration wizard     installs it when you deploy a new application instance. 

2. Run the following command in the FrontendSources folder. You can use the terminal in Visual Studio     Code, Windows PowerShell, or a similar program. 

 npm run getmodules 

 This command installs the required dependencies needed to build the sources correctly. 

 The system performs this instruction automatically during the first publication of a customization project that contains any Modern UI files. 

#### Building the Source Code for All Acumatica ERP Forms 

 To build the sources in the FrontendSources folder of your instance, you need to run a command in the same folder. This command generates the form schema and JavaScript code from the TypeScript code and creates the mapping between the JavaScript and TypeScript code. You use this mapping to debug the client code in a web browser. 

 To build the sources during the UI development, you run the following command in the FrontendSources folder. 

 npm run build-dev 

 To build the sources in production mode, you run the following command in the FrontendSources folder. 

 npm run build 

 The system performs this instruction automatically during the publication of a customization project that contains any Modern UI files. 

 We recommend that you use the build-dev command instead of the build command during the development. This provides easier debugging in a web browser. 


<!-- PAGE_BREAK -->
 Getting Started with the Modern UI | 12 

#### Building the Source Code for Particular Acumatica ERP Forms 

 To speed up the build process, you can initiate the build for only specific forms instead of all of them. To do this, you can run one of the following modified versions of the command (instead of the one in the preceding section) in the FrontendSources\screen folder: 

• (^) npm run build-dev ----env screenIds=SO301000 This command above builds the sources for only the _Sales Orders_ (SO301000) form. • (^) npm run build-dev ----env modules="AR,AP,GL" This command builds the sources for only the forms in the specified functional areas (AR, AP, and GL in this example). You need to use quotation marks if you specify more than one form or area to be built. 

#### Building the Source Code in the Development Folder for Custom and Customized Forms 

 To build the source code for all the forms you’ve created or customized in the development folder, you run the following command in the FrontendSources\screen folder. 

 npm run build-dev ----env customFolder=development 

 You can initiate the build for only specific forms instead of all of them. To do this, you run the following command. 

 npm run build-dev ----env customFolder=development screenIds=SO301000 

 As with the example in the preceding section, you can use the modules parameter instead of the screenIds parameter to build the sources for only the forms in specific functional areas. 

 The command above builds the sources for only the Sales Orders (SO301000) form, which you may have customized in the development folder. 

 To create new forms or customize existing forms for the Modern UI, you use the development folder located in the FrontendSources\screen\src\ folder of your instance. For details on creating the source files for these forms in the development folder, see Modern UI Development: Creating Modern UI Source Files for Custom and Customized Forms. For details on including the source files from the development folder in your customization project, see Including the Modern UI Changes in a Customization Project. 

 For troubleshooting errors during the building of the Modern UI, you can use additional build options. For details, see Modern UI Troubleshooting: Build Options. 

#### Automatically Rebuilding the Source Code for Particular Acumatica ERP Forms 

 During the migration of the needed forms to the Modern UI, you make changes to the generated source files in the FrontendSources\screen folder of your instance. To see the changes you make to a form, you’ll need to rebuild the corresponding source files every time a change is made. To save time, you can run a command that causes the source files to be rebuilt automatically each time a file is modified and saved in this folder. 

 To automatically rebuild the sources for only specific forms, you can run one of the following commands in the FrontendSources\screen folder once: 


<!-- PAGE_BREAK -->
 Getting Started with the Modern UI | 13 

• (^) npm run watch ----env screenIds="SO301000,FS305100" This command automatically rebuilds the sources for only the _Sales Orders_ (SO301000) and _Service Contract Schedules_ (FS305100) forms when their corresponding source files are modified and saved. • (^) npm run watch ----env modules="AR,AP,GL" This command automatically rebuilds the sources for only the forms in the specified functional areas (AR, AP, and GL in this example). • (^) npm run watch ----env customFolder=development screenIds="RS201000, RS202000" This command automatically rebuilds the sources you’ve created in the development folder for only the forms whose screen IDs have been specified in the screenIds parameter (RS201000 and RS202000 in this example). You can also use the modules parameter instead of screenIds to automatically rebuild the sources for only the forms in specific functional areas. To run the watch command from the root folder of your instance, you can navigate to the root folder in Windows PowerShell and run the following command along with the screenIds or modules parameter. npm run watch --prefix .\FrontendSources\screen\ We recommend that you not use the watch command without the screenIds or modules parameter because the command may behave in an unstable manner. 

### Modern UI Development: To Deploy an Instance with Custom Forms and the 

### Modern UI 

 The following activity will walk you through the process of preparing and deploying an Acumatica ERP instance that you can use to perform the steps in the chapters of this guide. 

#### Story 

 Suppose that you need to perform customization tasks and complete the activities described in the chapters of this guide that are related to the development of the Modern UI. You need to deploy an instance of Acumatica ERP with the PhoneRepairShop customization project published and the Modern UI turned on. 

#### Process Overview 

 In this activity, you will prepare the environment and install tools that will help you to perform customization tasks. You will then deploy an instance of Acumatica ERP with the PhoneRepairShop customization project published and the dataset from the T240 Processing Forms course. 

#### Step 1: Preparing the Environment 

 Before you begin deploying the needed Acumatica ERP instance, do the following: 

1. Make sure that the environment you’re going to use conforms to the _System Requirements for the Acumatica_     _ERP Installation_. 

2. Make sure that the Web Server (IIS) features listed in _Configuration of IIS Web Server Features_ are turned on. 


<!-- PAGE_BREAK -->
 Getting Started with the Modern UI | 14 

3. Install Microso Visual Studio Code. 

4. Clone or download the customization project and the source code of the extension library from the _Help-_     _and-Training-Examples_ repository in Acumatica GitHub to a folder on your computer. 

5. Install Acumatica ERP. On the Main Soware Configuration page of the Acumatica ERP Setup wizard, select     the **Install Acumatica ERP** check box. 

#### Step 2: Deploying the Instance 

 To perform customization tasks, you need to deploy an instance of Acumatica ERP for the T290 Modern UI for Developers training course on the instance. 

 You deploy an Acumatica ERP instance and configure it as follows: 

1. Open the Acumatica ERP Configuration wizard, and do the following:     a. Click **Deploy a New Acumatica ERP Instance for T-Series Developer Courses**.     b. On the Instance Configuration page, do the following:        a. In the **Training Course** box, select _T290 Modern UI for Developers_.        b. In the **Local Path to the Instance** box, select a folder that’s outside of the C:\Program Files           (x86), C:\Program Files, and C:\Users folders. (We recommend that you store the website           folder outside of these folders to avoid an issue with permission to work in these folders when you           customize the website.)     c. On the Database Configuration page, make sure the name of the database is SmartFix_T290.     d. On the Website Configuration page, make sure the **Install Node.js** and **Use Modern UI as Default** check        boxes are selected.     The system creates a new Acumatica ERP instance, adds a new tenant, loads the data to it, and publishes     the customization project that is needed for activities of this guide.     The system also installs Node.js and adds the NodeJs:NodeJsPath key in the appSettings section of     the Web.config file of the instance. 

2. Make sure that a Visual Studio solution is available in the App_Data\Projects\PhoneRepairShop     folder of the Acumatica ERP instance folder.     This is the solution of the extension library that you’ll modify in the activities of this guide. 

3. Sign in to the new tenant by using the following credentials: 

- **Username** : admin 

- **Password** : setup Change the password when the system prompts you to do so. 

4. In the top right corner of the Acumatica ERP screen, click the username and then **My Profile**. The _User_     _Profile_ (SM203010) form opens. On the **General Info** tab, under **Personal Settings** , select _YOGIFON_ in the     **Default Branch** box; then click **Save** on the form toolbar.     In subsequent sign-ins to this account, you’ll be signed in to this branch. 

5. Optional: Add the _Customization Projects_ (SM204505), _Site Map_ (SM200520), and _Generic Inquiry_ (SM208000)     forms to your favorites. For details about how to add a form to your favorites, see _The Acumatica ERP UI:_     _Favorites_. 


<!-- PAGE_BREAK -->
 Getting Started with the Modern UI | 15 

### Modern UI Development: To Build the Source Code of All Acumatica ERP Forms for 

### Modern UI Development 

 The following activity will walk you through the process of initially building the source code for all the forms that are available in the Modern UI. 

#### Story 

 Suppose that you are going to develop the Modern UI for new Acumatica ERP forms or customize the Modern UI of existing forms for the Smart Fix company. Before you start your development, you need to rebuild all the Modern UI sources in the FrontendSources folder of your instance. 

#### Process Overview 

 You will execute a command to build the source code for the first time. 

#### System Preparation 

 Before you build the source code for the first time, do the following: 

1. Complete the following prerequisite activity: _Modern UI Development: To Deploy an Instance with Custom_     _Forms and the Modern UI_. As a result, the Node.js, the node version manager (nvm), and the node package     manager (npm) have been installed correctly on your computer. 

2. Use Windows PowerShell or a similar program to run the following command in the FrontendSources     folder of your instance: npm run getmodules. This command installs the required dependencies     needed to build the sources correctly. 

#### Step: Building the Source Code for All Acumatica ERP Forms 

 When you build the sources in the FrontendSources folder of your instance for all Acumatica ERP forms that are available in the Modern UI, the system generates the form schema and JavaScript code from the TypeScript code and creates the mapping between the JavaScript and TypeScript code. You can then use this mapping to debug the client code in a web browser. 

 To build the sources, run the npm run build-dev command in the FrontendSources folder. Note that this command may take some time to finish its execution. 

 Once the command has finished executing, you should see a message that a webpack has been successfully compiled. 

### Modern UI Development: To Build the Source Code of a Particular Form for the 

### Modern UI Development 

 The following activity will walk you through the process of building the source code of a particular form that is defined in the Modern UI. 

#### Story 

 Suppose that you have defined the Repair Services (RS201000) form in the Modern UI for the Smart Fix company. You need to build the source code of this form in the FrontendSources\screen folder of your instance. 


<!-- PAGE_BREAK -->
 Getting Started with the Modern UI | 16 

#### Process Overview 

 You will execute a command to start building the source code for the Repair Services (RS201000) form. You will then review the UI of the form. 

#### System Preparation 

 Before you begin building the source code for the Repair Services (RS201000) form, you need to perform the prerequisite actions and complete the steps as described in UI Definition in HTML and TypeScript: To Create the UI of a Form. You should have the following results: 

- The node version manager (nvm), Node.js, and the node package manager (npm) have been installed     correctly on your computer. 

- The required dependencies needed to build the sources have been installed installed correctly in the     FrontendSources folder of your instance. 

- The source code has been built for the first time for all the forms available in the Modern UI. 

- The source files for the Serviced Devices form has been generated in the FrontendSources\screen     \src\development\screens\RS\RS201000 folder of your instance. 

#### Step 1: Building the Source Code for a Particular Form 

 To build the sources for the Repair Services (RS201000) form, do the following in a command line tool (You can use terminal in Visual Studio Code, or Windows PowerShell or a similar program.): 

1. Switch to the FrontendSources/screen folder. 

2. Run the following command in the FrontendSources\screen folder. 

 npm run build-dev ----env customFolder=development screenIds=RS201000 

 You have specified the ID of the Repair Services form in the screenIds parameter to indicate that the sources should be built for only the Repair Services form. Once the command finishes executing, you should see a message about successful compilation of a webpack. 

#### Step 2: Viewing the Form in the Modern UI 

 To test your changes, do the following: 

1. Open the Repair Services (RS201000) form. 

 If the form is not opened from the workspace, try entering the RS201000 id in the page URL. 

 The form opens in the Modern UI. 

2. In the _ScreenRepair_ row, clear the **Walk-In Service** check box, as shown on the following screenshot. 


<!-- PAGE_BREAK -->
 Getting Started with the Modern UI | 17 

 Figure: Clearing the Walk-In Service check box 

3. Notice that the **Requires Preliminary Check** check box has been selected automatically. 

4. Select the **Walk-In Service** check box in the _ScreenRepair_ row. 

5. Notice that the **Requires Preliminary Check** check box has been cleared automatically. 

6. Save your changes. 

#### Step 3 (Optional): Setting Up Automatic Rebuild of the Source Code for a Form 

 During developmental activities of the Modern UI, you make changes to the source files in the FrontendSources \screen folder of your instance. To see the changes that you make to a form, you need to rebuild the corresponding source files every time a change is made. To save time, you can run a command that causes the source files for a particular form to be rebuilt automatically each time a file is modified and saved in this folder. 

 To rebuild the source files automatically for the Repair Services (RS201000) form, use Windows PowerShell or a similar program to run the following command in the FrontendSources\screen folder. You need to run this command only once: npm run watch ----env customFolder=development screenIds=RS201000. 

### Modern UI Development: Switching a Form Between the Modern UI and the Classic 

### UI 

 Acumatica ERP provides a number of ways that you can use to switch an Acumatica ERP form that’s using the Modern UI to the Classic UI or vice versa. 

 When you deploy or update an instance of Acumatica ERP in the Acumatica ERP Configuration wizard, make sure the Use Modern UI as Default check box is selected (the default state), as shown below. 


<!-- PAGE_BREAK -->
 Getting Started with the Modern UI | 18 

 Figure: Selection of the Modern UI as the default interface 

 Before you use any of the methods described in the following sections, you may need to make a change to the Web.config file of your Acumatica ERP instance. In the appSettings section, check if the <add key="EnableSiteMapSwitchUI" value="False" /> key has been added. If it has, remove this key from the file and save your changes. This is because this key disables the option to switch the UI of a form in the instance. By removing the key, you enable the option to switch the UI of a form. 

 If you switch a form's UI by using the methods described below, the form's UI will be switched for all users. Thus, this capability is not provided to all users. Only users with the Edit level of access rights to the Site Map (SM200520) form can switch the UI of a form. 

#### Switching the UI of the Particular Form 

 While viewing a form in the Modern UI, you can click the Settings button on the form title bar and then Switch to Classic UI to switch the form to the Classic UI. 


<!-- PAGE_BREAK -->
 Getting Started with the Modern UI | 19 

 Figure: The Switch to Classic UI command 

 While viewing a form in the Classic UI, you can click Tools > Switch to Modern UI on the form title bar to switch the form to the Modern UI. 

 Figure: The Switch to Modern UI command 

 The Switch to Modern UI command is available for only the forms that have been migrated to the Modern UI. 

#### Switching the UI of the Entire Site 

 To specify the user interface for all forms, use the Default UI setting on the Site Preferences (SM200505) form. It defines the UI to be used by default ( Modern UI or Classic UI ) for all users of the current tenant. 


<!-- PAGE_BREAK -->
 Getting Started with the Modern UI | 20 

 Figure: The Default UI setting 

 The form will use the interface specified as the default UI, if the form supports the selected UI. 

#### Switching the UI of Multiple Forms 

 You can use the Site Map (SM200520) form to specify the default UI to be displayed for any number of forms. 

 To cause a form to be displayed in the Modern UI or the Classic UI, you select Modern , Classic , or Default in the UI column of the row that corresponds to the form, as shown in the following screenshot. 


<!-- PAGE_BREAK -->
 Getting Started with the Modern UI | 21 

**_Figure: The options in the UI column_** 

The _Site Map_ form also has the **Copy UI Settings to Tenants** button on the form toolbar. By using this button, you can copy the UI settings of all the listed forms to other tenants. When you click this button, the system displays a dialog box where you can select the tenants to which you want to copy the UI settings. 


<!-- PAGE_BREAK -->
 Defining Acumatica ERP Forms in HTML and TypeScript | 22 

## Defining Acumatica ERP Forms in HTML and TypeScript 

 In this part, you will learn about the main components of the Modern UI, which include the definition of views of the form in TypeScript and the layout definition in HTML. You can also find information about how to convert an ASPX file of an Acumatica ERP form to HTML and TypeScript. 

### UI Definition in HTML and TypeScript: General Information 

 The structure of an Acumatica ERP form in the Modern UI is represented by the following layers: 

- The presentation logic in a TypeScript (TS) file, which provides a definition of views and their settings 

- The layout of UI elements displayed on the form in HTML 

#### Learning Objectives 

 In this chapter, you’ll learn how to do the following: 

- Define the presentation logic and layout of a form in the Modern UI 

- Use the built-in converter to convert a form from the Classic UI to the Modern UI 

#### Applicable Scenarios 

 You define an Acumatica ERP form in HTML and TypeScript in the following cases: 

- In a customization project, you have developed an Acumatica ERP form for the Classic UI. Now you need to     convert this form to the Modern UI to continue supporting it in future versions of Acumatica ERP. 

- You’re developing a new Acumatica ERP form. 

#### Controls of the Modern UI 

 Controls are building blocks for the layout of an Acumatica ERP form. Each control is composed of an HTML template and a TypeScript class. 

 A control can have the following attributes: 

- config: An attribute whose properties define the control’s appearance and behavior. Any changes to the     values of these properties made in the browser are not passed to the server and can be overwritten by the     server on each round trip. 

- value: The value displayed in the control, which can be changed both in the browser and on the server. 

- id: An identifier of the control, which is a shortcut for the id property of the config attribute. 

- Other bindable attributes, which are shortcuts bound to the properties in the config attribute. You can change config directly in HTML. You can also specify particular properties defined in config: 

- As a set by using config.bind, as the following code shows: config.bind="{imageSet: 'main',     imageKey: 'Refresh'}" 

- Individually, as the following code shows: config-allow-edit.bind="true" 

 If you specify the value for a single property, you need to transform the name of the property that is available in config. For example, suppose that the propertyName property is available in config. To specify a single property, you transform its name to config-property-name. 


<!-- PAGE_BREAK -->
 Defining Acumatica ERP Forms in HTML and TypeScript | 23 

 All controls can be divided into the following categories: 

- Simple controls: Are bindable to server fields 

- Containers: Hold other controls 

- Compound controls: Are usually bindable to a view or have their own controller 

- Abstract controls: Serve as a basis for other control types For simple controls, you typically don’t specify their type, such as qp-checkbox, in HTML. Instead, you use the field tag in HTML. The server automatically defines the type of the field in the Modern UI. The PX*FieldAttribute attribute assigned to the field in the backend code creates a specific type, which is an inheritor of PXFieldState. This type affects the default control used by the client. 

 You can’t use shortened versions of custom HTML tags, such as <qp-grid .../> or <qpbutton .../>. An HTML limitation prohibits shortened version of tags except for a limited number of standard HTML tags. 

#### Acumatica ERP Form in the Modern UI 

 You’ll find the Modern UI source code of original Acumatica ERP forms in the FrontendSources\screen\src \screens folder of the Acumatica ERP instance folder. 

 Below you can see an example of the hierarchy of the files and folders of the Modern UI. 

 Site 

- FrontendSources/screen/src/screens 

- - GL 

- - - GL401000 

- - - - extensions (optional) 

- - - - - GL401000_extension1.html 

- - - - - GL401000_extension1.ts 

- - - - - GL401000_extension2.html 

- - - - - GL401000_extension2.ts 

- - - - GL401000.html 

- - - - GL401000.ts 

- - - - views.ts (optional) 

 The FrontendSources\screen\src\screens folder contains subfolders with two-letter names. Each subfolder includes the source code of the forms whose screen IDs start with these letters. Inside each subfolder is a folder named aer the screen ID, such as GL401000. This folder contains HTML and TS files named aer the same screen ID—for example, GL401000.ts and GL401000.html. For large forms with many data views, such as Sales Orders (SO301000), view definitions may be located in separate files named views.ts. 

 You must use the import directive to refer to the view definitions from separate files, as shown below. 

 import{ SOOrder, BlanketTaxZoneOverrideFilter } from './views'; 

 The extensions folder contains TS and HTML files for extensions of the form. Each file name, such as GL401000_MultiCurrency.ts, starts with the screen ID and ends with a postfix that indicates the extension’s purpose. 

 You can define the views and layout in extensions of the form for: 


<!-- PAGE_BREAK -->
 Defining Acumatica ERP Forms in HTML and TypeScript | 24 

- The areas of the form that are specific to particular features. 

- The definitions of dialog boxes (which are also called _smart panels_ in the Classic UI). 

- The definitions of tabs. However, for tabs in extensions, you need to specify that the tab has an external     definition and provide its ID by using the ref attribute of the qp-tab tag. For details, see _Tab:_     _Configuration_. 

- Any UI customization of the form. For details about UI customization, see _UI Customization Development:_     _General Information_. 

#### Screen Class in TypeScript 

 To define the views of an Acumatica ERP form in TypeScript, in the TS file of the form, you define a screen class —a class for the form—as shown in the following code. 

 import { graphInfo, PXScreen } from "client-controls"; 

 @graphInfo({ graphType:'PX.Objects.GL.AccountHistoryEnq', primaryView:'Filter' }) export class GL401000 extends PXScreen { } 

 When you start typing the name of an API element in a TypeScript file in the FrontendSources \screen folder in Visual Studio Code, the list of available elements is shown. You can hover over an element to see its description. 

 The screen class must satisfy these requirements: 

- It has the screen ID as the name of the class, such as GL401000. 

- It extends the PXScreen class. 

- It has the _graphInfo_ decorator, in which you specify the graph and its primary view. 

 You can also specify optional parameters of the graphInfo decorator and use other decorators. 

 In the Modern UI, each Acumatica ERP form must use its own graph type. 

 In the screen class, you define a property for each data view, as shown below. 

 import { graphInfo, PXScreen, createSingle } from "client-controls"; 

 @graphInfo({ graphType:'PX.Objects.GL.AccountHistoryEnq', primaryView:'Filter' }) export class GL401000 extends PXScreen { @viewInfo({containerName: 'Filter'}) Filter = createSingle(GLHistoryEnqFilter); 


<!-- PAGE_BREAK -->
 Defining Acumatica ERP Forms in HTML and TypeScript | 25 

 } 

 This property must satisfy the following requirements: 

- It has the same name as the name of the data view. You’ll use this name to bind a UI control to the data view     in HTML. 

- It has a _viewInfo_ decorator with the specified container name. (This name is used as an object name     during the configuration of particular functionality, such as workflows and import and export scenarios. If     this value isn’t specified, the system displays the name of the data view as the object name.) 

- If you need to display a form control, the property is initialized with the createSingle method, which     takes as the input parameter an instance of the view class (described below). 

- If you need to display a table (grid) or a tree, the property is initialized with the createCollection     method, which takes as the input parameter an instance of the view class. You can specify configuration     parameters for the table by using the _gridConfig_ decorator and for the tree by using the _treeConfig_     decorator. 

 The createCollection method can also be used when multiple records need to be displayed and these records are rendered without a predefined Acumatica ERP control, such as in the Outlook plug-in. 

 Multiple containers can be bound to the same graph's view. If you need to bind multiple container controls to the same graph's view and one of these controls corresponds to a table or a tree, you initialize the property in TypeScript by using the createCollection function. 

#### View Classes in TypeScript 

 In the TS file of the form, you define a view class for each view of the graph, as shown below. The class extends the PXView class. 

 You can use any name for the view class. However, we recommend that you use the name of the data view’s primary DAC. 

 For the view classes added in a customization project, we recommend that you keep the prefix in the name. The prefix consists of a two-letter identifier indicating the part of the functional area and a twoletter prefix of the application area. 

 import { PXView } from "client-controls"; 

 export class GLHistoryEnqFilter extends PXView { } 

 In each view class, you specify the properties for all data fields of the data view that you want to be able to show or use in the UI, as shown below. You use the name of the data field as the property name. 

 Description: PXFieldState; ShowCuryDetail: PXFieldState<PXFieldOptions.Hidden | PXFieldOptions.CommitChanges>; OrderDate: PXFieldState<PXFieldOptions.CommitChanges>; 


<!-- PAGE_BREAK -->
 Defining Acumatica ERP Forms in HTML and TypeScript | 26 

 The fields that you’ve included in view classes are also used in various integration-related functionality, such as in the Acumatica Mobile Framework, the screen-based SOAP API, and the copypaste functionality. 

 You specify the type of each property, which can be: 

- PXFieldState. 

- PXFieldState<list_of_options>, where you specify the options by using the _PXFieldOptions_     enum. The options can be combined. You can also use decorators for fields. For information about decorators for fields, see _Fieldset: Field Configuration_. 

 For details about how to add a field from a joined data access class of the data view, see UI Definition in HTML and TypeScript: Joined Fields. 

#### Action Definitions in TypeScript 

 The actions defined in the graph or in the workflow have corresponding commands displayed on the More menu by default. You do not need to define them in the TypeScript code of the Acumatica ERP form. 

 However, if you need to place a button for an action somewhere on the form other than the toolbar or the More menu, you need to include the action’s definition in TypeScript. For details, see Button: Configuration. 

 When you include the property of the PXActionState type for the action in the TypeScript code of a form, this action is automatically bound by name to an action in the graph. The action is not displayed on the form toolbar by default. To specify explicitly whether the button for the action is displayed on the form toolbar, you can use the PXButton.DisplayOnMainToolbar property in the graph’s action declaration. 

#### Layout in HTML 

 In the HTML file, you define the layout of an Acumatica ERP form, as shown in the following example. You must place all HTML controls inside the template tag. 

 <template> <qp-template id="form-Filter" name="7-10-7" class="equal-height"> <qp-fieldset id="fsColumnA-Filter" slot="A" view.bind="Filter"> <field name="OrderDate"></field> <field name="ShowCuryDetail"></field> </qp-fieldset> <qp-fieldset id="fsColumnB-Filter" slot="B" view.bind="Filter"> <field name="Description"></field> </qp-fieldset> </qp-template> <qp-grid id="grid-Details" view.bind="transactions"></qp-grid> </template> 

 If you open the FrontendSources\screen folder in Visual Studio Code, when you start typing the name of the tag or its attribute in an HTML file in a subfolder of this folder, the list of available tags or attributes is shown. You can also hover over an HTML element to see its description. 

 In the HTML file, you use the rules described in the following resources: 

- _Designing the Layout of an Acumatica ERP Form_ : The general approach you should follow 

- _UI Component Guide_ : Guidelines for particular UI elements 


<!-- PAGE_BREAK -->
 Defining Acumatica ERP Forms in HTML and TypeScript | 27 

 We recommend that you configure the appearance of UI controls by using TypeScript decorators instead of properties of the config attribute in HTML. These decorators include fieldConfig , controlConfig , gridConfig , and columnConfig. For details about the configuration of particular controls, see UI Component Guide. 

#### UI Components of an Acumatica ERP Form 

 The following diagram shows the UI components of an Acumatica ERP form and the interactions between them. 

 Figure: UI components and their interactions 

### UI Definition in HTML and TypeScript: To Create the UI of a Form 

 The following activity will walk you through the process of creating the UI of an Acumatica ERP form from scratch. 

#### Story 

 The Repair Services (RS201000) form, which you will develop, will be used to view the list of services provided by the Smart Fix company. By clicking buttons on the form toolbar, users will be able to add a new service, edit an existing service, and delete a service. Below you can see what this form should look like. 

 Figure: Service list on the Repair Services form 


<!-- PAGE_BREAK -->
 Defining Acumatica ERP Forms in HTML and TypeScript | 28 

 You have already implemented the backend for the form, which includes the RSSVRepairServiceMaint graph and the RSSVRepairService data access class (DAC). You have also already added the RSSVRepairService table to the application database. 

#### Process Overview 

 You will create TypeScript and HTML files for the Repair Services (RS201000) form. In the TypeScript file, you will define the screen class and view class for the form. In the HTML file, you will define the layout of the form. 

#### System Preparation 

 Before you begin the creation of the UI of the Repair Services (RS201000) form, do the following: 

1. Complete the following prerequisite activity: _Modern UI Development: To Deploy an Instance with Custom_     _Forms and the Modern UI_. Make sure that the prepared instance contains the following items: 

- The RSSVRepairServiceMaint graph in the customization code 

- The RSSVRepairService DAC in the customization code 

- The RSSVRepairService database table 

2. Perform the prerequisite actions and build the source code for the first time, as described in _Modern UI_     _Development: To Build the Source Code of All Acumatica ERP Forms for Modern UI Development_. 

#### Step 1: Creating Files for the Form 

 To create the Modern UI for the Repair Services (RS201000) form, you need to create the form’s TypeScript and HTML files as follows: 

1. In Visual Studio Code or in the file system, open the FrontendSources\screen folder of your     Acumatica ERP instance. (In Visual Studio Code, you can open the folder by clicking **File > Open Folder** on     the toolbar.) 

2. In the FrontendSources\screen\src folder, create the development folder (if it hasn't being     created yet), and within it, create the screens folder. 

3. In the FrontendSources\screen\src\development\screens folder, create a folder with the RS     name if it hasn't been created yet. You will store the UI sources for all forms with the _RS_ prefix in this folder. 

4. In the FrontendSources\screen\src\development\screens\RS folder, create a folder with the     RS201000 name if it has not been created yet. You will store the UI sources for the Repair Services form in     this folder. 

5. In the FrontendSources\screen\src\development\screens\RS\RS201000 folder, create the     following files: 

- RS201000.ts 

- RS201000.html 

#### Step 2: Defining the Screen Class in TypeScript 

 To define the view of the Repair Services (RS201000) form in TypeScript, define a screen class and a property for the data view of the form as follows: 

1. In the RS201000.ts file, add the following import directives. 

 import { PXScreen, graphInfo, createCollection, } from "client-controls"; 


<!-- PAGE_BREAK -->
 Defining Acumatica ERP Forms in HTML and TypeScript | 29 

 When you start typing the name of an API element in a TypeScript file in the FrontendSources\screen folder in Visual Studio Code, the list of available elements is shown. You can hover over an element to see its description. 

2. Define the screen class for the form as follows. The class name is the ID of the form. 

 export class RS201000 extends PXScreen {} 

3. For the screen class, add the graphInfo decorator, and specify the graph and the primary view of the form     in the decorator properties, as shown below. Hide the **Note** and **Files** buttons on the form title bar by using     the hideFilesIndicator and hideNotesIndicator properties. You don’t need notes and files for     the whole form because each record in the table on the form has its own notes and files. 

 @graphInfo({ graphType: "PhoneRepairShop.RSSVRepairServiceMaint", primaryView: "RepairService", hideFilesIndicator: true, hideNotesIndicator: true, }) export class RS201000 extends PXScreen {} 

4. Define the property for the data view of the form by using the following code. Because the data view is used     to display a table, you need to initialize the property with the createCollection method. The input     parameter of this method is an instance of the view class, which you’ll define in the next step. 

 export class RS201000 extends PXScreen { RepairService = createCollection(RSSVRepairService); } 

#### Step 3: Defining the View Class in TypeScript 

 You need to define a view class for the single data view of the Repair Services (RS201000) form. Proceed as follows: 

1. In the RS201000.ts file, update the list of import directives, as shown below. 

 import { PXScreen, graphInfo, createCollection, PXView, PXFieldState, gridConfig, PXFieldOptions, GridPreset } from "client-controls"; 

2. Define the view class as follows. 

 export class RSSVRepairService extends PXView {} 

3. In the view class, specify the properties for all data fields of the data view, as shown below. You use the     name of the data field as the property name. 

 export class RSSVRepairService extends PXView { ServiceCD : PXFieldState; Description : PXFieldState; Active : PXFieldState; WalkInService : PXFieldState<PXFieldOptions.CommitChanges>; Prepayment : PXFieldState; PreliminaryCheck : PXFieldState<PXFieldOptions.CommitChanges>; 


<!-- PAGE_BREAK -->
 Defining Acumatica ERP Forms in HTML and TypeScript | 30 

 } 

 The WalkInService and PreliminaryCheck fields should commit changes to the server; that's why you’ve used the PXFieldOptions.CommitChanges option for the property type. 

4. Add the gridConfig decorator to the view class, as shown below. In the gridConfig decorator, you     must specify the preset property. Because the table is the primary element of the Repair Services form,     you use the _Primary_ preset. 

 @gridConfig({ preset: GridPreset.Primary }) export class RSSVRepairService extends PXView { ServiceCD : PXFieldState; Description : PXFieldState; Active : PXFieldState; WalkInService : PXFieldState<PXFieldOptions.CommitChanges>; Prepayment : PXFieldState; PreliminaryCheck : PXFieldState<PXFieldOptions.CommitChanges>; } 

#### Step 4: Defining the Layout in HTML 

 The Repair Services (RS201000) form contains only a table. So to define the layout of the form, you need to include only the qp-grid element in the RS201000.html file, as the following code shows. 

 <template> <qp-grid id="grid-RepairService" view.bind="RepairService"></qp-grid> </template> 

 You’ve specified the ID of the qp-grid control and bound the control to the RepairServices property, which you’ve defined in the RS201000.ts file. 

 If you open the FrontendSources\screen folder in Visual Studio Code, when you start typing the name of the tag or its attribute in an HTML file in a subfolder of this folder, the list of available tags or attributes is shown. You can also hover over an HTML element to see its description. 

 Now you can build the source files and view how the converted form looks in the Modern UI. For details, see Modern UI Development: To Build the Source Code of a Particular Form for the Modern UI Development. 

### UI Definition in HTML and TypeScript: Built-In Converter 

 You can use Acumatica's built-in converter, which transforms an Acumatica ERP form from the Classic UI to the Modern UI. The converter parses an ASPX page of the form and generates the source files of the form in the Modern UI. These source files include a TypeScript definition and initialization of views and an HTML layout of the form. 

#### Running the Converter 

 To use the Modern UI, you need to have the following setting in the appSettings section of the web.config file of the Acumatica ERP instance: <add key="EnableSiteMapSwitchUI" value="True" />. For details on this setting, see Modern UI Development: General Information. 


<!-- PAGE_BREAK -->
 Defining Acumatica ERP Forms in HTML and TypeScript | 31 

 This setting also makes it possible for you to convert any form to the Modern UI on the fly by using the converter. To run the converter, you open the needed Acumatica ERP form in the Classic UI and click Customization > Convert to Modern UI on the form title bar. 

 The Convert to Modern UI command is available only if the Customizer role is assigned to your user account. 

 Aer you execute this command, the following files are generated: 

- views.ts, which contains declarations of all views that are used in the form 

- [SCREENID].ts, which contains the initialization of views for the form 

- [SCREENID].html, which contains the HTML layout of the form By default, the files are saved in a ZIP archive, which you can download. 

- To obtain the converted version that is most similar to the original, you need to turn on all     Acumatica ERP features related to the form before conversion. 

- The converter ignores any JavaScript code in ASPX files or the code in the ASPX.CS files. 

#### Configuring the Converter 

 You can modify the behavior of the converter by adjusting the px.core\ui\screenConverter tag of the web.config file of the instance, as shown in the following example. 

 <ui> <screenConverter declareViewsInViewModelFile="false" /> </ui> 

 You can use any of the following properties of the screenConverter tag: 

- declareViewsInViewModelFile: If you set this property to _True_ , the converter will declare the views     in the <ScreenID>.ts file instead of creating a separate views.ts file. 

- shouldFilesBeDownloaded: If you set this property to _False_ , the files are saved in the     folder that is defined by the screenConverterOutputFolder property. By default, the     shouldFilesBeDownloaded property is _True_ and the files are saved in a ZIP archive. 

- screenConverterOutputFolder: You can use this property to specify the output folder for the     generated files. The property is used only if the shouldFilesBeDownloaded property is _False_.     By default, the output folder is FrontendSources\screen\src\development\screens     \[FirstTwoLettersOfSCREENID]\[SCREENID]. 

- usingOfPXJoinSyntaxEnabled: If you set this property to _True_ , the system uses the approach for     joined fields, which uses periods. For details on the approaches to define joined fields, see _UI Definition in_     _HTML and TypeScript: Joined Fields_. By default, this property is _True_. 

- isAutoFormatEnabled: If you set this property to _True_ , the system uses the Prettier tool to     automatically format the HTML and the TypeScript code generated by the converter. 

### UI Definition in HTML and TypeScript: To Convert an Acumatica ERP Form to the 

### Modern UI with the Converter 

 The following activity will walk you through the conversion of an Acumatica ERP form from the Classic UI to the Modern UI. You will convert the form by using the built-in converter. 


<!-- PAGE_BREAK -->
 Defining Acumatica ERP Forms in HTML and TypeScript | 32 

#### Story 

 Suppose that you have developed the Serviced Devices (RS202000) form for the Smart Fix company. The form has been developed for a previous version of Acumatica ERP and is displayed in the Classic UI. You need to convert the form to the Modern UI and want to use the built-in converter. 

#### Process Overview 

 You will modify the converter settings to fit your needs and convert the form to the Modern UI. You will then review the contents of the TypeScript and HTML files and adjust them. You will build the Modern UI sources for the form and review the resulting form. 

#### System Preparation 

 Before you begin converting the Serviced Devices (RS202000) form, do the following: 

1. Complete the following prerequisite activity: _Modern UI Development: To Deploy an Instance with Custom_     _Forms and the Modern UI_. The prepared instance contains the Serviced Devices (RS202000) form. 

2. Perform the prerequisite actions and build the source code for the first time, as described in _Modern UI_     _Development: To Build the Source Code of All Acumatica ERP Forms for Modern UI Development_. 

#### Step 1: Adjusting the Converter Settings 

 The built-in converter comes with default settings. You need to adjust them to have the following results aer conversion: 

- The views are declared in the RS202000.ts file instead of a separate views.ts file. 

- The files of the Serviced Devices (RS202000) form are saved in the FrontendSources\screen\src     \development\screens\RS\RS202000 folder of the instance instead of a ZIP file. To configure the converter, add the shouldFilesBeDownloaded and declareViewsInViewModelFile attributes in the px.core\ui\screenConverter tag of the web.config file of the instance, as shown in the following code. 

 <ui> <screenConverter usingOfPXJoinSyntaxEnabled="true" shouldFilesBeDownloaded="false" declareViewsInViewModelFile="true"/> </ui> 

 The usingOfPXJoinSyntaxEnabled attribute is specified in the web.config file by default. 

#### Step 2: Generating the Source Files with the Converter 

 Now you can generate the source files of the form by using the converter. To generate the files, do the following: 

1. Open the Serviced Devices (RS202000) form. 

2. On the **Customization** menu, click **Convert to Modern UI**.     The system generates the files, saves them in the FrontendSources\screen\src\development     \screens\RS\RS202000 folder of the instance, and displays a notification that the conversion has     completed. 

3. Close the notification by clicking **OK**. 


<!-- PAGE_BREAK -->
 Defining Acumatica ERP Forms in HTML and TypeScript | 33 

 The RS202000 folder will appear in the FrontendSources/development/screens/RS folder. 

4. Optional: Move the generated files from the development folder to the following location. 

 FrontendSources\screen\src\screens\RS\RS202000 

 Since Acumatica ERP 2025 R2 RC, all files in the development folder can be built and added to the customization project so you don't need to move them to the \screen\src \screens\ folder. 

#### Step 3: Adjusting the Generated TypeScript File 

 The generated TypeScript file may contain unnecessary import directives. To clean up the code, do the following: 

1. Review the RS202000.ts file.     The TypeScript code contains the RS202000 screen class, which extends the PXScreen class and includes     a property for the data view of the form. The code also contains the RSSVDevice view class, which extends     the PXView class. 

2. Adjust the file as follows:     a. Remove unnecessary import directives.     b. Fix any formatting issues.     c. Adjust the name in the viewInfo decorator, which specifies the container name. (This name is used as        an object name during the configuration of particular functionality, such as workflows and import and        export scenarios.)     The resulting file looks as follows. 

 import { createSingle, PXScreen, graphInfo, viewInfo, PXView, PXFieldState } from "client-controls"; 

 @graphInfo({ graphType: "PhoneRepairShop.RSSVDeviceMaint", primaryView: "ServDevices", }) export class RS202000 extends PXScreen { @viewInfo({containerName: "Service Devices"}) ServDevices = createSingle(RSSVDevice); } 

 // View export class RSSVDevice extends PXView { DeviceCD : PXFieldState; Description : PXFieldState; Active : PXFieldState; AvgComplexityOfRepair : PXFieldState; } 

#### Step 4: Adjusting the Generated HTML File 

 The generated HTML file may contain unnecessary code elements and inaccurate IDs. To adjust the file, do the following: 


<!-- PAGE_BREAK -->
 Defining Acumatica ERP Forms in HTML and TypeScript | 34 

1. Review the RS202000.html file.     The HTML code includes one qp-template element with the 1-1 name, which organizes the elements on     the form into two columns of equal width. Each column is defined with the qp-fieldset element, which     is marked with the slot attribute to identify the column of the template to which the fieldset belongs. Each     fieldset includes the field elements for UI elements that appear on the form. 

2. Adjust the file as follows:     a. Move fields from the fieldset with slot="B" to the end of the fieldset with slot="A" and remove the        fieldset with slot="B". Since the form has only four fields, it is better to organize them in one column.     b. Change the IDs so that they match the guidelines for IDs. You can use the following IDs: 

- For the qp-template tag: form-ServDevices 

- For the qp-fieldset tag: fsColumnA 

 You can find the guidelines for IDs of particular UI components in UI Component Guide. 

 c. Remove the wg-container attribute because you do not have tests for the Classic UI of the Serviced Devices (RS202000) form, which can be reused for the Modern UI. (For details about the tests, see Testing the Modern UI .) d. Fix any formatting issues. The resulting HTML code looks as follows. 

 <template> <qp-template id="form-ServDevices" name="1-1"> <qp-fieldset id="fsColumnA" slot="A" view.bind="ServDevices"> <field name="DeviceCD"></field> <field name="Description"></field> <field name="Active"></field> <field name="AvgComplexityOfRepair"></field> </qp-fieldset> </qp-template> </template> 

#### Step 5: Building the Source Code and Viewing the Form 

 Now you can build the source files and view how the converted form looks in the Modern UI. Do the following: 

1. Build the source code of the Serviced Devices (RS202000) form. For details on how to do it, see _Modern UI_     _Development: To Build the Source Code of a Particular Form for the Modern UI Development_.     If your files are located in the development folder, you can use the following command. 

 npm run build-dev ----env customFolder=development screenIds=RS202000 

2. While you are on the Classic UI of the Serviced Devices (RS202000) form, click **Tools > Switch to Modern UI**     on the form title bar. The Modern UI for the form is displayed. 

3. In the **Device Code** box, click the selector icon.     The lookup table opens, as shown in the following screenshot. 


<!-- PAGE_BREAK -->
 Defining Acumatica ERP Forms in HTML and TypeScript | 35 

 Figure: The lookup table 

4. In the lookup table, select the _MotorRAZR_ device.     The rest of the elements on the form are filled in with the _MotorRAZR_ device properties, as shown in the     following screenshot. 

 Figure: The device properties 

5. Clear the **Active** check box. 

6. On the form toolbar, click **Save**. 

### UI Definition in HTML and TypeScript: Joined Fields 

 To add a field from a joined data access class (DAC) of the data view to the UI of an Acumatica ERP form, you can use one of the approaches described in this topic. 


<!-- PAGE_BREAK -->
 Defining Acumatica ERP Forms in HTML and TypeScript | 36 

#### Using Two Underscores 

 In this approach, you use two underscores to separate the name of the joined DAC and the field name in this DAC. The following example shows the declaration of a joined field in TypeScript. 

 Customer__AcctName: PXFieldState; 

 The following HTML code uses this joined field. 

 <field name="Customer__AcctName"></field> 

#### Using Periods 

 In this approach to adding a joined field, you use periods to separate the view class name, the name of the joined DAC, and the field name. 

 In the TypeScript code of the form, you do the following: 

1. Declare a class with any name, such as the name of the joined DAC. 

2. In the class, declare the properties for the joined fields that you’re going to use. The names of the properties     are the names of the fields.     For example, suppose that you need to add fields from the joined Customer class. The new class in     TypeScript should look as follows. 

 export class Customer { AcctName: PXFieldState; ClassID: PXFieldState; } 

3. In the view class that corresponds to the data view with the joined DAC, declare a property for the joined     DAC. The name of the property is the name of the joined DAC, and the type of the property is the class that     you’ve just declared. The following example shows an example of the property for the joined DAC. 

 export class DiscountCustomer extends PXView { ... Customer : Customer; } 

 export class RS209500 extends PXScreen { Discount = createSingle(DiscountCustomer); } 

 As a result of adding the joined fields in this way, you can use them in HTML. You can specify the full name of the field, which includes the following parts separated by periods: the view class name, the name of the joined DAC, and the field name. Alternatively, if the fieldset that contains the field has the data view specified, you can use a shorter name that omits the view class name. The following code shows both of these approaches. 

 <qp-fieldset id="columnOne" view.bind="Discount"> <field name="DiscountCustomer.Customer.AcctName"></field> <field name=".Customer.AcctName"></field> </qp-fieldset> 


<!-- PAGE_BREAK -->
 Defining Acumatica ERP Forms in HTML and TypeScript | 37 

### UI Definition in HTML and TypeScript: View Parameters in the viewInfo Decorator 

 Suppose that one control depends on parameters from another control. For example, depending on the value selected in a tree (qp-tree), a different view should be displayed in the table. 

 In this case, you can define a list of parameters in the viewInfo decorator for the view of the dependent control and then specify them in the view delegate in the graph. 

#### Declaring View Parameters 

 To define parameters in the viewInfo decorator, you do the following: 

1. In the viewInfo decorator, specify the parameters property with an array. 

 {parameters : []} 

2. Declare each parameter in the array by creating the ControlParameter object with the following values:     a. The name of the parameter (it will be used later in the view delegate)     b. The view where the parameter is located     c. The name of the field in this view that holds the parameter value 

 The following code shows a declaration of the parent parameter for the Items view. The parent parameter is defined by the WFStageID field in the Nodes view. 

 @viewInfo({ parameters: [ new ControlParameter("parent", "Nodes", "WFStageID") ] }) Items = createCollection(FSWFStage); 

 This functionality was implemented by using the PXControlParam tag in the Classic UI. For details about conversion to the Modern UI, see Reference for the parameters Property of the viewInfo Decorator. 

#### Using View Parameters in the View Delegate 

 To use the view parameter in the graph, you declare the view delegate with the same parameter. Inside the view delegate, you can use this parameter to return a different query. For details on defining data view delegates, see Filtering Records Dynamically with Data View Delegates. 

 The following code shows an example of a data view delegate for the Items view. Note that the parent parameter is declared in the view delegate. This parameter will have the value specified in the TypeScript declaration. 

 protected virtual IEnumerable items([PXInt] int? parent) { NodeFilter.Current.ParentWFStageID = (parent == null)? RootNodeID : parent; 

 PXResultset<FSWFStage> bqlResultSet; 

 if (parent == null || parent == RootNodeID) { bqlResultSet = PXSelect<FSWFStage, Where< FSWFStage.wFID, Equal<Current<SelectedNode.wFID>>, And<FSWFStage.parentWFStageID, 


<!-- PAGE_BREAK -->
 Defining Acumatica ERP Forms in HTML and TypeScript | 38 

 Equal<Current<SelectedNode.parentWFStageID>>>>> .Select(this); } else { bqlResultSet = PXSelect<FSWFStage, Where< FSWFStage.wFID, Equal<Current<SelectedNode.wFID>>, And<FSWFStage.parentWFStageID, Equal<Required<FSWFStage.parentWFStageID>>>>> .Select(this, parent); } 

 return bqlResultSet; } 

 As a result, you can display a different grid depending on the node selected in the tree. The following screenshot shows the example implemented in the code above. (In the Workflow Stages tree, the MRO node is selected.) 

 Figure: A grid displayed depending on a node of a tree 

#### Reference for the parameters Property of the viewInfo Decorator 

 The following table shows the correspondence between PXControlParam and the TypeScript elements that are involved in configuring view parameters. 


<!-- PAGE_BREAK -->
 Defining Acumatica ERP Forms in HTML and TypeScript | 39 

 ASPX TypeScript 

 PXControlParam 

 <px:PXGrid ID="grid" ...> <Levels> <px:PXGridLevel DataMember="Items"> ... </px:PXGridLevel> </Levels> <Parameters> <px:PXControlParam ControlID="tree" Name="parent" PropertyName="SelectedValue" Type="String" > </px:PXControlParam> </Parameters> ... </px:PXGrid> 

 ControlParameter: The class that is used to create an instance of a view parameter. 

 @viewInfo({ parameters: [ new ControlParameter( "parent", "Nodes", "WFStageID" ) ] }) Items = createCollection(FSWFStage); 

 ControlID 

 ControlID="tree" 

 viewName (the second parameter of the ControlParameter constructor): The name of the view on which the current view depends. 

 Name 

 Name="parent" 

 name (the first parameter of the ControlParameter constructor): The name of the parameter. 

 PropertyName 

 PropertyName="SelectedValue" 

 fieldName( the third parameter of the ControlParameter constructor): The name of the field in the view specified in the second parameter. 

### UI Definition in HTML and TypeScript: Backend Action with Parameters 

 You can execute an action defined in backend with parameters passed from the frontend. For that purpose, you need to create an object of the ServerCommand type and pass it to the screenService.executeCommand method. 

 In TypeScript code of the screen, do the following: 

1. Create an object of the ServerCommand type. In the constructor, pass the name of the action property     defined in backend and an array of parameter values, as shown in the following code. 

 const command = new ServerCommand("ActionName", [Param1, Param2, ...]); 

2. When you need to execute the action, call the screenService.executeCommand method. 

3. In the executeCommand method, pass an object of the ServerCommand type, as shown in the following     code. 


<!-- PAGE_BREAK -->
 Defining Acumatica ERP Forms in HTML and TypeScript | 40 

 this.screenService.executeCommand(command); 

#### Example 

 Suppose that you have defined an action in a graph, as shown in the following code. The name of the action property is MatrixGridCellChanged. 

 In the action body, you use the columnName parameter passed through the adapter (adapter.CommandArguments). 

 public PXAction<MainItemType> MatrixGridCellChanged; [PXUIField(Visible = false, Enabled = true, MapEnableRights = PXCacheRights.Select, MapViewRights = PXCacheRights.Select)] [PXButton(CommitChanges = true)] public virtual IEnumerable matrixGridCellChanged(PXAdapter adapter) { string columnName = adapter.CommandArguments?.TrimEnd(); ... } 

 In frontend, you need to execute this action and pass the columnName value as a parameter. To do that, you need to call the this.screenServce.executeCommand method, and pass the ServerCommand object as a parameter. 

 In the constructor of the ServerCommand object, you need to pass the name of the action (MatrixGridCellChanged) and an array of parameters with a single value (columnName). 

 An example for the MatrixGridCellChanged action is shown in the following code. 

 export class IN401500 extends PXScreen { onMatrixCellChanged(args: any) { ... this.screenService.executeCommand(new ServerCommand("MatrixGridCellChanged", [columnName])); ... } } 


<!-- PAGE_BREAK -->
 Designing the Layout of an Acumatica ERP Form | 41 

## Designing the Layout of an Acumatica ERP Form 

 This part provides instructions on organizing the layout of an Acumatica ERP form. 

### Form Layout: General Information 

 When developing an Acumatica ERP form or any of its parts, you should design the layout of the form according to the standard practices. This chapter provides recommendations and descriptions of tools that you can use to design the layout quickly and in a unified way. 

#### Learning Objectives 

 In this chapter, you will learn about the following: 

- Approaches to organize the layout of a form and a table (typically referred to as a _grid_ in this chapter) by     using different tools 

- The specification of predefined templates for different parts of the form 

- The use of presets to configure the appearance of grids 

- The ways you can use the predefined CSS classes 

- Uses of the controls that organize other elements of the form 

- The ways to configure different types of a control to achieve a particular layout 

#### Applicable Scenarios 

 You can use the information from this chapter in the following scenarios: 

- Migrating an existing form from the Classic UI to the Modern UI 

- Developing a new form by using the Modern UI 

- Developing a new part of an existing form, such as a grid or a tab with elements 

#### Approaches to Organize Layout 

 The Modern UI provides the following approaches to quickly organize layout in a unified way: 

- A summary area or a tab area of an Acumatica ERP form can use one of the predefined layouts. Predefined     layouts are defined by templates that you specify for an area of a form. See details in _Form Layout:_     _Predefined Templates_. 

- For grids, you can specify a predefined set of properties by using presets, which are described in detail in     _Form Layout: Grid Presets_. 

- You can use CSS classes to adjust color settings and organize layout inside templates. They can also be used     for grids and for the organization of multiple UI controls inside a field area. For a description of CSS classes,     see _Form Layout: CSS Classes_. 

### Form Layout: Predefined Templates 

 You can use predefined templates to control the layout of areas of an Acumatica ERP form. Templates automatically adjust based on screen width and resolution. 


<!-- PAGE_BREAK -->
 Designing the Layout of an Acumatica ERP Form | 42 

#### Overview of Templates 

 You specify a template by using the qp-template tag with the following required attributes: 

- id: Identifies a template instance and can be used to reference the template in customizations and     extensions 

- name: Specifies which template to use Each template organizes UI elements into named slots. The name of a template has the following structure: _<Slot1>-...-<SlotN>_ , where: 

- _N_ is the number of slots in the template. 

- Each slot number represents its relative width. For example, the 7-10-7 template has three slots: 

- The first slot has a width of 7/24 of the form’s width. 

- The second slot is 10/24 of the form’s width. 

- The third slot has a width of 7/24 of the form’s width; 24 is the sum of the relative width of all slots: 7 + 10     + 7 = 24. To use qp-template, you need to distribute the UI controls among the available slots by using the slot attribute. In each slot, controls are rendered vertically. The slots are referred to by names, such as A, B, and C. You can apply the slot attribute to any element, such as qp-fieldset, qp-grid, or div. If a template contains multiple slots, you can distribute controls between only some of them. For example, if a template contains three slots, you may use only two of them; any unused slot remains empty. 

#### Template Usage Example 

 The following example uses the 7-10-7 template. 

 <qp-template id="formDocument" name="7-10-7" wg-container> <qp-fieldset id="fsColumnA" slot="A" view.bind="Document"> <field name="OrderType"></field> <field name="OrderNbr"></field> <field name="Status"></field> <field name="OrderDate"></field> <field name="RequestDate"></field> <field name="CustomerOrderNbr"></field> <field name="CustomerRefNbr"></field> </qp-fieldset> <qp-fieldset id="fsColumnB" slot="B" view.bind="Document"> <field name="CustomerID" config-allow-edit.bind="true"></field> <field name="CustomerLocationID" config-allow-edit.bind="true"></field> <field name="ContactID" config-allow-edit.bind="true"></field> <field name="CuryID" control-type="qp-currency" view.bind="CurrencyInfo"></field> <field name="DestinationSiteID"></field> <field name="ProjectID" config-allow-edit.bind="true"></field> <field name="OrderDesc" config-type.bind="1" config-rows.bind="3"></field> </qp-fieldset> <qp-fieldset id="fsColumnC-summary" slot="C" view.bind="Document"> <field name="OrderQty"></field> <field name="CuryDiscTot"></field> <field name="CuryVatExemptTotal"></field> <field name="CuryVatTaxableTotal"></field> <field name="CuryTaxTotal"></field> <field name="CuryOrderTotal"></field> 


<!-- PAGE_BREAK -->
 Designing the Layout of an Acumatica ERP Form | 43 

 <field name="CuryControlTotal"></field> </qp-fieldset> </qp-template> 

#### Template Selection Guide 

 We recommend choosing the template and label size based on the form type, as specified in the following table. 

 Form Type Template Label Size 

 Data entry forms for transactions (records representing the exchange or movement of money, goods, or services) 

 Three-slot templates for the Summary area; you can select a template by using the recommendations below. 

 Default 

 Data entry forms for profiles (records representing a person, company, or entity) 

##### 1-1 M 

 Processing forms 17-17-14 or 17-14-17 Default 

 Inquiry forms 17-17-14 or 17-14-17 Default 

 Setup forms 1-1 XM 

 Maintenance forms 1-1 XM 

 Use the following general recommendations when selecting a template. 

 If the Summary area or a tab of a form should include three slots of elements: 

- Use 7-10-7 if you need narrower le and right slots and a wider center slot. 

- Use 17-17-14 for equal le and center slots but a narrower right slot. 

- Use 1-1-1 for three slots with similar widths. If the Summary area of a form should include two slots of elements: 

- Use 1-1 for slots with equal width. 

- Use 17-7 or 2-1 if you want to put a grid in the first slot and a fieldset in the second or if 1-1 is not wide     enough due to longer elements in the first slot. 

- Use 7-17 or 1-2 if you want to put a fieldset in the first slot and a grid in the second or if 1-1 isn’t wide     enough due to very long elements in the second slot. 

#### Available Templates 

 See the following table to learn more about the available templates. 


<!-- PAGE_BREAK -->
 Designing the Layout of an Acumatica ERP Form | 44 

**Template Description** 

17-17-14 Three slots—the third with short elements. 

17-14-17 Shows three slots; the second has shorter elements than the first and third do. 

14-17-17 Shows three slots; the first has shorter elements than the second and third do. 

17-31 Shows two slots; the first has shorter elements than the second does. 


<!-- PAGE_BREAK -->
 Designing the Layout of an Acumatica ERP Form | 45 

**Template Description** 

7-10-7 Shows three slots; the second includes long elements. 

10-7-7 Shows three slots; the first includes long elements. 

17-7 Shows two slots; the first includes long elements. 

7-17 Shows two slots; the second includes long elements. 


<!-- PAGE_BREAK -->
 Designing the Layout of an Acumatica ERP Form | 46 

**Template Description** 

1-1-1 Shows three slots with similar lengths of elements. 

2-1 Shows two slots; the first includes long elements. 

1-2 Shows two slots; the second includes long elements. 

1-1 Shows two slots with similar lengths of elements. 


<!-- PAGE_BREAK -->
 Designing the Layout of an Acumatica ERP Form | 47 

 Template Description 

 1 Shows one slot with long elements. 

#### Comparison of Templates 

 The following diagram compares the widths of the slots in templates. 


<!-- PAGE_BREAK -->
 Designing the Layout of an Acumatica ERP Form | 48 

### Form Layout: Grid Presets 

 To configure the appearance of a table (which is also called grid ) on an Acumatica ERP form, you can specify a preset for the grid control. A preset is a predefined set of properties, such as mergeToolbarWidth or syncPosition, that define the appearance of the grid. 

 Presets are an analog of the SkinID property in ASPX in the Classic UI. However, not all values of the SkinID property have analogs in the Modern UI. You need to find the appropriate preset in the list of available values. 

 You should use presets because they unify the appearance of grids in the UI and simplify the process of updating the design. 

 To specify the preset, you use the preset property of the gridConfig decorator, as shown in the following example. 

 Without Preset With Preset 

 @gridConfig({ adjustPageSize: true, mergeToolbarWith: 'ScreenToolbar', syncPosition: true, preserveSortsAndFilters: true, allowDelete: false, allowInsert: false, allowImport: false, allowSkipTabs: false, actionsConfig: { insert: {hidden: true}, delete: {hidden: true}} }) export class GLHistoryEnquiryResult extends PXView 

 @gridConfig({ preset: GridPreset.ReadOnly }) export class GLHistoryEnquiryResult extends PXView 

#### Available Presets 

 The following table lists the values of the preset property and the designs they provide. 

 If some of the properties of the preset do not fit your needs, you can override them in the gridConfig decorator. 


<!-- PAGE_BREAK -->
 Designing the Layout of an Acumatica ERP Form | 49 

**Value Description** 

Primary An editable table, which includes the following components: 

- Table toolbar: Merged with the form toolbar 

- Filtering and search: Available and saved in the ses-     sion 

- Table footer: Displayed Guidelines: 

- Use this preset for primary lists with an editable ta-     ble if there is no entry form for the records, such as     _Chart of Accounts_ (GL202500). 

- Do not specify a grid caption. Respective SkinID in ASPX: Primary 

Inquiry A read-only table, which includes the following components: 

- Table toolbar: Merged with the form toolbar 

- Filtering and search: Available and saved in the ses-     sion 

- Table footer: Displayed 

- The insert and delete operations inside the table:     Forbidden Guidelines: 

- Use this preset for primary lists with read-only     grids, such as Sales Orders (SO3010PL), Invoic-     es (SO3030PL), and Import Bank Transactions     (CA3065PL). 

- Use the preset for inquiry forms. 

- Do not specify a table caption. Respective SkinID in ASPX: PrimaryInquiry 

Processing A read-only table, which includes the following components: 

- Table toolbar: Merged with the form toolbar 

- Filtering and search: The grid filters are shown on     demand (showFilterBar: GridFilter-     BarVisibility.OnDemand) 

- Table footer: Displayed 

- The insert and delete operations inside the table:     Forbidden Guidelines: 

- Use for processing forms. This preset does not have an analogue in ASPX. 


<!-- PAGE_BREAK -->
 Designing the Layout of an Acumatica ERP Form | 50 

**Value Description** 

ReadOnly A read-only table, which includes the following components: 

- Table toolbar: Displayed separately from the form     toolbar 

- Filtering and search: Only the Search box is avail-     able 

- Table footer: Displayed 

- The insert and delete operations inside the table:     Forbidden Guidelines: 

- Use this preset for read-only tables on data entry     forms, such as the table on the **Shipments** tab on     _Sales Orders_ (SO301000) form. 

- Do not specify a grid caption. Respective SkinID in ASPX: Inquiry 

Details An editable table, which includes the following components: 

- Table toolbar: Displayed separately from the form     toolbar 

- Filtering and search: Only the Search box is avail-     able 

- Table footer: Displayed 

- The insert and delete operations inside the table:     Allowed Guidelines: 

- Use this preset for editable tables on data entry     forms. 

- Do not specify a table caption. Respective SkinID in ASPX: Details 


<!-- PAGE_BREAK -->
 Designing the Layout of an Acumatica ERP Form | 51 

 Value Description 

 Attributes A partially editable table with a predefined set of rows, but the cells can be editable. The table includes the following components: 

- Table toolbar: Not displayed 

- Filtering and search: Unavailable 

- Table footer: Not displayed 

- The insert and delete operations inside the grid:     Forbidden Guidelines: 

- Use this preset for smaller tables surrounded by     other fieldsets, such as the **Attributes** table on the     **Attributes** tab of the _Stock Items_ (IN202500) form. 

- Specify a table caption. Respective SkinID in ASPX: Attributes 

 ShortList An editable table, which includes the following components: 

- Table toolbar: Displayed separately from the form     toolbar 

- Filtering and search: Unavailable 

- Table footer: Not displayed 

- The insert and delete operations inside the grid: Al-     lowed Guidelines: 

- Use this preset for smaller tables, such as the **Sales**     **Categories** table on the **Attributes** tab of the _Stock_     _Items_ form. 

- Do not specify a table caption. Respective SkinID in ASPX: ShortList 

 Empty An empty preset that includes no settings. 

 Guideline: Use this preset if the preset property becomes mandatory and you need to use a custom set of properties. 

The default values of settings in each preset are described in the _attached file_. 

 In the file, the value from server means that the default value is received from the server. If no value is specified on the server side, the default value is false. If the true value is specified, the value is defined by the server. If the true value is specified and no value has been received from the server, the value is true. 


<!-- PAGE_BREAK -->
 Designing the Layout of an Acumatica ERP Form | 52 

### Form Layout: CSS Classes 

 You can use the predefined CSS classes, which are listed below, to adjust the color settings and layout of templates. These classes are defined in the FrontendSources/screen/static/basic-layout.css file of the instance folder. 

#### adaptive-height 

 You can use the adaptive-height CSS class for qp-text-box in multiline mode or for its parent control. The class causes the parent control to adapt its height to the size of the qp-text-box control. 

 The following example uses this class. 

 <qp-panel id="LogFileFilterRecord" caption="Log" auto-repaint="true" width="50vw"> <qp-fieldset id="frmLockout" view.bind="LogFileFilterRecord"> <field name="Text" class="label-size-xxs adaptive-height" config-type.bind="1"></field> </qp-fieldset> <footer> <qp-button id="btnCancel" dialog-result="Cancel" caption="Close"></qp-button> </footer> </qp-panel> 

#### align-end 

 The align-end CSS class causes an element to be placed on the right side of the container, such as a form. 

 For example, if you need a set of buttons to be placed along the right border of a form that is displayed in a pop-up panel, you need to put the buttons in a div tag and specify the align-end class for this div tag. Such a form is shown in the following screenshot. 


<!-- PAGE_BREAK -->
 Designing the Layout of an Acumatica ERP Form | 53 

 Figure: The Bank Transaction Rules form 

 The following example implements this screenshot and uses the align-end class. 

 <template> <qp-template> ... </qp-template> <div class="h-stack align-end"> <qp-button id="buttonApply" state.bind="SaveClose"></qp-button> <qp-button id="buttonApplyAll" state.bind="SaveAndApply"></qp-button> </div> </template> 

 In a dialog box (the qp-panel control), you do not need to specify the align-end class for the buttons located in the footer tag. The alignment along the right side is implemented for the footer by default. 

#### col-auto 

 The col-auto CSS class causes an element to have its caption fully visible and does not include excessive space in any screen size, as shown for the View On Map button in the following screenshots for a narrow screen and a wide screen. That is, the width of the button is fixed for any screen size. 


<!-- PAGE_BREAK -->
 Designing the Layout of an Acumatica ERP Form | 54 

 The following example uses this class. 

 <field name="AddressButtons"> <qp-button id="btnViewOnMap" state.bind="ViewOnMap" class="col-auto"> </qp-button> </field> 

 The class can be applied to any element (however, it is designed to be used with buttons). 

#### col-N 

 The col-N CSS class, where N is a number from 1 to 12, specifies the width of a control in columns. N defines the number of columns that the control occupies relative to the width of its parent control. (That is, the width of the parent control is considered to be 12 columns.) 

 You can use these classes to organize multiple UI controls inside a field area (which are implemented with Merge in PXLayoutRule in ASPX). For examples of the organization of multiple UI controls in a field area, see Form Layout: An Element Next to Another Element. 

 Avoid using controls that span multiple columns of controls (which are implemented with ColumnSpan in PXLayoutRule in ASPX). You should use multiline text boxes instead. For details, see Text Box: Multiline Text Box. 

 The following example uses this class. <field name="ShipVia"> <qp-button id="btnShopRates" state.bind="ShopRates" class="col-7"> </qp-button> </field> 

 The class can be applied to any element. 

#### col-lg-X, col-md-X, and col-sm-X 

 The col-lg-X, col-md-X, and col-sm-X CSS classes, where X is a number from 1 to 12, specify the width of a control in columns for different types of screens: 

- For large screens: col-lg-X 

- For medium screens: col-md-X 

- For small screens: col-sm-X X indicates the width in columns, where 1 is the smallest width and 12 is the full width of the parent control. 

 The following example uses these classes. <div class="v-stack col-sm-12 col-md-6 col-lg-4"></div> 

 The class can be applied to any element. 


<!-- PAGE_BREAK -->
 Designing the Layout of an Acumatica ERP Form | 55 

#### control-size-<SIZE> 

 The control-size-XXX classes limit the maximum width of a control to the specified size. 

 <SIZE> can have the following values: 

- _xxs_ : 40 px 

- _xs_ : 70 px 

- _s_ : 100 px 

- _sm_ : 140 px 

- _m_ : 200 px 

- _xm_ : 250 px 

- _l_ : 300 px 

- _xl_ : 350 px 

- _xxl_ : 400 px The following examples use these classes. <field class="control-size-m"...> <qp-field class="control-size-l"...> <qp-fieldset class="control-size-xxl"...> 

 The class can be applied to any element. 

 We do not recommend that you use these classes extensively: Because the Modern UI forms are adaptive to the width of the screen, the use of these classes may lead to different widths of controls in a single column. 

#### default-control 

 The default-control class indicates that the control should have focus when the form opens. 

 <field name="CustomerID" config-allow-edit.bind="true" class="default-control"></field> 

 In ASPX, you would use the DefaultControlID attribute of the PXFormView tag to indicate the default control that would have focus. 

#### equal-height 

 The equal-height class indicates that the columns in the template should be aligned in height. 

 The class can be applied to qp-template. 

#### framed-section 

 The framed-section CSS class displays a container in a separate gray frame, as shown in the following screenshot. 


<!-- PAGE_BREAK -->
 Designing the Layout of an Acumatica ERP Form | 56 

 The following example uses this class. <qp-grid id="gridSalesPerTran" view.bind="SalesPerTran" class="framed-section"></qp-grid> 

 The class can be applied to any container. 

#### full-width 

 The full-width CSS class stretches the right side of the template to the right side of the screen, ignoring the maximum size of the form, which is 1600 px. 

 We recommend that you use this CSS class if you have a wide grid inside the template. 

 The following example uses this class. <qp-template name="7-17" id="comissions-form" class="full-width"> ... </qp-template> 

 The class can be applied to qp-template. 

#### h-stack 

 The h-stack CSS class defines the list of elements rendered horizontally. 

 The following example uses this class. 

 <div class="h-stack"> <div class="h-stack" > <qp-fieldset id="first" hide-caption="true"> ... </qp-fieldset> <qp-fieldset id="second" hide-caption="false"> ... </qp-fieldset> </div> <qp-fieldset id="summary" hide-caption="false" caption="Summary" > ... </qp-fieldset> </div> 

 The class can be applied to any container. 


<!-- PAGE_BREAK -->
 Designing the Layout of an Acumatica ERP Form | 57 

#### highlights-section 

 The highlights-section CSS class defines the style for the pane with a blue background, as shown in the following screenshot. 

 The following example uses this class. 

 <qp-fieldset id="totals" hide-caption="false" class="highlights-section"> ... </qp-fieldset> 

 The class can be applied to qp-fieldset. 

#### indent-1, indent-2, and indent-3 

 The indent-1, indent-2, and indent-3 CSS classes define the number of indentations for the control. The number in the class name corresponds to the number of indentations. 

 The following example uses this class. <field name="CopyLineNotesToInvoice"></field> <field name="CopyLineNotesToInvoiceOnlyNS" class="indent-1"></field> 

 The class can be applied to the field tag. 


<!-- PAGE_BREAK -->
 Designing the Layout of an Acumatica ERP Form | 58 

#### label-size-<SIZE> 

 The label-size-<SIZE> CSS class specifies the width of the labels in the container. 

 We recommend that you not overuse this set of CSS classes. Ideally, all labels on a form should have the same size. 

 <SIZE> can have the following values: 

- _xxs_ : 40 px 

- _xs_ : 70 px 

- _s_ : 100 px 

- _sm_ : 140 px 

- _m_ : 200 px 

- _xm_ : 250 px 

- _l_ : 300 px 

- _xl_ : 350 px 

- _xxl_ : 400 px The class can be applied to any element. 

#### label-size-zero 

 The label-size-zero class specifies that the element and its nested elements do not have labels but should have the asterisk (*) displayed to indicate that the value is required. 

 In the following code, two boxes ( First Name and Last Name ) are displayed in a single line. The Last Name box is required, as shown in the following screenshot. 

 <qp-field control-state.bind="PrimaryContactCurrent.FirstName" config-placeholder.bind="'First Name'"> <qp-label slot="label" caption="Name"></qp-label> <qp-field control-state.bind="PrimaryContactCurrent.LastName" class="label-size-zero" config-placeholder.bind="'Last Name'" config-required="PrimaryContactCurrent.LastName.required"> </qp-field> </qp-field> 

#### no-label 

 The no-label CSS class specifies that the element and all its nested elements do not have labels. However, you can override this behavior in any nested element by specifying class="label-size-<SIZE>" for the nested element. 

 You do not need to use class="no-label" with qp-field. qp-field does not have a label by default. 

 If you need to hide the label part of the control but display the asterisk (*) symbol, use the label-size-zero class. 


<!-- PAGE_BREAK -->
 Designing the Layout of an Acumatica ERP Form | 59 

 In the following code, the One field has a label of size S , the Two field has no label, the Three field has no label, and the Four field has a label of size M. 

 <qp-template name="1" id="mf" class="no-label"> <qp-fieldset id="fs1" view.bind="MyView" class="label-size-s"> <field name="One"></field> <field name="Two" class="no-label"></field> </qp-fieldset> <qp-fieldset id="fs2" view.bind="MyView"> <field name="Three"></field> <field name="Four" class="label-size-m"></field> </qp-fieldset> </qp-template> 

 The class can be applied to any element. 

#### no-stretch 

 The no-stretch CSS class prevents the element from being stretched over the height of the whole Acumatica ERP form or the area of a form, such as a tab. 

 By default, the grid is stretched over the height of the whole area. 

 The following example uses this class. <div class="v-stack"> <div id="Filter_form" wg-container> ... </div> <qp-grid id="grid" view.bind="EnqResult" class="no-stretch"> </qp-grid> </div> 

 The class can be applied to any container. 

#### stretch 

 The stretch CSS class stretches the element over the height of the container to which the element belongs. For example, the element can be stretched to the height of the whole Acumatica ERP form or the area of a form, such as a tab. 

 The class is applied by default to qp-grid and qp-tabbar. 

 The following example uses this class. <qp-rich-text-editor id="edDescription" class="stretch" state.bind="Case.Description"> </qp-rich-text-editor> 

 The class can be applied to any element. 

#### transparent-section 

 The transparent-section CSS class defines the style of the pane with the transparent background. 

 We recommend that you use transparency only for fieldsets with a maximum of two rows of controls. 


<!-- PAGE_BREAK -->
 Designing the Layout of an Acumatica ERP Form | 60 

 The following screenshot shows an element in a transparent fieldset. 

 The following screenshot shows a selected check box in a transparent fieldset. 

 The following example uses this class. <qp-template name="17-17-14" id="byBookFilterForm"> <qp-fieldset slot="A" id="deprBookFilterForm" view.bind="deprbookfilter" class="transparent-section"> <field name="BookID"></field> </qp-fieldset> </qp-template> 

 The class can be applied to qp-fieldset. 

#### v-stack 

 The v-stack CSS class defines the list of elements rendered vertically. 

 The elements are rendered vertically by default; therefore, in most cases, there is no need to use this class. 

 The following example uses this class. 

 <div class="v-stack"> <div id="Filter_form" wg-container> ... </div> <qp-grid id="grid" view.bind="EnqResult"> </qp-grid> </div> 

 The class can be applied to any container. 


<!-- PAGE_BREAK -->
 Designing the Layout of an Acumatica ERP Form | 61 

### Form Layout: Box Connotations 

 You can highlight a value in the textbox control with a color connotation. The color can change depending on the value in the box. 

 In Acumatica ERP data entry forms with workflows, the Status box has default connotations. You can add new connotations or change existing ones. The following screenshot shows an example of the color connotation for the Open status. 

 Figure: The highlighted status 

#### Changing the Default Color or Defining a New One 

 You can specify a connotation for any box that has the PXStringListAttribute attribute on the corresponding DAC field. Some forms, such as data entry forms with workflows, have default connotations defined in the style.scss file of the screen folder or in the common folder of the module. 

 You can change the default connotation or create a new one by doing the following: 

1. In the screen folder, open the style.scss file or create a new one.     If you’re creating a new file, in the style.scss file, import the mixin from the WebSites/Pure/Site/     FrontendSources/screen/static/status-colors.scss file. 

2. Define the correspondence between the PXStringList attribute values and the colors, as shown in the     following example. 

 @import 'static/status-colors.scss'; @include colored-status('N', var(--status-blue-color)); @include colored-status('H', var(--status-orange-color)); @include colored-status('P', var(--status-red-color)); @include colored-status('V', var(--status-red-color)); @include colored-status('E', var(--status-orange-color)); @include colored-status('A', var(--status-orange-color)); @include colored-status('R', var(--status-red-color)); @include colored-status('C', var(--status-gray-color)); @include colored-status('L', var(--status-gray-color)); @include colored-status('B', var(--status-orange-color)); @include colored-status('S', var(--status-blue-color)); @include colored-status('I', var(--status-blue-color)); @include colored-status('D', var(--status-orange-color)); 


<!-- PAGE_BREAK -->
 Designing the Layout of an Acumatica ERP Form | 62 

#### Specifying the Connotation for a Box 

 To specify connotations that have been defined in the style.scss file, do the following: 

1. In the HTML template of the screen, import the styles.scss file that defines the connotations. 

 <template> <require from="./style.scss"></require> ... </template> 

2. For the field that you want to highlight, specify class="colored" in the corresponding field tag. 

 <qp-fieldset id="fsColumnA-Order" slot="A" view.bind="Document"> ... <field name="Status" class="colored" pinned="true"></field> </qp-fieldset> 

 Related Links 

- _Combo Box: Configuration_ 

- _Workflow Creation: To Add States_ 

- _Defining Workflow States_ 

### Form Layout: An Element Next to Another Element 

 If you need to define an additional element—for example, a button, another box, or a label—next to another element, you can add the corresponding tag inside the field tag. Each field tag can include one tag or multiple tags, such as qp-field or qp-button. 

#### Adding an Element Next to Another Element 

 You can add more than one control in place of an element in the following ways: 

- By adding the additional controls inside the field tag.     In this case, the controls inside the field tag are dependent on the behavior of the control bound to the     field tag. For example, when the control bound to the field tag is hidden (for example, due to a feature     switch or by a user in the **Screen Configuration** dialog box), the dependent control is also hidden.     By default, the second control will occupy half of the space dedicated for the original field. If you need     the second control to have a different width, you can specify class="col-N", where N is a number of     columns that is less than 12. The minimum width is 2 columns. To move a field to the next line, specify     col-12. 

- By replacing the contents of the field tag with controls specified inside the field tag (by using the     replace-content attribute).     In this case, all controls specified in the field tag are independent of each other and the replaced control     (except for nested controls).     If you need to specify the width of the controls, you need to specify col-XX classes for all controls nested     in the field tag unless the controls are nested within each other. 


<!-- PAGE_BREAK -->
 Designing the Layout of an Acumatica ERP Form | 63 

 We recommend that you use the approach with adding controls inside the field tag for two related controls, such as a box and the related check box, or a box and its dynamic description. 

 Use the approach with replacing of the contents of the field tag for multiple unrelated controls. Do not use the approach with adding controls inside the field tag if you need to put multiple controls that are unrelated to each other in a row. If an error occurs in one of these controls, it will be duplicated in another control, as shown in the following screenshot. 

 Figure: Duplicated error 

#### Adding a Check Box Next to an Element 

 You can add a check box next to an element (defined by the field tag) so that they both occupy a space of a single control. To do that, you need to add the qp-field bound to this check box inside the field tag. For example, suppose that you need to add the Canceled check box next to the Cancel Date box, as shown in the following screenshot. 

 Figure: The Canceled check box next to the Cancel Date box 

 The following code can be used to add the check box next to the Cancel Date box (which corresponds to the CancelDate field). 

 <field name="CancelDate"> <qp-field control-state.bind="CurrentDocument.Cancelled" config-enabled.bind="false"></qp-field> </field> 

 You do not need to specify class="no-label" for the second control to omit the empty label of the check box because this class is used by default for a qp-field tag inside the field tag. 

#### Adding a Button to the Next Line 

 You can add a button aer another control so that it is displayed on the next line below the control. To do that, you need to add the button control inside the field tag and specify class="col-12" for the button control. 

 For example, suppose that you need to place the Address Lookup button on the next line aer a check box, as shown in the following screenshot. 


<!-- PAGE_BREAK -->
 Designing the Layout of an Acumatica ERP Form | 64 

 Figure: The Address Lookup button below a check box 

 The Address Lookup button is implemented by using the qp-address-lookup tag. The following code shows an example of moving the Address Lookup button to the next line. 

 <field name="OverrideAddress"> <qp-address-lookup class="col-12" view.bind="Shipping_Address"> </qp-address-lookup> </field> 

#### Replacing a Field 

 You can put any content, such as a text box and a button, instead of an element (that is, occupy the field space with arbitrary elements) by doing the following: 

1. In the field tag, specify the replace-content attribute. 

2. Optional: If the field whose content you are replacing has no definition in TypeScript, add the unbound     attribute. 

3. Inside the field tag, add all tags for the elements you want to add. 

 Suppose that you want to replace the content of an element with one button that occupies the whole space of the element, as shown in the following screenshot. 

 Figure: A button in place of a field 

 You need to add the qp-button tag inside the field tag, as shown in the following code. 

 <field name="fakename" replace-content unbound> <qp-button id="buttonShopRates" class="col-12" state.bind="ShopRates"></qp-button> </field> 

#### Adding Multiple Elements in a Line 

 You can put multiple elements, such as check boxes, in one line by placing them inside the single field tag and specifying the proper CSS class. For details about CSS classes, see Form Layout: CSS Classes. 

 Suppose that you need to show three check boxes in a single line, as shown in the following screenshots. 


<!-- PAGE_BREAK -->
 Designing the Layout of an Acumatica ERP Form | 65 

**_Figure: Three check boxes in a single line_** 

You need to put three qp-field tags inside a single field tag and specify class="col-4" for each of the qpfield tags, as shown in the following code. 

 <field name="fake01" unbound replace-content> <qp-field control-state.bind="StaffScheduleSelected.WeeklyOnSun" config-enabled.bind="false" class="col-4"></qp-field> <qp-field control-state.bind="StaffScheduleSelected.WeeklyOnWed" config-enabled.bind="false" class="col-4"></qp-field> <qp-field control-state.bind="StaffScheduleSelected.WeeklyOnSat" config-enabled.bind="false" class="col-4"></qp-field> </field> 

 You do not need to set class="no-label" to remove the label before each check box because this class is used by default in this case. 

The col-4 class helps to distribute the check boxes equally, which means that each check box occupies 4 (12 / 3 = 4) columns out of the 12 columns that the replaced element occupies. (If you need to have four columns and need to distribute them equally, you should use class="col-3".) 


<!-- PAGE_BREAK -->
 Defining a Setup Form | 66 

## Defining a Setup Form 

 This part provides instructions on configuring a setup form and recommendations on organizing the layout of the form. 

### UI of a Setup Form: General Information 

 On a setup form, an administrator provides configuration or maintenance settings for some functionality in the instance. In the Acumatica ERP workspaces, setup forms are typically listed under Preferences. This topic provides recommendations and guidelines on organizing the layout of a setup form. 

 The following screenshot shows an example of a setup form with tabs. 

 Figure: A setup form with tabs 

#### Learning Objectives 

 In this chapter, you will learn how to do the following to define the setup form: 

- Organize the layout of a setup form 

- Configure a setup form with only a Summary area 

- Configure a setup form with tabs 

#### Applicable Scenarios 

 You configure the setup form in the following cases: 

- You are migrating an existing setup form to the Modern UI. 


<!-- PAGE_BREAK -->
 Defining a Setup Form | 67 

- You are creating a new setup form by using the Modern UI. 

#### Template and Label Sizes 

 The recommended template for a setup form is 1-1. For details about the available templates, see Form Layout: Predefined Templates. 

 The recommended size for labels on setup forms is xm. 

#### Recommendations for Organizing the Layout 

 The following table shows recommendations for organizing the layout of a setup form. 

 Correct Incorrect 

 When most labels are long, make all labels long (with class="label-size-<SIZE>" in qp-template). They should be as long as is needed to make most labels visible without a user needing to hover over the label to see the full name. 

#### UX and Functional Design Guidelines 

 The form design should be tailored for screens with a resolution of 1280 x 720. 

 The number of the setup form should start with 10. For details, see Form and Report Numbering. 

 Related Links 

- _Creating Setup Forms_ 

- _Form Types_ 

- _Form and Report Numbering_ 

### UI of a Setup Form: A Form with Only a Summary Area 

 The following topic describes how to configure a form that contains only a Summary area. (In the Classic UI, these forms were based on the FormView template.) The following screenshot shows an example of a form with this layout. 


<!-- PAGE_BREAK -->
 Defining a Setup Form | 68 

 Figure: A form with only a Summary area 

#### View Definition in TypeScript 

 To configure a form with only a Summary area in the TypeScript file, you do the following: 

- For the view of the Summary area, you use the createSingle method. 

- You use a class that extends PXView with the full list of the fields of the Summary area. The following code shows an example of the TypeScript configuration for the form in the screenshot above. 

 import { PXScreen, createSingle, graphInfo, PXView, PXFieldState, PXFieldOptions, controlConfig } from 'client-controls'; 

 export class FASetup extends PXView { FAAccrualAcctID: PXFieldState<PXFieldOptions.CommitChanges>; FAAccrualSubID: PXFieldState<PXFieldOptions.CommitChanges>; ProceedsAcctID: PXFieldState<PXFieldOptions.CommitChanges>; ProceedsSubID: PXFieldState<PXFieldOptions.CommitChanges>; DeprHistoryView: PXFieldState; DepreciateInDisposalPeriod: PXFieldState; AccurateDepreciation: PXFieldState; ReconcileBeforeDisposal: PXFieldState; AllowEditPredefinedDeprMethod: PXFieldState; 

 @controlConfig({allowEdit: true, }) RegisterNumberingID: PXFieldState; 

 @controlConfig({allowEdit: true, }) AssetNumberingID: PXFieldState; 

 @controlConfig({allowEdit: true, }) BatchNumberingID: PXFieldState; 


<!-- PAGE_BREAK -->
 Defining a Setup Form | 69 

 @controlConfig({allowEdit: true, }) TagNumberingID: PXFieldState; CopyTagFromAssetID: PXFieldState; AutoReleaseAsset: PXFieldState; AutoReleaseDepr: PXFieldState; AutoReleaseDisp: PXFieldState; AutoReleaseTransfer: PXFieldState; AutoReleaseReversal: PXFieldState; AutoReleaseSplit: PXFieldState; UpdateGL: PXFieldState; AutoPost: PXFieldState; SummPost: PXFieldState; SummPostDepreciation: PXFieldState; } 

 @graphInfo({ graphType: 'PX.Objects.FA.SetupMaint', primaryView: 'FASetupRecord' }) export class FA101000 extends PXScreen { FASetupRecord = createSingle(FASetup); } 

#### Layout in HTML 

 You define the layout of a setup form with only a Summary area by adding one qp-template control to the HTML code of the form with slots for each column. For details on the available templates, see Form Layout: Predefined Templates. 

 The following code shows the HTML template for the form in the screenshot above. 

 <template> <qp-template name="1-1" id="formDocument" wg-container="FASetupRecord_form"> <div slot="A"> <qp-fieldset id="groupAccountSettings" view.bind="FASetupRecord" caption="Account Settings"> <field name="FAAccrualAcctID"></field> <field name="FAAccrualSubID"></field> <field name="ProceedsAcctID"></field> <field name="ProceedsSubID"></field> </qp-fieldset> <qp-fieldset id="groupOther" view.bind="FASetupRecord" caption="Other"> <field name="DeprHistoryView"></field> <field name="DepreciateInDisposalPeriod"></field> <field name="AccurateDepreciation"></field> <field name="ReconcileBeforeDisposal"></field> <field name="AllowEditPredefinedDeprMethod"></field> </qp-fieldset> </div> <div slot="B"> <qp-fieldset id="groupNumberingSettings" view.bind="FASetupRecord" caption="Numbering Settings"> <field name="RegisterNumberingID"></field> <field name="AssetNumberingID"></field> <field name="BatchNumberingID"></field> <field name="TagNumberingID"></field> <field name="CopyTagFromAssetID"></field> 


<!-- PAGE_BREAK -->
 Defining a Setup Form | 70 

 </qp-fieldset> <qp-fieldset id="groupPostingSettings" view.bind="FASetupRecord" caption="Posting Settings" class="no-label"> <field name="AutoReleaseAsset"></field> <field name="AutoReleaseDepr"></field> <field name="AutoReleaseDisp"></field> <field name="AutoReleaseTransfer"></field> <field name="AutoReleaseReversal"></field> <field name="AutoReleaseSplit"></field> <field name="UpdateGL"></field> <field name="AutoPost"></field> <field name="SummPost"></field> <field name="SummPostDepreciation"></field> </qp-fieldset> </div> </qp-template> </template> 

### UI of a Setup Form: A Form with Tabs 

 The following topic describes how to configure a form that consists of multiple tabs. (In the Classic UI, these forms were based on the TabView template.) The following screenshot shows an example of a form with this layout. 

 Figure: A form with multiple tabs 


<!-- PAGE_BREAK -->
 Defining a Setup Form | 71 

#### View Definition in TypeScript 

 To configure a setup form with multiple tabs in the TypeScript file, you do the following: 

- For the views that display one record, you use the createSingle method. 

- For the views that display a grid, you use the createCollection method. 

- For each view for a tab, you use a class that extends PXView with the full list of fields to be displayed. 

- For each grid and its columns, you use the gridConfig and columnConfig decorators. For details, see     _Table (Grid): Configuration of the Table and Its Columns_. The following code shows an example of the TypeScript configuration for the form in the screenshot above. 

 import { PXScreen, PXView, PXFieldState, PXFieldOptions, createSingle, graphInfo, viewInfo, columnConfig, } from "client-controls"; 

 @graphInfo({ graphType: "PX.Objects.SO.SOSetupMaint", primaryView: "sosetup", }) export class SO101000 extends PXScreen { @viewInfo({ containerName: "SO Preferences" }) sosetup = createSingle(sosetup); } 

 export class sosetup extends PXView { DefaultOrderType: PXFieldState; TransferOrderType: PXFieldState; ShipmentNumberingID: PXFieldState; 

 @columnConfig({ allowNull: false }) PickingWorksheetNumberingID: PXFieldState; 

 AdvancedAvailCheck: PXFieldState; 

 MinGrossProfitValidation: PXFieldState; UsePriceAdjustmentMultiplier: PXFieldState; IgnoreMinGrossProfitCustomerPrice: PXFieldState; IgnoreMinGrossProfitCustomerPriceClass: PXFieldState; IgnoreMinGrossProfitPromotionalPrice: PXFieldState; 

 FreightAllocation: PXFieldState; 

 FreeItemShipping: PXFieldState; HoldShipments: PXFieldState; RequireShipmentTotal: PXFieldState; AddAllToShipment: PXFieldState<PXFieldOptions.CommitChanges>; CreateZeroShipments: PXFieldState<PXFieldOptions.CommitChanges>; 


<!-- PAGE_BREAK -->
 Defining a Setup Form | 72 

 CreditCheckError: PXFieldState; UseShipDateForInvoiceDate: PXFieldState; 

 AutoReleaseIN: PXFieldState; 

 SalesProfitabilityForNSKits: PXFieldState; 

 DfltIntercompanyOrderType: PXFieldState; OrderType: PXFieldState; DfltIntercompanyRMAType: PXFieldState; DisableAddingItemsForIntercompany: PXFieldState; DisableEditingPricesDiscountsForIntercompany: PXFieldState<PXFieldOptions.CommitChanges>; 

 ShowOnlyAvailableRelatedItems: PXFieldState; DefaultReturnOrderType: PXFieldState; 

 OrderRequestApproval: PXFieldState<PXFieldOptions.Disabled | PXFieldOptions.Hidden>; } 

#### Layout in HTML 

 You define the layout of a setup form with tabs by adding the following tags to the HTML code of the form: 

- A qp-tabbar tag with a nested qp-tab element for each tab. 

- For each tab that does not contain a grid, a nested qp-template tag. For details on using templates, see     _Form Layout: Predefined Templates_. The following code shows the HTML template for the form in the screenshot above. 

 <template> <qp-tabbar id="tabbar"> <qp-tab id="tab-General" caption="General" class="label-size-xm"> <qp-template id="form-General" name="1-1" wg-container="sosetup_tab"> <div id="divColumnA-General" slot="A"> <qp-fieldset id="fsDataEntry-General" view.bind="sosetup" caption="Data Entry Settings"> <field name="DefaultOrderType"></field> <field name="TransferOrderType"></field> <field name="ShipmentNumberingID"></field> <field name="PickingWorksheetNumberingID"></field> <field name="AdvancedAvailCheck"></field> </qp-fieldset> <qp-fieldset id="fsPrice-General" view.bind="sosetup" caption="Price Settings"> <field name="MinGrossProfitValidation"></field> <field name="UsePriceAdjustmentMultiplier"></field> <field name="IgnoreMinGrossProfitCustomerPrice"> <qp-label slot="label" caption="Ignore Min. Markup Validation for Prices"> </qp-label> </field> <field name="IgnoreMinGrossProfitCustomerPriceClass"></field> <field name="IgnoreMinGrossProfitPromotionalPrice"></field> </qp-fieldset> <qp-fieldset id="fsShipment-General" view.bind="sosetup" 


<!-- PAGE_BREAK -->
 Defining a Setup Form | 73 

 caption="Shipment Settings"> <field name="FreeItemShipping"></field> <field name="HoldShipments"></field> <field name="RequireShipmentTotal"></field> <field name="AddAllToShipment"></field> <field name="CreateZeroShipments"></field> </qp-fieldset> <qp-fieldset id="fsInvoice-General" view.bind="sosetup" caption="Invoice Settings"> <field name="CreditCheckError"></field> <field name="UseShipDateForInvoiceDate"></field> </qp-fieldset> </div> <div id="divColumnB-General" slot="B"> <qp-fieldset id="fsPosting-General" view.bind="sosetup" caption="Posting Settings"> <field name="AutoReleaseIN"></field> </qp-fieldset> <qp-fieldset id="fsFreightCalculation-General" view.bind="sosetup" caption="Freight Calculation Settings"> <field name="FreightAllocation"></field> </qp-fieldset> <qp-fieldset id="fsSalesProfitability-General" view.bind="sosetup" caption="Sales Profitability Settings"> <field name="SalesProfitabilityForNSKits"></field> </qp-fieldset> <qp-fieldset id="fsIntercompanyOrder-General" view.bind="sosetup" caption="Intercompany Order Settings"> <field name="DfltIntercompanyOrderType"></field> <field name="DfltIntercompanyRMAType"></field> <field name="DisableAddingItemsForIntercompany"></field> <field name="DisableEditingPricesDiscountsForIntercompany"></field> </qp-fieldset> <qp-fieldset id="fsRelatedItem-General" view.bind="sosetup" caption="Related Item Settings"> <field name="ShowOnlyAvailableRelatedItems"></field> </qp-fieldset> <qp-fieldset id="fsRelatedCase-General" view.bind="sosetup" caption="Related Case Settings"> <field name="DefaultReturnOrderType"></field> </qp-fieldset> </div> </qp-template> </qp-tab> </qp-tabbar> </template> 

### UI of a Setup Form: To Create the UI of a Setup Form 

 The following activity will walk you through the process of creating the UI of an Acumatica ERP setup form. 


<!-- PAGE_BREAK -->
 Defining a Setup Form | 74 

#### Story 

 The Smart Fix company uses the Repair Work Orders (RS301000) data entry form to create and manage repair work orders. The Repair Work Order Preferences (RS101000) setup form, for which you will develop the Modern UI, will be used by an administrative user to specify the company's preferences for the repair work orders. The following screenshot shows what this form should look like. 

 Figure: The Repair Work Order Preferences form 

 You have already implemented the backend for the form, which includes the RSSVSetup data access class (DAC) and the RSSVSetupMaint graph. Also, you have added the RSSVSetup table to the application database. 

#### Process Overview 

 You will create TypeScript and HTML files for the Repair Work Order Preferences (RS101000) form. In the TypeScript file, you will define the screen class and view class for the form. In the HTML file, you will define the layout of the form. 

#### System Preparation 

 Before you begin the creation of the UI of the Repair Work Order Preferences (RS101000) form, do the following: 

1. Complete the following prerequisite activity: _Modern UI Development: To Deploy an Instance with Custom_     _Forms and the Modern UI_. Make sure that the prepared instance contains the following items: 

- The RSSVSetupMaint graph in the customization code 

- The RSSVSetup DAC in the customization code 

- The RSSVSetup database table 

2. To build the source code for the first time, make sure that you have completed the following prerequisite     activity: _Modern UI Development: To Build the Source Code of All Acumatica ERP Forms for Modern UI_     _Development_. 

#### Step 1: Creating Files for the Setup Form 

 To create the Modern UI for the Repair Work Order Preferences (RS101000) setup form, you need to create TypeScript and HTML files for the form. Create the files as follows: 

1. In the FrontendSources\screen\src\development\screens folder of your Acumatica ERP     instance, create a folder with the RS name if it has not been created yet. You will store the UI sources for all     forms with the _RS_ prefix in this folder. 

2. In the FrontendSources\screen\src\development\screens\RS folder, create a folder with the     RS101000 name. You will store the UI sources for the Repair Work Order Preferences form in this folder. 

3. In the FrontendSources\screen\src\development\screens\RS\RS101000 folder, create the     following files: 

- RS101000.ts 


<!-- PAGE_BREAK -->
 Defining a Setup Form | 75 

- RS101000.html 

#### Step 2: Defining the Screen Class in TypeScript 

 To define the view of the Repair Work Order Preferences (RS101000) setup form in TypeScript, you define a screen class and a property for the data view of the form. Do the following: 

1. In the RS101000.ts file, add the import directives as follows. 

 import { PXScreen, createSingle, graphInfo, } from "client-controls"; 

2. Define the screen class for the form as follows. The class name is the ID of the form. 

 export class RS101000 extends PXScreen {} 

3. For the screen class, add the graphInfo decorator, and specify the graph and the primary view of the form     in the decorator properties, as shown in the following code. 

 @graphInfo({ graphType: "PhoneRepairShop.RSSVSetupMaint", primaryView: "Setup", }) export class RS101000 extends PXScreen {} 

4. Define the property for the data view of the form by using the following code. Because the data view is used     to display only a Summary area, you need to initialize the property with the createSingle method. The     input parameter of this method is an instance of the view class that you will define in the next step. 

 export class RS101000 extends PXScreen { Setup = createSingle(RSSVSetup); } 

#### Step 3: Defining the View Class in TypeScript 

 You need to define a view class for the single data view of the Repair Work Order Preferences (RS101000) setup form. Proceed as follows: 

1. In the RS101000.ts file, update the list of import directives, as the following code shows. 

 import { PXScreen, createSingle, graphInfo, PXView, PXFieldState, controlConfig, } from "client-controls"; 

2. Define the view class as follows. 

 export class RSSVSetup extends PXView {} 


<!-- PAGE_BREAK -->
 Defining a Setup Form | 76 

3. In the view class, specify the properties for all data fields of the data view, as shown below. You use the     name of the data field as the property name. 

 export class RSSVSetup extends PXView { @controlConfig({allowEdit: true, }) NumberingID: PXFieldState; 

 @controlConfig({allowEdit: true, }) WalkInCustomerID: PXFieldState; 

 DefaultEmployee: PXFieldState; PrepaymentPercent: PXFieldState; } 

 You have used the controlConfig decorator to display the values in the Numbering Sequence and Walk-In Customer boxes as links to the records whose identifiers are displayed in the selector control. 

4. Save your changes. 

#### Step 4: Defining the Layout in HTML 

 The Repair Work Order Preferences (RS101000) setup form contains only a Summary area with a single column. Therefore, to define the layout of the form, you need to add one qp-template element in the HTML file. You also need to add one qp-fieldset element to group the fields of the column in a slot for the column, as the following code shows. 

 <template> <qp-template id="form-RepairWorkOrderPreferences" name="1-1" class="label-size-xm"> <qp-fieldset id="fsPreferences-RepairWorkOrder" slot="A" view.bind="Setup"> <field name="NumberingID"></field> <field name="WalkInCustomerID"></field> <field name="DefaultEmployee"></field> <field name="PrepaymentPercent"></field> </qp-fieldset> </qp-template> </template> 

 You have specified an ID for the qp-fieldset control and bound the control to the Setup view, which you have defined in the RS101000.ts file. 

 You have used the following recommended settings: 

- The _1-1_ template for the form 

- The _label-size-xm_ class for the qp-template element 

#### Step 5: Building and Viewing the Setup Form 

 To build the source files for the Repair Work Order Preferences (RS101000) setup form and view its Modern UI version, do the following: 

1. Run the following command in the FrontendSources\screen folder of your instance. 

 npm run build-dev ----env customFolder=development screenIds=RS101000 

2. Aer the source files have been built successfully, launch your Acumatica ERP instance, and open the Repair     Work Order Preferences setup form. 


<!-- PAGE_BREAK -->
 Defining a Setup Form | 77 

3. On the form title bar, click **Tools > Switch to Modern UI**. The Modern UI version of the Repair Work Order     Preferences setup form is displayed. The form should look similar to the form shown in the screenshot in the     _Story_ section of this activity. 

4. Click the link in the **Numbering Sequence** box and make sure the _Numbering Sequences_ (CS201010) form     opens with the _WORKORDER_ record displayed. 


<!-- PAGE_BREAK -->
 Defining a Data Entry Form | 78 

## Defining a Data Entry Form 

 This part provides instructions on configuring a data entry form and recommendations on organizing the layout of the form. 

### Data Entry Form: General Information 

 A data entry form is used for the input of records of a particular type. This topic provides recommendations and guidelines on organizing the layout of a data entry form. 

 The following screenshot shows an example of a data entry form. As is true of most data entry forms, the displayed form has a Summary area and a tab area with multiple tabs. The displayed tab shows a table (generally referred to as a grid ). 

 Figure: A data entry form 

#### Learning Objectives 

 In this chapter, you will how to do the following when you define a data entry form: 

- Organize the layout of the data entry form 

- Configure the data entry form in HTML and TypeScript 

#### Applicable Scenarios 

 You configure a data entry form in the following cases: 

- You are migrating an existing data entry form to the Modern UI. 

- You are creating a new data entry form by using the Modern UI. 


<!-- PAGE_BREAK -->
 Defining a Data Entry Form | 79 

#### Templates and Label Sizes 

 Data entry forms that display transactional data, such as Invoices and Memos (AR301000), should use three-column templates for the Summary area. You can select a particular template by the general recommendations below. You use the default label size. 

 Data entry forms that display profile data, such as Customers (AR303000), should use the 1-1 template. Label size should be M. 

 When selecting a particular template, you can also use the general recommendations that are described in Form Layout: Predefined Templates. 

#### Recommendations for Organizing the Layout 

 The following table shows recommendations for organizing the layout of a data entry form. 

 Correct Incorrect 

 If you need to show total numbers, put them in the blue fieldset (class="highlights-section") on the right side of the screen. 

 Do not put the blue fieldset between other fieldsets. 

 If you have multiple fieldsets with short labels and short values in fields, put them in multiple columns and stacks by using one of the following templates: 1-1-1, 7-10-7, 17-17-14, or 1-1. 

 Do not put fields with short labels and short values in fields in the 1 template. 


<!-- PAGE_BREAK -->
 Defining a Data Entry Form | 80 

**Correct Incorrect** 

Make labels with long text longer. Try to make the labels in all fieldsets similar in length (specify class="label-size-<SIZE>" in qp-template). 

Use a caption instead of showing a single tab. 

For grids, add the caption as described in _Table with a Title_. 

For fieldsets in a qp-template, use the qp-caption control. 


<!-- PAGE_BREAK -->
 Defining a Data Entry Form | 81 

**Correct Incorrect** 

Try to occupy slots of the template equally in order to balance the screen. 

Use the multiline Description field because the width of a single slot on the data entry form may not fit the field properly. For details, see _Text Box: Multiline Text Box_. 

Show full-width grids without a gray background. 


<!-- PAGE_BREAK -->
 Defining a Data Entry Form | 82 

 Correct Incorrect 

#### UX and Functional Guidelines 

 The form design should be tailored for screens with a resolution of 1280 x 720. 

 The number of the data entry form should start with 30. For details, see Form and Report Numbering. 

### Data Entry Form: Definition in TypeScript and HTML 

 The following topic describes how to configure a data entry form depending on its layout. 

#### View Definition in TypeScript 

 For a form with a Summary area and multiple tabs, you use the following in the TypeScript file of the form: 

- For the summary view and the views that display one record, the createSingle method. 

- For each property for the view that displays a grid, the createCollection method. 

- For the summary view and each view for a tab, a class that extends PXView with the full list of fields to be     displayed. 

- The _headerDescription_ decorator for fields in the Summary area whose value should be included in     the record title below the form name. 

- The _gridConfig_ and _columnConfig_ decorators for each grid and its columns. For details, see _Table_     _(Grid): Configuration of the Table and Its Columns_. The following code shows an example of the TypeScript configuration for the _Sales Orders_ (SO301000) form. 

 import { createCollection, createSingle, PXScreen, graphInfo, PXActionState } from "client-controls"; 

 @graphInfo({ graphType: 'PX.Objects.SO.SOOrderEntry', primaryView: 'Document' 


<!-- PAGE_BREAK -->
 Defining a Data Entry Form | 83 

}) export class SO301000 extends PXScreen { //Actions that are used in qp-button tags in HTML AddInvoiceOK: PXActionState; OverrideBlanketTaxZone: PXActionState; ... 

//Properties for view classes Document = createSingle(SOOrderHeader); Transactions = createCollection(SOLine); Taxes = createCollection(SOTaxTran); CurrentDocument = createSingle(SOOrder); ... } 

//View classes export class SOOrderHeader extends PXView { OrderType: PXFieldState; OrderNbr: PXFieldState; Status: PXFieldState<PXFieldOptions.Disabled>; DontApprove: PXFieldState<PXFieldOptions.Disabled>; Approved: PXFieldState<PXFieldOptions.Disabled>; OrderDate: PXFieldState<PXFieldOptions.CommitChanges>; RequestDate: PXFieldState<PXFieldOptions.CommitChanges>; CustomerOrderNbr: PXFieldState<PXFieldOptions.CommitChanges>; CustomerRefNbr: PXFieldState; CuryInfoID: PXFieldState; 

 @headerDescription CustomerID: PXFieldState<PXFieldOptions.CommitChanges>; CustomerLocationID: PXFieldState<PXFieldOptions.CommitChanges>; ContactID: PXFieldState<PXFieldOptions.CommitChanges>; CuryID: PXFieldState<PXFieldOptions.CommitChanges>; DestinationSiteID: PXFieldState<PXFieldOptions.CommitChanges>; ProjectID: PXFieldState<PXFieldOptions.CommitChanges>; OrderDesc: PXFieldState; 

 OrderQty: PXFieldState<PXFieldOptions.Disabled>; CuryDiscTot: PXFieldState<PXFieldOptions.CommitChanges>; CuryVatExemptTotal: PXFieldState<PXFieldOptions.Disabled>; CuryVatTaxableTotal: PXFieldState<PXFieldOptions.Disabled>; CuryTaxTotal: PXFieldState<PXFieldOptions.Disabled>; CuryOrderTotal: PXFieldState<PXFieldOptions.Disabled>; CuryControlTotal: PXFieldState<PXFieldOptions.CommitChanges>; ArePaymentsApplicable: PXFieldState<PXFieldOptions.CommitChanges>; IsRUTROTDeductible: PXFieldState<PXFieldOptions.CommitChanges>; IsFSIntegrated: PXFieldState<PXFieldOptions.Disabled>; 

ShowDiscountsTab: PXFieldState; ShowShipmentsTab: PXFieldState; ShowOrdersTab: PXFieldState; } 

export class SOOrder extends PXView { BranchID: PXFieldState<PXFieldOptions.CommitChanges>; BranchBaseCuryID: PXFieldState; DisableAutomaticTaxCalculation: PXFieldState<PXFieldOptions.CommitChanges>; 


<!-- PAGE_BREAK -->
 Defining a Data Entry Form | 84 

 ... } 

 @gridConfig({ preset: GridPreset.Details, initNewRow: true, syncPosition: true, wrapToolbar: true, statusField: "Availability" }) export class SOLine extends PXView { //Table toolbar actions AddInvBySite: PXActionState; ShowMatrixPanel: PXActionState; ... 

 //Table columns Availability: PXFieldState<PXFieldOptions.Hidden>; 

 @columnConfig({ allowShowHide: GridColumnShowHideMode.Server }) ExcludedFromExport: PXFieldState; IsConfigurable: PXFieldState; 

 @columnConfig({ hideViewLink: true }) BranchID: PXFieldState<PXFieldOptions.CommitChanges>; ... } 

#### Layout in HTML 

 You define the layout of a data entry form by adding the following tags to the HTML code of the form: 

- A qp-template tag. For details on using templates, see _Form Layout: Predefined Templates_. 

- A qp-tabbar tag with a nested qp-tab element for each tab. 

- For each tab that does not contain a grid, a nested qp-template tag. The following example shows the HTML template for the _Sales Orders_ (SO301000) form. 

 <template> <qp-template name="7-10-7" id="form-Document" wg-container> <qp-fieldset id="fsColumnA" slot="A" view.bind="Document"> <field name="OrderType"></field> <field name="OrderNbr"></field> ... </qp-fieldset> <qp-fieldset id="fsColumnB" slot="B" view.bind="Document"> <field name="CustomerID" config-allow-edit.bind="true"></field> <field name="CustomerLocationID" config-allow-edit.bind="true"></field> ... </qp-fieldset> <qp-fieldset id="fsColumnC-summary" slot="C" view.bind="Document" caption="Summary"> <field name="OrderQty"></field> <field name="CuryDiscTot"></field> ... </qp-fieldset> </qp-template> 


<!-- PAGE_BREAK -->
 Defining a Data Entry Form | 85 

 <qp-tabbar active-tab-id="tabDetails" id="tabs"> <qp-tab id="tabDetails" caption="Details"> <qp-grid view.bind="Transactions" topBarConfig.bind="{disableMenu: false}"> </qp-grid> </qp-tab> <qp-tab id="tabFinancial" caption="Financial"> <qp-template id="form-Financial" name="1-1-1"> <qp-fieldset id="fsColumnA-Financial" slot="A" view.bind="CurrentDocument" caption="Financial Information"> <field name="BranchID"></field> <field name="BranchBaseCuryID"></field> ... </qp-fieldset> <div slot="B"> <qp-fieldset id="fsColumnB-Payment" view.bind="CurrentDocument" caption="Payment Information"> <field name="OverridePrepayment"></field> <field name="PrepaymentReqPct"></field> ... </qp-fieldset> <qp-fieldset id="fsColumnB-Ownership" view.bind="CurrentDocument" caption="Ownership"> <field name="WorkgroupID"></field> <field name="OwnerID"></field> </qp-fieldset> <qp-fieldset id="fsColumnB-Other" view.bind="CurrentDocument" caption="Other Information"> <field name="OrigOrderType" config-enabled.bind="false"></field> <field name="OrigOrderNbr" config-allow-edit.bind="true" config-enabled.bind="false"></field> ... </qp-fieldset> </div> </qp-template> </qp-tab> ... </qp-tabbar> </template> 

### Data Entry Form: To Create the UI of a Data Entry Form 

 The following activity will walk you through the process of developing the UI of a data entry form. 

#### Story 

 Suppose that you need to develop the Repair Work Orders (RS301000) form in the Modern UI. The form will have a Summary area and two tabs below the Summary area. 

 The following screenshot shows what the form should look like. 


<!-- PAGE_BREAK -->
 Defining a Data Entry Form | 86 

 Figure: The Repair Work Orders form 

 You have already implemented the backend for the form, which includes the RSSVWorkOrderEntry graph and the RSSVWorkOrder, RSSVWorkOrderItem, and RSSVWorkOrderLabor data access classes (DACs). You have also already added the corresponding tables to the application database. 

#### Process Overview 

 You will create TypeScript and HTML files for the Repair Work Orders (RS301000) form. In the TypeScript file, you will define the screen class and view classes for the form. You will also define the following views: 

- WorkOrders, which is the primary view of the form and is bound to the Summary area of the form 

- RepairItems, which is bound to the table on the **Repair Items** tab of the form 

- Labor, which is bound to the table on the **Labor** tab of the form In the HTML file, you will define the layout of the form. 

#### System Preparation 

 Before you begin creating the UI of the Repair Work Orders (RS301000) form, do the following: 

1. Complete the following prerequisite activity: _Modern UI Development: To Deploy an Instance with Custom_     _Forms and the Modern UI_. Make sure the prepared instance contains the following items: 

- The RSSVWorkOrderEntry graph in the customization code 

- The RSSVWorkOrder, RSSVWorkOrderItem, and RSSVWorkOrderLabor DACs in the     customization code 

- The RSSVWorkOrder, RSSVWorkOrderItem, and RSSVWorkOrderLabor database tables 

2. To take the prerequisite actions and build the source code for the first time, perform the following     prerequisite activity: _Modern UI Development: To Build the Source Code of All Acumatica ERP Forms for_     _Modern UI Development_. 

#### Step 1: Creating Files for the Form 

 To implement the Modern UI version of the Repair Work Orders (RS301000) form, you need to create the TypeScript and HTML files for the form. Create the files as follows: 

1. In the FrontendSources\screen\src\screens folder of your Acumatica ERP instance, create a     folder with the RS name if one has not been created yet. You will store the UI sources for all forms with the     _RS_ prefix in this folder. 


<!-- PAGE_BREAK -->
 Defining a Data Entry Form | 87 

2. In the FrontendSources\screen\src\development\screens\RS folder, create a folder with the     RS301000 name if it has not been created yet. 

3. In the FrontendSources\screen\src\development\screens\RS\RS301000 folder, create the     following files: 

- RS301000.ts 

- RS301000.html 

#### Step 2: Defining the Screen Class in TypeScript 

 To define the view of the Repair Work Orders (RS301000) form in TypeScript, you define a screen class and a property for the data views of the form. Do the following: 

1. In the RS301000.ts file, add the import directives as follows. 

 import { PXScreen, createCollection, graphInfo, viewInfo, createSingle, } from "client-controls"; 

2. Define the screen class for the form, as the following code shows. The class name is the ID of the form. 

 export class RS301000 extends PXScreen {} 

3. For the screen class, add the graphInfo decorator, and specify the graph and the primary view of the form     in the decorator properties, as the following code shows. 

 @graphInfo({ graphType: "PhoneRepairShop.RSSVWorkOrderEntry", primaryView: "WorkOrders" }) export class RS301000 extends PXScreen {} 

4. Define the properties for the data views of the form, as the following code shows. To initialize the data view     of the Summary area of the form, you should use the createSingle method. For the data view that is     used to display a table, you need to initialize the property with the createCollection method. You will     define the view classes whose instances are used as input parameters of the methods in the next step. 

 The names of the data view properties should be the same as those in the graph. For example, if the WorkOrders view is declared in the RSSVWorkOrderEntry graph, the property with the same name should be declared in the RS301000 screen class. 

 export class RS301000 extends PXScreen { @viewInfo({ containerName: "Work Order" }) WorkOrders = createSingle(RSSVWorkOrder); 

 @viewInfo({ containerName: "Repair Items" }) RepairItems = createCollection(RSSVWorkOrderItem); 

 @viewInfo({ containerName: "Labor" }) Labor = createCollection(RSSVWorkOrderLabor); } 

 In the viewInfo decorator, you have specified the names of the containers. These names are used as object names during the configuration of particular functionality, such as workflows and import and export scenarios. If this value is not specified, the system displays the name of the data view as the object name. 


<!-- PAGE_BREAK -->
 Defining a Data Entry Form | 88 

#### Step 3: Defining the Primary View Class in TypeScript 

 You need to define a view class for the primary data view of the Repair Work Orders (RS30100) form, which is WorkOrders. 

 Proceed as follows: 

1. In the RS301000.ts file, update the list of import directives, as the following code shows. 

 import { PXScreen, createCollection, graphInfo, viewInfo, createSingle, PXView, PXFieldOptions, PXFieldState, controlConfig, } from "client-controls"; 

2. Define the RSSVRepairWorkOrder view class as follows. 

 export class RSSVWorkOrder extends PXView {} 

3. In the view class, specify the properties for all data fields of the data view that should be displayed in the UI,     as shown below. You use the name of the data field as the property name. 

 export class RSSVWorkOrder extends PXView { OrderNbr: PXFieldState; 

 @controlConfig({allowEdit: true, }) CustomerID: PXFieldState<PXFieldOptions.CommitChanges>; DateCreated: PXFieldState; DateCompleted: PXFieldState; Status: PXFieldState; 

 @controlConfig({rows: 2}) Description : PXFieldState<PXFieldOptions.Multiline>; 

 @controlConfig({allowEdit: true, }) ServiceID : PXFieldState<PXFieldOptions.CommitChanges>; 

 @controlConfig({allowEdit: true, }) DeviceID: PXFieldState<PXFieldOptions.CommitChanges>; OrderTotal: PXFieldState; Assignee: PXFieldState; Priority: PXFieldState<PXFieldOptions.CommitChanges>; InvoiceNbr: PXFieldState; } 

 For the CustomerID, ServiceID, DeviceID, and Priority fields, changes should be committed to the server; therefore, you have used the PXFieldOptions.CommitChanges option for the property type. You have defined the links in the selector controls for the CustomerID, ServiceID, and DeviceID fields by specifying allowEdit: true in the controlConfig decorator. You have used the controlConfig decorator with the specified rows property and the Description field with the PXFieldOptions.Multiline option to define a multiline text box with two text lines. For details, see Text Box: Multiline Text Box. 


<!-- PAGE_BREAK -->
 Defining a Data Entry Form | 89 

#### Step 4: Defining the View Classes for Tables in TypeScript 

 In the TypeScript file of the form, you need to define view classes for the views that are bound to tables on the Repair Items and Labor tabs of the Repair Work Orders (RS301000) form: RSSVWorkOrderItem and RSSVWorkOrderLabor. Proceed as follows: 

1. In the RS301000.ts file, add gridConfig and GridPreset to the list of import directives. 

2. Define the RSSVWorkOrderItem view class as follows. 

 export class RSSVWorkOrderItem extends PXView { RepairItemType: PXFieldState; InventoryID: PXFieldState<PXFieldOptions.CommitChanges>; InventoryID_description: PXFieldState; BasePrice: PXFieldState; } 

 For the InventoryID field, changes should be committed to the server; therefore, you have used the PXFieldOptions.CommitChanges option for the property type. 

3. Add the gridConfig decorator to the RSSVWorkOrderItem view class, as the following code shows.     In the gridConfig decorator, you must specify the preset property. Because the table is used on one of     the tabs of the data entry form, you use the _Details_ preset. For information about presets, see _Form Layout:_     _Grid Presets_. 

 @gridConfig({ preset: GridPreset.Details }) export class RSSVWorkOrderItem extends PXView { RepairItemType: PXFieldState; InventoryID: PXFieldState<PXFieldOptions.CommitChanges>; InventoryID_description: PXFieldState; BasePrice: PXFieldState; } 

4. Define the RSSVWorkOrderLabor view class similarly to the way you defined the     RSSVWorkOrderItem view class. The resulting class should be defined as follows. 

 @gridConfig({ preset: GridPreset.Details }) export class RSSVWorkOrderLabor extends PXView { InventoryID: PXFieldState; InventoryID_description: PXFieldState; DefaultPrice: PXFieldState; Quantity: PXFieldState<PXFieldOptions.CommitChanges>; ExtPrice: PXFieldState; } 

5. Save your changes. 

#### Step 5: Defining the Layout in HTML 

 The Repair Work Orders (RS301000) form contains the Summary area and two tabs below it. The Summary area has three columns, which you can arrange by using the 7-10-7 template. Each tab contains a table. To define the layout of the form, do the following: 


<!-- PAGE_BREAK -->
 Defining a Data Entry Form | 90 

1. Define the Summary area of the form by adding the qp-template tag with the 7-10-7 template.     For each slot, define a fieldset, as shown in the following code. For the third fieldset, specify     class="highlights-section", which makes the fieldset have blue background. 

 <template> <qp-template id="form-Order" name="7-10-7" class="equal-height" qp-collapsible > <qp-fieldset id="fsColumnA-Order" slot="A" view.bind="WorkOrders"> </qp-fieldset> <qp-fieldset id="fsColumnB-Order" slot="B" view.bind="WorkOrders"> </qp-fieldset> <qp-fieldset id="fsColumnC-Order" slot="C" view.bind="WorkOrders" class="highlights-section"> </qp-fieldset> </qp-template> </template> 

 Each fieldset has been bound to the same WorkOrders property. You have defined the whole Summary area to be collapsible by using the qp-collapsible attribute. For more information, see Collapsible Area: Configuration. For details about the qp-template tag and slots, see Form Layout: Predefined Templates. 

2. In each fieldset, add the field tags for the fields that should be displayed in corresponding fieldset, as the     following code shows. 

 <qp-fieldset id="fsColumnA-Order" slot="A" view.bind="WorkOrders"> <field name="OrderNbr"></field> <field name="Status"></field> <field name="DateCreated"></field> <field name="DateCompleted"></field> <field name="Priority"></field> </qp-fieldset> <qp-fieldset id="fsColumnB-Order" slot="B" view.bind="WorkOrders"> <field name="CustomerID"></field> <field name="ServiceID"></field> <field name="DeviceID"></field> <field name="Assignee"></field> <field name="Description"></field> </qp-fieldset> <qp-fieldset id="fsColumnC-Order" slot="C" view.bind="WorkOrders" class="highlights-section"> <field name="OrderTotal"></field> <field name="InvoiceNbr"></field> </qp-fieldset> 

3. Define the **Repair Items** tab: 

 a. Aer the qp-template tag, add the qp-tabbar tag with a nested qp-tab tag, as the following code shows. In the qp-tab tab, specify the name of the tab in the caption attribute. 

 <qp-tabbar id="tabbar"> <qp-tab id="tab-RepairItems" caption="Repair Items"> </qp-tab> 


<!-- PAGE_BREAK -->
 Defining a Data Entry Form | 91 

 </qp-tabbar> 

 b. Define the table that should be displayed on the Repair Items tab: In the qp-tab tag, add the qp-grid tag, which is bound to the RepairItems view, as the following code shows. 

 <qp-tabbar id="tabbar"> <qp-tab id="tab-RepairItems" caption="Repair Items"> <qp-grid id="grid-RepairItems" view.bind="RepairItems"></qp-grid> </qp-tab> </qp-tabbar> 

4. Define the **Labor** tab similarly to the way you defined the **Repair Items** tab: In the qp-tabbar tag, add the     qp-tab tag aer the qp-tab tag that was defined in the previous instruction. In the new qp-tab tag, add     the qp-grid tag, and bind it to the Labor view, as the following code shows. 

 <qp-tab id="tab-Labor" caption="Labor"> <qp-grid id="grid-Labor" view.bind="Labor"></qp-grid> </qp-tab> 

5. Save your changes. 

#### Step 6: Building and Viewing the Form 

 To build the source files for the Repair Work Orders (RS301000) form and view its Modern UI version, do the following: 

1. Run the following command in the FrontendSources\screen folder of your instance. 

 npm run build-dev ----env customFolder=development screenIds=RS301000 

2. Aer the source files have been built successfully, launch your Acumatica ERP instance, and open the Repair     Work Orders form for the _000001_ work order. 

3. On the form title bar, click **Tools > Switch to Modern UI**. The Modern UI version of the Repair Work Orders     form is displayed. The form should look similar to the form shown in the screenshot in the _Story_ section of     this activity. 

 If you see multiple actions of the form toolbar and no More menu aer you switch to the Modern UI, open the Apply Updates (SM203510) form, and in the More menu, click Reset Caches. 

4. Click the link in the **Customer ID** box and make sure the _Customers_ (AR303000) form opens with the     _C000000001_ record displayed. Close the _Customers_ form. 

5. On the Repair Work Orders form, make sure the **Description** box is multiline. 

6. On the form toolbar, click **Remove Hold**. Notice that the status of the repair work order has changed to     _Ready for Assignment_. 


<!-- PAGE_BREAK -->
 Defining a Processing Form | 92 

## Defining a Processing Form 

 This part provides instructions on configuring a processing form and recommendations on organizing the layout of the form. 

### Processing Form: General Information 

 On a processing form, a user can perform an operation on multiple selected records at once. 

#### Learning Objectives 

 In this chapter, you'll learn how to organize the layout of the processing form. 

#### Applicable Scenarios 

 You implement a processing form if you need to provide the ability for the user to invoke an operation on multiple records at once. 

#### Processing Forms 

 Processing forms look similar to inquiry forms. A processing form usually has the following components: 

- A table (which is also referred to as a _grid_ ) that displays the list of records retrieved by the processing data     view. The table includes: 

- A column with an unlabeled check box, which gives the user the ability to select one record or multiple     records in the grid for processing. 

- Additional columns that contain key settings of each listed record, including its ID or number. 

- Optional: A redirection button or link that can be clicked to open the data entry form for any selected     record. 

- Optional: Table filters (also known as quick filters) that are displayed above the table. 

- A form toolbar that includes the **Process** , **Process All** , and **Cancel** buttons. 

- Optional: An area that provides selection criteria (for narrowing the records that are listed and may be     processed) or configuration settings—or both—for the processing method. The screenshot below shows an example of a processing form with a Selection area and a grid. 


<!-- PAGE_BREAK -->
 Defining a Processing Form | 93 

 Figure: A processing form 

#### Naming Conventions for Processing Forms 

 Processing forms have IDs that start with a two-letter abbreviation (indicating the functional area of the form) followed by 50 (indicating a processing form), such as RS501000. 

 The names of the graphs that work with processing forms have the Process suffix. For instance, RSSVAssignProcess will be the name of the graph for the Assign Work Orders (RS501000) form. 

 For more details about these naming conventions, see Form and Report Numbering and Graph Naming. 

#### Definition of the Processing Graph and Data View 

 To configure the graph that works with the processing form, you do the following: 

- You define the data view for the processing form.     To do this, you use the SelectFrom<Table>.ProcessingView class. This class is derived from the     _PXProcessingBase<Table>_ class, which is a base class for the data views of processing forms. You     can also use one of the types that use the traditional BQL style of data queries, such as PXProcessing or     PXProcessingJoin 

 To ensure the history of a processing operation is saved correctly, the main DAC of the processing view must contain the NoteID field. This field must have the PXNote attribute declared on it. 

- You add the Cancel action to the processing graph.     You do this by using the PXCancel class. If the processing form does not have a filter, you use the main DAC     of the processing data view as the type parameter, as shown in the following code. 

 // Definition of the Cancel button for processing without filtering public class SalesOrderProcess : PXGraph<SalesOrderProcess> { public SelectFrom<SalesOrder>.ProcessingView SalesOrders; // Main DAC of the processing data view public PXCancel< SalesOrder > Cancel; } 

- Optional: You replace the names of the default buttons in the graph constructor. 


<!-- PAGE_BREAK -->
 Defining a Processing Form | 94 

 By default, any form that has a data view of a type derived from PXProcessingBase<Table> has the Process and Process All buttons on the form toolbar. To override the button captions, you use the SetProcessCaption() and SetProcessAllCaption() methods, as the following code shows. 

 public RSSVAssignProcess() { WorkOrders.SetProcessCaption("Assign"); WorkOrders.SetProcessAllCaption("Assign All"); } 

 You also need to specify the processing action. For details, see Processing Operations: General Information. 

#### Selected Data Field and Column 

 You must add the unbound Selected data field of the Boolean type to the DAC that provides the records to process for the processing form and then add the column for this field to the form. If a user doesn’t want to process all listed records, the user will select the check box in this column for each record to be processed. You define the Selected data field as unbound by using the PXBool type attribute. (Unlike the PXDBBool attribute, the PXBool attribute does not have DB in its name. DB indicates a bound data type.) 

 Selected is the default name for the data field for this check box; you can define the data field with any name and override the default Selected name in the graph constructor with the SetSelected() method of the PXProcessing class. 

 You make all columns in the grid (except for the column that corresponds to the Selected field) unavailable for editing by specifying the Processing preset for the grid. For the Selected field, you set the allowCheckAll property to true. This lets users select all records on the current page of the table for processing by selecting the check box in the column header. 

 Related Links 

- _Form Types_ 

- _Form and Report Numbering_ 

### Processing Form: UI Guidelines 

 In this topic, you can learn the UI guidelines for the processing forms. 

#### Template, Label Sizes, and Other Layout Settings 

 By default, you should use the following guidelines while designing a processing form: 

- For the Selection area, you use the 17-17-14 or 17-14-17 template. For more details about templates,     see _Form Layout: Predefined Templates_. 

- For the Selection area, you use the default label sizes. 

- For the table area, you use the Processing preset. For details about presets, see _Form Layout: Grid_     _Presets_. 

- No **Activities** , **Files** , and **Notes** buttons in the form title bar should be displayed. 

- No **Files** and **Notes** buttons in the table should be displayed. 

 For particular forms, the Notes and Files buttons can be required. For example, on the Process Export Scenarios (SM207035) form, this is the only way a user can download an exported file. 


<!-- PAGE_BREAK -->
 Defining a Processing Form | 95 

- Sections in the Selection area can have captions if the captions make sense. 

#### Recommendations for Organizing the Layout 

 The following table shows recommendations for organizing the layout of a processing form. 

 Correct Incorrect 

 Put all commands on a single toolbar. Do not separate commands into two toolbars. 

 Use a single field tag for an element with the Date Range label and two date and time controls for the selection of the start date and the end date. 

 This approach applies only to processing forms. 

 Do not use two separate fields in a fieldset for the Start Date and End Date boxes on processing forms. 

#### UX and Functional Guidelines 

 The form design should be tailored for screens with a resolution of 1280 x 720. 

 The number of a processing form should start with 50. For details, see Form and Report Numbering. 

### Processing Form: A Form with Only a Grid 

 The following topic describes how to configure a processing form that contains only a table and does not contain the Selection area or table filters (also called quick filters). (In the Classic UI, these forms were based on the GridView template.) The following screenshot shows an example of a form with this layout. 


<!-- PAGE_BREAK -->
 Defining a Processing Form | 96 

 Figure: A processing form without the Selection area or table filters 

#### View Definition in TypeScript 

 For a processing form with only a table (and no Selection area or table filters), you need to use the following in the TypeScript file of the form: 

- The createCollection method to define a property for the data view to display a table. 

- A class that extends PXView with the full list of fields for the table. 

- The Processing preset for the table. For details about presets, see _Form Layout: Grid Presets_. The following code shows an example of this implementation of a processing form. 

 import { PXView, PXFieldState, commitChanges, graphInfo, PXScreen, createCollection } from "client-controls"; 

 @graphInfo({ graphType: 'PX.Objects.CR.CRActivitySetupMaint', primaryView: 'ActivityTypes' }) export class CR102000 extends PXScreen { ActivityTypes = createCollection(ActivityTypes); } 

 @gridConfig({ preset: GridPreset.Processing, quickFilterFields: ['ClassID', 'Type', 'Description'] }) export class ActivityTypes extends PXView { ClassID: PXFieldState Type: PXFieldState; Description: PXFieldState; Active: PXFieldState; IsDefault: PXFieldState; 


<!-- PAGE_BREAK -->
 Defining a Processing Form | 97 

 Application: PXFieldState<PXFieldOptions.CommitChanges>; ImageUrl: PXFieldState; PrivateByDefault: PXFieldState<PXFieldOptions.CommitChanges>; RequireTimeByDefault: PXFieldState<PXFieldOptions.CommitChanges>; Incoming: PXFieldState; Outgoing: PXFieldState; } 

#### Layout in HTML 

 For a processing form with only a table (and no Selection area or table filters), you define the layout by adding one qp-grid control to the HTML code of the form, as shown in the following example. 

 <template> <qp-grid id="grid" view.bind="ActivityTypes"> </qp-grid> </template> 

### Processing Form: To Create a Simple Processing Form 

 The following activity will walk you through the process of creating the UI of a simple processing form that doesn’t have any filtering parameters defined. 

#### Story 

 The Smart Fix company needs to have a custom Acumatica ERP form that the managers of the company will use to assign repair work orders to particular employees. For this purpose, you’ll create the Assign Work Orders (RS501000) processing form. 

 This form will use the RSSVWorkOrder custom table, whose data will be displayed in the table on the form. 

#### Process Overview 

 In this activity, you'll create a form template, add the unbound Selected data field to the DAC that will be used for the table on the form, implement the screen class and view class for the form, and define the layout of the form in the HTML file of the form. 

#### System Preparation 

 Before you begin creating a processing form, prepare the Acumatica ERP instance as described in the following prerequisite activity: Test Instance for Customization: To Deploy an Instance with a Custom Form that Implements a Workflow. 

#### Step 1: Creating the Form (Self-Guided Exercise) 

 In this step, you'll create the Assign Work Orders (RS501000) form on your own. Although this is a self-guided exercise, this step provides details and suggestions you can use as you create the form. The creation of a form is described in detail in the T200 Maintenance Forms training course. 

 If you are using the Customization Project Editor to complete the self-guided exercise, you can perform the following general instructions: 

1. In the _PhoneRepairShop_ customization project, create the form and graph as follows: 


<!-- PAGE_BREAK -->
 Defining a Processing Form | 98 

 a. On the toolbar of the Screens page of the Customization Project Editor, click Create New Screen. b. In the Create New Screen dialog box, which opens, specify the following values: 

- **Screen ID** : RS.50.10.00 

- **Graph Name** : RSSVAssignProcess 

- **Graph Namespace** : PhoneRepairShop 

- **Page Title** : Assign Work Orders 

- **Template** : _Grid (GridView)_ 

- **Create Modern UI Files** : Selected c. Move the generated RSSVAssignProcess graph to the extension library. 

2. Make sure that the RSSVWorkOrder DAC is defined in the PhoneRepairShop_Code Visual Studio     project. 

3. Build the project in Visual Studio. 

4. Update the customization project with a new version of PhoneRepairShop_Code.dll, and publish the     customization project. 

5. Include a link to the Assign Work Orders form in the **Processes** category of the **Phone Repair Shop**     workspace. 

6. In the Customization Project Editor, do the following: 

- Verify that the access rights for the Assign Work Orders form were automatically added on the _Access_     _Rights_ page 

- Update the _SiteMapNode_ item for the Assign Work Orders form 

#### Step 2: Adding the Unbound Selected Data Field 

 Do the following: 

1. In the RSSVWorkOrder DAC, add the unbound Selected data field, as shown in the following code. 

 #region Selected public abstract class selected : PX.Data.BQL.BqlBool.Field<selected> { } [PXBool] [PXUIField(DisplayName = "Selected")] public virtual bool? Selected { get; set; } #endregion 

2. Rebuild the project. 

#### Step 3: Defining the Data View 

 In this step, you'll define the data view in the RSSVAssignProcess graph, which works with the Assign Work Orders (RS501000) form. Do the following: 

1. In the RSSVAssignProcess.cs file, add the following using directive. 

 using PX.Data.BQL.Fluent; 

2. In the RSSVAssignProcess graph, use the following code to define the WorkOrders data view, which     provides the data records to be processed on the form. 

 public SelectFrom<RSSVWorkOrder>. // Inside the Where condition, use a fluent BQL statement // that selects only the repair work orders with 


<!-- PAGE_BREAK -->
 Defining a Processing Form | 99 

 // the Ready for Assignment status. Where<RSSVWorkOrder.status. IsEqual<RSSVWorkOrderEntry_Workflow.States.readyForAssignment>>. ProcessingView WorkOrders = null!; 

3. Rebuild the project. 

#### Step 4: Defining the Buttons for the Form Toolbar 

 In this step, you'll define the toolbar buttons for the form. Do the following: 

1. In the RSSVAssignProcess graph, define the Cancel action for the toolbar (shown below). 

 public PXCancel<RSSVWorkOrder> Cancel = null!; 

 Remove the existing Save and Cancel actions that were auto-generated when you created the graph in Step 1. 

2. In the RSSVAssignProcess graph, change the default names of the processing buttons in the     constructor of the graph as follows. 

 public RSSVAssignProcess() { WorkOrders.SetProcessCaption("Assign"); WorkOrders.SetProcessAllCaption("Assign All"); } 

3. Rebuild the project. 

#### Step 5: Defining the Screen Class of the Form 

 In the RS501000.ts file, define the view of the Assign Work Orders form by adding a screen class and a property for the data view of the form. Do the following: 

1. Open the RS501000.ts file. 

 You can open a TypeScript file of a form from one of the following locations: 

- On the _Modern UI Files_ page of the Customization Project Editor 

- In the FrontendSources\screen\src\development\screens folder of     your Acumatica ERP instance. (The files appear in the file system if you click **Export to**     **Development Folder** on the toolbar of the _Modern UI Files_ page.) 

2. In the RS501000.ts file, make sure the following import directives are included. 

 import { PXScreen, createCollection, graphInfo, viewInfo, } from "client-controls"; 

3. In the RS501000 screen class, modify the graphInfo decorator, and specify the graph and the primary     view of the form in the decorator properties, as the following code shows. 

 @graphInfo({ graphType: "PhoneRepairShop.RSSVAssignProcess", primaryView: "WorkOrders" }) 


<!-- PAGE_BREAK -->
 Defining a Processing Form | 100 

 export class RS501000 extends PXScreen {} 

4. Define the property for the data view of the form, as the following code shows. For the data view that’s used     to display a table, initialize the property with the createCollection method. The method takes as the     input parameter an instance of the view class, which you'll define in the next step. 

 The names of the data view properties should be the same as those in the graph. For example, if the WorkOrders view is declared in the RSSVAssignProcess graph, the property with the same name should be declared in the RS501000 screen class. 

 export class RS501000 extends PXScreen { @viewInfo({containerName: "Work Orders to Assign"}) WorkOrders = createCollection(RSSVWorkOrder); } 

 In the viewInfo decorator, you’ve specified the name of the container for the table. 

#### Step 6: Defining the View Class of the Form 

 In the TypeScript file of the form, define the RSSVWorkOrder view class for the table on the Assign Work Orders form. Proceed as follows: 

1. In the RS501000.ts file, add gridConfig, columnConfig, and GridPreset to the list of import     directives. 

2. Define the RSSVWorkOrder view class as follows. 

 export class RSSVWorkOrder extends PXView { @columnConfig({ allowCheckAll: true }) Selected: PXFieldState; 

 @columnConfig({ hideViewLink: true }) OrderNbr: PXFieldState; Description: PXFieldState; 

 @columnConfig({ hideViewLink: true }) ServiceID: PXFieldState; 

 @columnConfig({ hideViewLink: true }) DeviceID: PXFieldState; 

 Priority: PXFieldState; 

 @columnConfig({ hideViewLink: true}) Assignee: PXFieldState; } 

 For the Selected field, in the columnConfig decorator, you’ve specified that a user can select all records on the page by clicking the check box in the column header. For the OrderNbr, ServiceID, DeviceID, and Assignee fields in the columnConfig decorator, you have specified that the selector link should not be displayed. 

3. Add the gridConfig decorator to the RSSVWorkOrder view class, as the following code shows. In     the gridConfig decorator, you must specify the preset property. Because the table is used on the     processing form, you’ll use the _Processing_ preset. For details about presets, see _Form Layout: Grid Presets_. 

 @gridConfig({ 


<!-- PAGE_BREAK -->
 Defining a Processing Form | 101 

 preset: GridPreset.Processing, autoAdjustColumns: true }) export class RSSVWorkOrder extends PXView { ... } 

 In the gridConfig decorator, you’ve also specified that the table width should be adjusted to the screen width. Otherwise, some of the columns could be too narrow to display values. 

4. Save your changes. 

#### Step 7: Creating the Layout of the Form 

 In this step, you’ll define the layout of the Assign Work Orders (RS501000) processing form. 

1. Open the RS501000.html file. 

 You can open an HTML file of a form from one of the following locations: 

- On the _Modern UI Files_ page of the Customization Project Editor 

- In the FrontendSources\screen\src\development\screens folder of     your Acumatica ERP instance. (The files appear in the file system if you click **Export to**     **Development Folder** on the toolbar of the _Modern UI Files_ page.) 

2. To define the table showing repair work orders, do the following in the RS501000.html file:     a. Within a template tag, modify the qp-grid tag and bind it to the WorkOrders view, as the following        code shows. 

 <qp-grid id="grid-WorkOrders" view.bind="WorkOrders"> </qp-grid> 

 b. Save your changes. 

3. If you used the development folder to modify the TypeScript and HTML files in the preceding Steps 5 to 7,     you need to update these files in the customization project. You do this by using the **Detect Modified Files**     button on the _Modern UI Files_ page. 

4. Publish the customization project. 

5. Optional: In the RS501000.ts file, remove the MasterView =     createSingle(MasterViewClass); and DetailsView =     createCollection(DetailsViewClass); properties from the screen class. Also, remove the     MasterViewClass and DetailsViewClass classes. These properties and classes are part of the     boilerplate code that was generated by the system.     Publish the customization project again. 

6. Open the Assign Work Orders (RS501000) form and review its layout. 

 You’ve implemented the UI of the processing form. To implement its functionality, follow the instructions in Processing Operations: To Implement a Processing Operation by Using a Delegate or Processing Operations: To Implement a Processing Operation by Using the Workflow. 

### Processing Form: A Form with a Selection Area and a Grid 

 The following topic describes how to configure a processing form that contains the Selection area and a table. (In the Classic UI, these forms were based on the FormDetail template.) 


<!-- PAGE_BREAK -->
 Defining a Processing Form | 102 

#### Examples of Form Layout 

 The following screenshot shows an example of a form that contains the Selection area and a table but does not contain table filters (also called quick filters). 

 Figure: A processing form with the Selection area 

 An example of a processing form that contains the Selection area, table filters (also called quick filters), and a table is shown in the following screenshot. The table filters are stored in the system data and are displayed for the table whose data view has the PXFilterable attribute. For an example of a form with stored table filters, see Assign Opportunities (CR503110) form. 

 Figure: A processing form with the Selection area and table filters 

 An example of a form that contains a single element in the Selection area and a table is shown in the following screenshot. 


<!-- PAGE_BREAK -->
 Defining a Processing Form | 103 

 Figure: A processing form with one element in the Selection area and a table 

#### View Definition in TypeScript 

 For a processing form with the Selection area and a table (but no table filters), you need to do the following in the TypeScript file of the form: 

- For the view that displays elements of the Selection area, you use the createSingle method. 

- For the view that displays the table, you use the createCollection method. 

- For each view, you use a class that extends PXView with the full list of fields to be displayed. 

- You use the _gridConfig_ decorator for the table and the _columnConfig_ decorator for the columns. For     details, see _Table (Grid): Configuration of the Table and Its Columns_. 

- You use the _PXFieldOptions.CommitChanges_ option for a field that corresponds to a filtering     parameter in TypeScript to enable callback. 

- A preset for the table: Processing. For details about presets, see _Form Layout: Grid Presets_. The following code shows an example of this implementation of a processing form. 

 import { PXScreen, createSingle, createCollection, graphInfo, PXView, PXFieldState, gridConfig, columnConfig, linkCommand, PXActionState, PXFieldOptions } from 'client-controls'; 

 @gridConfig({ preset: GridPreset.Processing }) export class FABookBalance extends PXView { 

 @columnConfig({ allowCheckAll: true }) Selected: PXFieldState; 

 @columnConfig({ hideViewLink: true }) FixedAsset__BranchID: PXFieldState; 


<!-- PAGE_BREAK -->
 Defining a Processing Form | 104 

 @linkCommand('ViewAsset') @columnConfig({ allowUpdate: false }) AssetID: PXFieldState; 

 FixedAsset__Description: PXFieldState; 

 @linkCommand('ViewClass') @columnConfig({ allowUpdate: false }) ClassID: PXFieldState; 

 @columnConfig({ hideViewLink: true }) FixedAsset__ParentAssetID: PXFieldState; 

 @linkCommand('ViewBook') @columnConfig({ allowUpdate: false }) BookID: PXFieldState; 

 @columnConfig({ allowUpdate: false }) CurrDeprPeriod: PXFieldState; 

 @columnConfig({ allowNull: false }) YtdDeprBase: PXFieldState; 

 @columnConfig({ allowUpdate: false }) FixedAsset__BaseCuryID: PXFieldState; 

 FADetails__ReceiptDate: PXFieldState; 

 FixedAsset__UsefulLife: PXFieldState; 

 @columnConfig({ hideViewLink: true }) FixedAsset__FAAccountID: PXFieldState; 

 @columnConfig({ hideViewLink: true }) FixedAsset__FASubID: PXFieldState; 

 FADetails__TagNbr: PXFieldState; 

@columnConfig({ hideViewLink: true }) Account__AccountClassID: PXFieldState; } 

export class Filter extends PXView { OrgBAccountID: PXFieldState<PXFieldOptions.CommitChanges>; BookID: PXFieldState<PXFieldOptions.CommitChanges>; PeriodID: PXFieldState<PXFieldOptions.CommitChanges>; Action: PXFieldState<PXFieldOptions.CommitChanges>; ClassID: PXFieldState<PXFieldOptions.CommitChanges>; ParentAssetID: PXFieldState<PXFieldOptions.CommitChanges>; } 

@graphInfo({ graphType: 'PX.Objects.FA.CalcDeprProcess', primaryView: 'Filter' }) export class FA502000 extends PXScreen { 

 ViewBook: PXActionState; ViewAsset: PXActionState; 


<!-- PAGE_BREAK -->
 Defining a Processing Form | 105 

 ViewClass: PXActionState; 

 Filter = createSingle(Filter); 

 Balances = createCollection(FABookBalance); } 

#### Layout in HTML 

 You define the layout for a processing form with the Selection area and a table (but no table filters) by adding the following elements to the HTML code of the form: 

- A qp-template element to display the elements of the Selection area. For details on using templates, see     _Form Layout: Predefined Templates_. 

- A qp-grid element with the list of records to process. The following code shows an example of a processing form with this layout. 

 <template> <qp-template name="17-17-14" id="formFilter" wg-container="Filter_form"> <qp-fieldset slot="A" id="columnFirst" view.bind="Filter"> <field name="OrgBAccountID" control-type="qp-branch-selector"></field> <field name="BookID"></field> <field name="PeriodID"></field> <field name="Action"></field> </qp-fieldset> <qp-fieldset slot="B" id="columnSecond" view.bind="Filter"> <field name="ClassID"></field> <field name="ParentAssetID"></field> </qp-fieldset> </qp-template> <qp-grid id="grid" view.bind="Balances"> </qp-grid> </template> 

### Processing Form: To Create the UI of a Processing Form 

 The following activity will walk you through the process of developing the UI of a processing form. 

#### Story 

 Suppose that you need to develop the Assign Work Orders (RS501000) form in the Modern UI. The form will have the Selection area and a table, as shown in the following screenshot. 


<!-- PAGE_BREAK -->
 Defining a Processing Form | 106 

 Figure: The Assign Work Orders form 

 You have already implemented the backend for the form, which includes the RSSVAssignProcess graph and the RSSVWorkOrder and RSSVWorkOrderToAssignFilter data access classes (DACs). You have also already added the corresponding tables to the application database. 

#### Process Overview 

 You will create TypeScript and HTML files for the Assign Work Orders (RS501000) form. In the TypeScript file, you will define the screen class and view classes for the form. You will also define the following views: 

- Filter, which is bound to the Selection area of the form 

- WorkOrders, which is bound to the table of the form In the HTML file, you will define the layout of the form. 

#### System Preparation 

 Before you begin creating the UI of the Assign Work Orders (RS501000) form, do the following: 

1. Complete the following prerequisite activity: _Modern UI Development: To Deploy an Instance with Custom_     _Forms and the Modern UI_. Make sure the prepared instance contains the following items: 

- The RSSVAssignProcess graph in the customization code 

- The RSSVWorkOrder and RSSVWorkOrderToAssignFilter DACs in the customization code 

- The RSSVWorkOrder database table 

2. To take the prerequisite actions and build the source code for the first time, perform the following     prerequisite activity: _Modern UI Development: To Build the Source Code of All Acumatica ERP Forms for_     _Modern UI Development_. 

#### Step 1: Creating Files for the Form 

 To implement the Modern UI version of the Assign Work Orders (RS501000) form, you need to create the TypeScript and HTML files for the form. Create the files as follows: 

1. In the FrontendSources\screen\src\development\screens folder of your Acumatica ERP     instance, create a folder with the RS name if one has not been created yet. You will store the UI sources for     all forms with the _RS_ prefix in this folder. 

2. In the FrontendSources\screen\src\development\screens\RS folder, create a folder with the     RS501000 name if it has not been created yet. 

3. In the FrontendSources\screen\src\development\screens\RS\RS501000 folder, create the     following files: 


<!-- PAGE_BREAK -->
 Defining a Processing Form | 107 

- RS501000.ts 

- RS501000.html 

#### Step 2: Defining the Screen Class in TypeScript 

 To define the view of the Assign Work Orders (RS501000) form in the TypeScript file of the form, you define a screen class and a property for the data view of the form. Do the following: 

1. In the RS501000.ts file, add the import directives as follows. 

 import { PXScreen, createCollection, graphInfo, viewInfo, createSingle, } from "client-controls"; 

2. Define the screen class for the form, as the following code shows. The class name is the ID of the form. 

 export class RS501000 extends PXScreen {} 

3. For the screen class, add the graphInfo decorator, and specify the graph and the primary view of the form     in the decorator properties, as the following code shows. 

 @graphInfo({ graphType: "PhoneRepairShop.RSSVAssignProcess", primaryView: "Filter" }) export class RS501000 extends PXScreen {} 

4. Define the property for the data views of the form, as the following code shows. To initialize the data view of     the Selection area of the form, you should use the createSingle method. For the data view that is used     to display a table, you need to initialize the property with the createCollection method. The method     takes as the input parameter an instance of the view class, which you will define in the next step. 

 The names of the data view properties should be the same as those in the graph. For example, if the WorkOrders view is declared in the RSSVAssignProcess graph, the property with the same name should be declared in the RS501000 screen class. 

 export class RS501000 extends PXScreen { @viewInfo({containerName: "Filter Parameters"}) Filter = createSingle(RSSVWorkOrderToAssignFilter); 

 @viewInfo({containerName: "Work Orders to Assign"}) WorkOrders = createCollection(RSSVWorkOrder); } 

 In the viewInfo decorators, you have specified the name of the container for the Selection area and the table. 

#### Step 3: Defining the View Class for the Selection Area in TypeScript 

 In the TypeScript file of the form, you need to define a view class for the primary data view of the Assign Work Orders (RS501000) form, which is Filter. 

 Proceed as follows: 

1. In the RS501000.ts file, update the list of import directives, as the following code shows. 


<!-- PAGE_BREAK -->
 Defining a Processing Form | 108 

 import { PXScreen, createCollection, graphInfo, viewInfo, createSingle, PXView, PXFieldOptions, PXFieldState, } from "client-controls"; 

2. Define the RSSVWorkOrderToAssignFilter class as follows. 

 export class RSSVWorkOrderToAssignFilter extends PXView {} 

3. In the view class, specify the properties for all data fields of the data view that should be displayed in the UI,     as shown below. You use the name of the data field as the property name. 

 export class RSSVWorkOrderToAssignFilter extends PXView { Priority: PXFieldState<PXFieldOptions.CommitChanges>; TimeWithoutAction: PXFieldState<PXFieldOptions.CommitChanges>; ServiceID: PXFieldState<PXFieldOptions.CommitChanges>; } 

 All fields of the view should be defined so that changes are committed to the server; therefore, you have used the PXFieldOptions.CommitChanges option for the property type. 

#### Step 4: Defining the View Class for the Table in TypeScript 

 In the TypeScript file of the form, you need to define a view class for the table on the Assign Work Orders (RS501000) form, which is RSSVWorkOrder. Proceed as follows: 

1. In the RS501000.ts file, add gridConfig, columnConfig, and GridPreset to the list of import     directives. 

2. Define the RSSVWorkOrder view class as follows. 

 export class RSSVWorkOrder extends PXView { @columnConfig({ allowCheckAll: true }) Selected: PXFieldState; 

 @columnConfig({ hideViewLink: true }) OrderNbr: PXFieldState; Description: PXFieldState; 

 @columnConfig({ hideViewLink: true }) ServiceID: PXFieldState; 

 @columnConfig({ hideViewLink: true }) DeviceID: PXFieldState; 

 Priority: PXFieldState; 

 @columnConfig({ hideViewLink: true}) AssignTo: PXFieldState<PXFieldOptions.CommitChanges>; NbrOfAssignedOrders: PXFieldState; TimeWithoutAction: PXFieldState; } 

 For the Selected field, in the columnConfig decorator, you have specified that a user should be able to select all records on the page by clicking the check box in the column header. 


<!-- PAGE_BREAK -->
 Defining a Processing Form | 109 

 For the OrderNbr, ServiceID, DeviceID fields, and AssignTo fields, in the columnConfig decorator, you have specified that the selector link should not be displayed. For the AssignTo field, you have specified that changes in this field should be committed to the server. 

3. Add the gridConfig decorator to the RSSVWorkOrder view class, as the following code shows. In     the gridConfig decorator, you must specify the preset property. Because the table is used on the     processing form, you use the _Processing_ preset. For details about presets, see _Form Layout: Grid Presets_. 

 @gridConfig({ preset: GridPreset.Processing, autoAdjustColumns: true }) export class RSSVWorkOrder extends PXView { ... } 

 In the gridConfig decorator, you have also specified that the table width should be adjusted to the screen width. Otherwise, some of the columns may not be wide enough to display values. 

4. Save your changes. 

#### Step 5: Defining the Layout in HTML 

 The Assign Work Orders (RS501000) form contains the Selection area and a table below it. The Selection area has two columns, which you can arrange by using the 17-17-14 template, which is a recommended one for processing forms. To define the layout of the form, do the following: 

1. Define the Selection area of the form by adding the qp-template tag with the 17-17-14 template. For the     first two slots, define a fieldset, as shown in the following code. To leave the third slot empty, do not specify     any tags for it. 

 <template> <qp-template id="form-Filter" name="17-17-14" class="equal-height" > <qp-fieldset id="fsColumnA-Filter" slot="A" view.bind="Filter" class="label-size-xm" > </qp-fieldset> <qp-fieldset id="fsColumnB-Filter" slot="B" view.bind="Filter"> </qp-fieldset> </qp-template> </template> 

 Each fieldset has been bound to the same Filter view. For details about the qp-template tag and slots, see Form Layout: Predefined Templates. 

2. In each fieldset, add the field tags for the fields that should be displayed in the corresponding fieldset, as     the following code shows. 

 <qp-fieldset id="fsColumnA-Filter" slot="A" 


<!-- PAGE_BREAK -->
 Defining a Processing Form | 110 

 view.bind="Filter" class="label-size-xm" > <field name="Priority"></field> <field name="TimeWithoutAction"></field> </qp-fieldset> <qp-fieldset id="fsColumnB-Filter" slot="B" view.bind="Filter"> <field name="ServiceID"></field> </qp-fieldset> 

 In the first fieldset, you have also specified the width of the labels by using the label-size-xm class. For more details about CSS classes, see Form Layout: CSS Classes. 

3. Define the table that displays repair work orders: Aer the qp-template tag, add the qp-grid tag and     bind it to the WorkOrders view, as the following code shows. 

 <qp-grid id="grid-WorkOrders" view.bind="WorkOrders"> </qp-grid> 

4. Save your changes. 

#### Step 6: Building and Viewing the Form 

 To build the source files for the Assign Work Orders (RS501000) processing form and view its Modern UI version, do the following: 

1. Run the following command in the FrontendSources\screen folder of your instance. 

 npm run build-dev ----env customFOlder=development screenIds=RS501000 

2. Aer the source files have been built successfully, launch your Acumatica ERP instance, and open the Assign     Work Orders form. 

3. On the form title bar, click **Tools > Switch to Modern UI**. The Modern UI version of the Assign Work Orders     form is displayed. The form should look similar to the form shown in the screenshot in the _Story_ section of     this activity. 

4. In the **Priority** box, select _High_. Make sure that only repair work orders with the _High_ priority (if any) are     displayed in the table. 

5. Click **Cancel** on the form toolbar. 

6. On the form toolbar, click **Assign All**. Aer all repair work orders in the table have been processed, a report     opens with the result of processing. 

### Processing Form: Processing Dialog Box 

 When a user starts a processing operation on a processing form, such as the Release AR Documents (AR501000) form of Acumatica ERP, the Processing dialog box opens, which displays the status of the processing. In this topic, you can learn how to modify this dialog box. 

#### Adding a Button to the Processing Dialog Box 

 When a processing operation is started, all elements of the processing form become unavailable. If you need to make a button from the processing form available during processing, you have to add this button to the processing dialog box, as described in this topic. 


<!-- PAGE_BREAK -->
 Defining a Processing Form | 111 

 To add a button to the processing dialog box, for the action that corresponds to the button, you set the value of the VisibleOnProcessingResults property of PXButtonAttribute or its descendant to true in the graph, as shown in the following code example. 

 [PXUIField(DisplayName = Messages.ShowDocuments)] [PXButton(VisibleOnProcessingResults = true)] public virtual IEnumerable showDocuments(PXAdapter adapter) { ShowOpenDocuments(SelectedItems); return adapter.Get(); } 

#### Turning Off the Displaying of the Processing Dialog Box 

 You can turn off the displaying of the processing dialog box and instead display the progress and the result of the processing on the form toolbar. 

 To not display the processing dialog box on a processing form, you can do one of the following: 

- To not display the processing dialog box for a custom form (one that has been developed from the ground     up), you override the IsProcessing property of the graph that corresponds to the form, as shown in the     following code. 

 public override bool IsProcessing { get { return false; } set { } } 

- To not display the processing dialog box for a customized Acumatica ERP form, you configure the     IsProcessing property of the graph that corresponds to the form in a graph extension, as shown in the     following code. 

 public class AllocationProcess_Extension : PXGraphExtension<AllocationProcess> { public override void Initialize() { Base.IsProcessing = false; } } 

- To not display the processing dialog box for all processing forms, you add the     ProcessingProgressDialog key in the appSettings section of the web.config file of the     application set to _False_ , as shown in the following example. 

 <add key="ProcessingProgressDialog" value="false" /> 


<!-- PAGE_BREAK -->
 Defining an Inquiry Form | 112 

## Defining an Inquiry Form 

 In this part, you can learn how to define a simple inquiry form. 

### Inquiry Forms: General Information 

 On an inquiry form, you can view data narrowed by the selection criteria that you’ve specified. These forms are similar to reports but designed for the flexible analysis of data online rather than for printing. 

 You can create an inquiry form from scratch or based on an existing inquiry form that’s available out of the box with Acumatica ERP, such as the Account Summary (GL401000) form and the Account Details (GL404000) form. 

 Also, you can create an inquiry form in a customization project or directly in Acumatica ERP by using the Generic Inquiry (SM208000) form. For more information on generic inquiry forms, see Managing Generic Inquiries. 

#### Learning Objectives 

 In this chapter, you’ll learn how to do the following: 

- Create an inquiry form without any custom filtering parameters on the Selection area of the form 

- Define the DAC for the grid view of the inquiry form 

- Define the data view of the inquiry form 

#### Applicable Scenarios 

 You develop an inquiry form without filtering parameters in the following cases: 

- You want to be able to view records from a single entity or multiple entities in the same table on the form 

- You want to view data narrowed down by reusable filters without specifying any custom filtering parameters     on the Selection area of the form 

- You want to be able to flexibly analyze data online without having to print a report 

#### Conventions of Inquiry Forms 

 The IDs of inquiry forms follow this format: 

- A two-letter abbreviation indicating the functional area. For example, _RS_ indicates repair services. 

- _40_ , which is used system-wide for inquiry forms 

- Four additional numbers. For instance, _RS401000_ indicates an inquiry form in the repair services functional     area. The names of the graphs for inquiry forms have the _Inq_ suffix. 

 All inquiry forms have a table (grid), and some have a Selection area with elements for filtering the data. In some cases, you don’t need to give users the ability to specify any custom selection criteria, so you don’t need to define any custom filtering parameters. 

 Because users don’t edit any records on an inquiry form, you use the ReadOnly view type when defining the data view for the grid, which defines the selection of records in read-only mode. In the UI, Acumatica Framework automatically disables the editing of data records that were retrieved through a read-only data view. 


<!-- PAGE_BREAK -->
 Defining an Inquiry Form | 113 

#### DAC for the Grid View of an Inquiry Form 

 When defining the DAC for the grid view of an inquiry form, you should derive a new DAC from the data entry form's DAC (whose data is being displayed on the inquiry form) and extend the new class with additional DAC fields that are specific to the inquiry form. 

 For the DAC fields that aren’t specific to the inquiry form but are defined in the data entry form's DAC, you’ll add abstract classes with the new modifier in the derived DAC. This step is required because you’ll use the data fields of the derived class in BQL statements (for example, in the data view of the inquiry form and in attributes). If you don’t define the abstract classes for the original fields in the derived DAC, these fields will be referred to in the SQL statement that corresponds to the BQL query as the fields of the original DAC. Data inconsistency issues can result when the original and the derived DACs are used in the same BQL statement. 

#### UI of an Inquiry Form 

 For the UI of an inquiry form without filtering parameters, you should follow similar guidelines to those for a similar processing form in Processing Form: A Form with Only a Grid. The only difference is that you need to use the Inquiry preset for the table on the form. 

#### Reusable Filters on an Inquiry Form 

 You can create an inquiry form without any custom filtering parameters and give users the ability to define reusable filters for the form’s table. You enable these reusable filters in the graph code by adding the PXFilterable attribute to the data view that provides this table’s data. The attribute enables the Filter Settings button and the filtering area for the table. 

 In the filtering area, a user can define and save filters and then use them every time they open the form. Reusable filters are frequently used in the tables on inquiry and processing forms, so that users can customize these forms to show the data that’s most relevant to their needs and responsibilities. 

 For more information on reusable filters, see Saving of Filters for Future Use and To Filter the Data in a Table. For details about configuring custom filtering parameters on an inquiry form, see Filtering Parameters: General Information. 

### Inquiry Forms: To Set Up an Inquiry Form 

 This activity will walk you through the process of creating an inquiry form without any filtering parameters. 

#### Story 

 Suppose that you need to create an inquiry form in the PhoneRepairShop customization project that will display a table showing all repair work orders that have not yet been paid in full. Each row should show information about the invoices that have been created for these orders. 

#### Process Overview 

 In this activity, you will create the Open Payment Summary (RS401000) custom inquiry form and define and configure its components by performing the following steps: 

1. Creating the inquiry form 

2. Defining the DAC for the grid view of the inquiry form 

3. Calculating a value of a field in the RowSelecting event handler 


<!-- PAGE_BREAK -->
 Defining an Inquiry Form | 114 

4. Defining the data view for the inquiry form 

#### System Preparation 

 Make sure that you’ve configured your instance, as described in Test Instance for Customization: To Deploy an Instance with a Custom Form that Implements a Workflow. 

#### Step 1: Creating the Form—Self-Guided Exercise 

 In this self-guided exercise, you will create the Open Payment Summary (RS401000) form on your own. Although this is a self-guided exercise, you can use the details and suggestions in this topic as you create the form. (Form creation is described in detail in the T200 Maintenance Forms training course.) 

 If you’re using the Customization Project Editor to complete the self-guided exercise, you can perform the following instructions: 

1. On the _Customization Projects_ (SM204505) form, click the name of your customization project.     The _Screens_ page of the Customization Project Editor opens. 

2. On the page toolbar of the _Screens_ page, click **Create New Screen**. 

3. In the **Create New Screen** dialog box, which opens, specify the following settings: 

- **Screen ID** : RS.40.10.00 

- **Graph Name** : RSSVPaymentPlanInq 

- **Graph Namespace** : PhoneRepairShop 

- **Page Title** : Open Payment Summary 

- **Template** : _FormGrid (FormDetail)_ 

- **Create Modern UI Files** : Selected 

4. Move the generated RSSVPaymentPlanInq graph to the extension library. 

- Don’t make any standard system actions available. 

- Don’t define any data views. You’ll define the data view later in this activity. 

5. Make sure that the RSSVWorkOrder DAC is defined in the PhoneRepairShop_Code Visual Studio     project.     Don’t define any new DACs; you will define a new DAC in the next step. 

6. Build the project in Visual Studio. 

7. Update the customization project with a new version of PhoneRepairShop_Code.dll, and publish the     customization project. 

8. Add a link to the Open Payment Summary form to the _Inquiries_ category of the Phone Repair Shop     workspace, and make it available in the workspace’s quick menu. 

9. In the Customization Project Editor, update the _SiteMapNode_ item for the Open Payment Summary form. 

#### Step 2: Defining the DAC for the Grid View of the Form 

 The Open Payment Summary (RS401000) form displays information about repair work orders (including the details of the invoice created for each order). All fields on this form are unbound, and you don’t need to work with the fields on the Repair Work Orders (RS301000) form, which works with the RSSVWorkOrder DAC. 

 In this step, for the grid view of the Open Payment Summary form, you will derive the new RSSVWorkOrderToPay class from RSSVWorkOrder and extend the new class with additional DAC fields that are specific to the inquiry form. In the derived DAC, you’ll add the OrderNbr, InvoiceNbr, and Status abstract classes (which are defined in the base RSSVWorkOrder DAC) with the new modifier. You need to define 


<!-- PAGE_BREAK -->
 Defining an Inquiry Form | 115 

 new abstract classes because you’ll use the data fields of the derived class in BQL statements, such as the BQL statements in the data view of a processing form and in attributes. 

 To define the RSSVWorkOrderToPay DAC, do the following: 

1. In the Helper/Messages.cs file, add the RSSVWorkOrderToPay string to the Messages class, as     shown below. This message will be used in the _PXCacheName_ attribute for the new DAC. 

 public const string RSSVWorkOrderToPay = "Repair Work Order to Pay"; 

2. In the RSSVWorkOrder.cs file, declare the RSSVWorkOrderToPay DAC: Derive the     RSSVWorkOrderToPay class from RSSVWorkOrder, as shown below. 

 [PXCacheName(Messages.RSSVWorkOrderToPay)] public class RSSVWorkOrderToPay : RSSVWorkOrder { } 

3. In the RSSVWorkOrderToPay class, define the OrderNbr, InvoiceNbr, and Status abstract classes     with the new modifier, as shown below. 

 #region InvoiceNbr public new abstract class invoiceNbr : PX.Data.BQL.BqlString.Field<invoiceNbr> { } #endregion 

 #region Status public new abstract class status : PX.Data.BQL.BqlString.Field<status> { } #endregion 

 #region OrderNbr public new abstract class orderNbr : PX.Data.BQL.BqlString.Field<orderNbr> { } #endregion 

4. In the RSSVWorkOrderToPay class, define the PercentPaid field, as shown below. 

 #region PercentPaid [PXDecimal] [PXUIField(DisplayName = "Percent Paid")] public virtual Decimal? PercentPaid { get; set; } public abstract class percentPaid : PX.Data.BQL.BqlDecimal.Field<percentPaid> { } #endregion 

#### Step 3: Calculating the PercentPaid Field in RowSelecting 

 In the derived DAC, you’ve added the PercentPaid field. During the retrieval of each RSSVWorkOrder record, the value of the PercentPaid field will be calculated from the database as the percentage of the invoice amount that has been paid. Add this logic as follows: 


<!-- PAGE_BREAK -->
 Defining an Inquiry Form | 116 

1. In the RSSVPaymentPlanInq graph of the RSSVPaymentPlanInq.cs file, add the calculation of the     PercentPaid field value in the RowSelecting event, as shown in the following code. 

 protected virtual void _(Events.RowSelecting<RSSVWorkOrderToPay> e) { if (e.Row == null) return; if (e.Row.OrderTotal == 0) return; RSSVWorkOrderToPay order = e.Row; // Acuminator disable once PX1042 DatabaseQueriesInRowSelecting // [Justification] var invoices = SelectFrom<ARInvoice>. Where<ARInvoice.refNbr.IsEqual<@P.AsString>>. View.Select(this, order.InvoiceNbr); if (invoices.Count == 0) return; ARInvoice first = invoices[0]; e.Row.PercentPaid = (order.OrderTotal first.CuryDocBal) / order.OrderTotal * 100; } 

 In the event handler, you are selecting the invoice with the same number as the one specified in the repair work order; you’re then calculating the percentage. 

 In Visual Studio, Acuminator incorrectly shows an error that PXConnectionScope() should be used in a RowSelecting event handler. This known issue will be fixed in a future release of Acuminator. For now, you can suppress the PX1042 error in a comment, as shown in the code above. 

 You need to use an event handler instead of attributes because you can’t check for values of 0 by using attributes. 

 If you’ve generated the RSSVPaymentPlanInq graph from the Code Editor, you can remove the Save and Cancel actions defined in the graph. 

2. In the RSSVPaymentPlanInq.cs file, add the required using directives, which are shown in the     following code. 

 using PX.Data.BQL.Fluent; using PX.Data.BQL; using PX.Objects.AR; 

3. Build the project. 

#### Step 4: Defining the Data View of the Form 

 In this step, you will add the data view to the RSSVPaymentPlanInq graph, which works with the Open Payment Summary (RS401000) form. In this data view, which provides data for the grid (table) of the inquiry form, you’ll select only those repair work orders that are not yet paid and the invoices for these orders. 

 To define the data view of the form in the RSSVPaymentPlanInq graph, do the following: 

1. In the RSSVPaymentPlanInq.cs graph, add the following member. (Replace the automatically     generated DetailsView member if you’ve used the Customization Project Editor to create the graph.) 

 [PXFilterable] public 


<!-- PAGE_BREAK -->
 Defining an Inquiry Form | 117 

 SelectFrom<RSSVWorkOrderToPay>. InnerJoin<ARInvoice>.On<ARInvoice.refNbr. IsEqual<RSSVWorkOrderToPay.invoiceNbr>>. Where<RSSVWorkOrderToPay.status. IsNotEqual<RSSVWorkOrderEntry_Workflow.States.paid>>. View.ReadOnly DetailsView = null!; 

 The InnerJoin clause adds information from the invoice that was created for the repair work order so that you can display the invoice’s due date and balance on the page. The Where clause excludes all orders with the Paid status from the results of the query. Because users don’t need to edit any records on the inquiry form, you’ve used the ReadOnly view type, which defines the selection of records in read-only mode. In the UI, Acumatica Framework automatically disables the editing of data records that were retrieved through a read-only data view. 

2. If you’ve generated the RSSVPaymentPlanInq graph from the Code Editor, remove the MasterView     view and the MasterTable and DetailsTable classes. 

3. Build the project. 

 Now that you’ve defined the backend of the form, you can proceed with creating the form’s UI, as described in Inquiry Forms: To Create the UI of an Inquiry Form with Only a Grid. 

### Inquiry Forms: To Create the UI of an Inquiry Form with Only a Grid 

 This activity will walk you through the process of developing the UI of an inquiry form. 

#### Story 

 Suppose that you need to develop the Open Payment Summary (RS401000) form in the Modern UI. The form will have a table, as shown below. 

 Figure: The Open Payment Summary form 

 You’ve already implemented the backend for the form, which includes the RSSVPaymentPlanInq graph and the RSSVWorkOrderToPay data access class (DAC). 

#### Process Overview 

 You will modify the TypeScript and HTML files for the Open Payment Summary (RS401000) form as follows: 


<!-- PAGE_BREAK -->
 Defining an Inquiry Form | 118 

- In the TypeScript file, you’ll define the screen class and view class for the form. You will also define the     DetailsView view, which is bound to the RSSVWorkOrderToPay DAC. 

- In the HTML file, you’ll define the layout of the form. You will then test the form. 

#### System Preparation 

 Before you begin creating the UI of the Open Payment Summary (RS401000) form, complete the following prerequisite activities: 

1. _Test Instance for Customization: To Deploy an Instance with a Custom Form that Implements a Workflow_ 

2. _Inquiry Forms: To Set Up an Inquiry Form_ 

 To be able to create and pay invoices, you need to configure the deployed instance as follows: 

1. On the _Enable/Disable Features_ (CS100000) form, enable the _Advanced SO Invoices_ feature. 

2. On the _Item Classes_ (IN201000) form, select the _STOCKITEM_ class. On the **General** tab ( **General Settings**     section), select the **Allow Negative Quantity** check box. On the form toolbar, click **Save**. 

3. On the _Accounts Receivable Preferences_ (AR101000) form, on the **General** tab ( **Data Entry Settings** section),     clear the **Validate Document Totals on Entry** and **Require Payment Reference on Entry** boxes to simplify     the process of releasing an invoice. On the form toolbar, click **Save**. 

#### Step 1: Defining the Screen Class of the Form 

 To define the view of the Open Payment Summary (RS401000) form in the TypeScript file of the form, you define a screen class and a property for the data view of the form. Do the following: 

1. Open the RS401000.ts file. 

 You can open a TypeScript file of a form from one of the following locations: 

- On the _Modern UI Files_ page of the Customization Project Editor 

- In the FrontendSources\screen\src\development\screens folder of     your Acumatica ERP instance. (The files appear in the file system if you click **Export to**     **Development Folder** on the toolbar of the _Modern UI Files_ page.) 

2. In the RS401000.ts file, make sure the following import directives as included. 

 import { createCollection, PXScreen, graphInfo, viewInfo, PXView, PXFieldState, gridConfig, PXFieldOptions, GridPreset } from "client-controls"; 

3. In the RS401000 screen class, modify the graphInfo decorator, and specify the graph and the primary     view of the form in the decorator properties, as the following code shows. 

 @graphInfo({ graphType: "PhoneRepairShop.RSSVPaymentPlanInq", primaryView: "DetailsView", }) export class RS401000 extends PXScreen { } 

4. Define the property for the data view of the form, as the following code shows. For the data view that’s used     to display a table, you need to initialize the property with the createCollection method. The method     takes as the input parameter an instance of the view class, which you will define in the next step. 


<!-- PAGE_BREAK -->
 Defining an Inquiry Form | 119 

 export class RS401000 extends PXScreen { @viewInfo({containerName: "Work Orders with Open Payments"}) DetailsView = createCollection(RSSVWorkOrderToPay); } 

 In the viewInfo decorator, you’ve specified the name of the container for the table. 

#### Step 2: Defining the View Class of the Form 

 In the TypeScript file of the form, you need to define a view class for the table on the Open Payment Summary (RS401000) form, which is RSSVWorkOrderToPay. Proceed as follows: 

1. Define the RSSVWorkOrderToPay view class as follows. 

 export class RSSVWorkOrderToPay extends PXView { OrderNbr: PXFieldState; Status: PXFieldState; InvoiceNbr: PXFieldState; PercentPaid: PXFieldState; ARInvoice__DueDate: PXFieldState; ARInvoice__CuryDocBal: PXFieldState; } 

 To add a joined field to the UI of the form, you’ve separated the name of the joined DAC and the field name in this DAC with two underscores. 

2. Add the gridConfig decorator to the RSSVWorkOrderToPay view class, as the following code shows.     In the gridConfig decorator, you must specify the preset property. Because the table is used on the     inquiry form, you use the _Inquiry_ preset. For details about presets, see _Form Layout: Grid Presets_. 

 @gridConfig({ preset: GridPreset.Inquiry }) export class RSSVWorkOrderToPay extends PXView { ... } 

3. Remove the MasterView = createSingle(MasterViewClass); and DetailsView =     createCollection(DetailsViewClass); properties from the screen class. Also, remove the     MasterViewClass and DetailsViewClass classes. These properties and classes are part of the     boilerplate code that was generated by the system. 

4. Save your changes. 

#### Step 3: Defining the Layout in HTML 

 The Open Payment Summary (RS401000) form contains only a table. To define the layout of the form, do the following: 

1. Open the RS401000.html file. 

 You can open an HTML file of a form from one of the following locations: 

- On the _Modern UI Files_ page of the Customization Project Editor 

- In the FrontendSources\screen\src\development\screens folder of     your Acumatica ERP instance. (The files appear in the file system if you click **Export to**     **Development Folder** on the toolbar of the _Modern UI Files_ page.) 


<!-- PAGE_BREAK -->
 Defining an Inquiry Form | 120 

2. Remove the existing boilerplate code from the file. Add the qp-grid tag and bind it to the DetailsView     view, as the following code shows. 

 <template> <qp-grid id="gridDetailsView" view.bind="DetailsView"></qp-grid> </template> 

3. Save your changes. 

 If you used the development folder to modify the TypeScript and HTML files of the form, you need to update these files in the customization project before publishing it. You do this by using the Detect Modified Files button on the Modern UI Files page. 

4. Publish the customization project. 

#### Step 4: Preparing Data for Testing 

 In this step, you will add some repair work orders, invoices, and payments to the database. To add these invoices and payments, do the following: 

1. On the Repair Work Orders (RS301000) form, remove all existing repair work orders from hold. Then assign     the work orders, complete them, and create invoices for them. 

2. Open any work order with the _Completed_ status (for example, _000001_ ) and do the following:     a. Open the invoice for the chosen work order: Note the invoice number in the **Invoice Nbr.** box and open        this invoice on the _Invoices_ (SO303000) form.     b. On the form toolbar, click **Remove Hold** , **Release** , and then **Pay**. The _Payments and Applications_        (AR302000) form opens.     c. On the **Documents to Apply** tab, type 10 in the **Amount Paid** column.     d. On the form toolbar, click **Remove Hold** and then **Release**. 

3. Open another work order with the _Completed_ status (for example, _000003_ ), and do the following:     a. Open the invoice for the chosen work order: Note the invoice number in the **Invoice Nbr.** box and open        this invoice on the _Invoices_ (SO303000) form.     b. Change the invoice’s **Due Date** to tomorrow's date and save your changes. 

#### Step 5: Testing the Form 

 In this step, you will test the Open Payment Summary (RS401000) inquiry form with the added invoices and payments. Do the following: 

1. Open the Open Payment Summary inquiry form.     The form should look similar to the one shown below. Notice that the table has a toolbar with standard     buttons and the **Filter Settings** button. 


<!-- PAGE_BREAK -->
 Defining an Inquiry Form | 121 

 Figure: The basic Open Payment Summary form 

2. Change the current business date to the day aer tomorrow. For details about how to change the business     date, see _Your Working Environment: To Change the Business Date_. 

3. On the table toolbar, click the **Filter Settings** button. The filtering area appears. 

4. In the filtering area, click the arrow button and click **Due Date** (shown below). A Quick Filter button appears     for the **Due Date** column. 

 Figure: Adding a quick filter for Due Date 

5. Click the Quick Filter button for the **Due Date** column. The Quick Filter drop-down menu opens. 

6. In the menu, do the following: 

 a. Click Is Less Than. b. Click the Calendar button in the Value box. c. In the Calendar dialog box, click @Today (see below). 


<!-- PAGE_BREAK -->
 Defining an Inquiry Form | 122 

 Figure: Specifying quick filter parameters 

 d. Click Apply. 

7. With these filter settings, the form displays overdue payments, as shown in the example below. 

 Figure: The Open Payment Summary form with overdue payments 

8. To clear the filter, in the Quick Filter drop-down menu, click **Clear Filter**. 

9. Change the business date to the current date. 


<!-- PAGE_BREAK -->
 Adding Filtering Parameters to a Form | 123 

## Adding Filtering Parameters to a Form 

 You can configure a filter for an inquiry or processing form to display data narrowed by the selection criteria that is specified in the filter. To define the selection criteria, you use filtering parameters. In this chapter, you will learn how to modify an inquiry or a processing form so that it has filtering parameters. 

### Filtering Parameters: General Information 

 When a user specifies selection criteria on an inquiry or processing form, the table displays the data narrowed by the specified criteria. This gives the user the ability to view the most relevant data. On a processing form, they can then process all of the listed records or only those they select. 

 For both of these types of forms, you can define filtering parameters to give users the ability to filter the data listed in the table. You do this by specifying the filtering parameters for the elements to be used to narrow the data. 

#### Learning Objectives 

 In this chapter, you'll learn how to add filtering parameters to a form. 

#### Applicable Scenarios 

 You add filtering parameters in the following cases: 

- For a processing form, you need to provide the ability for the user to filter the records before processing     some or all of them. 

- For an inquiry form, you want to give users the ability to view narrowed data to meet their current     information needs, and reusable filters aren’t sufficient to provide the needed functionality. 

#### DAC with Filtering Parameters 

 The data access class (DAC) you’ll define for filtering parameters should: 

- Contain the fields that correspond to the filtering parameters 

- Contain only unbound fields because you won’t retrieve the parameters’ values from the database 

- Not contain any key fields because the DAC works with only one data record, which represents the current     filtering parameters. You usually assign the _PXHidden_ attribute to the filter DAC because you don’t need this DAC to be used in generic inquiries and reports. 

 To be able to use the filtering parameters in a BQL query, you need to make sure that the fields defined in this DAC are added to the grid view DAC of the form. 

#### Filter Data View 

 You’ll use generic PXFilter type of data view to provide filtering parameters for user selection on an Acumatica ERP form, such as an inquiry form or a processing form. This data view: 

- Always creates a single data record with the current values of the filtering parameters; it never retrieves this     data record or saves it to the database. 

- Is used to specify values that are used by the application logic or other data views and that never should be     stored anywhere except the current user session. 


<!-- PAGE_BREAK -->
 Adding Filtering Parameters to a Form | 124 

 The data view object for the filtering parameters is defined in a graph, as the following code shows. 

 public class RSSVPaymentPlanInq : PXGraph<RSSVPaymentPlanInq> { //RSSVWorkOrderToAssignFilter is a DAC with filtering parameters public PXFilter<RSSVWorkOrderToAssignFilter> Filter; ... } 

 You must not use the PXFilter data view type with a DAC that has at least one key field defined— that is, a DAC that contains fields with the IsKey=true parameter in the type attribute. 

#### Other Graph Members 

 To display the filtered data, the graph must contain the data view that selects the records that meet the criteria specified by the filtering parameters. For details about this data view, see Filtering Parameters: Filtered Data on a Processing Form and Filtering Parameters: Filtered Data on an Inquiry Form. 

 To clear the filtering parameters on the form, you define the Cancel action for the filter DAC; see the following code example. 

 public PXFilter<RSSVWorkOrderToAssignFilter> Filter; // Adds the form toolbar button that clears the filtering parameters public PXCancel<RSSVWorkOrderToAssignFilter> Cancel; 

 You must also override the IsDirty property of the graph to make the IsDirty property always return false. This disables the dialog box that confirms that a user wants to leave the form. This dialog box appears when a user attempts to close the form if there are unsaved changes in the cache objects for the form. A false value in the IsDirty property of the graph means that there are no unsaved changes on the form and that the dialog box never appears. This dialog box isn't needed on processing and inquiry forms, which aren’t intended for data entry or editing. 

 You can also use the PXUIFieldAttribute.SetEnabled<>() method in the graph constructor to enable editing for particular data fields. 

#### Changes to the UI Files 

 Filter data fields are usually displayed on a form. To immediately refresh data records as soon a user updates a filtering parameter, you need to enable callback for the input control that displays the filtering parameter on the form. You use the PXFieldOptions.CommitChanges option for a field in TypeScript to enable callback. 

 For the UI of a processing form with filtering parameters, you should follow the guidelines in Processing Form: A Form with a Selection Area and a Grid. For an inquiry form, you should follow the same guidelines. The only difference is that you need to use the Inquiry preset for the table on the inquiry form. 

#### Implementation Summary 

 To add a filter to a form, you generally complete the following steps: 

1. You define the DAC that provides the filtering parameters. 

2. You modify the DAC that provides records for filtering by adding the fields that correspond to the filtering     parameters. 

3. In the graph, you define the following members: 

- The Cancel action. 

- The data view of the PXFilter type, which provides data for the filter. 


<!-- PAGE_BREAK -->
 Adding Filtering Parameters to a Form | 125 

- The data view that retrieves filtered records.     For details about this data view, see _Filtering Parameters: Filtered Data on a Processing Form_ or _Filtering_     _Parameters: Filtered Data on an Inquiry Form_. 

4. In the graph, you modify the following members: 

- The graph constructor: To enable editing of particular columns in the table with the filtered results 

- The IsDirty property: To disable the dialog box that confirms that a user wants to leave the form 

5. In the TypeScript file, you do the following: 

- Add the view class with the fields that correspond to the filtering parameters. For each field, you specify     the CommitChanges property. 

- Add the view property in the screen class. The view property is initialized with the createSingle     method, which takes as the input parameter an instance of the view class. 

6. In the HTML file, you add a qp-template element to display the elements of the Selection area. 

### Filtering Parameters: Filtered Data on a Processing Form 

 To display the filtered data in the table on a processing form, you need to define the processing data view, which selects data narrowed by the selection criteria, which is defined with filtering parameters. 

 In the processing data view, you have to use one of the following types: 

- SelectFrom<Table>.[…].ProcessingView.FilteredBy<FilterTable>, which uses the     fluent BQL style of data queries 

- PXFilteredProcessing or PXFilteredProcessingJoin type, which uses the traditional BQL     style of data queries, and specify the filter DAC in the second type parameter To select data, you should specify filtering conditions in the Where clause of the data view type. To pass the current filter values to the query, you specify the filter DAC fields within the Current parameter. You have to define the data view that retrieves filtered records for the UI aer the definition of PXFilter data view because the data view that retrieves filtered records uses the Current values of the PXFilter data view. 

 In the following code example, the Filter data view provides the TimeWithoutAction, Priority, and ServiceID filtering parameters. The WorkOrders data view selects the repair work orders that meet the criteria specified by the filtering parameters. 

 // The filter data view public PXFilter<RSSVWorkOrderToAssignFilter> Filter; 

 // The processing data view public SelectFrom<RSSVWorkOrder>. Where<RSSVWorkOrder.status.IsEqual< RSSVWorkOrderEntry_Workflow.States.readyForAssignment>. And<RSSVWorkOrder.timeWithoutAction.IsGreaterEqual< RSSVWorkOrderToAssignFilter.timeWithoutAction. FromCurrent>. And<RSSVWorkOrder.priority.IsEqual< RSSVWorkOrderToAssignFilter.priority.FromCurrent>. Or<RSSVWorkOrderToAssignFilter.priority.FromCurrent. IsNull>>. And<RSSVWorkOrder.serviceID.IsEqual< RSSVWorkOrderToAssignFilter.serviceID.FromCurrent>. Or<RSSVWorkOrderToAssignFilter.serviceID.FromCurrent. IsNull>>>>. OrderBy<RSSVWorkOrder.timeWithoutAction.Desc, RSSVWorkOrder.priority.Desc>. 


<!-- PAGE_BREAK -->
 Adding Filtering Parameters to a Form | 126 

 ProcessingView. FilteredBy<RSSVWorkOrderToAssignFilter> WorkOrders; 

### Filtering Parameters: Filtered Data on an Inquiry Form 

 To display the filtered data in the table on an inquiry form, you need to define the data view that selects data narrowed by the selection criteria, which is defined with filtering parameters. 

 To select data, you should specify filtering conditions in the Where clause of the data view type. To pass the current filter values to the query, you specify the filter DAC fields within the Current parameter. You have to define the data view that retrieves filtered records for the UI aer the definition of PXFilter data view because the data view that retrieves filtered records uses the Current values of the PXFilter data view. 

 In the following code example, the Filter data view provides the CountryCD and MinOrderQty filtering parameters. The SupplierProducts data view selects the records that meet the criteria specified by the filtering parameters. 

 public class SupplierInq : PXGraph<SupplierInq> { public PXCancel<SupplierFilter> Cancel; public PXFilter<SupplierFilter> Filter; 

 [PXFilterable] public SelectFrom<SupplierProduct> .InnerJoin<Supplier> .On<Supplier.supplierID.IsEqual<SupplierProduct.supplierID>> .Where< Brackets< SupplierFilter.countryCD.FromCurrent.IsNull Or<Supplier.countryCD.IsEqual<SupplierFilter.countryCD.FromCurrent>>> .And< Brackets<SupplierFilter.minOrderQty.FromCurrent.IsNull .Or<SupplierProduct.minOrderQty.IsGreaterEqual <SupplierFilter.minOrderQty.FromCurrent>>>>> .OrderBy< SupplierProduct.productID.Asc, SupplierProduct.supplierPrice.Asc, SupplierProduct.lastPurchaseDate.Desc> .View.ReadOnly SupplierProducts; } 

 You can use a read-only type of the data view that retrieves filtered data records. For a read-only data view, the framework automatically disables the editing of rows in the grid. 

### Filtering Parameters: To Add a Filter for a Processing Form 

 The following activity will walk you through the process of adding a filter for a processing form. 


<!-- PAGE_BREAK -->
 Adding Filtering Parameters to a Form | 127 

#### Story 

 The Smart Fix company needed a custom Acumatica ERP form where the managers of the company will assign repair work orders to particular employees. Suppose that for this purpose, you’ve already implemented the custom Assign Work Orders (RS501000) processing form. Now you need to add filtering parameters to this form so that the managers can narrow the range of listed repair work orders before processing. 

 The Selection area of the form should contain the following UI elements: 

- **Priority** : If a user selects a priority in this box, the form’s table displays only the repair work orders with this     priority. If no priority is selected, repair work orders with all priority values can be displayed in the table. 

- **Minimum Number of Days Unassigned** : If a user types a number in this box, the table displays only the     repair work orders that have been unassigned for the specified number of days or longer. 

- **Service** : If a user selects a service in this box, the table displays only the repair work orders in which this     service is selected. You need to create filtering parameters for these UI elements. 

 In addition, you’ll add the Number of Days Unassigned column to the table on the form. This value should not be stored in the database; you should instead use the PXDBCalced attribute to calculate the value from the date when the repair work order was created. 

 You also need to define the Assignee column of the table to be editable so that a user of the form can use this column to select an assignee for any listed repair work order. 

#### Process Overview 

 You'll add filtering parameters to the Assign Work Orders (RS501000) processing form by performing the following steps: 

1. Extending the RSSVWorkOrder DAC with the new TimeWithoutAction field 

2. Defining the filter DAC 

3. Defining the data views for the form 

4. Adjusting the TypeScript and HTML files of the form 

 Finally, you'll test the filter. 

#### System Preparation 

 Before you begin performing the steps of this activity, do the following: 

1. Prepare an Acumatica ERP instance by performing the _Test Instance for Customization: To Deploy an Instance_     _with a Custom Form that Implements a Workflow_ prerequisite activity. 

2. Create a processing form without filtering parameters by performing the _Processing Operations: To_     _Implement a Processing Operation by Using a Delegate_ prerequisite activity. 

#### Step 1: Extending the DAC with a New Field (Using PXDBCalced) 

 In this step, you’ll add the TimeWithoutAction field, which holds the number of days that have passed from the date when the repair work order was created. In the RSSVWorkOrder.cs file, add the new field as follows: 

1. In the RSSVWorkOrder class, define the TimeWithoutAction field, as shown in the following code. 

 #region TimeWithoutAction [PXInt] [PXDBCalced( 


<!-- PAGE_BREAK -->
 Adding Filtering Parameters to a Form | 128 

 typeof(RSSVWorkOrder.dateCreated.Diff<Now>.Days), typeof(int))] [PXUIField(DisplayName = "Number of Days Unassigned")] public virtual int? TimeWithoutAction { get; set; } public abstract class timeWithoutAction : PX.Data.BQL.BqlInt.Field<timeWithoutAction> { } #endregion 

 To calculate the value of the TimeWithoutAction field, you’ve used the PXDBCalced attribute. The field’s value is calculated during the retrieval of each RSSVWorkOrder record from the database. It’s calculated as the difference between the value of the RSSVWorkOrder.DateCreated field and the current date, for which you’ve used the Now BQL constant. For more information on the PXDBCalced attribute, see Ad Hoc SQL for Fields. 

2. Build the project. 

#### Step 2: Defining the Filter DAC 

 In this step, you'll define the RSSVWorkOrderToAssignFilter DAC, which will be used to display filtering parameters on the Assign Work Orders (RS501000) form. The DAC will contain three fields (ServiceID, TimeWithoutAction, and Priority) that correspond to the filtering parameters. To define the filter DAC, do the following: 

1. In the RSSVAssignProcess graph, define the RSSVWorkOrderToAssignFilter data access class as     follows. 

 [PXHidden] public class RSSVWorkOrderToAssignFilter : PXBqlTable, IBqlTable { #region Priority [PXString(1, IsFixed = true)] [PXUIField(DisplayName = "Priority")] [PXStringList( new string[] { WorkOrderPriorityConstants.High, WorkOrderPriorityConstants.Medium, WorkOrderPriorityConstants.Low }, new string[] { Messages.High, Messages.Medium, Messages.Low })] public virtual string? Priority { get; set; } public abstract class priority : PX.Data.BQL.BqlString.Field<priority> { } #endregion 

 #region TimeWithoutAction [PXInt] [PXUnboundDefault(0)] [PXUIField(DisplayName = "Minimum Number of Days Unassigned")] public virtual int? TimeWithoutAction { get; set; } public abstract class timeWithoutAction : 


<!-- PAGE_BREAK -->
 Adding Filtering Parameters to a Form | 129 

 PX.Data.BQL.BqlInt.Field<timeWithoutAction> { } #endregion 

 #region ServiceID [PXInt()] [PXUIField(DisplayName = "Service")] [PXSelector(typeof(Search<RSSVRepairService.serviceID>), typeof(RSSVRepairService.serviceCD), typeof(RSSVRepairService.description), SubstituteKey = typeof(RSSVRepairService.serviceCD), DescriptionField = typeof(RSSVRepairService.description))] public virtual int? ServiceID { get; set; } public abstract class serviceID : PX.Data.BQL.BqlInt.Field<serviceID> { } #endregion } 

2. Build the project. 

#### Step 3: Defining the Data Views (with PXFilter and ProcessingView.FilteredBy) 

 In this step, you’ll prepare the graph members that provide data for the form. Do the following: 

1. In the RSSVAssignProcess graph, define the Filter data view of the PXFilter type (as shown     below), which provides the filtering parameters for the processing form. 

 public PXFilter<RSSVWorkOrderToAssignFilter> Filter = null!; 

2. Replace the definition of the Cancel action so that the action uses the filter DAC. 

 public PXCancel<RSSVWorkOrderToAssignFilter> Cancel = null!; 

3. Replace the definition of the WorkOrders data view with the following data view of the     ProcessingView.FilteredBy<Table> type, which selects the repair work orders that match the     values of the filtering parameters. 

 public SelectFrom<RSSVWorkOrder>. Where<RSSVWorkOrder.status.IsEqual< RSSVWorkOrderEntry_Workflow.States.readyForAssignment>. And<RSSVWorkOrder.timeWithoutAction.IsGreaterEqual< RSSVWorkOrderToAssignFilter.timeWithoutAction. FromCurrent>. And<RSSVWorkOrder.priority.IsEqual< RSSVWorkOrderToAssignFilter.priority.FromCurrent>. Or<RSSVWorkOrderToAssignFilter.priority.FromCurrent. IsNull>>. And<RSSVWorkOrder.serviceID.IsEqual< RSSVWorkOrderToAssignFilter.serviceID.FromCurrent>. Or<RSSVWorkOrderToAssignFilter.serviceID.FromCurrent. IsNull>>>>. OrderBy<RSSVWorkOrder.timeWithoutAction.Desc, RSSVWorkOrder.priority.Desc>. ProcessingView. 


<!-- PAGE_BREAK -->
 Adding Filtering Parameters to a Form | 130 

 FilteredBy<RSSVWorkOrderToAssignFilter> WorkOrders = null!; 

4. In the graph constructor, enable editing for the Assignee data field, as shown in the following code. 

 PXUIFieldAttribute.SetEnabled<RSSVWorkOrder.assignee>( WorkOrders.Cache, null, true); 

 Because you specified the Processing preset for the table in the TypeScript code (in Processing Form: To Create a Simple Processing Form ), the columns of the table were not defined as being editable. In the graph constructor, you've made the values in the Assignee column of the table editable. You’ve enabled the editing of the column in the graph constructor (instead of in RowSelected event handler) because the column’s UI presentation logic doesn’t depend on the particular values of the data record. 

5. Override the IsDirty property of the graph, as the following code shows. 

 public override bool IsDirty => false; 

 You have overridden the IsDirty property of the graph to make it always return false. You have multiple elements on the form that a user can modify, such as the filtering parameters on the form, the Assignee column, and the column with the unlabeled check box. That’s why you need to override the IsDirty property to omit the dialog box that confirms that the user wants to leave the form when it has been edited. 

6. Rebuild the project. 

#### Step 4: Adjusting the TypeScript and HTML Code 

 In this step, you’ll adjust the TypeScript and HTML files of the Assign Work Orders (RS501000) form to display the filter and the data to be available for processing. Adjust the RS501000.ts and RS501000.html files as follows: 

 You can perform the following instructions on the Modern UI Files page of the Customization Project Editor or edit the TypeScript and HTML files of the form in the development folder of your instance by using an external code editor, such as Visual Studio Code. For details on working with the Modern UI Files page or editing the code files in the development folder, see the T200 Maintenance Forms training course. The instructions below are presented in general terms to fit both methods. 

1. For the screen class in RS501000.ts, change the value of the primaryView property in the     graphInfo decorator to _Filter_. 

2. Define the property for the data view of the Selection area of the form, as the following code shows. To     initialize the data view of the Selection area of the form, use the createSingle method. It takes as the     input parameter an instance of the view class, which you’ll define in the next step. 

 @viewInfo({containerName: "Filter Parameters"}) Filter = createSingle(RSSVWorkOrderToAssignFilter); 

 In the viewInfo decorator, you’ve specified the name of the container for the Selection area. 

3. You need to define a view class for the data view of the Selection area of the Assign Work Orders form, which     is Filter.     Proceed as follows:     a. In the RS501000.ts file, add createSingle to the list of import directives.     b. Define the RSSVWorkOrderToAssignFilter class as follows. 

 export class RSSVWorkOrderToAssignFilter extends PXView {} 

 c. In the view class, specify the properties for all data fields of the data view that should be displayed in the UI, as shown below. You use the name of the data field as the property name. 


<!-- PAGE_BREAK -->
 Adding Filtering Parameters to a Form | 131 

 export class RSSVWorkOrderToAssignFilter extends PXView { Priority: PXFieldState<PXFieldOptions.CommitChanges>; TimeWithoutAction: PXFieldState<PXFieldOptions.CommitChanges>; ServiceID: PXFieldState<PXFieldOptions.CommitChanges>; } 

 All fields of the view should be defined so that changes are committed to the server; therefore, you’ve used the PXFieldOptions.CommitChanges option for the property type. 

4. In the RS501000.html file, define the layout of the Selection area by adding the qp-template tag with     the 17-17-14 template within the template tag as follows:     a. For the first two slots, define a fieldset, as shown in the following code. To leave the third slot empty, do        not specify any tags for it. 

 <qp-template id="form-Filter" name="17-17-14" class="equal-height" > <qp-fieldset id="fsColumnA-Filter" slot="A" view.bind="Filter" class="label-size-xm" > </qp-fieldset> <qp-fieldset id="fsColumnB-Filter" slot="B" view.bind="Filter"> </qp-fieldset> </qp-template> 

 Each fieldset has been bound to the same Filter view. For details about the qp-template tag and slots, see Form Layout: Predefined Templates. b. In each fieldset, add the field tags for the fields that should be displayed in the corresponding fieldset, as the following code shows. 

 <qp-fieldset id="fsColumnA-Filter" slot="A" view.bind="Filter" class="label-size-xm" > <field name="Priority"></field> <field name="TimeWithoutAction"></field> </qp-fieldset> <qp-fieldset id="fsColumnB-Filter" slot="B" view.bind="Filter"> <field name="ServiceID"></field> </qp-fieldset> 

 In the first fieldset, you’ve also specified the width of the labels by using the label-size-xm class. For more details about CSS classes, see Form Layout: CSS Classes. c. Save your changes. 

5. In the RS501000.ts file, add the TimeWithoutAction field to the RSSVWorkOrder view class, as     shown below, so that the corresponding column is displayed in the table of the Assign Work Orders form.     Also, specify that the changes in the Assignee field should be committed to the server by adding the     PXFieldOptions.CommitChanges option for the property type. 


<!-- PAGE_BREAK -->
 Adding Filtering Parameters to a Form | 132 

 export class RSSVWorkOrder extends PXView { ... Assignee: PXFieldState<PXFieldOptions.CommitChanges>; TimeWithoutAction: PXFieldState; } 

6. Save your changes. 

7. If you used the development folder to modify the TypeScript and HTML files in the preceding instructions,     you need to update these files in the customization project. You do this by using the **Detect Modified Files**     button on the _Modern UI Files_ page. 

8. Publish the customization project. 

#### Step 5: Testing the Filter 

 In this step, you'll test the filtering parameters you have implemented for the Assign Work Orders (RS501000) form. Do the following: 

1. On the Repair Work Orders (RS301000) form, create three repair work orders with the settings specified in     the following table. Save each order and then click **Remove Hold**. 

 Work Order 1 Work Order 2 Work Order 3 

 Customer ID C000000001 C000000002 C000000001 

 Service Battery Replacement Screen Repair Battery Replacement 

 Device Nokia 3310 Samsung Galaxy S4 Motorola RAZR V3 

 Assignee Beauvoir, Layla Empty Baker, Maxwell 

 Priority High Medium Medium 

 Description Test order Test order Test order 

 The created work orders have the Ready for Assignment status. 

2. On the Assign Work Orders form, test the filtering parameters as follows:     a. Make sure that the three work orders you have created are displayed on the form.     b. In the **Priority** box in the Selection area, select _High_. Make sure one of the created work orders is        displayed in the table, as shown below. 

 Figure: The work order with a priority of High 


<!-- PAGE_BREAK -->
 Adding Filtering Parameters to a Form | 133 

 c. Clear the filter by clicking Cancel on the form toolbar. d. In the Minimum Number of Days Unassigned box, type 1. No work orders are displayed in the table (as long as you haven’t created work orders outside of the instructions of the guide). e. Change the value in the Minimum Number of Days Unassigned box to 0. Three work orders are displayed. f. In the Service box, select Battery Replacement. Two of the created work orders are displayed in the table. g. In the Priority box, select Medium. Only one of the created work orders remains in the table. h. On the form toolbar, click Assign All. The processing dialog box indicates that the work order has been processed. Make sure it has the Assigned status and is assigned to Baker, Maxwell (the employee you’ve selected during creation), as shown below. 

 Figure: The assigned work order 

3. Test the **Assignee** column on the Assign Work Orders form as follows: 

 a. Clear all the boxes in the Selection area. Two of the created repair work orders are displayed. b. For a work order with the default assignee (which is Becher, Joseph ), in the Assignee column, select Beauvoir, Layla. c. On the form toolbar, click Assign All. The processing dialog box shows that two repair work orders have been processed. Make sure that Beauvoir, Layla is the assignee of both orders, as shown below. 


<!-- PAGE_BREAK -->
 Adding Filtering Parameters to a Form | 134 

 Figure: Two assigned work orders 

### Filtering Parameters: To Add a Filter for an Inquiry Form 

 This activity will walk you through the process of implementing custom filtering parameters for an inquiry form. 

#### Story 

 Suppose that you need to add custom filtering parameters to the Open Payment Summary (RS401000) inquiry form, which you created in the PhoneRepairShop customization project, so that users can filter the repair work orders listed in the table on the inquiry form. 

 The form will contain UI elements in the Selection area that can be used to filter the listed repair work orders by the customer and service type, and to filter the listed sales orders by the customer. You will define filtering parameters for these UI elements. 

#### Process Overview 

 In this activity, you’ll add filtering parameters to the Open Payment Summary (RS401000) inquiry form by performing the following steps: 

1. Defining the DAC with only unbound fields that will be used as filtering parameters 

2. Configuring the PXFilter data view and the PXCancel action as graph members used for filtering data     for an inquiry form 

3. Adding the Selection area to the inquiry form by adjusting the TypeScript and HTML files of the form 

#### System Preparation 

 Before you begin performing the steps of this activity, do the following: 


<!-- PAGE_BREAK -->
 Adding Filtering Parameters to a Form | 135 

1. Configure your instance by performing the _Test Instance for Customization: To Deploy an Instance with a_     _Custom Form that Implements a Workflow_ prerequisite activity. 

2. Complete the steps described in the following prerequisite activities:     a. _Inquiry Forms: To Set Up an Inquiry Form_     b. _Inquiry Forms: To Create the UI of an Inquiry Form with Only a Grid_ 

#### Step 1: Defining a DAC with Filtering Parameters for the Inquiry Form 

 In this step, you will define the RSSVWorkOrderToPayFilter DAC, which will be used to display the selection criteria (filtering parameters) on the Open Payment Summary (RS401000) form. The DAC will contain two fields (CustomerID and ServiceID) that correspond to the filtering parameters. To define the DAC with filtering parameters, do the following: 

1. In the RSSVPaymentPlanInq graph, define the RSSVWorkOrderToPayFilter data access class by     using the following code. 

 [PXHidden] public class RSSVWorkOrderToPayFilter : PXBqlTable, IBqlTable { #region CustomerID [CustomerActive(DisplayName = "Customer ID")] public virtual int? CustomerID { get; set; } public abstract class customerID : PX.Data.BQL.BqlInt.Field<customerID> { } #endregion 

 #region ServiceID [PXInt()] [PXUIField(DisplayName = "Service")] [PXSelector( typeof(Search<RSSVRepairService.serviceID>), typeof(RSSVRepairService.serviceCD), typeof(RSSVRepairService.description), DescriptionField = typeof(RSSVRepairService.description), SelectorMode = PXSelectorMode.DisplayModeText)] public virtual int? ServiceID { get; set; } public abstract class serviceID : PX.Data.BQL.BqlInt.Field<serviceID> { } #endregion } 

2. For the filtering parameters to be used in a BQL query, add the serviceID and customerID fields to the     RSSVWorkOrderToPay DAC by using the following code. 

 public new abstract class serviceID : PX.Data.BQL.BqlInt.Field<serviceID> { } 

 public new abstract class customerID : PX.Data.BQL.BqlInt.Field<customerID> { } 

3. Build the project. 


<!-- PAGE_BREAK -->
 Adding Filtering Parameters to a Form | 136 

#### Step 2: Configuring the Graph Members Used for Filtering Data on the Inquiry Form 

 In this step, you will prepare the graph members to be used for filtering data on the form. To define the graph members, in the RSSVPaymentPlanInq graph, do the following: 

1. Define a PXFilter data view (as shown in the following code), which provides filtering parameters for the     inquiry form. 

 public PXFilter<RSSVWorkOrderToPayFilter> Filter = null!; 

2. Define the PXCancel action, which adds the **Cancel** button to the form toolbar, as shown in the following     code. The action clears the filter. 

 public PXCancel<RSSVWorkOrderToPayFilter> Cancel = null!; 

3. Replace the definition of the DetailsView data view with the following code, which not only selects     repair work orders that do not have the _Paid_ status but also matches the filtering criteria based on the     values of the serviceID and customerID fields. 

 [PXFilterable] public SelectFrom<RSSVWorkOrderToPay>. InnerJoin<ARInvoice>.On< ARInvoice.refNbr.IsEqual<RSSVWorkOrderToPay.invoiceNbr>>. Where< RSSVWorkOrderToPay.status.IsNotEqual< RSSVWorkOrderEntry_Workflow.States.paid>. And<RSSVWorkOrderToPayFilter.customerID.FromCurrent.IsNull. Or<RSSVWorkOrderToPay.customerID.IsEqual< RSSVWorkOrderToPayFilter.customerID.FromCurrent>>>. And<RSSVWorkOrderToPayFilter.serviceID.FromCurrent.IsNull. Or<RSSVWorkOrderToPay.serviceID.IsEqual< RSSVWorkOrderToPayFilter.serviceID.FromCurrent>>>>. View.ReadOnly DetailsView = null!; 

4. Override the IsDirty property of the graph, as the following code shows. 

 public override bool IsDirty => false; 

5. Build the project. 

#### Step 3: Adding Filtering Elements for the TypeScript File of the Form 

 In this step, you will define TypeScript code for the Selection area, which has the elements to be used for filtering. Do the following: 

1. In the RS401000.ts file, add createSingle and PXFieldOptions to the list of import directives (if     they are not already added). 

2. In the RS401000 screen class, add the view property for the Selection area before the DetailsView     property, as shown in the following code. 

 @viewInfo({ containerName: "Selection Area" }) Filter = createSingle(RSSVWorkOrderToPayFilter); 

3. In the primaryView parameter of the graphInfo decorator, change the value to Filter, as shown     below. 


<!-- PAGE_BREAK -->
 Adding Filtering Parameters to a Form | 137 

 @graphInfo({ graphType: "PhoneRepairShop.RSSVPaymentPlanInq", primaryView: "Filter", }) 

4. Add the view class with the fields of the Selection area of the form, as shown in the code below. 

 export class RSSVWorkOrderToPayFilter extends PXView { CustomerID: PXFieldState<PXFieldOptions.CommitChanges>; ServiceID: PXFieldState<PXFieldOptions.CommitChanges>; } 

 You've specified the CommitChanges option for each field to immediately refresh data records as soon a user updates a filtering parameter. 

5. Save your changes. 

#### Step 4: Adding Filtering Elements for the HTML File of the Form 

 In this step, you will define HTML code for the Selection area. Do the following: 

1. In the RS401000.html file, before the qp-grid tag, add qp-template tag with a single qp-     fieldset tag inside it. In the qp-fieldset tag, add two field tags for the filtering parameters, as     shown in the following code. 

 <qp-template name="17-17-14" id="formFilter"> <qp-fieldset slot="A" id="columnFirst" view.bind="Filter"> <field name="CustomerID"></field> <field name="ServiceID"></field> </qp-fieldset> </qp-template> 

 You've used the 17-17-14 template, which organizes the controls in three columns. You have only two controls to be displayed in the Selection area; therefore, you’ve placed all of them in the first column of the template. 

2. Save your changes. 

### Filtering Parameters: To Display the Filter Values in the URL 

 When a form contains filtering parameters, it can be useful to have the selected parameter values in the form URL so that the same form (that is, the form with the same selections made) can be opened elsewhere without the filter parameter values needing to be entered again. 

#### Story 

 Suppose that the users of the custom Open Payment Summary (RS401000) inquiry form would like to easily share filtered inquiry results with other users by just sharing a link to the form without specifying which values need to be selected. You need to implement this functionality for the form. 


<!-- PAGE_BREAK -->
 Adding Filtering Parameters to a Form | 138 

#### Process Overview 

 You will implement this behavior by adding the PageLoadBehavior property and setting its value to PopulateSavedValues in the graphInfo decorator in the TypeScript file of the form. The filter values of the primary view will be placed in the form URL. You’ll then test the implemented behavior. 

#### System Preparation 

 Before you begin performing the steps of this activity, do the following: 

1. Prepare an Acumatica ERP instance by performing the _Test Instance for Customization: To Deploy an Instance_     _with a Custom Form that Implements a Workflow_ prerequisite activity. 

2. Complete the steps described in the following prerequisite activities:     a. _Inquiry Forms: To Set Up an Inquiry Form_     b. _Inquiry Forms: To Create the UI of an Inquiry Form with Only a Grid_     c. _Filtering Parameters: To Add a Filter for an Inquiry Form_ 

#### Step 1: Displaying the Filter Values in the URL of the Inquiry Form 

 To display the filter values in the URL of the form, do the following: 

1. In the RS401000.ts file, add PXPageLoadBehavior to the list of import directives. 

2. Add the PageLoadBehavior property in the graphInfo decorator, as the following code shows. 

 @graphInfo({ graphType: "PhoneRepairShop.RSSVPaymentPlanInq", primaryView: "DetailsView", pageLoadBehavior: PXPageLoadBehavior.PopulateSavedValues, }) 

 The system inserts into the URL the filter values of the primary view only (in this case, the values of the PXFilter<RSSVWorkOrderToPayFilter> Filter view). 

 If you used the development folder to modify the TypeScript and HTML files of the form, you need to update these files in the customization project before publishing it. You do this by using the Detect Modified Files button on the Modern UI Files page. 

3. Publish the customization project. 

#### Step 2: Testing the Filtering Parameters of the Inquiry Form 

 In this step, you’ll test the Open Payment Summary (RS401000) inquiry form with the filtering parameters. To test the filtering parameters, do the following: 

1. In Acumatica ERP, open the Open Payment Summary (RS401000) form.     The form should look as shown below. Notice that the form contains a form toolbar, the Selection area with     UI elements that correspond to the filtering parameters, and a table with a toolbar. 


<!-- PAGE_BREAK -->
 Adding Filtering Parameters to a Form | 139 

 Figure: The revised Open Payment Summary form 

2. On the Repair Work Orders (RS301000) form, do the following: 

 a. Create a repair work order and specify the following settings: 

- **Customer ID** : _C000000003_ 

- **Service** : _Battery Replacement_ 

- **Device** : _Nokia 3310_ 

- **Description** : Battery replacement, Nokia 3310 b. On the form toolbar, click **Remove Hold** , **Assign** , **Complete** , and **Create Invoice**. 

3. On the Open Payment Summary form, in the **Customer ID** box, select _C000000001_. 

 The table displays work orders for the C000000001 customer. Notice that the page URL (shown below) includes the form ID and customer ID values. 

 http://localhost/SmartFix_T250/Main?ScreenId=RS401000&CustomerID=C000000001 

4. In the **Service** box, select the _Battery Replacement_ service. 

 The table now displays the work orders for the C000000001 customer and the Battery Replacement service. Notice that the page URL (shown below) contains the form ID, customer ID, and service ID values. 

 http://localhost/SmartFix_T250/Main? ScreenId=RS401000&CustomerID=C000000001&ServiceID=1 

 This URL can be copied and shared with other users. 

5. On the form toolbar, click **Cancel**. 

 Notice that the boxes in the Selection area have been cleared and that the URL no longer includes the filter values. 


<!-- PAGE_BREAK -->
 Customizing Acumatica ERP Forms in HTML and TypeScript | 140 

## Customizing Acumatica ERP Forms in HTML and 

## TypeScript 

 In this part, you will learn about how you can customize the Modern UI of Acumatica ERP in HTML and TypeScript. You can also find information about how to include changes to the Modern UI in a customization project. 

### UI Customization Development: General Information 

 When you customize the UI of Acumatica ERP in TypeScript and HTML, you may add new Acumatica ERP forms or customize existing ones. For details on implementing a new form, see UI Definition in HTML and TypeScript: General Information. For a form whose UI you need to customize, you add TypeScript and HTML files for customization extensions of the form. Each file name starts with the screen ID and ends with a postfix that indicates the purpose of the extension, as you can see in the S0301000_Customization1.ts file name. 

 The Modern UI changes are defined for each tenant of an Acumatica ERP instance independently. 

#### Learning Objectives 

 In this chapter, you will learn how to add new elements, such as boxes and tabs, to the UI of an Acumatica ERP form in TypeScript and HTML. 

#### Applicable Scenarios 

 You may need to customize the UI of Acumatica ERP in TypeScript and HTML if any of the following scenarios apply: 

- Your customization project is introducing capabilities that are not provided by Acumatica ERP. 

- You are developing integration with an external system. 

- Your customization project needs to support custom workflows that integrate multiple systems. 

#### Extension in TypeScript 

 To define an extension of an existing Acumatica ERP form in TypeScript, you use TypeScript mixins. For details about mixins, see https://www.typescriptlang.org/docs/handbook/mixins.html#alternative-pattern. 

 In the TypeScript file of an extension, you define an interface that extends the screen class and a class with the same name the interface has. 

 We recommend that you make sure the following postfixes match: the posfix in the name of the TypeScript file with the extension, and the postfixes in the names of the classes and interfaces that extend original classes. 

 In the examples below, the following should be declared in the GL401000_MultiCurrency.ts file: 

- The GL401000_MultiCurrency and GLHistoryEnqFilter_MultiCurrency     classes 

- The GL401000_MultiCurrency and GLHistoryEnqFilter_MultiCurrency     interfaces The _MultiCurrency postfix of the file matches the postfix of the classes and the interfaces. 


<!-- PAGE_BREAK -->
 Customizing Acumatica ERP Forms in HTML and TypeScript | 141 

 Instead of extending the screen class, the interface can extend other extension classes or multiple classes (such as the screen class and an extension class). The order of the applied extensions is defined similarly to the way it is defined for graph extensions in C# code. For details about the order, see The Order in Which Extensions Are Loaded. 

 In the extension class, you do any of the following: 

- Initialize new data views in the same way as you do in the screen class. For details about the screen class     and view classes, see _Screen Class in TypeScript_ and _View Classes in TypeScript_. 

- Optional: In the parameter of the featureInstalled decorator, specify the feature for which the     extension should be available. 

- Optional: Define new actions in the same way as you do in the screen class. For details about action     definitions, see _Action Definitions in TypeScript_ and _Button: Configuration_. 

- Optional: Adjust the TypeScript code of the original form. An example is shown in the following code. 

 import { featureInstalled, FeaturesSet } from "client-controls"; import { GL401000 } from "src/screens/GL/GL401000/GL401000"; 

 export interface GL401000_MultiCurrency extends GL401000 { } @featureInstalled(FeaturesSet.Multicurrency) export class GL401000_MultiCurrency { } 

 For each data view that you need to modify, you add an interface and a class for the extension data view, as shown in the following example. 

 import { featureInstalled, FeaturesSet } from "client-controls"; import { GLHistoryEnqFilter } from "src/screens/GL/GL401000/GL401000"; 

 export interface GLHistoryEnqFilter_MultiCurrency extends GLHistoryEnqFilter { } @featureInstalled(FeaturesSet.Multicurrency) export class GLHistoryEnqFilter_MultiCurrency { ShowCuryDetail: PXFieldState<PXFieldOptions.CommitChanges>; } 

 For more examples of adjustments of TypeScript code, see UI Adjustments in HTML and TypeScript: TypeScript Examples. 

#### Extension in HTML 

 In the HTML file of an extension, you can modify the layout of the screen, if necessary. The following code shows an example of a modification. 

 <template> <field after="#columnSecond [name='SubCD']" name="ShowCuryDetail"></field> </template> 

 In this example, the after attribute of the field tag shows that the ShowCuryDetail field should be placed aer the tag with the SubCD name in the container with the columnSecond ID. 

 All tags that customize the original HTML code of an Acumatica ERP form must be located on the highest level of the extension layout—that is, in the template tag of the highest level. 

 For more examples of layout adjustments, see UI Adjustments in HTML and TypeScript: HTML Examples. 


<!-- PAGE_BREAK -->
 Customizing Acumatica ERP Forms in HTML and TypeScript | 142 

### UI Customization Development: To Add Elements to an Acumatica ERP Form 

 This activity will walk you through the process of adding elements to an existing Acumatica ERP form. 

#### Story 

 Suppose that you need to add two elements to the Stock Items (IN202500) form, as shown in the following screenshot. 

 Figure: Elements to be added to the Stock Items form 

 That is, the customization of this form will include adding the following elements to the Item Defaults section of the General tab: 

- The **Repair Item** check box, which will be used to indicate whether the selected stock item is a repair item. 

- The **Repair Item Type** box, which will hold the repair item type to which the repair item belongs. The box     will contain the following predefined options: _Battery_ , _Screen_ , _Screen Cover_ , _Back Cover_ , or _Motherboard_. You have already implemented the backend of the form in the _PhoneRepairShop_ customization project, which includes the following additions: 

- Two custom field declarations in the extension of the IN.InventoryItem data access class (DAC). 

- One custom event handler, which you have added to the extension of the InventoryItemMaint graph.     You have used the RowSelected event handler to configure the UI presentation logic. You have also already added the custom UsrRepairItem and UsrRepairItemType columns to the InventoryItem database table of the application database. 

#### Process Overview 

 You will create an extension of the Modern UI of the Stock Items (IN202500) form in TypeScript and HTML, build the source code of the UI of the form, and test the changes. 


<!-- PAGE_BREAK -->
 Customizing Acumatica ERP Forms in HTML and TypeScript | 143 

#### System Preparation 

 Before you begin the customization of the UI of the Stock Items (IN202500) form, do the following: 

1. Complete the following prerequisite activity: _Modern UI Development: To Deploy an Instance with Custom_     _Forms and the Modern UI_. 

2. Confirm that the prepared instance contains the following items: 

- The InventoryItemMaint_Extension graph extension in the customization code 

- The InventoryItemExt DAC extension in the customization code 

- The UsrRepairItem and UsrRepairItemType columns in the InventoryItem database table 

3. Complete the following prerequisite activity: _Modern UI Development: To Build the Source Code of All_     _Acumatica ERP Forms for Modern UI Development_. 

#### Step 1: Creating Files for the Extension 

 To create the Modern UI for the new UI elements on the Stock Items (IN202500) form, you need to create TypeScript and HTML files for the form. 

 In the FrontendSources\screen\src\development\screens\IN\IN202500 folder, create the following files: 

- IN202500_PhoneRepairShop.ts 

- IN202500_PhoneRepairShop.html 

#### Step 2: Extending the Screen Class in TypeScript 

 To customize the Stock Items (IN202500) form in TypeScript, you need to extend the screen class of the form. Do the following: 

1. In the IN202500_PhoneRepairShop.ts file, add the following import directive. The directive     imports the IN202500 class, which is the screen class of the _Stock Items_ form. 

 import { IN202500, } from "src/screens/IN/IN202500/IN202500"; 

2. Define the interface that extends the IN202500 screen class of the form and the class with the same name     as the interface name as follows. 

 export interface IN202500_PhoneRepairShop extends IN202500 { } export class IN202500_PhoneRepairShop { 

 } 

#### Step 3: Extending the View Class in TypeScript 

 To add elements to the Item Defaults section of the General tab of the Stock Items (IN202500) form in TypeScript, you need to extend the view class that provides data for the Item Defaults section. Proceed as follows: 

1. Review the IN202500.html file in the FrontendSources\screen\src\screens\IN\IN202500     folder. You can see that the property for the view class for the **Item Defaults** section of the **General** tab of     the form is ItemSettings, as shown in the following screenshot. 


<!-- PAGE_BREAK -->
 Customizing Acumatica ERP Forms in HTML and TypeScript | 144 

 Figure: The property for the view class 

 In the IN202500.ts file in the same folder, find the name of the view class that corresponds to this property (see the following screenshot). 

 Figure: The view class 

2. In the IN202500_PhoneRepairShop.ts file, update the list of import directives, as the following     code shows. 

 import { IN202500, ItemSettings } from "src/screens/IN/IN202500/IN202500"; import { PXFieldState, PXFieldOptions, } from "client-controls"; 

3. Add an interface and a class for the extension data view as follows. 

 export interface ItemSettings_PhoneRepairShop extends ItemSettings { } export class ItemSettings_PhoneRepairShop {} 

4. In the ItemSettings_PhoneRepairShop class, specify the properties for the UsrRepairItem and     UsrRepairItemType fields of the data view, as shown below. You use the name of the data field as the     property name. 

 export class ItemSettings_PhoneRepairShop { UsrRepairItem: PXFieldState<PXFieldOptions.CommitChanges>; UsrRepairItemType: PXFieldState; } 

 For the UsrRepairItem field, changes should be committed to the server; therefore, you have used the PXFieldOptions.CommitChanges option for the property type. 

5. Save your changes. 


<!-- PAGE_BREAK -->
 Customizing Acumatica ERP Forms in HTML and TypeScript | 145 

#### Step 4: Adjusting the Layout in HTML 

 You need to add two elements aer the Item Type box in the Item Defaults section of the General tab of the Stock Items (IN202500) form. Do the following to adjust the layout in HTML: 

1. Review the IN202500.html file in the FrontendSources\screen\src\screens\IN\IN202500     folder once again. You can see that the ItemType field is located in the fieldset with the _fsItemDefaults-_     _General_ ID, as shown in the following screenshot. 

 Figure: The ID of the fieldset 

2. In the IN202500_PhoneRepairShop.html file, which you have created earlier in this activity, add the     following code. 

 <template> <field after="#fsItemDefaults-General [name='ItemType']" name="UsrRepairItem" ></field> <field after="#fsItemDefaults-General [name='UsrRepairItem']" name="UsrRepairItemType" ></field> </template> 

 You have inserted the UsrRepairItem field aer the ItemType field of the fsItemDefaultsGeneral fieldset, and the UsrRepairItemType field aer the UsrRepairItem field. 

3. Save your changes. 

#### Step 5: Building the Source Code 

 Build the source code of the Modern UI of the Stock Items (IN202500) form, including the customization code, by executing the following command in the FrontendSources\screen folder. 

 npm run build-dev ----env customFolder=development screenIds=IN202500 

#### Step 6: Testing the Changes 

 To test your changes, do the following: 

1. Open the _Stock Items_ (IN202500) form in the Modern UI. 

2. Select the _BAT3310EX_ item. 

3. Make sure that the **Repair Item Type** box in the **Item Defaults** section of the **General** tab is available     because the **Repair Item** check box is selected. 


<!-- PAGE_BREAK -->
 Customizing Acumatica ERP Forms in HTML and TypeScript | 146 

4. Clear the **Repair Item** check box and make sure that the **Repair Item Type** box becomes unavailable for     editing. This functionality is implemented in the custom event handler in the backend code. 

5. Do not save your changes. 

### UI Customization Development: To Add a Tab to an Acumatica ERP Form 

 This activity will walk you through the process of adding a tab to an existing Acumatica ERP form. 

#### Story 

 Suppose that you need to add the new Compatible Devices tab to the Stock Items (IN202500) form, as shown in the following screenshot. The tab will contain a table with the compatible serviceable devices for the selected repair item. On this tab, managers of the Smart Fix company will list the devices that can be serviced by using the item. 

 You will place the new tab to the right of the Price/Cost tab. This tab will appear on the form only if the Repair Item check box is selected on the General tab. 

 Figure: A new tab on the Stock Items form 

 You have already implemented the backend of the form in the PhoneRepairShop customization project, which includes the following additions: 

- The RSSVStockItemDevice data access class (DAC) 

- The CompatibleDevices data view in the InventoryItemMaint_Extension graph extension 

- The RowSelected<InventoryItem> event handler in the InventoryItemMaint_Extension     graph extension You have also already added the RSSVStockItemDevice database table to the application database. 

#### Process Overview 

 You will modify the extension of the Modern UI of the Stock Items (IN202500) form in TypeScript and HTML, build the source code of the UI of the form, and test the changes. 

#### System Preparation 

 Before you begin adding the tab to the UI of the Stock Items (IN202500) form, do the following: 

1. Complete the following prerequisite activity: _Modern UI Development: To Deploy an Instance with Custom_     _Forms and the Modern UI_. 


<!-- PAGE_BREAK -->
 Customizing Acumatica ERP Forms in HTML and TypeScript | 147 

2. Confirm that the prepared instance contains the following items: 

- The CompatibleDevices data view and the RowSelected<InventoryItem> event handler in     the InventoryItemMaint_Extension graph extension in the customization code 

- The RSSVStockItemDevice DAC in the customization code 

- The RSSVStockItemDevice database table 

3. Complete the following prerequisite activity: _Modern UI Development: To Build the Source Code of All_     _Acumatica ERP Forms for Modern UI Development_. 

4. Customize the **General** tab of the form by performing the _UI Customization Development: To Add Elements to_     _an Acumatica ERP Form_ prerequisite activity. 

#### Step 1: Modifying the Screen Extension in TypeScript 

 To add a new tab to the Stock Items (IN202500) form in TypeScript, you need to modify the screen extension that you have added in UI Customization Development: To Add Elements to an Acumatica ERP Form. Do the following: 

1. In the IN202500_PhoneRepairShop.ts file in the FrontendSources\screen\src     \development\screens\IN\IN202500\extensions folder, add createCollection to the list     of directives imported from client-controls. 

2. In the IN202500_PhoneRepairShop class, define the property for the data view that corresponds to     the table on the tab by using the following code. Because the data view is used to display a table, you need     to initialize the property with the createCollection method. The input parameter of this method is an     instance of the view class that you will define in the next step. 

 export class IN202500_PhoneRepairShop { CompatibleDevices = createCollection(RSSVStockItemDevice); } 

#### Step 2: Defining the View Class for the Tab in TypeScript 

 You need to define the view class for the Compatible Devices tab of the Stock Items (IN202500) form in TypeScript. Proceed as follows: 

1. In the IN202500_PhoneRepairShop.ts file, add PXView, gridConfig, and GridPreset to the     list of directives imported from client-controls. 

2. Define the RSSVStockItemDevice view class as follows. 

 export class RSSVStockItemDevice extends PXView { DeviceID: PXFieldState<PXFieldOptions.CommitChanges>; DeviceID_description: PXFieldState; } 

 For the DeviceID field, changes should be committed to the server; therefore, you have used the PXFieldOptions.CommitChanges option for the property type. The DeviceID_description field is the description that is available through the selector control of the DeviceID field. 

3. Add the gridConfig decorator to the view class, as the following code shows. In the gridConfig     decorator, you must specify the preset property. Because you need an editable table on the tab, you use     the _Details_ preset. 

 @gridConfig({ preset: GridPreset.Details }) export class RSSVStockItemDevice extends PXView { DeviceID: PXFieldState<PXFieldOptions.CommitChanges>; 


<!-- PAGE_BREAK -->
 Customizing Acumatica ERP Forms in HTML and TypeScript | 148 

 DeviceID_description: PXFieldState; } 

4. Save your changes. 

#### Step 3: Adjusting the Layout in HTML 

 You need to add the Compatible Devices tab aer the Price/Cost tab on the Stock Items (IN202500) form. Do the following to adjust the layout in HTML: 

1. Review the IN202500.html file in the FrontendSources\screen\src\screens\IN\IN202500     folder, and locate the qp-tab tag inside the qp-tabbar tag that defines the **Price/Cost** tab. The qp-tab     tag has the _tab-PriceCost_ ID. 

2. In the IN202500_PhoneRepairShop.html file, add the following code aer the second field tag. 

 <qp-tab after="#tab-PriceCost" id="tab-CompatibleDevices" caption="Compatible Devices" > <qp-grid id="grid-CompatibleDevices" view.bind="CompatibleDevices"> </qp-grid> </qp-tab> 

 You have inserted the tab aer the last tab of the tab bar. 

3. Save your changes. 

#### Step 4: Building the Source Code 

 Build the source code of the Modern UI of the Stock Items (IN202500) form, including the customization code, by executing the following command in the FrontendSources\screen folder. 

 npm run build-dev ----env customFolder=development screenIds=IN202500 

#### Step 5: Testing the Changes 

 To test your changes, open the Stock Items (IN202500) form in the Modern UI and do the following: 

1. Select the _BAT3310EX_ item and make sure that the **Compatible Devices** tab is displayed for it. (The tab is     displayed because the **Repair Item** check box is selected on the **General** tab.) 

2. On the **Compatible Devices** tab, add the _Nokia3310_ device to the list. 

3. Save your changes. 

4. In the Summary area, select the _HEADSET_ item and make sure that the **Compatible Devices** tab is not     displayed for this item. (This is because the **Repair Item** check box is cleared.) 


<!-- PAGE_BREAK -->
 Including the Modern UI Changes in a Customization Project | 149 

## Including the Modern UI Changes in a Customization 

## Project 

 You may need to distribute the changes that you have made to the Modern UI of your Acumatica ERP instance to other instances. As a part of this process, you need to create a customization project and include all the Modern UI changes in this customization project. You then export the project as a ZIP file. In the target instance, you import the file and publish this customization project. 

 In this chapter, you can find information about how to include Modern UI changes in a customization project. For details about importing, exporting, and publishing customization projects, see Managing Customization Projects and Publishing Customization Projects. 

### Customization Project with UI Changes: General Information 

 To distribute the changes that you have made to the Modern UI of your Acumatica ERP instance to other Acumatica ERP instances, you need to include your Modern UI files in a customization project. You include the Modern UI files in a customization project on the Modern UI Files page of the Customization Project Editor. 

 The Modern UI changes are applied to each tenant of an Acumatica ERP instance independently. 

#### Learning Objectives 

 In this chapter, you will learn how to include changes to the Modern UI in a customization project. 

#### Applicable Scenarios 

 You include changes to the Modern UI in a customization project if you need to use these changes in another Acumatica ERP instance. 

#### Preparation for Publishing a Customization Project with Modern UI Files 

 For the publication of customization projects with Modern UI files, Node.js must be installed, including the node version manager (nvm) and node package manager (npm). The Acumatica ERP Configuration wizard installs the needed version of Node.js if the Install NodeJS check box is selected on the Website Configuration page of the wizard. 

 If you want to use the version of Node.js that has already been installed in your system, you can clear the Install NodeJS check box and add the following key to the appSettings section of the Web.config file of your instance: <add key="NodeJs:NodeJsPath" value="C: \Program Files\NodeJs"/>, where value specifies the path to the location where Node.js has been installed. 

 Before publishing a customization project with Modern UI files, you may need to further configure the Acumatica ERP instance by specifying the following keys in the Web.config file of the instance: 

- NodeJs:NpmCachePath: Specifies the path for the npm cache, such as C:\instances\site     \App_Data\npm-cache. This key is mostly intended for production use. 

- NodeJs:NodeTempPath: Specifies the path to the Node.js temporary folder. You might need to use this     parameter if a customization project was designed for one version of Node.js and you are upgrading to 


<!-- PAGE_BREAK -->
 Including the Modern UI Changes in a Customization Project | 150 

 Acumatica ERP with a different version Node.js. You can specify the path similar to the one specified in the existing web.config file. An example of the path is shown below. 

 <add key="NodeJs:NoteTempPath" value="C:\Acumatica\NodeTemp\PhoneRepairShop" /> 

 The parameter is specified in the web.config file by default. 

- NodeJs:DevBuild: If the value is _true_ , turns on developer mode, which will be used while the     Customization Project Editor compiles the UI sources. 

- NodeJs:CompileAllScreens: If the value is _false_ , during publication of customization projects,     compiles the Modern UI source code only for the Acumatica ERP forms whose Modern UI source code has     been modified. If the value is _true_ , all Modern UI source code is compiled. 

#### Adding of Files to a Customization Project 

 To add Modern UI files to a customization project, you click the Modern UI Files node in the navigation pane of the Customization Project Editor. On the toolbar of the Modern UI Files page, you click Add New Record ; in the dialog box that opens, you select the Modern UI files that you need to include in the customization project. 

#### Publishing of a Customization Project with Modern UI Files 

 You can publish a customization project with Modern UI files in the same way as you publish any other customization project. For details about how to publish a customization project, see Publishing Customization Projects. 

 If any error related to the Modern UI files occurs during the publication of the customization project, you can find the log of the compilation of the Modern UI files in the App_Data\logs folder of the instance. 

### Customization Project with UI Changes: How UI Customization Works 

 In this topic, you can find information about how a customization project that includes changes to the Modern UI works, including how it is published and unpublished. 

#### Where the Source Code of the Modern UI Changes Is Stored 

 When a customization project that contains changes to the Modern UI is published for a particular tenant, the system copies the UI changes included in the customization project to the FrontendSources\screen \src\customizationScreens\<Tenant Name> folder. The FrontendSources\screen\src \customizationScreens folder contains a subfolder for each tenant for which a customization project with the Modern UI changes is published. 

 Each tenant folder contains the Screens folder. The customizationScreens\<Tenant Name>\screens folder contains subfolders with two-letter names. For each new form or each form whose UI has been customized, the subfolder contains a folder with the screen ID as the folder name, such as S0301000. This folder includes the following files and folders: 

- For a form whose UI has been customized, the extensions folder, which contains TypeScript and HTML     files for customization-related extensions of the form. 

- For a new form, the HTML and TypeScript files that have the screen ID as the file name, such as     SO304000.ts and SO304000.html. The views.ts file and the Extensions folder may also be     included for the form. Below you can see an example of the hierarchy of the files and folders with code that customizes the Modern UI. 


<!-- PAGE_BREAK -->
 Including the Modern UI Changes in a Customization Project | 151 

 Site 

- FrontendSources\screen\src\customizationScreens 

- - Tenant 1 

- - - screens 

- - - - SO 

- - - - - S0301000 

- - - - - - extensions 

- - - - - - - SO301000_customization1.html 

- - - - - - - SO301000_customization1.ts 

- - - - - SO304000 

- - - - - - extensions (optional) 

- - - - - - - SO304000_extension1.html 

- - - - - - - SO304000_extension1.ts 

- - - - - - SO304000.html 

- - - - - - SO304000.ts 

- - - - - - views.ts (optional) 

#### Where the Compiled UI Changes Are Saved 

 When a customization project that contains changes to the Modern UI is published for a particular tenant, the system takes the original UI sources and the UI sources from the FrontendSources\screen\src \customizationScreens\<Tenant Name> folder, compiles them, and produces the files that include all UI changes from the customization project in the Scripts\Screens\<Tenant Name> folder. The files outside of the Scripts\Screens\<Tenant Name> folder remain unchanged. 

 Below you can see an example of the hierarchy of the files and folders with the compiled sources of the Modern UI. 

 Site 

- Scripts 

- - Screens 

- - - Tenant 1 

- - - - S0301000.hashcode.bundle.js 

- - - - S0301000.html 

- - - - S0304000.hashcode.bundle.js 

- - - - S0304000.html 

- - - S0301000.hashcode.bundle.js 

- - - S0301000.html 

#### How the UI Customization Project is Unpublished 

 When a customization project that contains changes to the Modern UI is unpublished for a particular tenant, the system removes the Scripts\Screens\<Tenant Name> and customizationScreens\<Tenant Name> folders. 

#### How a Form Works Aer the Publication of a UI Customization Project 

 When a user opens an Acumatica ERP form, the system first looks for the sources of the form in the Scripts \Screens\<Tenant Name> folder. If the files for this form exist in this folder, the system displays the form with the UI changes from the customization project. If no files for this form are found in the folder, the system displays the original form. 


<!-- PAGE_BREAK -->
 Including the Modern UI Changes in a Customization Project | 152 

### Customization Project with UI Changes: To Include Source Files in a Customization 

### Project 

 This activity will walk you through the process of including source files in a customization project. 

#### Story 

 Suppose that for the Smart Fix company, you’ve migrated multiple forms to the Modern UI and added elements to the Modern UI of particular forms. You need to include all these changes in a customization project to be able to distribute the changes to the Acumatica ERP instances that are used by employees of the Smart Fix company. 

#### Process Overview 

 You will rebuild all your changes and include them in a customization project. 

#### System Preparation 

 Before you begin including Modern UI source files in a customization project, do the following: 

1. Perform the following prerequisite activities:     a. _Modern UI Development: To Deploy an Instance with Custom Forms and the Modern UI_     b. _Modern UI Development: To Build the Source Code of All Acumatica ERP Forms for Modern UI Development_ 

2. Complete at least one of the following activities: 

- _UI Definition in HTML and TypeScript: To Create the UI of a Form_ 

- _UI Definition in HTML and TypeScript: To Convert an Acumatica ERP Form to the Modern UI with the_     _Converter_ 

- _Data Entry Form: To Create the UI of a Data Entry Form_ 

- _Processing Form: To Create the UI of a Processing Form_ 

- _UI of a Setup Form: To Create the UI of a Setup Form_ 

3. Perform at least one of the following activities: 

- _UI Customization Development: To Add Elements to an Acumatica ERP Form_ 

- _UI Customization Development: To Add a Tab to an Acumatica ERP Form_ 

#### Step 1: Building the Source Files 

 To build the source code of the Modern UI for the current tenant, including the customization code, execute the following command in the FrontendSources folder. 

 npm run build-dev 

#### Step 2: Including Files in the Customization Project 

 You use the development folder located in the FrontendSources\screen\src\ folder of your instance to customize forms for the Modern UI. Once you've finished, you can include these files in your customization project. 

 To redistribute the Modern UI customization files, you need to include them in the customization project with the backend customization code as follows: 


<!-- PAGE_BREAK -->
 Including the Modern UI Changes in a Customization Project | 153 

1. On the _Customization Projects_ (SM204505) form, click the _PhoneRepairShop_ project name to open this     customization project. 

2. On the navigation pane of the Customization Project Editor, which opens, click **Modern UI Files**. The     Modern UI Files page opens. 

3. On the page toolbar, click **Add New Record**. 

4. In the **Add Files** dialog box, select the unlabeled check box in the rows with the following files: 

- development\screens\IN\IN202500\extensions\IN202500_PhoneRepairShop.html 

- development\screens\IN\IN202500\extensions\IN202500_PhoneRepairShop.ts 

- development\screens\RS\RS101000\RS101000.html 

- development\screens\RS\RS101000\RS101000.ts 

- development\screens\RS\RS201000\RS201000.html 

- development\screens\RS\RS201000\RS201000.ts 

- development\screens\RS\RS202000\RS202000.html 

- development\screens\RS\RS202000\RS202000.ts 

- development\screens\RS\RS301000\RS301000.html 

- development\screens\RS\RS301000\RS301000.ts 

- development\screens\RS\RS501000\RS501000.html 

- development\screens\RS\RS501000\RS501000.ts 

 You may not have particular files if you have not performed the prerequisite activities, in which these files and folders are created. In this case, you can select the check boxes for all files from the list above that appear in the dialog box, and disregard the other listed files. 

5. Click **Save**. 


<!-- PAGE_BREAK -->
 Adjusting HTML and TypeScript Code | 154 

## Adjusting HTML and TypeScript Code 

 In this part, you will learn how to adjust the HTML layout and TypeScript code of Acumatica ERP forms and reusable UI definitions. These skills are essential when you are working on customization projects that require changes in the Modern UI of Acumatica ERP or when you are developing complex forms that need to be broken into smaller, more manageable components. 

### UI Adjustments in HTML and TypeScript: General Information 

 The frontend code of an Acumatica ERP form includes the UI definition in HTML and TypeScript. You may need to adjust the layout of the form in HTML or modify the views and fields that are available on the form in TypeScript. 

#### Learning Objectives 

 In this chapter, you will learn how to do the following: 

- Adjust the layout of an Acumatica ERP form or a reusable UI definition in HTML 

- Adjust the TypeScript code of an Acumatica ERP form or a reusable UI definition 

#### Applicable Scenarios 

 You adjust the layout or TypeScript code of an Acumatica ERP form in the following cases: 

- You are developing a customization project that changes the Modern UI of a predefined Acumatica ERP     form. 

- You are developing a complex Acumatica ERP form with multiple tabs and dialog boxes and want to split the     frontend code of the form into smaller parts by using extensions. In the extensions, you need to connect the     smaller parts to the whole form by adjusting the layout or the TypeScript code of the form. 

- You are developing an Acumatica ERP form for which the availability of particular UI elements depends on     a feature. You add these elements in extensions and connect these elements to the whole form by adjusting     the layout or TypeScript code of the form. 

- You have developed a reusable UI definition and need to insert it into an Acumatica ERP form while     adjusting the layout or TypeScript code that is defined in the reusable UI definition. (For details about     reusable UI definitions, see _Reusing a UI Definition_ .) 

#### UI Adjustments in HTML and TypeScript 

 You can adjust the layout of an Acumatica ERP form in HTML by adding controls to the form, removing them from the form, or reodering them. You can also modify the layout based on a condition. For examples of layout adjustments, see UI Adjustments in HTML and TypeScript: HTML Examples. 

 All tags that customize the original HTML code of an Acumatica ERP form must be located on the highest level of the extension layout—that is, in the template tag of the highest level. 

 In TypeScript, you may need to add new fields or view classes to the form, modify field options, and add, remove, or modify decorators of fields or view classes. For examples of these adjustments, see UI Adjustments in HTML and TypeScript: TypeScript Examples. 


<!-- PAGE_BREAK -->
 Adjusting HTML and TypeScript Code | 155 

### UI Adjustments in HTML and TypeScript: HTML Examples 

 You may need to add, remove, or replace particular UI elements to adjust the UI definition of the form. In this topic, you can find examples of layout adjustment in HTML. 

 All tags that customize the original HTML code of an Acumatica ERP form must be located on the highest level of the extension layout—that is, in the template tag of the highest level. 

#### Adding Fields to the End of a Fieldset 

 Suppose that you need to add fields to a fieldset that is already defined on the form. The following code adds two fields to the fieldset that has id="main". These fields will be added to the end of the fieldset, as shown in the following screenshot. 

 Figure: Two boxes at the end of the fieldset 

 <template> <template modify="#main"> <field name="SiteID"></field> <field name="InventoryID"></field> </template> </template> 

#### Modifying Fields in a Fieldset 

 To add a field in the middle of a fieldset, in one of the following attributes of the field tag, you use a CSS selector that specifies the field relative to which you need to place the new elements: 

- before: Places the element before the element referenced in this attribute. 

- after: Places the element aer the element referenced in this attribute. 

- append: Places the element aer all child elements of the element referenced in this attribute. 

- prepend: Places the element before all child elements of the element referenced in this attribute. 

- modify: Modifies the attribute values of the element referenced in this attribute. 

- remove: Removes the element referenced in this attribute. 

- replace: Replaces the element referenced in this attribute. In the following example, the FieldName field is inserted aer the OriginalFieldName field of the secondary fieldset. 

 <template> <field name="FieldName" after="#secondary [name='OriginalFieldName']"> </field> </template> 


<!-- PAGE_BREAK -->
 Adjusting HTML and TypeScript Code | 156 

#### Reordering Fieldsets 

 To modify the order of fieldsets on an Acumatica ERP form, you add the qp-fieldset tag, specify the ID of the fieldset that you want to move in the modify attribute, and specify the new location by using the after or before attributes. In the following example, the fieldset with the SomeID ID is placed aer the fieldset with the AnotherID ID. 

 <template> <qp-fieldset modify="#SomeID" after="#AnotherID"></qp-fieldset> </template> 

#### Modifying the Layout Based on a Condition 

 To modify the layout only if a condition is fulfilled, you add the if.bind attribute to the container tag that you want to modify. In the following code, the tab is added only if the check box that corresponds to the ShowPutAway field is selected. 

 <template> <qp-tab after="#tabPutAway" id="tabTransfers" caption="Transfers" if.bind="HeaderView.ShowPutAway.value == true"> <qp-grid id="formTransfers" view.bind="RelatedTransfers"> </qp-grid> </qp-tab> </template> 

### UI Adjustments in HTML and TypeScript: TypeScript Examples 

 You may need to adjust the TypeScript code of the form, such as to add or replace a decorator. In this topic, you can find examples of TypeScript adjustment. 

 Suppose that the following view class is defined for an Acumatica ERP form. It can be defined directly in the code of the form or in a reusable UI definition. The following sections describe how to adjust this definition in an extension. 

 @featureInstalled("PX.Objects.CS.FeaturesSet+CommerceIntegration") export class Address extends PXView { OverrideAddress: PXFieldState<PXFieldOptions.CommitChanges>; AddressLine1: PXFieldState<PXFieldOptions.CommitChanges>; AddressLine2: PXFieldState<PXFieldOptions.CommitChanges>; City: PXFieldState<PXFieldOptions.CommitChanges>; State: PXFieldState<PXFieldOptions.CommitChanges>; PostalCode: PXFieldState<PXFieldOptions.CommitChanges>; CountryID: PXFieldState<PXFieldOptions.CommitChanges>; Latitude: PXFieldState; Longitude: PXFieldState; } 

#### Adding Fields 

 Suppose that for a particular form you need to add a field to a view class in an extension. You create an extension of the view class and add the needed field. 


<!-- PAGE_BREAK -->
 Adjusting HTML and TypeScript Code | 157 

 The following code extends the Address view class, whose definition is shown in the previous section, and adds the AddressLine3 field to it. 

 export interface RS203040_AddressWithLine3 extends Address { } export class RS203040_AddressWithLine3 { AddressLine3: PXFieldState<PXFieldOptions.CommitChanges>; } 

#### Adding Field Options 

 Suppose that for a particular form, you need to specify PXFieldOptions.CommitChanges for a field that is already defined in a view class of the form. You create an extension of the view class and add this field with the PXFieldOptions.CommitChanges option. 

 The following code extends the Address view class, whose definition is available in the beginning of this topic, and specifies the PXFieldOptions.CommitChanges option for the Latitude field. 

 export interface RS203040_AddressWithLatitudeCommitChanges extends Address { } export class RS203040_AddressWithLatitudeCommitChanges { Latitude: PXFieldState<PXFieldOptions.CommitChanges>; } 

#### Replacing Field Options 

 Suppose that for a particular form, you need to remove PXFieldOptions.CommitChanges for a field that is already defined in a view class of the form. You create an extension of the view class and add this field with the fieldOptions decorator assigned. 

 The following code extends the Address view class, whose definition is available in the beginning of this topic, and removes the PXFieldOptions.CommitChanges option for the AddressLine2 field. 

 export interface RS203040_AddressWithoutCommit extends Address { } export class RS203040_AddressWithoutCommit { @fieldOptions({ commitChanges: false }) AddressLine2: PXFieldState<PXFieldOptions.CommitChanges>; } 

#### Adding a Decorator for a Field or Class 

 Suppose that for a particular form, you need to add a decorator for a field of a view class or for the view class itself. To add a decorator for a view class, you create an extension for the view class and add the needed decorator for it. To add a decorator for a field of the class, you extend the view class and add this field with the needed decorator. 

 If a decorator is specified for the field or class and the added decorator is the same as the original one, the options specified in the added decorator completely override the options specified in the original decorator. 

 The following code extends the Address view class and specifies the controlConfig decorator for the State field. 

 export interface RS203040_AddressWithEditableState extends Address { } export class RS203040_AddressWithEditableState { @controlConfig({allowEdit: true, }) State: PXFieldState<PXFieldOptions.CommitChanges>; } 


<!-- PAGE_BREAK -->
 Adjusting HTML and TypeScript Code | 158 

#### Removing a Decorator from a Field or Class 

 Suppose that for a particular form, you need to remove the decorator from a field of a view class or from the view class itself. To remove the decorator from a view class, you extend the view class and add the removeDecorator decorator for it. To remove the decorator from a field of the class, you extend the view class and add this field with the removeDecorator decorator. 

 The following code extends the Address view class and removes the featureInstalled decorator from the class. 

 export interface RS203040_AddressNoFeature extends Address { } @removeDecorator("featureInstalled") export class RS203040_AddressNoFeature { } 

#### Modifying a Decorator for a Field or Class 

 Suppose that for a particular form, you need to modify the options specified in the decorator for a field of a view class or for the view class itself. To modify a decorator for a view class, you extend the view class and add the updateDecorator decorator for it. To modify a decorator for a field of the class, you extend the view class and add this field with the updateDecorator decorator. 

 The options specified in the updateDecorator decorator are merged with the original options of the decorator. The following rules are used during the merge: 

- If the original decorator specifies an option and this option is overridden in the updateDecorator     decorator, the new value is used. 

- If the original decorator specifies an option and this option is not defined in the updateDecorator     decorator, the value from the original decorator is used. The following code extends the WorkbenchTreeNode view class and updates the options specified in the treeConfig decorator of the class. 

 export interface RS203040_WorkbenchTreeNodeExt extends WorkbenchTreeNode { } @updateDecorator("treeConfig", "topBarItems", { Rename: { config: { commandName: "rename", id: "rename", text: "Rename", images: { normal: "control@EditN" } } }, }) export class RS203040_WorkbenchTreeNodeExt { } 


<!-- PAGE_BREAK -->
 Customizing Modern UI Forms in the Customization Project Editor | 159 

## Customizing Modern UI Forms in the Customization 

## Project Editor 

 In this chapter, you will learn how to use the Customization Project Editor to customize new and existing forms that you have developed for the Modern UI. 

### Modern UI Editor: General Information 

 In the Customization Project Editor, you can use the Modern UI Editor page to customize the Modern UI forms that you’ve added to your customization project. These include custom forms that you’ve developed for the Modern UI from scratch, as well as existing Acumatica ERP forms that you’ve switched to the Modern UI in your instance. 

#### Learning Objectives 

 In this chapter, you’ll learn how to do the following: 

- View the HTML and TypeScript code of a form 

- Browse all view classes and fields relevant to a form in a convenient tree structure 

- Add a custom field to a form 

- Add a view to a form 

- Create a custom TypeScript extension for a form 

- Customize the TypeScript properties of a view or field 

#### Applicable Scenarios 

 You customize a form in the Modern UI by using the Modern UI Editor in the following cases: 

- You want to customize the layout of a new or existing form and automatically generate the necessary     extension file. 

- You’ve added a new field or a view to a form in the backend code, and you now need to configure it so that     it’s accessible in the Modern UI of the form. 

- You need to create a custom TypeScript extension for a form to address a specific scenario. 

- You need to customize the TypeScript properties of a view or field by adding new decorators to it. 

#### Overview of the Modern UI Editor 

 The Modern UI Editor fits seamlessly into your customization process, as shown in the example below of customizing the Stock Items (IN202500) form. To open the editor, click Modern UI Editor (Item 1) in the navigation pane under Screens. 

 Here’s what you can do for any form that’s been migrated to the Modern UI: 

- **View code directly:** See HTML and TypeScript files (Items 2 and 3). 

 The code displayed on the HTML and TypeScript tabs represents the actual state of a form. It combines the code from system files and published customization projects, as well as changes that are currently saved but unpublished. 

- **Navigate easily:** Browse all view classes and fields relevant to the form in the element tree (Item 4) or click     **Customized** (Item 5) to show only the customized ones. 


<!-- PAGE_BREAK -->
 Customizing Modern UI Forms in the Customization Project Editor | 160 

- **Customize a view or a field:** Select a view or field in the element tree; then view its original TypeScript     properties or add new ones on the **View or Field Customization** tab (Item 6). 

- **Customize the HTML Code:** Edit the HTML code to add your customized fields and views. The system     generates an HTML extension that implements the differences between the original and customized HTML     code. You can preview these changes by clicking **Preview HTML Extension** on the tab toolbar (Item 7). 

**_Figure: Basic Elements of the Modern UI Editor_** 

But that’s not all: The page toolbar of the Modern UI Editor provides the following capabilities for quickly customizing any form that has been migrated to the Modern UI: 

- **Add a field or view:** Add a field or view to your form (Items 1 and 2 below). When you save your changes,     the system generates a TypeScript extension for new views and fields. The file names of these extensions     have the _generated suffix. 

- **Create and edit a custom TypeScript extension:** Click **Edit TypeScript Extension** (Item 3) to quickly     create or edit a custom TypeScript extension. You can also view the code of system-generated TypeScript     extensions, but you can’t edit them. 

- **Quickly save or cancel changes:** Use the **Save** and **Cancel** buttons on the page toolbar (Item 4) to save     or discard changes that you’ve made to an HTML or TypeScript extension on the **HTML** or **View or Field**     **Customization** tabs. 


<!-- PAGE_BREAK -->
 Customizing Modern UI Forms in the Customization Project Editor | 161 

 Figure: Page toolbar of the Modern UI Editor 

 The generated TypeScript and HTML extensions are automatically added to your customization project. 

 For more details about the features of the Modern UI Editor, see Modern UI Editor. 

### Modern UI Editor: To Add a Field 

 To add a custom field to a fieldset, you need to create TypeScript and HTML extensions of the form. You can use the Modern UI Editor to generate these extensions. The generated files are automatically saved to the customization project and can later be built and published. 

 This activity will walk you through the process of adding a custom field to a fieldset and generating the corresponding TypeScript and HTML extension files. 

#### Story 

 Suppose that you need to add a custom field, UsrRepairItem, to the Item Settings section on the General tab of the Stock Items (IN202500) form. You need to create a TypeScript extension, which will include the definition of this custom field. You also need to create an HTML extension to place the field in the appropriate fieldset. 

#### Process Overview 

 By using the Add Field button of the Modern UI Editor, you will add the custom field and generate the TypeScript extension. You’ll then use the element tree to locate the custom field, add the field in the appropriate position in the HTML layout, and create an HTML extension. 

#### System Preparation 

 Before you begin performing the steps of this activity, do the following: 

1. Install an Acumatica ERP instance (Version 2025 R2 or later) with the _T100_ dataset. 


<!-- PAGE_BREAK -->
 Customizing Modern UI Forms in the Customization Project Editor | 162 

2. Create a customization project and customize an existing form, such as _Stock Items_ (IN202500), by adding a     custom field to the corresponding database table and creating a DAC extension. 

#### Step 1: Adding the Field and Generating the TypeScript Extension 

 To add the custom field and generate the extension: 

1. Open the Modern UI Editor for this form. 

2. On the page toolbar, click **Add Field** (Item 1 below), which opens the **Add Field** dialog box. 

3. Specify the data view where the new field is accessible. The corresponding DAC is selected automatically. 

4. Specify the field name in the **Field or Display Name** box; the field appears automatically in the table as you     start typing its name (Item 2). 

 Figure: The Add Field dialog box 

5. Select the unlabeled check box for the field in the table. 

6. Click **Save to Extension** (Item 3), which closes the dialog box.     The file with the generated TypeScript extension is added to your customization project and listed on the     _Modern UI Files_ page of the Customization Project Editor. 

7. To apply the changes, publish the customization project. The system validates and builds the frontend code,     including the TypeScript extension. 

#### Step 2: Adding the Field to the HTML Code and Generating the HTML Extension 

 To customize the HTML layout, you can use the Modern UI Editor to generate the HTML extension. The file is automatically saved to the customization project and can later be built and published. 

 To add the custom field to the Item Settings section on the General tab of the Stock Items (IN202500) form: 


<!-- PAGE_BREAK -->
 Customizing Modern UI Forms in the Customization Project Editor | 163 

1. Open the Modern UI Editor for the form. 

2. In the element tree, locate the custom field you want to add to the HTML template: Click **Customized** (Item     1 below) to list all the custom views and fields, or use the Search box (Item 2) to find the custom field.     Notice the blue _Customized_ tag next to the UsrRepairItem field (Item 3), which indicates that this is a     custom field. 

3. On the **HTML** tab of the Modern UI Editor, find the fieldset where the field should be. Place the cursor aer     the definition of the element you want it to follow (Item 4). 

 Figure: Adding a field to the HTML code 

4. In the element tree, click the arrow button next to the new field (Item 5 above).     The new field tag appears in the HTML code. 

5. On the page toolbar, click **Save**. The generated file is added to the _Modern UI Files_ page. 

6. To apply the changes, publish the customization project. 

 The editor handles the technical details of creating properly formatted customization files so that you can focus on your code changes rather than file management. 

### Modern UI Editor: Adding a View 

 In the Modern UI Editor you can quickly add a view that you’ve declared in a form’s graph or a graph extension to the frontend code. You click Add View on the page toolbar to open the wizard you’ll use to add the view. Once you’ve finished, the system generates a TypeScript extension with the _generated suffix in its file name. 

#### Adding a View 

 To add an existing view to a form’s TypeScript code, perform these general steps: 

1. Open the Modern UI Editor for the form. 

2. On the page toolbar, click **Add View** (Item 1 below) to open the corresponding wizard. 


<!-- PAGE_BREAK -->
 Customizing Modern UI Forms in the Customization Project Editor | 164 

3. In Step 1, specify the view in the **View Name** box (Item 2). The remaining boxes are filled in automatically.     Verify that their values are accurate and click **Next** (Item 3). 

 Figure: Step 1 of the Add View wizard 

4. In Step 2, in the table with the fields of the selected view, select the unlabeled check boxes for the fields you     want to add (Items 1 and 2 below). Click **Finish** (Item 3). 


<!-- PAGE_BREAK -->
 Customizing Modern UI Forms in the Customization Project Editor | 165 

 Figure: Step 2 of the Add View wizard 

 The system adds the file with the generated TypeScript extension to your customization project and lists it on the Modern UI Files page of the Customization Project Editor. 

 If you’ve previously generated an extension for the form by clicking Add Field or Add View , the system adds the new view and the selected fields to the existing extension file. 

5. To apply the changes, publish the customization project. The system validates and builds the frontend code,     including the TypeScript extension. 

6. To make the view’s selected fields available in the UI, customize the HTML layout of the form, as described     in Step 2 of _Modern UI Editor: To Add a Field_. 

### Modern UI Editor: Creating and Editing a Custom TypeScript Extension 

 The Modern UI Editor gives you the ability to create and edit custom TypeScript extensions. You click Edit TypeScript Extension on the page toolbar to begin creating this extension. Then you specify its name and add your TypeScript code. The system generates the TypeScript extension file using your specified name. 


<!-- PAGE_BREAK -->
 Customizing Modern UI Forms in the Customization Project Editor | 166 

#### Creating and Editing the Extension 

 To create a custom TypeScript extension for a form, perform these general steps: 

1. Open the Modern UI Editor for the form. 

2. On the page toolbar, click **Edit TypeScript Extension** (Item 1 below), which opens the **Edit TypeScript**     **Extension** dialog box. 

3. Optional: Click **New Extension** (Item 2) to clear any previously selected extension in the **Extension Name**     box. 

4. Specify your extension’s name in the **Extension Name** box (Item 3). As you start typing, a drop-down list     appears showing existing custom and system-generated extensions (Item 4). 

 Figure: The Edit TypeScript Extension dialog box 

5. Once you’ve finished typing the name, move the focus away from the **Extension Name** box. The system     generates the boilerplate code for your extension, which is displayed in the code editor (Item 1 below). 

6. Modify the code in the code editor. You can also use the options of the **Add Code Snippet** drop-down menu     (Item 2) to quickly add boilerplate code for a field, view, data view extension, or grid view. For details, see     _Modern UI Editor_. 

7. Click **Save Extension** (Item 3). 


<!-- PAGE_BREAK -->
 Customizing Modern UI Forms in the Customization Project Editor | 167 

 Figure: Generating a custom TypeScript extension 

 The system adds the file with the generated extension to your customization project and lists it on the Modern UI Files page of the Customization Project Editor. 

8. To apply the changes, publish the customization project. The system validates and builds the frontend code,     including the TypeScript extension. 

 To edit the extension, you click Edit TypeScript Extension on the page toolbar, which opens the Edit TypeScript Extension dialog box. Select the extension in the Extension Name box. You then use the code editor to make the changes. Once you’ve finished, click Save Extension. 

 You can also view the code of system-generated extensions on the Edit TypeScript Extension dialog box. However, you can’t edit these extensions. 

### Modern UI Editor: Adding Decorators to the Selected View or Field 

 By using the Modern UI Editor, you can view and customize the TypeScript properties of a view or field. You use the View or Field Customization tab (Item 1 below) of the Modern UI Editor page to view or customize the TypeScript properties of a view or field that is selected in the element tree (Item 2). The original code of the selected view or field is displayed in the Original Code area (Item 3). 

 You use the Add Decorators button (Item 4) on the tab toolbar to add new decorators to the selected view or field and customize the corresponding properties of each decorator. The added decorator code is displayed in 


<!-- PAGE_BREAK -->
 Customizing Modern UI Forms in the Customization Project Editor | 168 

 the Custom Code area (Item 5). You can also manually write the code in this area to customize the TypeScript properties of a view or field. 

 Figure: The View or Field Customization tab 

 Currently, the system only supports adding new decorators to the selected view or field. You can’t view and edit the properties of decorators that are already applied to the selected view or field in the original code. 

 The following section describes the general steps you perform to add a decorator to a selected field. 

#### Adding Decorators to the Selected View or Field 

 Suppose that you need to specify that the UsrRepairItem field, represented by the Repair Item check box in the UI, should be disabled by default. You need to add the @controlConfig<ICheckBoxControlConfig> decorator to this field and set its enabled property to false. You’d perform the following steps: 

1. Click the **Add Decorators** button on the tab toolbar (Item 1 below). 

2. In the le table of the dialog box that opens, select the check box in the **Selected** column for the     _@controlConfig<ICheckBoxControlConfig>_ decorator (Item 2). 

3. In the right table, for the _enabled_ property, select the check box in the **Selected** column (Item 3) and clear     the check box in the **Value** column (Item 4). 

4. Click **Add** (Item 5). 


<!-- PAGE_BREAK -->
 Customizing Modern UI Forms in the Customization Project Editor | 169 

 Figure: The Add Decorators dialog box 

 The added decorator code is displayed in the Custom Code area (Item 1 below). 

5. Click **Save** on the page toolbar (Item 2). 

 Figure: The added decorator code 

 The system updates the corresponding TypeScript extension file with the added code. 

6. To apply the changes, publish the customization project. 


<!-- PAGE_BREAK -->
 Customizing Modern UI Forms in the Customization Project Editor | 170 

To remove the decorator code at any time, you click **Delete** (Item 3 above) and then **Save** on the page toolbar. To apply the changes, publish the customization project again. 


<!-- PAGE_BREAK -->
 Reusing a UI Definition | 171 

## Reusing a UI Definition 

 You can reuse the UI definition of an Acumatica ERP form—or part of a form—in other forms. This approach may be useful if : 

- You need to create a form that’s almost identical to another Acumatica ERP form. 

- You need to reuse a form component in multiple forms. In this part, you’ll learn how to reuse UI definitions in HTML and TypeScript. 

### Reusing of UI Definitions: General Information 

 You can reuse a UI definition as follows: 

- To reuse a TypeScript declaration, extend a screen class or a class that derives from a screen class. 

- To reuse an HTML declaration or any part of it, use one of the following approaches: 

- Add the qp-include tag 

- Specify the template tag’s id in the ref attribute of the control tag 

#### Learning Objectives 

 In this chapter, you’ll learn how to: 

- Reuse the whole UI definition of an Acumatica ERP form for another form 

- Create and use a reusable UI definition with and without parameters 

#### Applicable Scenarios 

 You reuse a UI definition when: 

- You need to implement two almost-identical Acumatica ERP forms, such as _Site Map_ (SM200520) and _Portal_     _Map_ (SM200521). You reuse the UI definition of one form to define the other. 

- You need to implement multiple Acumatica ERP forms with similar UI definitions, such as _Scan and Receive_     (IN301020), _Scan and Issue_ (IN302020), _Scan and Transfer_ (IN304020), and _Scan and Count_ (IN305020). You     implement a reusable UI definition for the common parts and adjust the definition for each form. 

- You need to use identical form components—such as sections, tabs, or dialog boxes—on multiple forms. 

#### Use of the Whole UI Definition of a Form 

 A reusable UI definition that defines an entire form usually contains the declaration of a screen class and view classes. So to use it for your form, you need your screen class to extend the screen class of the UI definition. This way, your screen class will have the same logic and properties (that is, views) as the original screen class. To reuse the HTML template of the UI definition, you need to add the qp-include tag with the reference to the original HTML template. 

 To reuse the UI definition of a form, you need to reuse both the TypeScript declaration and the HTML code: 

1. In the TypeScript file, import the classes from the reusable UI definition, as shown below. You need to     import the screen class and all view classes you plan to use. 

 import { SM200520 } from "../SM200520/SM200520"; 


<!-- PAGE_BREAK -->
 Reusing a UI Definition | 172 

2. In the TypeScript file, extend the screen class defined in the reusable definition. You must specify the graph     type and primary view of the new form in the _graphInfo_ decorator. 

 In the Modern UI, each Acumatica ERP form must use its own graph type. 

 For example, suppose that a reusable definition declares the SM200520 screen class, and you need to reuse it for the screen with SM200521 screen ID. You define the SM200521 class that extends the SM200520 class and specify the graph for the SM200521 screen, as shown below. 

 @graphInfo({ graphType: "PX.SiteMap.Graph.PortalMapMaint" primaryView: "SiteMap", }) export class SM200521 extends SM200520 {} 

 You can use an exact copy of the original class or modify the UI definition inherited from the base class. 

3. In the HTML file for the new form, insert the HTML code of the existing form by using the qp-include tag,     as shown below. 

 <template> <qp-include url="../SM200520/SM200520.html"> </template> 

#### Use of a Reusable UI Definition That Defines Part of a Form 

 A reusable UI definition that defines a part of a form usually contains declarations of view classes but no screen class. So to use the definition for your form, you need to import the view classes from the reusable definition and initialize the views in your screen class. To reuse the HTML template of the UI definition, you need to add the qpinclude tag with a reference to the original HTML template. 

 To use a reusable UI definition that defines part of a form, such as a fieldset: 

1. In the TypeScript file of the form where you need to insert the reusable UI definition, import the view     classes, as shown below. 

 import { Address } from "src/screens/common/form-address/form-address"; 

2. In your form’s screen class, initialize the views and specify the imported view classes as parameters. 

 @graphInfo({ ... }) export class AM310000 extends PXScreen { @viewInfo({ containerName: "Ship-To Address" }) ShippingAddress = createSingle(Address); } 

3. In the HTML code of the form where you need to insert the reusable UI definition, add the qp-include tag     with a reference to this reusable UI definition. If the reusable definition has parameters, provide their values     in the qp-include tag. 

 You can determine whether the reusable definition has parameters by reviewing the qpinclude-parameters tag in the HTML template of the reusable definition. 

 The following example shows the insertion of a reusable UI definition with parameters. (For details, see Reusing of UI Definitions: Reusable UI Definitions with Parameters .) 

 <div slot="B"> 


<!-- PAGE_BREAK -->
 Reusing a UI Definition | 173 

 <qp-include url="src/screens/common/form-address/form-address.html" fs-id="formB" address-view="ShippingAddress" fs-caption="Ship-To Address"> </qp-include> </div> 

#### Adjusting of the Reusable UI Definition 

 Aer inserting a reusable UI definition into a form’s UI definition, you may need to add, remove, or replace particular elements to adjust the definition. Do the following: 

1. In the TypeScript code of the form, you define the elements that aren’t included in the reusable UI     definition, as shown below. You can add more view classes, initialize views, or define more logic (for     example, in event handlers). 

 export class IN202520 extends BarcodeProcessingScreen { @viewInfo({ containerName: "Scan Header" }) HeaderView = createSingle(ScanHeader); } 

 You can find examples of TypeScript code adjustments in UI Adjustments in HTML and TypeScript: TypeScript Examples. 

2. Adjust the HTML template as follows:     a. Add the tags you need to modify aer or inside the qp-include tag.        If the reusable UI definition defines a whole form—that is, your screen class extends the screen class        of the UI definition—adjust the layout by adding tags **aer** the qp-include tag. These tags must be        located in the top-level template tag of the HTML file.        If the reusable UI definition defines a part of a form (for example, a fieldset), adjust the layout by adding        tags **inside** the qp-include tag.     b. Specify the attribute that indicates the type of modification, which can be one of these: 

- before: Places the element before the element referenced in this attribute. 

- after: Places the element aer the element referenced in this attribute. 

- append: Places the element aer all child elements of the element referenced in this attribute. 

- prepend: Places the element before all child elements of the element referenced in this attribute. 

- modify: Modifies the attribute values of the element referenced in this attribute. 

- remove: Removes the element referenced in this attribute. 

- replace: Replaces the element referenced in this attribute. c. As the value of the attribute, specify a CSS selector that defines the element relative to which you need to place the new element, such as _#main_ or _#secondary [name='OriginalFieldName']"_. 


<!-- PAGE_BREAK -->
 Reusing a UI Definition | 174 

 You can use the following approaches when specifying the CSS selector: 

- **Specifying the exact location of the element** , such as the fieldset’s ID and the field’s     name.     If no element satisfies the CSS selector, the build process fails. For example, suppose     that you want to place a box right aer the specific box in the specific fieldset of a form.     You specify the exact location of the new field in the CSS selector, including the fieldset’s     ID and the field’s name. If in a future version of Acumatica ERP, the field relative to     which the new field is placed is moved to another fieldset, the build process will fail for     this CSS selector. 

- **Specifying only the field’s name.**     If more than one item satisfies the specified CSS selector, the build process fails. For     example, suppose that you want to place a new box right aer a specific box and it     doesn’t matter where this specific box is located on the form. You specify only the field’s     name in the CSS selector. If the field is moved to another fieldset in a future version of     Acumatica ERP, the build process will be successful for this CSS selector. 

 Below you can see an example of adjusting a reusable UI definition that defines a whole form. The code adds three boxes in various fieldsets of the reusable UI definition and adds a tab with a table. 

 <template> <qp-include url="../../barcodeProcessing/BarcodeProcessingScreen.html"></qpinclude> 

 <field append="#fsColumnA-Header" name="RefNbr" config-allow-edit.bind="true"></ field> <field append="#fsColumnA-Header" name="SiteID"></field> 

 <field append="#fsColumnB-Header" name="Mode"></field> 

 <qp-tab id="tabIssue" before="#tab-Logs" caption="Issue"> <qp-grid id="gridPicked" view.bind="transactions"></qp-grid> </qp-tab> </template> 

 The following example shows an adjustment of a reusable UI definition that defines a part of a form. The code modifies a field in the reusable UI definition. 

 <qp-include url="src/screens/common/form-address/form-address.html" fs-id="groupAccountAddress" address-view="DefAddress" fs-caption="Account Address" fs-wg-container="DefAddress_DefAddress" override-fieldname view-on-map-action-name="ViewMainOnMap" > <field modify="#groupAccountAddress [name='CountryID']" after="#groupAccountAddress [name='PostalCode']"></field> </qp-include> 

You add as many adjustments as you need. You can find examples of layout adjustments in _UI Adjustments in HTML and TypeScript: HTML Examples_. 


<!-- PAGE_BREAK -->
 Reusing a UI Definition | 175 

#### Predefined Reusable UI Definitions 

 A number of predefined reusable UI definitions are available in the following locations: 

- The FrontendSources/screen/src/screens/common folder of the Acumatica ERP instance 

- The common folder for particular functionality, such as the FrontendSources/screen/src/     screens/IN/common folder of the Acumatica ERP instance for inventory functionality You can use these reusable UI definitions in your UI customization projects. 

### Reusing of UI Definitions: Creation of a Reusable UI Definition 

 To create a reusable definition. you need to do the following: 

1. Define the TypeScript file with view classes and an optional screen class. 

2. Define the layout of the reusable component in the HTML template. 

 The sections below describe how to create reusable definitions depending on whether you’re reusing an entire screen or only specific components. 

#### Defining the Reusable Definition for a Whole Screen 

 To define a reusable UI definition based on a whole screen: 

1. In a TypeScript file, declare an abstract class that extends the PXScreen class, as shown below. 

 export abstract class BarcodeProcessingScreen extends PXScreen { } 

2. In the abstract class, define the views and logic that will be reused, as the following example shows. 

 import { ScanInfo, ScanLogs } from "./views"; 

 export abstract class BarcodeProcessingScreen extends PXScreen { @viewInfo({ containerName: "Scan Information" }) Info = createSingle(ScanInfo); 

 @viewInfo({ containerName: "Scan Logs" }) Logs = createCollection(ScanLogs); 

 @handleEvent(CustomEventType.GetRowCss, { view: 'Logs' }) getLogsRowCss(args: RowCssHandlerArgs) { if (args?.selector?.row?.MessageType.value === 'ERR') { return 'excessedLine startedLine'; } else if (args?.selector?.row?.MessageType.value === 'WRN') { return 'startedLine'; } 

 return undefined; } } 

3. If you need to create view classes, define them as usual. The following code shows the definition of the view     class that’s used in the previous code example. 


<!-- PAGE_BREAK -->
 Reusing a UI Definition | 176 

 export class ScanInfo extends PXView { Mode: PXFieldState<PXFieldOptions.Disabled>; Message: PXFieldState<PXFieldOptions.Disabled>; MessageSoundFile: PXFieldState<PXFieldOptions.Disabled>; Instructions: PXFieldState<PXFieldOptions.Disabled>; Prompt: PXFieldState<PXFieldOptions.Disabled>; } 

 For details about inserting the reusable UI definition of a whole screen, see Use of the Whole UI Definition of a Form. 

#### Defining the Reusable Definition for Part of a Screen 

 To define a reusable definition that contains independent components, such as a dialog box or a fieldset, without a screen class: 

1. Define the view classes for the controls that are displayed in the reusable component. 

 export class ChangeIDParameters extends PXView { @fieldConfig({controlType: "qp-mask-editor"}) CD: PXFieldState; } 

2. If needed, define an abstract class and initialize the view there. 

 export abstract class ChangeIDBase { @viewInfo({ containerName: "Specify New ID" }) ChangeIDDialog = createSingle(ChangeIDParameters); } 

 You don’t need to define the abstract class and initialize the view there if you’re providing a view as a parameter. The fields in the uninitialized view should be identical to the fields in the actual view provided as a parameter. 

 For details about inserting the reusable UI definition that defines part of a screen, see Use of a Reusable UI Definition That Defines Part of a Form. 

#### Defining the HTML Template 

 In the HTML file with the same name as the TypeScript file, you define the reusable HTML code, as shown in the following example. 

 <template> <require from="screens/barcodeProcessing/styles.css"></require> 

 <qp-template id="HeaderView_formHeader" name="7-10-7" wg-container class="equal-height"> <qp-fieldset id="main" view.bind="HeaderView" slot="A"> <field name="Barcode" control-type="qp-barcode-input" config-sound-control.bind="Info.MessageSoundFile" config-submit-command.bind="Scan"> </field> </qp-fieldset> 

 <qp-fieldset id="secondary" view.bind="HeaderView" slot="B" 


<!-- PAGE_BREAK -->
 Reusing a UI Definition | 177 

 class="no-label"> <field name="Message" config-rows.bind="3"></field> </qp-fieldset> 

 <qp-fieldset id="third" view.bind="HeaderView" slot="C" class="no-label"> <field name="ProcessingSucceeded" config.bind="{ label: '', renderStyle: 'button', checkImages: { normal: 'main@Success' }, uncheckImages: { normal: 'main@Fail' } }" config-class.bind="'ProcessingStatusIcon'"> </field> </qp-fieldset> 

 <qp-fieldset id="info" view.bind="Info"> <field name="MessageSoundFile" show.bind="false"></field> </qp-fieldset> </qp-template> 

 <qp-tabbar id="mainTab"> <qp-tab id="tabLogs" caption="Scan Log"> <qp-grid id="gridLogs" wg-container="grid4" view.bind="Logs"> </qp-grid> </qp-tab> </qp-tabbar> </template> 

This code implements a Summary area with three columns and a tab bar with a single tab. 

You can also define the layout in the nested template tag and later insert it by using the ref attribute—for example, inside a qp-tab tag. In this case, don’t use hyphens in the template ID because TypeScript will try to parse it as a mathematical statement. Instead of a hyphen, use an underscore, as shown in the following code. 

 <template> <template id="content_Approval"> ... </template> <template> 

Then you can reuse the template, as shown below. 

 <qp-tab id="tab-Approval" caption="Approval" ref="content_Approval"></qp-tab> 

 You can define the parameters of a reusable UI definition in the qp-include-parameters tag. For details, see Reusing of UI Definitions: Reusable UI Definitions with Parameters. 

For details about adjusting the HTML template of a reusable UI definition, see _Adjusting of the Reusable UI Definition_. 


<!-- PAGE_BREAK -->
 Reusing a UI Definition | 178 

### Reusing of UI Definitions: Reusable UI Definitions with Parameters 

 You can define a reusable UI definition with string parameters—such as a view value—and then provide values for these parameters when you’re referencing the reusable UI definition. 

#### Defining a Reusable UI Definition with Parameters 

 To define parameters in a reusable UI definition, you add the parameter names in the qp-includeparameters tag, which is inside the template tag of the reusable UI definition. You define parameters by using the mustache.js library. For details about the library, see https://github.com/janl/mustache.js. 

 You can define a parameter as being required by using the required modifier for the parameter. When this modifier is specified, a developer must provide a value for the parameter while inserting the reusable UI definition in a particular form. You can also specify the default value for a parameter. 

 To reference the parameters in the tags of the reusable UI definition, you specify the parameter name in double braces, for example, "{{id}}". 

 The following code shows an example of the Address section. In this example, the id, address-view, and wgcontainer parameters are required. The caption parameter has Address as the default value. 

 <template> <qp-include-parameters id.required address-view.required caption="Address"> </qp-include-parameters> 

 <qp-fieldset id="{{id}}" view.bind="{{address-view}}" caption="{{caption}}" > <field name="FakeField" unbound> <qp-address-lookup class="col-12" view.bind="{{address-view}}"> </qp-address-lookup> </field> ... </qp-fieldset> </template> 

#### Inserting a Reusable UI Definition with Parameters 

 When you want to insert a reusable UI definition, you specify the parameters in the qp-include tag. 

 The following example shows the insertion of the reusable UI definition for the Address section, whose HTML code is defined in the previous section. 

 <div slot="B"> <qp-include url="../../../common/forms/form-address/form-address.html" id="formA" address-view="AddressCurrent" ></qp-include> </div> 


<!-- PAGE_BREAK -->
 Handling UI Events | 179 

## Handling UI Events 

 The Acumatica ERP user interface implements handling of many runtime events. You may need to define custom handlers of UI events that the built-in system behavior does not cover. This part describes some of these scenarios and the ways you can manage them. 

### UI Events: General Information 

 In the Modern UI of , you can handle UI events in frontend code to make runtime changes that aren’t possible through built-in UI functionality. 

#### Learning Objectives 

 In this chapter, you will learn how to do the following: 

- Handle UI events 

- Work with data that is unrelated to any view by using event handling 

- Manage large binary data through event handling 

#### Applicable Scenarios 

 You handle UI events if you need to implement scenarios such as these: 

- Changing the CSS of a specific table cell or row on an Acumatica ERP form 

- Passing to an Acumatica ERP form data that is unrelated to any data view 

- Passing large binary data to an Acumatica ERP form 

- Calculating a value that is only displayed on an Acumatica ERP form and is not saved to the database 

#### Event Handling 

 You use the handleEvent decorator to mark a handler of a runtime event for a specified view or field or with no relation to a view or field. 

 Only event types defined in the CustomEventType enum are supported. 

 Be aware that any logic that you implement using event handlers is available only in Modern UI forms and is not accessible through the web services or the mapping of the mobile application. 

#### Sample Event Handlers 

 The Acumatica ERP source code provides sample event handlers for the Sales Orders (SO301000) form. You can find these in the following location of any instance. 

 \FrontendSources\screen\src\screens\SO\SO301000\extensions\SO301000_FieldsSample.ts 

 To test the event handlers, do the following: 

1. Uncomment the SO301000_FieldsSample interface. 

2. Uncomment the SO301000_FieldsSample class. 


<!-- PAGE_BREAK -->
 Handling UI Events | 180 

3. Rebuild the code. 

### UI Events: Changing of the CSS for a Row of a Table 

 You can implement an event handler for the GetRowCss event to change the CSS for any row of a table, such as the bold rows shown in the following screenshot. 

 Figure: Bold rows in the table 

 In the PO302020 screen class in the following example, the Received view property is defined for the ReceiptSplitsForReceive view class. In this screen class, the getReceivedRowCss method has the handleEvent decorator, which indicates that the method handles the GetRowCss event for the Received view instance. The hanlder method returns the name of the CSS class to be applied to the row of the ReceiptSplitsForReceive type. 

 export class PO302020 extends PXScreen { Received = createCollection( ReceiptSplitsForReceive ); @handleEvent(CustomEventType.GetRowCss, { view: " Received " }) getReceivedRowCss(args: RowCssHandlerArgs< ReceiptSplitsForReceive >): string { const split = args?.selector?.row; if (split != null && split.ReceiveQty.value > split.Qty.value) { return "bold-row"; } return undefined; } } 

 You can use the CSS classes that are defined in the FrontendSources\screen\static \custom.css file or define your own classes in a CSS file for the form, such as in EP503010.css. 

### UI Events: Debugging the UI Code in the Browser 

 You can debug any typescript code including the code of event handlers using developer tools. 

 On the Sources tab of the developer tools, you can find the source code of the form. You can use this code for debugging. 

 For easier debugging, you need to build the UI source code with the build-dev command. For details about building the source code, see Modern UI Development: Building the Source Code. 

 You can set a breakpoint in the code. When the breakpoint is hit, in the Console tab in the bottom of the Sources tab, you can type the name of the variable to see its value, type an expression to evaluate it, or change the value of a variable to check how the system works with this value. 


<!-- PAGE_BREAK -->
 Handling UI Events | 181 

 For example, in the following screenshot, the TypeScript code of the Bills and Adjustments (AP301000) form is open, as Item 1 shows. A breakpoint is set for a line in the code (Item 2). This breakpoint is hit during the opening of the form, and the debugger has stopped on this line. In the console, the row.DeferredCode name has been entered, and the value of this variable is displayed (Item 3). 

 Figure: Debugging in the web browser 

### Activity 7.2.1: To Implement and Debug an Event Handler 

 This activity will walk you through implementing an event handler and debugging it by using the developer tools in the browser. 

#### Story 

 Suppose that you need to highlight the second line in a table in bold and print the message in the Console window when it happens. 

#### Process Overview 

 You will implement the GetRowCss event handler, in which you will print the message in the Console window and return the new CSS class for the second line of a table. Then you will debug the code by using the developer tools. 

#### Step 1: Implementing the Event Handler 

 To implement the GetRowCss event handler, do the following: 

1. In the RS301000 screen class of the RS301000.ts file, add the following event handler. 

 export class RS301000 extends PXScreen { ... 

 @handleEvent(CustomEventType.GetRowCss, { view: "RepairItems" }) getTransactionsRowCss(args: RowCssHandlerArgs) { } } 


<!-- PAGE_BREAK -->
 Handling UI Events | 182 

 You’ve used the handleEvent decorator to indicate that the method is an event handler. As the first parameter of the decorator, you’ve specified the type of the event, and in the second parameter, you’ve specified the view for which the event handler is intended. 

2. In the body of the event handler, check the number of the row, print the message in the Console window,     and return the name of the CSS class in string format. 

 @handleEvent(CustomEventType.GetRowCss, { view: "RepairItems" }) getTransactionsRowCss(args: RowCssHandlerArgs) { if (args?.selector?.rowIndex === 1) { console.log("Row CSS changed", args); return "bold-row"; } return undefined; } 

 You can find the names of the available CSS classes in the FrontendSources/screen/ static/custom.css file. 

3. Rebuild your code. 

#### Step 2: Test the Event Handler 

 To test the event handler, do the following: 

1. Refresh the Repair Work Orders (RS301000) form. 

2. Create a repair work order with the following settings: 

- **Customer ID** : _C000000001_ 

- **Service** : _BATTERYREPLACE_ 

- **Device** : _NOKIA3310_ 

3. On the **Repair Items** tab, two lines appear.     The second line is bold, as shown below. 

 Figure: The bold line on the Repair Items tab 

#### Step 3: Debugging the Code 

 To debug the code of the event handler, do the following: 

1. Open the developer tools of your browser. 

2. Open the **Sources** tab (Item 1 below). 


<!-- PAGE_BREAK -->
 Handling UI Events | 183 

 Figure: The developer tools window 

3. On the **Page** tab (Item 2 above), locate the source code of the RS301000 screen according to the following     path. 

 top/main (RS301000.html)/screen/src/development/screens/RS/RS301000/RS301000.ts 

 You can also search for the needed line on the Search tab (Item 4) of the developer tools. 

4. Put the breakpoint on line 24 (Item 3). 

5. Open the Repair Work Orders (RS301000) form. 

6. Create a new repair work order with the same settings as you entered in the previous step. 

7. When the breaking point is hit, go through the steps for the first line and the second line of the table on the     **Repair Items** tab. 

8. On the **Console** tab, notice the messages from the event handler, as shown below. 

 Figure: The Console tab 

### UI Events: Changing of Availability of a UI Element 

 To change the availability of a UI element, you can implement an event handler for the RowSelected or CurrentRowChanged event. If you implement any of these event handlers, the availability of the element is 


<!-- PAGE_BREAK -->
 Handling UI Events | 184 

 defined on the client side without both communication with the server side and the committing of changes to the server. Therefore implementation of these event handlers can improve the performance of the application. 

#### Changing Availability of a Button 

 To change the availability of a button, for example, depending on a row selected in the table or a change in the table, you need to do the following: 

1. Declare the object of the PXActionState type in the screen or view class. 

 export class SOLine extends PXView { POSupplyOK: PXActionState; } 

2. Implement an event handler for the RowSelected or CurrentRowChanged event.     In the following example, a handler for the RowSelected event is used to define the availability of the     button that corresponds to the POSupplyOK action. The POSupplyOK action is defined in the SOLine     view class, whose instance is available through the Transactions view property. 

 export class SO301000 extends PXScreen { Transactions = createCollection( SOLine ); @handleEvent(CustomEventType.CurrentRowChanged, { view: "Transactions" }) onSOLineChanged(args: CurrentRowChangedHandlerArgs<PXViewCollection<SOLine>>) { const model = (<any>args.viewModel as SOLine); const ar = args.viewModel.activeRow; 

 if (model.POSupplyOK) model.POSupplyOK.enabled = !!ar?.POCreate.value; 

 if (model.ItemAvailability) model.ItemAvailability.enabled = !!ar?.IsStockItem.value; if (model.SOOrderLineSplittingExtension_ShowSplits) model.SOOrderLineSplittingExtension_ShowSplits.enabled = !!ar; } } 

### UI Events: Handling of Data That Is Unrelated to Any View 

 For a callback request that the client sends to the server, the server processes the request, prepares the data to be returned, and injects this data in the final JSON response that is sent to the client. For this callback processing, Acumatica ERP provides a number of hooks. You can attach data handlers to these hooks and implement custom code in these data handlers. The attached handlers can prepare data and execute update operations. When a request comes to the server, the system calls the hooks one by one. The handlers are executed independently of one another. You can execute different code on different hooks to execute a particular code fragment before another one. 

 You can use these hooks to pass data that is unrelated to any view of the graph to the TypeScript code of the Acumatica ERP form that corresponds to the graph. In this case, you should implement the approach that is described in this topic. 

#### Implementing the Base Abstract Class 

 The BaseCustomDataHandler<TGraph> and BaseCustomDataHandler<TGraph, TParams> abstract classes are base classes that provide the methods to obtain data that is not PXView-based from a graph or submit this data to the graph. These classes are used during client callback. 


<!-- PAGE_BREAK -->
 Handling UI Events | 185 

 You need to create a data handler class that inherits from one of these base classes. In the data handler class, you override the method that you want to call to obtain or submit the data. The following code shows an example of the implementation of the class for the SiteMapMaint graph, which means that this handler is executed only in the context of the SiteMapMaint graph or its descendents. 

 using PX.Api.TSBasedScreen.Interfaces; using PX.SiteMap.Graph; 

 namespace PX.Api.TSBasedScreen.Objects.Handlers.SM200520; 

 internal class SM200520Handler : BaseCustomDataHandler<SiteMapMaint> { protected override void CollectData(SiteMapMaint graph, dynamic result) { result.RefreshSitemap = graph.IsSiteMapAltered; } } 

 In the CollectData method in the code above, the value of the RefreshSitemap parameter has been specified. The method will be executed when the server collects the data that is sent back to the client during the callback execution. The specified value of the RefreshSitemap parameter will be passed to the UI, along with other data returned by the server. 

 Aer you have defined the class that inherits from the BaseCustomDataHandler<TGraph> or BaseCustomDataHandler<TGraph, TParams> abstract class, the service for dependency injection is fully defined. You need to register the service. 

#### Registering the Service 

 You register the service that you have implemented for dependency injection. For details about dependency injection, see Dependency Injection. You use the RegisterCustomDataHandler method to register the data handler class. 

 The following code shows an example of this registration. 

 using Autofac; using PX.Api.TSBasedScreen.Interfaces; 

 namespace PX.Api.TSBasedScreen.Objects { public class ServiceRegistration : Module { protected override void Load(ContainerBuilder builder) { builder.RegisterCustomDataHandler<SM200520Handler>(); } } } 


<!-- PAGE_BREAK -->
 Handling UI Events | 186 

 You can specify another name for the data handler during registration, as shown in the following code. This name will be used in the frontend code. 

 builder.RegisterCustomDataHandler<RefreshSiteMapHandler<SiteMapMaint>>( name: "SM200520RefreshSiteMapHandler"); 

 You may need to specify the name for the data handler during registration if you have implemented a generic data handler with a graph type as the type parameter and you want to register this generic event handler for multiple graphs. 

#### Changing the TypeScript Code 

 In the screen class in the TypeScript code of the Acumatica ERP form, you add a method and specify the customDataHandler decorator for it. As the name of the method you must specify the name that has been used during the registration of the data handler class for dependency injection in the backend code. By default, this name is the name of the data handler class. 

 This method will be executed aer each callback from the server, and it will process the data that is received from the server. The method is strongly typed. In the following code, the result from the server contains one parameter, whose value is assigned in the class that implements the base abstract class in the backend code. 

 @customDataHandler() SM200520Handler(result: { RefreshSitemap: boolean }) { if (result.RefreshSitemap) { refreshMenu(); } } 

### UI Events: Handling of Large Binary Data 

 In a UI event handler, you can access large binary objects, such as PDFs or images, that are received from the server. To access the large object, you call the baseApiClient.fetchExt method, as shown in the following example. 

 @handleEvent(CustomEventType.RowSelected, { view: 'EmployeesWithPaychecksList' }) onEmployeesWithPaychecksRowChange( args: RowSelectedHandlerArgs<PXViewCollection<PREmployee>>) { if (!args?.viewModel?.activeRow?.BAccountID?.value) return; if (this.previousEmployeeRowId === args.viewModel.activeRow.BAccountID.value) return; this.previousEmployeeRowId = args.viewModel.activeRow.BAccountID.value; this.baseApiClient.fetchExt(ui/screen/PR502000/lob, { Command: "GeneratePdfDocument", Parameters: { employeeID: args.viewModel.activeRow.BAccountID.value, } }).then(e => { const iframe = document.getElementById('pdfHolder'); if (e) { iframe.setAttribute('src', data:application/pdf;base64,${e}); } else { 


<!-- PAGE_BREAK -->
 Handling UI Events | 187 

 iframe.setAttribute('src', ""); } }); } 

### UI Events: Displaying of Relative Dates 

 The date and time control can display relative dates—that is, values such as @Today or @WeekStart (shown below). 

 Figure: Relative dates 

 To specify that a user can enter relative dates in the control, you need to implement the RowSelected event handler. In the event handler, you call the PXDatetimeFieldState.showRelativeDates method to indicate that the values are allowed. 

 An example of such a handler is shown in the following code. 

 @handleEvent(CustomEventType.RowSelected, { view: "Rules" }) onEPRuleConditionSelected( args: RowSelectedHandlerArgs<PXViewCollection<EPRuleCondition>>) { const ar = args.viewModel.activeRow; 

 ar.Value?.to(PXDatetimeFieldState).showRelativeDates(); } 


<!-- PAGE_BREAK -->
 Testing the Modern UI | 188 

## Testing the Modern UI 

 In this part, you can find information on how to maintain the testability of forms that have tests created in the Classic UI and how to migrate these tests to the Modern UI. 

### Testing of the Modern UI: General Information 

 This topic describes WG containers and the WG containers’ structure that is used in tests for both the Classic UI and the Modern UI. 

#### Learning Objectives 

 In this chapter, you will learn how to do the following: 

- Get the structure of WG containers for a form 

- Specify the names of WG containers 

- Update tests for the Modern UI 

#### Applicable Scenarios 

 You need to learn about WG containers when you are doing the following: 

- Testing forms written in the Modern UI by using tests created for the same forms in the Classic UI 

- Migrating tests from the Classic UI to the Modern UI 

#### Overview of WG Containers 

 WG stands for wrapper generator. A wrapper is a part of tests that functions as an interface for tests for the UI of Acumatica ERP. A wrapper describes the structure of UI elements located in different containers on the form—that is, it describes the structure of containers and elements they include. 

 A container is an entity that contains fields. Thus, a WG container is a container of fields that are used in tests, and the wrapper describes the structure of WG containers. Every WG container is referred to by a name. The name of the WG container is generated automatically unless it is specified explicitly. For a container that has both the view name and the ID specified, the name of the WG container is generated according to the following rule: <view_name>_<container_id>. 

 The following screenshot shows an example of a file that describes WG containers. 


<!-- PAGE_BREAK -->
 Testing the Modern UI | 189 

 Figure: The structure of WG containers 

 The generation of wrappers does not depend on any features being enabled or disabled. 

#### Access to the Wrapper of a Form 

 You can access a wrapper of any form that has been switched to the Modern UI by using a URL with the following format: <instance_URL>/ui/wrappers/<Screen_ID>. For example, you would access a wrapper for the Invoices and Memos (AR301000) form on the PhoneRepairShop instance with the following URL: http:// localhost/PhoneRepairShop/ui/wrappers/AR301000. 

 The following code is the beginning of the JSON file that is opened by this URL. The file shows the structure of WG containers of this form. 

 { "containers": [ { "id": "formDocument", "name": "Document_form", "controlType": "QP-TEMPLATE", "fields": [ { "id": "edDocument-DocType", "fieldName": "DocType", "viewName": "Document", "displayName": "Type", "controlType": "qp-drop-down", "dataType": "String", "containerPath": [ "formDocument" ], "supportLocalizationPanel": false }, { "id": "edDocument-RefNbr", "fieldName": "RefNbr", "viewName": "Document", "displayName": "Reference Nbr.", "controlType": "qp-selector", "dataType": "String", 


<!-- PAGE_BREAK -->
 Testing the Modern UI | 190 

 "containerPath": [ "formDocument" ], "supportLocalizationPanel": false }, ...] } ] } 

#### Structure of UI Containers 

 In ASPX files, tags, such as PXFormView and PXGrid, are used to define containers for tests. 

 In the Modern UI, the fields are organized in containers differently. For example, in the Classic UI, the form contained three columns inside one PXFormView, as shown in the following example. 

 <px:PXFormView ID="form" runat="server" DataSourceID="ds" Style="z-index: 100" Width="100%" DataMember="Filter" Caption="Selection" DefaultControlID="edAction"> <Template> <px:PXLayoutRule runat="server" StartColumn="True" LabelsWidth="SM" ControlSize="XM" /> <px:PXDropDown CommitChanges="True" ID="edAction" runat="server" DataField="Action" /> <px:PXSelector CommitChanges="True" ID="edStatementCycleId" runat="server" DataField="StatementCycleId" /> <px:PXDateTimeEdit CommitChanges="True" ID="edStatementDate" runat="server" DataField="StatementDate" /> <px:PXLayoutRule runat="server" StartColumn="True" LabelsWidth="S" ControlSize="XM" /> <px:PXSegmentMask CommitChanges="True" ID="edBranchID" runat="server" DataField="BranchID" /> <px:PXSegmentMask CommitChanges="True" ID="edOrganizationID" runat="server" DataField="OrganizationID" /> <px:PXCheckBox CommitChanges="True" ID="chkCuryStatements" runat="server" DataField="CuryStatements" /> <px:PXCheckBox CommitChanges="True" ID="chkShowAll" runat="server" DataField="ShowAll" /> <px:PXLayoutRule runat="server" StartColumn="True" LabelsWidth="S" ControlSize="SM" /> <px:PXCheckBox CommitChanges="True" ID="chkPrintWithDeviceHub" runat="server" DataField="PrintWithDeviceHub" AlignLeft="true" /> <px:PXCheckBox CommitChanges="True" ID="chkDefinePrinterManually" runat="server" DataField="DefinePrinterManually" AlignLeft="true" /> <px:PXSelector CommitChanges="True" ID="edPrinterID" runat="server" DataField="PrinterID" /> <px:PXTextEdit CommitChanges="true" ID="edNumberOfCopies" runat="server" DataField="NumberOfCopies" /> <px:PXLayoutRule runat="server" StartRow="true" LabelsWidth="SM" ControlSize="XXL" /> <px:PXTextEdit CommitChanges="True" ID="edStatementMessage" runat="server" DataField="StatementMessage" TextMode="MultiLine" Height="55px" /> </Template> </px:PXFormView> 

 In the Modern UI, every such column is a separate qp-fieldset container, as shown in the following code. 

 <qp-template name="top-17-17-14" id="formFilter" wg-container="Filter_form"> <qp-fieldset slot="A" id="columnFirst" view.bind="Filter"> <field name="Date"></field> 


<!-- PAGE_BREAK -->
 Testing the Modern UI | 191 

 <field name="VendorID"></field> <field name="CustomerID"></field> </qp-fieldset> <qp-fieldset slot="B" id="columnSecond" view.bind="Filter"> <field name="CreateOnHold"></field> <field name="CreateInSpecificPeriod"></field> <field name="FinPeriodID"></field> </qp-fieldset> <qp-fieldset slot="C" id="columnThird" view.bind="Filter"> <field name="ProjectID"></field> <field name="CopyProjectInformation"></field> </qp-fieldset> </qp-template> 

 qp-fieldset is a minimum container entity in the Modern UI. The wrapper generator treats it as a container entity. As a result, the structure of the containers has changed. 

 If you do not specify WG containers explicitly, the wrapper will not be generated correctly for a test written for the Classic UI to work: Instead of one container with fields of the old PXFormVIew tag, you will get three containers with fields (one for each qp-fieldset). 

#### Summary 

 Current tests rely on the structure of the UI elements on the form of the Classic UI. 

 In order for these tests to work property, wrappers need to describe the same structure of the form. But in the Modern UI, the structure of the form is different. So for the current tests to work on the Modern UI, you need to specify the names of WG containers explicitly for most of the tags (except those for which the names are generated properly). You can specify names of WG containers in several ways. For more information on specifying the names of WG containers, see Testing of the Modern UI: Names of WG Containers. 

### Testing of the Modern UI: Names of WG Containers 

 To maintain the testability of the forms in the Modern UI, the names of WG containers must be the same as the names of respective wrapper containers for the Classic UI. By default, the WG container names for qp-fieldset and qp-grid are generated automatically so that they are the same as the names in the Classic UI. 

 The name of the WG container is generated as follows: <ViewName>_<ElementID>, where ElementID is the value of the id attribute specified in the tag. 

 For complex cases or when the element IDis different from the one specified in the Classic UI, you can specify the name of the WG container manually in HTML by using the following approaches. 

#### The wg-container Attribute Without a Name 

 To make the WG container name have the <ViewName>_<ElementID> format, you add the wg-container attribute to a tag that has the view and ID specified and do not specify the name of the WG container. 

 The wrapper generator will generate a single container for all fields inside this tag, ignoring all containers inside the tag. 


<!-- PAGE_BREAK -->
 Testing the Modern UI | 192 

 In the Modern UI, the values of the id attribute are visible to users for personalization, so they should be easy to understand. Therefore, we recommend that you specify the legacy name of the container in the wg-container attribute, as described in the following sections, and create a new user-friendly identifier. For instructions on specifying the id values, see the page corresponding to the UI element in UI Component Guide. 

#### The wg-container Attribute for the qp-template Tag 

 To assign the same WG container name to all fields inside all fieldsets of the qp-template tag, you specify the wg-container attribute in the qp-template tag. The resulting name will have the following format: <Template_id>, where <Template_id> is the value of the id attribute of the qp-template tag. 

 The following table shows the usage of the wg-container attribute in the qp-template tag of the HTML template and the corresponding tag in the ASPX file. 

##### HTML ASPX 

 <qp-template name="7-10-7" id=" Document_form " wg-container class="equal-height"> <qp-fieldset slot="A" id="first" view.bind="Document"> <field name="OrderType"></field> ... </qp-fieldset> <qp-fieldset slot="B" id="second" view.bind="Document"> <field name="CustomerID" config-allow-edit.bind="true"> </field> ... </qp-fieldset> <qp-fieldset slot="C" label-size="col-lg-6" id="summary" view.bind="Document" caption="Summary" class="highlights-section"> <field name="OrderQty"></field> ... </qp-fieldset> </qp-template> 

 <px:PXFormView ID=" form " runat="server" DataSourceID="ds" Style="z-index: 100" Width="100%" DataMember=" Document " Caption="Order Summary" ...> ... </px:PXFormView> 

 This approach is useful when the fields used to be in the same WG container but ended up separated in multiple fieldsets of the same template, such as three columns in the Summary area. 


<!-- PAGE_BREAK -->
 Testing the Modern UI | 193 

#### The wg-container Attribute with the Explicitly Specified Name 

 To make the name of WG container exactly the same as it was in the Classic UI, you specify it as a value of the wgcontainer attribute. All nested controls will have the same WG container name that is specified in the parent tag. 

 The following table shows how to specify the name of the WG container in the HTML file and the corresponding code in ASPX. 

##### HTML ASPX 

 <qp-fieldset slot="C" id="groupVoucherDetails" view.bind="Voucher" wg-container="VoucherDetails_Voucher" caption="Voucher Details"> <field name="VoucherBatchNbr"></field> <field name="WorkBookID"></field> </qp-fieldset> 

 <px:PXFormView ID=" VoucherDetails " runat="server" DataMember=" Voucher " DataSourceID="ds"> <Template> <px:PXTextEdit .../> <px:PXTextEdit .../> </Template> </px:PXFormView> 

#### Names of WG Containers Inside a Fieldset 

 In the qp-fieldset tag, if you need to specify the names of the WG container for multiple fields, you put these fields inside the using tag and specify the name of the WG container in the using tag. This approach may be useful if fields from different WG containers are included in the same fieldset. 

 The following table shows an example of the using tag in HTML and the corresponding code in ASPX. 

##### HTML ASPX 

 <qp-fieldset ...> <field name="ClassID"></field> <using wg-container="Details_formDetails2 " view="AssetDetails"> <field name="PropertyType"></field> <field name="Status"></field> </using> <field name="AssetTypeID"></field> ... </qp-fieldset> 

 <px:PXTab ...> <px:PXSelector .../> <px:PXFormView ID=" formDetails2 " runat="server" DataSourceID="ds" DataMember=" Details " ...> <Template> <px:PXLayoutRule .../> <px:PXDropDown .../> <px:PXDropDown .../> </Template> </px:PXFormView> <px:PXSelector ... /> ... </px:PXTabItem> 

#### The wg-name Attribute 

 To specify the name of the element inside a container, for the qp-field and qp-button tags, you can use the wg-name attribute. 

 The following table shows usage of the wg-name attribute and the corresponding code in ASPX. 


<!-- PAGE_BREAK -->
 Testing the Modern UI | 194 

##### HTML ASPX 

 <field name="CuryOrigDocAmt"> <qp-button id="buttonAdjustDocumentAmount" wg-name="btnAdjustDocAmt" state.bind= "model.viewModel.AdjustDocAmt" class="col-2"> </qp-button> </field> 

 <px:PXLayoutRule runat="server" Merge="True" /> <px:PXNumberEdit ID="edCuryOrigDocAmt" runat="server" DataField="CuryOrigDocAmt" CommitChanges="True"/> <px:PXButton ID="btnAdjustDocAmt" CommandName="AdjustDocAmt" CommandSourceID="ds" runat="server" .../> <px:PXLayoutRule runat="server" /> 

#### WG Containers for the qp-info-box Control 

 By default, the qp-info-box control are not included into wrappers. If you want to include the qp-info-box control into wrappers, specify the WG attributes manually, as shown in the following example. For more details about the qp-info-box control, see Error, Warning, or Informational Notification. 

##### HTML ASPX 

 <qp-info-box caption.bind= "AccountTypeChangePrepare.Message.value" id="messageLabel" type="info" wg-container= "AccountTypeChangePrepare_FormAccountTypeChange" wg-name="MessageLabel_"> </qp-info-box> 

 <px:PXFormView ID="FormAccountTypeChange" ... DataMember="AccountTypeChangePrepare" > <Template> <px:PXLayoutRule .../> <px:PXLabel runat="server" ID="messageLabel" SkinID="Label" Height="100%" OnDataBinding= "messageLabel_DataBinding"/> </Template> </px:PXFormView> 

### Testing of the Modern UI: Update of Tests Written for the Classic UI 

 In some cases, wrapper generation may fail due to changes between the Classic UI and the Modern UI. In that case, you need to update tests as described in this topic. 

#### Table Filters 

 In the Classic UI, table filters are displayed as tabs, such as All Records and Ready to Process in the following screenshot. 


<!-- PAGE_BREAK -->
 Testing the Modern UI | 195 

 Figure: Table filters in the Classic UI 

 The test code for these filters looks as follows. 

 Screen.Grid.AllRecords(); Screen.Grid.ReadyToProcess(); 

 In the Modern UI, filter tabs do not exist. Instead, table filters are presented as a menu, as shown in the following screenshot. 

 Figure: Table filters in the Modern UI 

 You should change the test code for such filters to the following. 

 Screen.Grid.SelectFilter("Filter Name Here"); 

#### User-Defined Fields 

 In the Classic UI, user-defined fields were located on a separate tab of the applicable data entry form. The name of the tab was User-Defined Fields (Attributes in the test code). So to test the user-defined field, the test code had to open the tab and find the specified control. 

 In the Modern UI, no such tab is displayed. All user-defined fields are added to the fieldsets manually by the user and displayed among the pre-defined fields. 

 To support backward compatibility with the Classic UI, in the test code, you need to use the GetUDF<Type>(UDF_Name, Container_Name) method to access the user-defined field. In the method, Type is the type of the control for the user-defined field. In the method parameters, you specify the name of the user-defined field and the name of the container (fieldset) where the user-defined field is located on the Modern UI form. 


<!-- PAGE_BREAK -->
 Testing the Modern UI | 196 

 Suppose that the selection of a value for a user-defined field on the form in the Classic UI looks as follows. 

 OrderSo.Attributes.DynamicControl<Selector>(UDF_Name).Select("UDF_Value") 

 For the Modern UI, the selection of a value for a user-defined field should look as follows. 

 OrderSo.GetUDF<Selector>(UDF_Name, Container_Name).Select("UDF_Value") 

 When you are using the GetUDF method, for the Classic UI, the behavior will be the same as before: The method will open the User-Defined Fields tab, find the specified control, and select the value. 

 For the Modern UI, the method searches for the specified user-defined field in the specified container. If the field is found, the method selects the field value. If the field is not found, the method opens the personalization dialog box; it then finds the user-defined field in the list, adds it to the container, saves the changes, and selects the value in the user-defined field. 

### Testing of the Modern UI: Frontend Actions in Wrappers 

 If an action is declared only in frontend and does not have a corresponding action in the graph, this action is also included in wrappers and can be used in tests. The name of such action in wrappers is exactly the same as the name of the action in TypeScript. 

 For example, suppose that the action is declared in TypeScript, as shown in the following code. 

 export class AUSchedule extends PXView { ViewScreen: PXActionState; ... } 

 The name of the action in wrappers would be ViewScreen. You cannot change the name for the action in wrappers. 

 If you have a frontend action (that is, an action that is added through the topBarItems property of the gridConfig decorator), you need to declare this action in a view class, as shown in the code example above. 

 Related Links 

- _Table Toolbar Button That Opens a Dialog Box_ 


<!-- PAGE_BREAK -->
 Supporting UI Localization | 197 

## Supporting UI Localization 

 Acumatica Framework provides built-in localization tools that you can use to translate the user interface and application messages to different languages. This chapter provides guidelines on how to prepare the Acumatica Framework application for localization efforts. 

### UI Localization: General Information 

 Acumatica ERP provides built-in localization functionality, so you can easily translate Acumatica ERP into any language without using third-party products. You can collect the strings used in the whole system or on a particular form, and translate them for any locale available in Acumatica ERP. Once the translated strings are entered and applied, the application does not require any recompilation or reinstallation. 

 For more information about how to use the built-in localization functionality, see Translation Process. To support this functionality in the customization code, you must prepare data access classes (DACs) and the code. 

#### Learning Objectives 

 In this chapter, you will learn how to do the following: 

- Localize the Modern UI in HTML and TypeScript 

- Prepare data access classes (DACs) for localization 

- Localize application messages in C# code 

- Implement multilanguage fields 

- Optimize the memory consumption of localized data 

#### Applicable Scenarios 

 Generally, you need to support localization of the user interface in the application code if you develop any code that affects the user interface of Acumatica ERP. Localization of the user interface is crucial if the code that you develop is included in a customization project that is used in the situations such as the following: 

- Your customization project is intended for use in multiple countries with different languages. 

- In the region where the customization project is intended to be distributed, there are legal requirements to     provide products and services in the local language. 

- Your customization project is intended for use in an organization that operates in multiple countries. 

#### Strings That Can Be Localized 

 By using the Translation Dictionaries (SM200540) form, you can add translations for the string constants that are collected from the code of the application, and save them to the database. When a user signs in with a specific language, the system loads the translations and displays the translated strings to the user. For more information on localization, see Locales and Languages. 

 The system collects for localization the string constants that are specified in the following items of the application: 

- The DisplayName property of the PXUIField attribute of the fields of data access classes (DACs) and     actions of graphs 

- The AllowedLabels property of the PXStringList and PXIntList attributes 

- The Values property of the classes that implement the ILocalizableValues interface 


<!-- PAGE_BREAK -->
 Supporting UI Localization | 198 

- The captions of form, grid, and panel controls and labels of input controls, which are specified in ASPX for     the Classic UI 

- The UI names in the caption attribute of the respective tags in HTML for the Modern UI 

- The containerName parameter of the viewInfo decorator in TypeScript for the Modern UI 

- The titles of all forms in the site map, and workspace and category names 

- Report elements (such as text box labels and diagram agendas) 

- public const string fields of the classes marked with the PXLocalizable attribute You can also translate user input to multiple languages and store translations in the database. For more information about the localization of user input, see _UI Localization: Multilanguage Fields_. 

 Related Links 

- _Locales and Languages_ 

- _Translation Dictionaries_ 

### UI Localization: TypeScript and HTML Code of the Modern UI 

 The following items in the TypeScript and HTML code of the Modern UI are localized automatically—that is, you do not need to specify anything for them in the TypeScript or HTML code: 

- The UI names in the caption attribute of the respective tags in HTML 

- The containerName parameter of the viewInfo decorator in TypeScript If you want to localize any other text in the TypeScript or HTML code, you need to use one of the approaches described in the following sections. 

#### Localizing Strings in TypeScript Code 

 If you need to localize the value of an HTML attribute, such as text or toolTip, you need to declare a class with the strings for localization and use the localizable decorator on this class, as shown in the following example. 

 import { localizable } from "client-controls"; 

 @localizable class ActionCaption { static AddRelatedTableRelations = "Add Related Table"; static BrowseForRelation = "Add Relations"; static ShowAvailableValues = "Combo Box Values"; } 

 @localizable class ActionToolTip { static AddRelatedTableRelations = "Add a relation between tables"; static BrowseForRelation = "Add a related table for the selected table"; static ShowAvailableValues = "Display the list of combo box values"; } 

 @gridConfig({ preset: GridPreset.Details, initNewRow: true, autoAdjustColumns: true, autoRepaint: ["JoinConditions", "RelatedTables", "TablesInformation"], 


<!-- PAGE_BREAK -->
 Supporting UI Localization | 199 

 topBarItems: { moveUpRelations: {...}, moveDownRelations: {...}, addRelatedTableRelations: { index: 5, config: { commandName: "addRelatedTableRelations", text: ActionCaption.AddRelatedTableRelations, toolTip: ActionToolTip.AddRelatedTableRelations } } } }) export class GIRelation extends PXView { ... } 

 You can also use the localizable decorator to mark a localizable string, as shown in the following examples. export class QpDacBrowserCustomElement { @localizable static NothingFoundMsg: string = "No entries have been found for the {filter}"; } 

 You can also specify the context for the message in the parameter of the decorator, as shown in the following code. The value of the parameter is displayed in the Key column of the Key-Specific Values tab of the Translation Dictionaries (SM200540) form. For example, the value of the parameter can help to distinguish two messages if they have the same identifiers and are declared in the classes with the same names. 

 @localizable("PX.Objects.AP.Messages") class Messages { static LinesHintSingleLine = "line selected"; } 

#### Using Localizable Strings Defined in TypeScript in HTML Code 

 If in HTML code you need to use the localizable string that is defined in TypeScript, you need to do the following: 

1. You define a property in the screen class that corresponds to the class with localizable messages, as shown     in the following example. 

 //The class with localizable messages @localizable export class LocalizableStrings { static btnPrevDataField_tooltip = "<Tooltip text>"; } 

 //The screen class @graphInfo({ graphType: 'PX.BusinessProcess.UI.MobileNotificationMaint', primaryView: 'Notifications' }) export class SM204004 extends PXScreen { //The property that corresponds to the class with localizable messages LocalizableStrings = LocalizableStrings; ... } 


<!-- PAGE_BREAK -->
 Supporting UI Localization | 200 

2. You use this property in HTML code, as shown in the following example. 

 <qp-button id="btnPrevDataField" caption="Insert Previous Data Field" tooltip.bind = 'LocalizableStrings.btnPrevDataField_tooltip'> </qp-button> 

#### Localizing Strings in HTML Code 

 To make the content of a tag in HTML localizable, you mark the tag with the i18n attribute, as shown in the following example. This is the standard attribute for the localization of HTML code. 

 <a id="UserPrefs_form2_OutlookLink" href="~/../../../OutlookAddinManifest" i18n> Download Outlook Add-In Manifest </a> 

 You can also mark any attribute in HTML with the .i18n attribute suffix to make the value of the attribute localizable, as shown in the following example. 

 <custom-tag text.i18n="Hello, World!"></custom-tag> 

### UI Localization: DACs 

 When the system localizes the fields of the data access classes (DACs) and DAC names, it collects the string constants that are specified in the following code elements: 

- The DisplayName property of the PXUIField attribute of the fields of the DACs 

- The AllowedLabels property of the PXStringList attribute or PXIntList attribute of the fields of     the DACs To prepare each DAC for localization, you need to adjust its code as described in the following sections. 

#### DAC Fields 

 To define the names of the UI elements that correspond to DAC fields to be localizable, you specify the DisplayName parameter of the PXUIField attribute for each visible field in the DAC, as shown in the following example. 

 If you change the DisplayName value of the PXUIField attribute on the fly (by creating your own PXFieldState), you should localize the string independently. 

 public new abstract class docType : PX.Data.IBqlField{} [PXDBString(3, IsKey = true, IsFixed = true)] [PXDefault()] [PXUIField(DisplayName = "Document Type")] public override string DocType { get; set; } 

#### Drop-Down Lists 

 You specify the values that should be displayed in drop-down lists by using the PXStringList attribute, as shown in the following example. 


<!-- PAGE_BREAK -->
 Supporting UI Localization | 201 

 public abstract class lineSource : PX.Data.IBqlField{} [PXString(1, IsFixed = true)] [PXStringList( new string[] { "D", "R" }, new string[] { "Draft", "Request" })] [PXUIField(DisplayName = "Line Source")] public virtual string LineSource { get; set; } 

#### Radio Buttons 

 For localization of the list of strings used as radio button names in a group of radio buttons (also known as an option buttons ), you specify the value of the DisplayName property of PXUIField for strings in PXStringListAttribute, as shown in the following example. 

 The -> character separates the name of the list from the command. 

 public abstract class displayMode : PX.Data.BQL.BqlString.Field<displayMode> { public const string AllEntries = "A"; public const string Matched = "M"; public const string NotMatched = "N"; 

 [PXLocalizable] public class Messages { public const string AllEntries = "Display Mode -> Display All Entries"; public const string Matched = "Display Mode -> Matched"; public const string NotMatched = "Display Mode -> Not Matched"; } 

 public class ListAttribute : PXStringListAttribute { public ListAttribute() : base( new[] { AllEntries, Matched, NotMatched }, new[] { Messages.AllEntries, Messages.Matched, Messages.NotMatched } ){ } } } 

 [PXString] [displayMode.List] [PXUIField(DisplayName = "Display Mode")] [PXDefault(displayMode.AllEntries)] public virtual string DisplayMode { get; set; } 

### UI Localization: Application Messages in C# 

 For localization of the messages in the C# source code, the system collects strings from the classes that are marked with the PXLocalizable attribute. 


<!-- PAGE_BREAK -->
 Supporting UI Localization | 202 

#### Defining Localized Messages in Your Application 

 To make your application display localized messages, you need to move all strings that should be translated to the public static Messages class and specify the PXLocalizable attribute for this class, as shown in the following code. 

 The exceptions to this requirement are field descriptions and list attributes in the data access classes, which are handled separately. For details on how to make field descriptions and list attributes localizable, see UI Localization: DACs. 

 using System; using PX.Data; using PX.Common; 

 [PXLocalizable()] public static class Messages { public const string FieldNotFound = "The field is not found."; public const string InvalidAddress = "The address is not valid."; public const string AdditionalData = "Author's title: {0}; author's name: {1}."; } 

 No hyphenation is provided by the system. During the acquisition process of localizable data, all the new-line symbols ( \n\r ) are to be removed. You can use the reserved symbol ( ~ ) to cause the insertion of a new line. 

#### Displaying the Localized Version of a Message 

 If a message from the Messages class is used in an error or warning message that is displayed when an exception of the PXException type or of a type derived from PXException is thrown, you provide a non-localized message. (See the following example.) The system displays the localized message automatically if there is a translation for this message in the database. 

 if (field == null) { throw new PXException(Messages.FieldNotFound); } 

 If you need to receive the localized version of a message from the Messages class within the application code (for example, if the message is displayed in the confirmation dialog box, which is displayed if you use the Ask() method of a data view in the code), you use one of the following methods: 

- PXMessages.Localize(): The method searches for the translation of the provided string in the     database and returns the first translation it finds. 

 string msg = PXMessages.Localize(Messages.FieldNotFound); 

- PXMessages.LocalizeFormat(): The method searches for the translation of the provided string,     which includes placeholders (such as _{0}_ or _{1}_ ), in the database and returns the first translation it finds. 

- PXLocalizer.Localize(): The method returns the translation with the given key, which you specify     in the second parameter. A string may have multiple translations; one translation for each occurrence of     the string in the application. For each of the occurrences, a key value is created. For example, if the string is 


<!-- PAGE_BREAK -->
 Supporting UI Localization | 203 

 declared in a class marked with the PXLocalizable attribute, the full qualified name of the class is the key, as the following code shows. 

 string localizedMsg = PXLocalizer.Localize( ActionsMessages.ChangesWillBeSaved, typeof(ActionsMessages).ToString()); 

### UI Localization: Multilanguage Fields 

 With Acumatica Framework, you can create fields configured to accept values entered in multiple languages if multiple locales are defined in Acumatica ERP. For example, if the English and French locales have been set up in Acumatica ERP, a user can specify the value of the Description box on the Stock Items (IN202500) form in English and French. 

 For details about multilanguage fields on Acumatica ERP forms, see Managing Locales and Languages. 

#### Configuring a Field to Have Values in Multiple Languages 

 You perform the following general steps to configure a field to have values in multiple languages: 

1. In the data access class (DAC) that you want to contain a multilanguage field, you define the NoteID field     with the PXNote attribute, as shown below. 

 public abstract class noteID : IBqlField { } 

 [PXNote] public virtual Guid? NoteID { get; set; } 

2. If you want to configure a field to have values in multiple languages, you annotate this field with     the PXDBLocalizableString attribute. The following code shows an example of the use of the     PXDBLocalizableString attribute. 

 [PXDBLocalizableString(60, IsUnicode = true)] 

 The PXDBLocalizableString attribute works similarly to the PXDBString attribute, but unlike the PXDBString attribute, the PXDBLocalizableString attribute can be used instead of the PXDBText and PXString attributes. 

3. If you need to provide values in multiple languages for a field with the PXDBText attribute, you replace     this attribute with the PXDBLocalizableString attribute and do not specify the length parameter, as     shown in the following example. 

 [PXDBLocalizableString(IsUnicode = true)] 

4. If you need to configure a field that has the PXString attribute, which is used in conjunction with the     PXDBCalced attribute, you replace the PXString attribute with the PXDBLocalizableString     attribute and set the value of the NonDB parameter to true, as shown in the following example. 

 [PXDBLocalizableString(255, IsUnicode = true, NonDB = true, BqlField = typeof(PaymentMethod.descr))] [PXDBCalced(typeof(Switch<Case<Where<PaymentMethod.descr, IsNotNull>, PaymentMethod.descr>, CustomerPaymentMethod.descr>), typeof(string))] 


<!-- PAGE_BREAK -->
 Supporting UI Localization | 204 

#### Configuring the Default Value of a Multilanguage Field 

 If you want a multilanguage field to have a default value in a specific language, you use the PXLocalizableDefault attribute instead of the PXDefault attribute; in its second parameter, you specify either a BQL field or a BQL select that provides language selection. 

 For example, in Acumatica ERP, the default value of the SOLine line description is obtained from the appropriate InventoryItem description based on the language that is set for the selected customer. The TransactionDesr field of the SOLine DAC has the PXLocalizableDefault attribute with a second parameter that specifies the language as follows: typeof(Customer.languageName). See the following example of the use of the PXLocalizableDefault attribute. 

 [PXLocalizableDefault(typeof(Search<InventoryItem.descr, Where<InventoryItem.inventoryID, Equal<Current<SOLine.inventoryID>>>>), typeof(Customer.languageName), PersistingCheck = PXPersistingCheck.Nothing)] 

#### Obtaining the Value of a Multilanguage Field in the Current Locale 

 If you want to obtain the value of a multilanguage field in the current locale, you use the PXDatabase.SelectSingle() or PXDatabase.SelectMulti() method. You pass to the method the return value of the PXDBLocalizableStringAttribute.GetValueSelect() static method instead of passing a new PXDataField object to it. (The PXDBLocalizableStringAttribute.GetValueSelect() method takes three input parameters: the table name, the field name, and a Boolean flag that indicates whether strings should be returned as text with unlimited length.) 

 The following code shows an example of the use of the PXDBLocalizableStringAttribute.GetValueSelect() method. 

 foreach (PXDataRecord record in PXDatabase.SelectMulti<Numbering>( newPXDataField<Numbering.numberingID>(), PXDBLocalizableStringAttribute.GetValueSelect("Numbering", "NewSymbol", false), newPXDataField<Numbering.userNumbering>())) { ... } 

 Generally, you use the PXDatabase.SelectSingle() and PXDatabase.SelectMulti() methods for retrieving data within the Prefetch() method of a database slot. Remember to add language code to the slot key when you obtain a slot, as shown in the following example, because with the use of PXDBLocalizableStringAttribute, the data becomes language-specific. Therefore, you need different slot instances for different languages. 

 Numberings items = PXDatabase.GetSlot<Numberings>( typeof(Numberings).Name + currentLanguage, typeof(Numbering)); 


<!-- PAGE_BREAK -->
 Supporting UI Localization | 205 

#### Obtaining the Value of a Multilanguage Field in a Specific Language 

 If you want to obtain the value of a multilanguage field in a specific language, you use the PXDBLocalizableStringAttribute.GetTranslation() method. You pass the following input parameters to the method: 

- A DAC cache 

- A DAC instance 

- A field name 

- The ISO code of the language The following code shows an example of use of the PXDBLocalizableStringAttribute.GetTranslation() method. 

 tran.TranDesc = PXDBLocalizableStringAttribute.GetTranslation( Caches[typeof(InventoryItem)], item, typeof(InventoryItem.descr).Name, customer.Current?.LanguageName); 

### UI Localization: Optimization of Memory Consumption of Localized Data 

 To optimize the memory consumption of static data, you can move the localization data from all customer application instances to centralized storage. By default, the localization data is kept in the database of every Acumatica ERP instance, and the total size of this data therefore equals the number of instances times the size of the data. If you move the localization data to centralized storage, there is only one copy of this data. 

 Alternatively, you can optimize the consumption of memory by disabling localization. 

 Whether you disable localization or set up centralized storage of localization data, you should perform the following general steps: 

1. You implement a custom translation provider. To do this, you follow the instructions in _Implementing a_     _Custom Translation Provider_ or _Disabling Localization_ in this topic, depending on the chosen method of     optimizing memory consumption. 

2. You place the assembly file with the new provider in the Bin directory of the Acumatica ERP instance and     add the assembly to the customization project as a _File_ element. 

3. You register the new provider in the pxtranslate element of the web.config file, as described in the     _Registering the New Provider in Web.config_ section of this topic. 

#### Implementing a Custom Translation Provider 

 To implement a custom translation provider, you derive a class from the PXTranslationProvider class and override the LoadCultureDictionary() method, as the following example shows. 

 public class DemoTranslationProvider : PXTranslationProvider { public override PXCultureDictionary LoadCultureDictionary( string locale, bool includeObsolete, bool escapeStrings) { PXCultureDictionary dictionary = new PXCultureDictionary(); ... // Adding a general translation for some string dictionary.Append( 


<!-- PAGE_BREAK -->
 Supporting UI Localization | 206 

 valueToTranslate, new PXCultureValue(locale, translation)); // Adding a special translation for some string dictionary.AppendException( valueToTranslate, new PXCultureEx(resourceID, locale, translation)); ... return dictionary; } } 

The LoadCultureDictionary() method returns an instance of the PXCultureDictionary type. Values are added to objects of this type through the Append() and AppendException() methods. Append() adds a general translation for a string. AppendException() adds a translation for a special case (exception) identified by the resource key. 

The code below defines a custom translation provider that loads the localization data from an external Acumatica ERP database by using ADO.NET tools. 

 using System; using System.Collections.Generic; using System.Data.SqlClient; using System.Linq; using System.Text; using PX.Data; using PX.Translation; 

 namespace Demo.Translation { public class DemoTranslationProvider : PXTranslationProvider { private struct TranslationKey { public Guid id; public string resKey; public string locale; } 

 // The connection string for the database that stores localization // data // Specify a specific value of the connection string private const string connectionString = ""; 

 // Overriding the method that returns the dictionary of // localization data public override PXCultureDictionary LoadCultureDictionary( string locale, bool includeObsolete, bool escapeStrings) { string localizationValueSelect; string localizationTranslationSelect; InitializeSelectCommand(locale, includeObsolete, out localizationValueSelect, out localizationTranslationSelect); 

 Dictionary<Guid, string> localizationValue; Dictionary<TranslationKey, string> localizationTranslation; SelectLocalizationValues(localizationValueSelect, localizationTranslationSelect, 


<!-- PAGE_BREAK -->
 Supporting UI Localization | 207 

 out localizationValue, out localizationTranslation); 

return CreateCultureDictionary(escapeStrings, localizationValue, localizationTranslation); } 

// Builds the SQL statement for selecting localization data private void InitializeSelectCommand( string locale, bool includeObsolete, out string localizationValueSelect, out string localizationTranslationSelect) { StringBuilder localizationValueSelectBld = new StringBuilder("Select IDlv, NeutralValue" + "From LocalizationValue"); if (!includeObsolete) { localizationValueSelectBld.Append(" Where IsObsolete = 0"); } localizationValueSelect = localizationValueSelectBld.ToString(); 

StringBuilder localizationTranslationSelectBld = new StringBuilder("Select IDlt, ResKey, Value, Locale" + "From LocalizationTranslation"); if (!string.IsNullOrEmpty(locale)) { localizationTranslationSelectBld.AppendFormat( " Where Locale = '{0}'", locale); } localizationTranslationSelect = localizationTranslationSelectBld.ToString(); } 

// Retrieves localization data from the database by using the provided // SQL statement private void SelectLocalizationValues( string localizationValueSelect, string localizationTranslationSelect, out Dictionary<Guid, string> localizationValue, out Dictionary<TranslationKey, string> localizationTranslation) { localizationValue = new Dictionary<Guid, string>(); localizationTranslation = new Dictionary<TranslationKey, string>(); 

 using (SqlConnection connection = new SqlConnection(connectionString)) { connection.Open(); 

 SqlCommand command = new SqlCommand(localizationValueSelect, connection); using (SqlDataReader reader = command.ExecuteReader()) { while (reader.Read()) { 


<!-- PAGE_BREAK -->
 Supporting UI Localization | 208 

 localizationValue.Add(reader.GetGuid(0), reader.GetString(1)); } } 

command.CommandText = localizationTranslationSelect; using (SqlDataReader reader = command.ExecuteReader()) { while (reader.Read()) { TranslationKey newTranslationKey = new TranslationKey() { id = reader.GetGuid(0), resKey = reader.GetString(1), locale = reader.GetString(3) }; localizationTranslation.Add(newTranslationKey, reader.GetString(2)); } } } } 

// Fills the PXCultureDictionary object with localization data by using // the provided dictionaries of values to translate and the // corresponding translations private PXCultureDictionary CreateCultureDictionary( bool escapeStrings, Dictionary<Guid, string> localizationValue, Dictionary<TranslationKey, string> localizationTranslation) { PXCultureDictionary dictionary = new PXCultureDictionary(); 

 if (localizationTranslation.Count != 0) { foreach (Guid id in localizationValue.Keys) { IEnumerable<TranslationKey> localizationTranslationKeys = from translationRowKey in localizationTranslation.Keys where translationRowKey.id == id select translationRowKey; foreach (TranslationKey key in localizationTranslationKeys) { string translationResKey = key.resKey; string translationLocale = key.locale; string translationValue = localizationTranslation[key]; string value = escapeStrings? PXLocalizer.EscapeString(translationValue) : translationValue; 

 if (string.IsNullOrEmpty(translationResKey)) { dictionary.Append( localizationValue[id], new PXCultureValue(translationLocale, value)); } else 


<!-- PAGE_BREAK -->
 Supporting UI Localization | 209 

 { dictionary.AppendException( localizationValue[id], new PXCultureEx(translationResKey, translationLocale, value)); } } } } return dictionary; } } } 

#### Disabling Localization 

 To disable localization, you implement a custom translation provider with the LoadCultureDictionary() method that returns null, as the following code shows. 

 public class DemoTranslationProvider : PXTranslationProvider { public override PXCultureDictionary LoadCultureDictionary( string locale, bool includeObsolete, bool escapeStrings) { return null; } } 

#### Registering the New Provider in Web.config 

 Once the provider class is defined, you register it in the web.config file by adding a new key to the providers collection of the pxtranslate element and specifying the new key in the defaultProvider property of pxtranslate. You use the add element to register the provider. You set the name attribute to the key, which can be any unique value, and specify the type of the custom provider in the type attribute. 

 The following code shows the configuration of DemoTranslationProvider, which was introduced in the previous section, in the pxtranslate element of the web.config file. 

 <px.core> ... <pxtranslate defaultProvider="DemoTranslationProvider"> <providers> <!--The default translation provider--> <remove name="PXDBTranslatonProvider" /> <add name="PXDBTranslatonProvider" type="PX.Data.PXDBTranslatonProvider, PX.Data" /> 

 <!--The custom translation provider--> <remove name="DemoTranslationProvider" /> <add name="DemoTranslationProvider" type="Demo.Translation.DemoTranslationProvider, TranslationProvider" applicationName="/"/> </providers> </pxtranslate> ... 


<!-- PAGE_BREAK -->
 Supporting UI Localization | 210 

</px.core> 


<!-- PAGE_BREAK -->
 Troubleshooting the Modern UI | 211 

## Troubleshooting the Modern UI 

 In this part, you can find information on how to troubleshoot the Modern UI. You will learn how to debug the UI in the browser, troubleshoot the building errors, and force the UI changes to be displayed. 

### Modern UI Troubleshooting: General Information 

 If you experience issues with the code developed for the Modern UI, you may need to use the troubleshooting techniques. 

#### Learning Objectives 

 In this chapter, you will learn how to do the following: 

- Troubleshoot the frontend code in the browser 

- Force UI changes to be displayed in the browser 

- Specify the log level for building the source code 

- Build the source code for a particular tenant 

#### Applicable Scenarios 

 You troubleshoot the Modern UI in the following cases: 

- UI components are not displayed correctly. 

- UI components work incorrectly. 

- Build of the Modern UI fails. 

#### Modern UI Troubleshooting 

 To troubleshoot issues with the Modern UI, you can use the built-in browser tools. You can find brief descriptions of particular troubleshooting scenarios in Modern UI Troubleshooting: Developer Tools in the Browser. 

 If for some reason the changes you have made to the code of the Modern UI are not displayed, you may find useful the information in Modern UI Troubleshooting: Unreflected Changes in the Modern UI. 

 For details about the build options that may help you to find the issue with the Modern UI code, see Modern UI Troubleshooting: Build Options. 

### Modern UI Troubleshooting: Developer Tools in the Browser 

 You may need to use the developer tools available in the web browser to troubleshoot the Modern UI. The sections below provide details about troubleshooting in the Chrome web browser. The details for other web browsers may be slightly different. 

 To open the developer tools of the browser, you press F12 on the keyboard or select Developer tools in the menu of the browser. 

 For information on debugging source code using the developer tools, see UI Events: Debugging the UI Code in the Browser. 


<!-- PAGE_BREAK -->
 Troubleshooting the Modern UI | 212 

#### Viewing the Data that Is Posted to the Server and Returned from the Server 

 On the Network tab of the developer tools, you can find information about the requests that have been used to display the Acumatica ERP form. The requests that may be useful for debugging have the form ID as their name. You can filter out these requests by using the Filter button on the toolbar of the Network tab and selecting the Fetch/XHR filter. 

 You can select the Preserve Log check box on the toolbar of the Network tab to keep the requests during navigation or a page reload. 

 When you open a form, you have the first GET request with structure as the name. This request retrieves all the screen information from the server. If this request has already been executed, most of the data returned with this request is cached. You can turn off this behavior by selecting the Disable cache check box on the toolbar of the Network tab. 

 The POST requests with the form ID as the name are not cached. They contain information about the changes made on the form and the responses to these changes from the server. The Payload tab provides information about what has been posted to the server in JSON format. In the data field of the payload, you can see the data changes that has been posted to the server. The server will use this data to update PXCache data. For example, the following screenshot shows the data that is sent when the Repair Item check box is cleared on the form. 

 Figure: Payload data 

 The viewsParams and controlsParams fields contain information about the views and controls that need to be reloaded. The viewsParams field contains the views that are initialized with the CreateSingle method in TypeScript. The controlsParams field contains the views that are initialized with the CreateCollection method and other controls, such as the form toolbar. 

 For the POST request, on the Preview tab (on the right pane of the Network tab), you can see the data that is posted back from the server. In the fieldStates field, you see the field states for all fields that are defined in the TypeScript code. You can use this data to check whether the correct field state has been sent from the server. For example, in the following screenshot, the Repair Item Type box is unavailable for editing, as indicated by enabled: false in the field state for the UsrRepairItemType field. 


<!-- PAGE_BREAK -->
 Troubleshooting the Modern UI | 213 

 Figure: Field state 

 For the GET request, in the fieldStates field on the Preview tab, you can see the default state of the element. 

#### Opening Developer Tools for a Form That Opens in a New Tab 

 By default, when an Acumatica ERP form is opened in a new tab, such as when you click on a link on a form, the developer tools are not open for the form in the tab and you miss the request that loads the form for the first time. You can turn on the opening of the developer tools for a new tab if the developer tools are open in the current tab. In Chrome, you select the Auto-Open DevTools for popups check box on the Settings menu of the developer tools. 

#### Importing and Exporting HAR Files 

 You can export information about all requests that have been made during the current session with developer tools by using the Export HAR button on the toolbar of the Network tab of the developer tools. You may need to provide this file to your Acumatica support provider. To import the HAR file, you use the Import HAR file button. 

### Modern UI Troubleshooting: Unreflected Changes in the Modern UI 

 In some cases, when you have made changes to the sources of the forms that have been migrated to the Modern UI and rebuilt the sources, you may not see these changes reflected in the web browser when you open one of these forms. 

 The following actions may help you resolve this issue: 

- Restart your Acumatica ERP instance by doing one of the following: 

- Modify and save the Web.config file. 

- Click the **Restart Application** button on the _Apply Updates_ (SM203510) form. 

- Use the Web Server (IIS). 

- Sign in to your Acumatica ERP instance as an administrative user, and navigate to the form whose changes     do not appear in the web browser. Press _F12_ on your keyboard to open the developer tools in the web     browser. On the **Network** tab, select the **Disable cache** check box, and refresh the page. If your changes to     the form still do not appear, proceed to the next instruction. 


<!-- PAGE_BREAK -->
 Troubleshooting the Modern UI | 214 

 The actions in this instruction are based on the assumption that you are using the Chrome web browser. The specific actions may differ for other web browsers. 

- On the More menu of the _Apply Updates_ form, click the **Reset Caches** command. Navigate back to the form     whose changes do not appear in the web browser, and refresh the page. 

### Modern UI Troubleshooting: Build Options 

 For troubleshooting errors during building of the Modern UI, you can use additional build options, which are described in the following sections. 

#### Log Level for Building the Source Code 

 You can specify the log level in the build command, as shown in the following example. The log level determines the minimum threshold at which a logging method should be enabled. 

 npm run build-dev ----env LOG_LEVEL=trace 

 The following log levels are available: 

- fatal 

- error 

- warn 

- info 

- debug 

- trace For more details on log levels, see _documentation of the pino logger_. 

 When the build is completed, the links to the log files are displayed along with the result of the build. 

#### Building of the Source Code for a Particular Tenant 

 As described in Customization Project with UI Changes: How UI Customization Works , the source code for published changes to the Modern UI in a particular tenant is located in the FrontendSources\screen \src\customizationScreens\<Tenant Name>\screens folder. For troubleshooting errors during building of the Modern UI changes of a particular tenant of your instance, you can run the following command in the FrontendSources folder, where TenantName is the tenant name in the Login Name box of the Tenants (SM203520) form. 

 npm run build-dev ----env tenant=TenantName 

 Before building the source code for changes to the Modern UI, be sure to follow the instructions described in Performing the Prerequisite Actions. 

 You can use the tenant=TenantName parameter with any other parameters, such as screenIds or modules, or with the watch command with parameters. For details about the parameters, see Modern UI Development: Building the Source Code. 


<!-- PAGE_BREAK -->
 Troubleshooting the Modern UI | 215 

By default, the system executes the npm run build command (instead of npm run builddev) during publication of a customization project with the Modern UI changes. You can adjust this behavior by adding the respective keys in the Web.config file. For details about the keys, see _Customization Project with UI Changes: General Information_. 


