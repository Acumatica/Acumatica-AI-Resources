## Consultant Guide 

# Arena Solutions Integration 

# 2025 R2 


<!-- PAGE_BREAK -->
 Contents | 2 

## Contents 

 Copyright...............................................................................................................................................3 

 Integrating Acumatica ERP with Arena Solutions: General Information.......................................................4 

 Initial Configuration of Acumatica ERP and Arena Solutions...................................................................... 7 

 Initial Configuration: General Information.......................................................................................................7 

 Initial Configuration: To Set Up Acumatica ERP.............................................................................................. 9 

 Initial Configuration: To Initially Sync Data................................................................................................... 12 

 Importing Items....................................................................................................................................16 

 Item Import: General Information.................................................................................................................. 16 

 Item Import: Synchronization Details............................................................................................................ 17 

 Importing Bills of Material.....................................................................................................................19 

 Import of Bills of Material: General Information............................................................................................19 

 Import of Bills of Material: Synchronization Details...................................................................................... 21 

 Exporting Vendors................................................................................................................................ 23 

 Vendor Export: General Information.............................................................................................................. 23 

 Vendor Export: Synchronization Details.........................................................................................................24 

 Importing Vendor Details of Items......................................................................................................... 25 

 Import of Vendor Details of Items: General Information...............................................................................25 

 Import of Vendor Details of Items: Synchronization Details......................................................................... 26 

 Importing Sales Categories....................................................................................................................28 

 Import of Sales Categories: General Information.......................................................................................... 28 

 Import of Sales Categories: Synchronization Details.................................................................................... 29 

 Arena Solutions Integration: Form Reference..........................................................................................30 

 Arena Integration............................................................................................................................................. 30 

 UI Elements Specific to Integration with Arena Solutions............................................................................ 36 


<!-- PAGE_BREAK -->
 Copyright | 3 

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
 Integrating Acumatica ERP with Arena Solutions: General Information | 4 

## Integrating Acumatica ERP with Arena Solutions: General 

## Information 

 Companies that manufacture complex products or are in regulated industries (such as medicine) need to capture requirements, track compliance, and control changes. To address these challenges, many of these organizations implement product lifecycle management (PLM) systems, such as Arena Solutions. The Acumatica ERP native connector for Arena Solutions streamlines the data synchronization between Arena Solutions and Acumatica ERP. 

 In this topic, you will find general information about the integration between Arena Solutions and Acumatica ERP. 

#### Product Lifecycle Management Systems 

 Organizations that use product lifecycle management systems, such as Arena Solutions, usually have engineers who design new products and work with product management and marketing to bring the products to market. Requirements, restrictions (such as environment and regulatory compliance), and decisions must be captured and made available to the engineer as the part of the design process. The engineer needs a PLM system to collaborate, as well as to manage projects. Once a new product is finalized, the PLM system can provide a streamlined mechanism to push revisions to the ERP system in which production orders will be created for product manufacturing. The set of product requirements and components managed by using a PLM system is called the engineering bill of material ( EBOM ). 

 PLM systems are typically deployed by companies in the following industries: 

- Aerospace and defense 

- Automotive and other transport 

- Electronics and high-tech (high-tech consumer devices, semiconductors, telephony and satellites, and     medical devices) 

- Fabrication and assembly 

- Process and consumables (pharmaceutical and food and beverage) 

- Construction and shipbuilding) 

- Utilities 

#### Engineering Change Control 

 Both Acumatica ERP Manufacturing Edition and Arena Solutions support controlling changes in products. The engineering change control functionality in Acumatica ERP Manufacturing Edition provides the ability to manage changes in bills of material and supports approvals of changes. Arena Solutions provides the additional features listed in the following table. 

 You can use either Acumatica ERP Manufacturing Edition or Arena Solutions for the engineering change control functionality. If on the Enable/Disable Features (CS100000) form, the Arena PLM Integration feature is enabled, you cannot enable the Engineering Change Control feature. 

 Table: Comparison of Features Supported by Acumatica ERP Manufacturing Edition and Arena Solutions 

 Feature Acumatica ERP Manufacturing Edition 

 Arena Solutions 

 Change request management + + 

 Change approval control + + 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Arena Solutions: General Information | 5 

 Feature Acumatica ERP Manufacturing Edition 

 Arena Solutions 

 BOM compare and redline + + 

 Demand analysis + + 

 Where-use reporting + + 

 Requirements management + 

 New product introduction + 

 Item revision management + 

 Compliance tracking + 

 Supplier access and assembly sharing + 

 Quality tracking (cause analysis, correction, and prevention of quality issues) 

##### + 

 Training plans + 

#### Data Ownership 

 When Acumatica ERP and Arena Solutions are integrated, the following entities are managed in Arena Solutions and imported into Acumatica ERP: 

- Stock items and their attributes 

- Vendors specified in item settings 

- Sales categories specified in item settings 

- Bills of material The following entity is managed in Acumatica ERP and exported to Arena Solutions: vendors. 

 On the following diagram, you can see the data ownership and flow directions. 

 Figure: Data ownership 


<!-- PAGE_BREAK -->
 Integrating Acumatica ERP with Arena Solutions: General Information | 6 

#### Changes in Acumatica ERP 

 When integration with Arena Solutions is implemented, the functionality of Acumatica ERP is changed as follows: 

1. The _Engineering Change Control_ feature cannot be enabled on the _Enable/Disable Features_ (CS100000) form. 

2. Users cannot create stock items of the classes specified on the **Other** tab of the _Arena Integration_     (BCAR2010) form. 

3. Users can add to operations of a bill of material only materials specified in the engineering bill of material     in Arena Solutions. Material settings—such as quantities, units of measure, and reference designators—are     also managed in Arena Solutions and are unavailable for editing in Acumatica ERP. 

4. Vendors specified on the **Vendor Details** tab of the _Stock Items_ (IN202500) form cannot be added or deleted     for stock items that are synched with Arena Solutions. 

5. Users cannot change the following settings of a stock item synched with Arena Solutions on the _Stock Items_     form: inventory ID, item status, description, attributes, and sales categories. 

#### Integration Limitations 

 The following capabilities are outside of the scope of the current implementation of the integration: 

- Support of the Arena Solutions quality module 

- Initial export of items, vendors, and sales categories from Acumatica ERP 

- Attribute synchronization 

- Bills of material that contain phantom items 

- The ability to assign rank and split values to suppliers in Acumatica ERP 

- Import of files and documents from Arena Solutions 

- Export of item costs from Acumatica ERP 

- Export of changes in vendor contacts from Acumatica ERP 

- Item revision synchronization 

- Import of changes in item numbers in Arena Solutions 


<!-- PAGE_BREAK -->
 Initial Configuration of Acumatica ERP and Arena Solutions | 7 

## Initial Configuration of Acumatica ERP and Arena 

## Solutions 

 When you integrate Acumatica ERP and Arena Solutions, you first need to prepare both systems properly and perform an initial sync of the data. In this chapter, you will find details about the initial configuration of Acumatica ERP and Arena Solutions and the initial data synchronization. 

### Initial Configuration: General Information 

 When you initially configure integration between Acumatica ERP and Arena Solutions, you need to set up an Arena Solutions workspace, establish a connection between the Acumatica ERP instance and Arena Solutions, and perform the initial data synchronization. 

#### Learning Objectives 

 In this chapter, you will learn how to do the following: 

- Prepare an Arena Solutions tenant for integration 

- Prepare an Acumatica ERP instance for integration 

- Perform initial data synchronization between the systems 

#### Applicable Scenarios 

 You implement the integration of Acumatica ERP and Arena Solutions when your organization uses both systems and would like to manage product lifecycles in Arena Solutions and use Acumatica ERP for managing financial information related to manufacturing. 

#### General Steps for Establishing the Connection and Performing the Initial Configuration 

 In order to connect the Acumatica ERP instance to Arena Solutions, you perform the following general steps: 

1. You prepare an Arena Solutions tenant. 

2. You prepare an Acumatica ERP instance. 

3. You perform the initial synchronization of data between Acumatica ERP and Arena Solutions. 

 Each of these general steps is described in more detail in the following sections. 

#### Arena Solutions Preparation 

 You should make sure that the following actions have been done in Arena Solutions before you set up integration with Acumatica ERP: 

1. If you do not have access to Arena Solutions, you request a demo instance. 

2. Sign in to Arena Solutions, you open the workspace and copy the workspace ID in the URL of your instance.     You will need the ID later when setting up connection in Acumatica ERP. 

3. You do the following in the Arena Solutions workspace:     a. You specify workspace settings in the **Summary > Settings** view.     b. You create users in the **Users > Access** view. 


<!-- PAGE_BREAK -->
 Initial Configuration of Acumatica ERP and Arena Solutions | 8 

 c. You specify the needed item settings in the Items view. d. You define item attributes in the Attributes > Items view. 

 These attributes will not be created automatically in Acumatica ERP during data synchronization, so you need to create attributes in both Arena Solutions and in Acumatica ERP. Attribute names must match in both systems. 

 e. You define the item categories and default attributes in the Categories > Items view. f. Optional: You define units of measure for items in the Lists > Units of Measure section. 

 If the units of measure were defined in Arena Solutions before you have up integration with Acumatica ERP, you need to create a substitution list on the Substitution Lists (SM206026) form to map the units of measure in Arena Solutions to those in Acumatica ERP. If the units of measure were not specified in Arena Solutions, you create them in Arena Solutions with the same names they have as in Acumatica ERP. In this case, you do not need to create a substitution list. 

 g. Make sure that the items and the engineering bills of material to be imported have been created. 

#### Acumatica ERP Preparation 

 To prepare an Acumatica ERP instance for integration with Arena Solutions, you need to do the following: 

1. You install Acumatica ERP 2025 R2. 

2. You download the customization package that provides integration from _Acumatica Community_. 

3. You import and publish the customization package. 

4. On the _Enable/Disable Features_ (CS100000) form, you do the following: 

- Enable the _Arena PLM Integration_ feature. 

- Make sure that the _Manufacturing_ and _Retail Commerce_ features are enabled. 

- Make sure that the _Engineering Change Control_ feature is disabled. 

 You can review the feature states aer you publish the customization package. 

5. Optional: On the _Substitution Lists_ (SM206026) form, you create a substitution list for units of measure. 

 You need to create the substitution list for units of measure only if the units of measure were defined in Arena Solutions before you have set up integration with Acumatica ERP and their names differ from those defined in Acumatica ERP. 

6. On the _Arena Integration_ (BCAR2010) form, you establish the connection between the systems, activate the     entities to be synchronized, and specify synchronization settings. 

7. On the _Entities_ (BC202000) form, you specify filters for entities, such as vendors, stock items, and bills of     material. (Filters are conditions according to which the system will include entities in synchronization or     exclude them from synchronization.) 

 We recommend that you add the following filters: 

- For categories to be imported; this filter prevents the import of inactive categories 

- For vendors; this filter limits the vendors exported to Arena Solutions 


<!-- PAGE_BREAK -->
 Initial Configuration of Acumatica ERP and Arena Solutions | 9 

8. If any items or bills of material have attributes assigned (such as color or size), on the _Attributes_ (CS205000)     form, you create the attributes to be used for stock items and bills of material. 

 The attribute description in Acumatica ERP must match the attribute label in Arena Solutions. 

 You can find the detailed instructions for setting up the Acumatica ERP instance in Initial Configuration: To Set Up Acumatica ERP. 

#### Initial Data Synchronization 

 During the initial data synchronization of the systems, you do the following: 

1. You sync sales categories to import the categories from Arena Solutions to Acumatica ERP. 

2. You sync vendors to export vendors from Acumatica ERP to Arena Solutions. 

3. You sync stock items, bills of material, and vendor details to import the data from Arena Solutions to     Acumatica ERP. 

 For detailed instructions, see Initial Configuration: To Initially Sync Data. 

### Initial Configuration: To Set Up Acumatica ERP 

 In the following implementation activity, you will learn how to prepare an Acumatica ERP instance for integration with Arena Solutions. You can use any tenant of Acumatica ERP with manufacturing functionality configured, or you can install the SalesDemo dataset, in which manufacturing functionality is preconfigured. 

 Before you start setting up an Acumatica ERP instance, you should obtain access to Arena Solutions, copy the workspace ID, and configure all required entities that will be synced. 

#### Story 

 Suppose that you are an implementation consultant who needs to prepare an Acumatica ERP instance for integration with Arena Solutions. You will establish the connection between the systems, specify integration settings, and specify filters for the entities that will be synced between the systems—in this example, vendors, stock items, and bills of material (BOMs). 

 Suppose that based on the business processes of your organization, you need to configure Acumatica ERP so that it does the following: 

- Creates sales categories that exist in Arena Solutions but are absent in Acumatica ERP 

- If a supplier (vendor) in Arena Solutions specified in the settings of an item does not exist in Acumatica ERP,     uses a specific default vendor 

- Automatically creates a stock item for a new item revision in Arena Solutions 

- Copies operations and materials from the previous revision of a bill of material to a new revision 

- Copies materials from an engineering BOM (added in Arena Solutions) to a BOM in Acumatica ERP 

- Assigns the _Inactive_ status to items that are marked as deprecated or obsolete in Arena Solutions You will also specify the default operation number and work center for new bills of material that are created in Acumatica ERP during data synchronization. 

 Also, suppose that you need to include in data synchronization only vendors assigned to a particular vendor class and stock items with an effective date starting from a particular date; you also need to exclude a particular bill of material from data synchronization. 


<!-- PAGE_BREAK -->
 Initial Configuration of Acumatica ERP and Arena Solutions | 10 

#### Process Overview 

 In this activity, you will establish the connection with Arena Solutions, activate the entities that will be synced between the systems, and specify the needed integration settings by using the Arena Integration (BCAR2010) form. Then you will create filters for the vendor class and stock item to be included in the data sync and a filter for the bill of material to be excluded from data sync by using the Entities (BC202000) form. 

#### System Preparation 

 Before you start preparing the system to integration with Arena Solutions, do the following: 

1. Download, import, and publish the customization package that provides the integration from _Acumatica_     _Community_. 

2. On the _Enable/Disable Features_ (CS100000) form, make sure that the _Manufacturing_ and _Retail Commerce_     features are enabled. 

3. Optional:On the _Substitution Lists_ (SM206026) form, create a substitution list for units of measure. 

#### Step 1: Establishing the Connection 

 To establish the connection between Acumatica ERP and Arena Solutions, do the following: 

1. Open the _Arena Integration_ (BCAR2010) form. 

2. In the Summary area, do the following:     a. In the **Tenant Name** box, type the URL of your Arena Solutions tenant.     b. Make sure that the **Active** and **Default** check boxes are selected. 

3. On the **Connection Settings** tab, specify the following: 

- **Email** : The email you use to sign in to the Arena Solutions tenant 

- **Password** : The password you use to sign in to the Arena Solutions tenant 

- **Workspace ID** : The identifier of the Arena Solutions workspace, which you copied from the workspace     URL 

4. On the form toolbar, click **Save**. 

5. On the form toolbar, click **Test Connection**. Make sure that the connection has been established     successfully. 

#### Step 2: Activating Entities 

 To activate the entities that will be synced, do the following while you are still viewing the Arena Integration (BCAR2010) form: 

1. On the **Entity Settings** tab, select the check boxes in the **Active** column for each row. 

2. Optional: In the **Max. Number of Failed Attempts** column, change the number of failed attempts the     system will make to synchronize the entity before it stops. 

3. On the form toolbar, click **Save**. 

#### Step 3: Specifying Integration Settings 

 To specify integration settings, while you are still viewing the Arena Integration (BCAR2010) form, do the following: 

1. In the **Sync Settings** section of the **Other** tab, specify the following settings: 


<!-- PAGE_BREAK -->
 Initial Configuration of Acumatica ERP and Arena Solutions | 11 

- **Action for Invalid Category** : _Create on fly_ 

- **Action for Invalid Supplier** : _Use Default Supplier_ 

- **Vendor** : A vendor created in Acumatica ERP that the system will use as the default vendor 

- **Create Item for New Revision** : Selected 

- **Delimiter** : The delimiter that will be used by the system to add a revision number to the inventory ID of     each new item created for a new item revision 

- **Copy Data of Latest BOM Revision to New BOM Revision** : Selected 

- **Create Operation and Copy EBOM Materials** : Selected 

2. In the **Default Settings** section, specify the following settings: 

- **BOM Operation ID** : The default operation number that the system will use to create a bill of material     routing in Acumatica ERP 

- **BOM Work Center** : The default work center that the system will use to create a bill of material routing in     Acumatica ERP 

- **Default Item Class** : The default item class that the system will use to create an item in Acumatica ERP 

- **Status of Deprecated Item** : _Inactive_ 

- **Status of Obsolete Item** : _Inactive_ 

3. In the **Arena PLM Item Classes** section, do the following:     a. Add rows to the table for the sales categories imported into Acumatica ERP from Arena Solutions that        will be used in data synchronization.     b. If you want to assign a particular item class to a sales category, in the **Item Class ID** column, select the        item class. The system will use this item class when it is creating items in Acumatica ERP during data        synchronization if the sales category is assigned to the item in Arena Solutions.     c. If you want to assign a particular work center to a sales category, in the **Work Center ID** column, select        the work center. The system will use this work center when it is adding operations to a BOM in Acumatica        ERP during data synchronization if material items of the operation have the sales category assigned in        Arena Solutions— 

#### Step 4: Adding Filters for Entities 

 To add filters for a vendor class, stock item, and bill of material, do the following: 

1. Open the _Entities_ (BC202000) form. 

2. Add a filter for the vendor class as follows:     a. In the **Entity** box of the Summary area, select _Vendor_.     b. On the **Export Filtering** tab, click **Add Row** on the table toolbar.     c. In the row, specify the following: 

- **Active** : Selected 

- **Field Name** : _Vendor Class_ 

- **Condition** : _Equals_ 

- **Value** : The vendor class in Acumatica ERP whose vendors you want to export in the integration d. On the form toolbar, click **Save**. 

3. Add a filter for the stock items to be included in data synchronization as follows:     a. In the **Entity** box of the Summary area, select _Stock Item_.     b. On the **Import Filtering** tab, click **Add Row** on the table toolbar.     c. In the row, specify the following: 

- **Active** : Selected 


<!-- PAGE_BREAK -->
 Initial Configuration of Acumatica ERP and Arena Solutions | 12 

- **Field Name** : _EffectiveDateTime_ 

- **Condition** : _Is Greater Than_ 

- **Value** : The starting effective date in the _dd/mm/yy hh:mm:ss AM_ format d. On the form toolbar, click **Save**. 

4. Add a filter for the bill of material to be excluded from data synchronization as follows:     a. In the **Entity** box of the Summary area, select _Bill of Material_.     b. On the **Import Filtering** tab, click **Add Row** on the table toolbar.     c. In the row, specify the following: 

- **Active** : Selected 

- **Field Name** : _Name_ 

- **Condition** : _Does Not Equal_ 

- **Value** : The name of the bill of material d. On the form toolbar, click **Save**. 

 You have successfully prepared Acumatica ERP for integration with Arena Solutions. Now you can perform initial data synchronization. 

### Initial Configuration: To Initially Sync Data 

 In the following implementation activity, you will learn how to initially sync data between Acumatica ERP and Arena Solutions. 

#### Story 

 Suppose that you are an implementation consultant who needs to integrate Acumatica ERP with Arena Solutions. Further suppose that you have already established the connection between the systems and specified the synchronization settings; now you need to initially synchronize the data between the systems. 

#### Process Overview 

 In this activity, you will perform the following steps: 

1. On the _Prepare Data_ (BC501000) form, prepare the sales category data for import. 

2. On the _Process Data_ (BC501500) form, import the prepared sales category data. 

3. On the _Prepare Data_ form, prepare the vendor data for export. 

4. On the _Process Data_ form, export the prepared vendor data. 

5. On the _Prepare Data_ form, prepare the stock item, bill of material, and vendor detail data for import. 

6. On the _Process Data_ form, import the prepared stock item, bill of material, and vendor detail data. 

7. On the _Sync History_ (BC301000) form, review the synchronized data. 

#### System Preparation 

 As a prerequisite activity, in the company to which you are signed in, make sure you have set up your Acumatica ERP instance for integration with Arena Solutions, as described in Initial Configuration: To Set Up Acumatica ERP. 


<!-- PAGE_BREAK -->
 Initial Configuration of Acumatica ERP and Arena Solutions | 13 

#### Step 1: Preparing the Sales Category Data for Import 

 To prepare the sales category data for import, do the following: 

1. Open the _Prepare Data_ (BC501000) form. 

2. In the **Tenant** box of the Selection area, make sure that your Arena Solutions tenant is selected. 

3. In the **Entity** box, select _Sales Category_. 

4. In the **Prepare Mode** box, select _Full_. 

5. Clear the **Start Date** box to prepare all records, regardless of the date of the changes. 

6. In the **Sync Direction** column, notice that _Import_ is specified. This means that sales categories will be     imported from Arena Solutions to Acumatica ERP. 

7. In the row with the _Sales Category_ entity, select the **Selected** check box, and on the form toolbar, click     **Prepare**. 

8. In the **Processing** dialog box, which opens, review the results of the processing, and click **Close** to close the     dialog box.     Notice that the **Prepared Records** column shows the number of records that have been prepared and are     ready to be processed. 

#### Step 2: Importing the Prepared Sales Category Data 

 To import the sales category data that you have prepared, do the following: 

1. While you are still viewing the _Prepare Data_ (BC501000) form, in the row with the _Sales Category_ entity, click     the link in the **Prepared Records** column.     The _Process Data_ (BC501500) form opens with the Arena Solutions tenant and the _Sales Category_ entity     selected in the Selection area. The table displays all synchronization records of the _Sales Category_ entity,     which you prepared in Step 1. 

2. On the form toolbar, click **Process All** to import all records displayed in the table. 

3. In the **Processing** dialog box, which opens, review the results of the processing, and click **Close** to close the     dialog box. 

#### Step 3: Preparing the Vendor Data for Export 

 To prepare the vendor data for export, do the following: 

1. Open the _Prepare Data_ (BC501000) form. 

2. In the **Tenant** box of the Selection area, make sure that your Arena Solutions tenant is selected. 

3. In the **Entity** box, select _Vendor_. 

4. In the **Prepare Mode** box, select _Full_. 

5. Clear the **Start Date** box. 

6. In the **Sync Direction** column, notice that _Export_ is specified. This means that vendors will be exported from     Acumatica ERP to Arena Solutions. 

7. In the row with the _Vendor_ entity, select the **Selected** check box, and on the form toolbar, click **Prepare**. 

8. In the **Processing** dialog box, which opens, review the results of the processing, and click **Close** to close the     dialog box. 


<!-- PAGE_BREAK -->
 Initial Configuration of Acumatica ERP and Arena Solutions | 14 

 Notice that the Prepared Records column shows the number of records that have been prepared and are ready to be processed. 

#### Step 4: Exporting the Prepared Vendor Data 

 To export the vendor data that you have prepared, do the following: 

1. While you are still viewing the _Prepare Data_ (BC501000) form, in the row with the _Vendor_ entity, click the link     in the **Prepared Records** column.     The _Process Data_ (BC501500) form opens with the Arena Solutions tenant and the _Vendor_ entity selected in     the Selection area. The table displays all records of the _Vendor_ entity that you prepared in Step 3. 

2. On the form toolbar, click **Process All** to export all records displayed in the table. 

3. In the **Processing** dialog box, which opens, review the results of the processing, and click **Close** to close the     dialog box. 

#### Step 5: Preparing the Other Data for Import 

 To prepare the stock item, bill of material, and vendor detail data for import, do the following: 

1. Open the _Prepare Data_ (BC501000) form. 

2. In the **Tenant** box of the Selection area, make sure that your Arena Solutions tenant is selected. 

3. Make sure that the **Entity** box is empty. 

4. In the **Prepare Mode** box, select _Full_. 

5. Clear the **Start Date** box. 

6. In the **Sync Direction** column, notice that _Import_ is specified for all entities. This means that the records will     be imported from Arena Solutions to Acumatica ERP. 

7. In the rows with the _Stock Item_ , _Bill of Material_ , and _Vendor Details_ entities, select the **Selected** check box,     and on the form toolbar, click **Prepare**. 

8. In the **Processing** dialog box, which opens, review the results of the processing, and click **Close** to close the     dialog box.     Notice that the **Prepared Records** column shows the number of records that have been prepared and are     ready to be processed. 

#### Step 8: Importing the Other Prepared Data 

 To import the stock item, bill of material, and vendor detail data you have prepared, do the following: 

1. Open the _Process Data_ (BC501500) form. 

2. Make sure that the Arena Solutions tenant is selected in the **Tenant** box. 

3. Make sure that the table displays all records that you prepared in Step 7. 

4. On the form toolbar, click **Process All** to import all records displayed in the table. 

5. In the **Processing** dialog box, which opens, review the results of the processing, and click **Close** to close the     dialog box. 

#### Step 9: Reviewing the Synchronization Results 

 To review the results of the synchronization, do the following: 

1. Open the _Sync History_ (BC301000) form. 


<!-- PAGE_BREAK -->
 Initial Configuration of Acumatica ERP and Arena Solutions | 15 

2. In the Summary area of the form, specify the following settings: 

- **Store** : The Arena Solutions tenant with which you are synchronizing data 

- **Entity** : _Empty_ 

3. Open the **Synchronized** tab.     The tab shows the items that have been synchronized with the Arena Solutions tenant. In the **Local ID**     column, the identifiers of the entities in Acumatica ERP are displayed. The **Last Operation** column displays     either _Inserted Locally_ (for the entities with the _Import_ sync direction) or _Inserted Externally_ (for the _Vendor_     entity records, which have the _Export_ sync direction). The time stamp in the **Last Attempt** column shows the     date and time when you ran data processing on the _Process Data_ (BC501500) form for the entities. 

You have successfully performed the initial synchronization of data between Acumatica ERP and Arena Solutions. 


<!-- PAGE_BREAK -->
 Importing Items | 16 

## Importing Items 

 When integration with Arena Solutions is implemented, the items that are used in manufacturing—both finished goods and components—are managed only in Arena Solutions and imported into Acumatica ERP during data synchronization. 

 In this chapter, you will find information about the synchronization of item data. 

### Item Import: General Information 

 If you have integrated Acumatica ERP with Arena Solutions, you manage items in Arena Solutions. To make the changes available in Acumatica ERP, you need to import the items, as described in this topic. 

#### Learning Objectives 

 In this topic, you will learn how to import items into Acumatica ERP that have been created or changed in Arena Solutions. 

#### Applicable Scenarios 

 You import items into Acumatica ERP in the following cases: 

- When you have created any items in Arena Solutions and would like to process manufacturing documents     containing the items in Acumatica ERP 

- When you have changed item settings in Arena Solutions and would like to make these changes available in     Acumatica ERP 

#### Creation of an Item in Arena Solutions 

 When you create an item in Arena Solutions, you need to do the following to make the item ready to be imported into Acumatica ERP: 

1. You create the item. 

2. You create an engineering bill of material for the item. 

3. You release the item to design. 

4. You release the item to production. 

 You can import into Acumatica ERP only items that have been released to production in Arena Solutions. 

#### Item Import 

 In Acumatica ERP, you do the following to import new items and changes in the existing items from Arena Solutions: 

1. On the _Prepare Data_ (BC501000) form, you prepare the _Stock Item_ and _Bill of Material_ entities for import. 

 We recommend that you select the Incremental prepare mode so that the systems syncs only entities with changed data. This will decrease the synchronization time. 


<!-- PAGE_BREAK -->
 Importing Items | 17 

2. On the _Process Data_ (BC501500) form, you import the prepared records. 

- If any filters have been created for the entities on the _Entities_ (BC202000) form, the system     will process the entities according the filter conditions. 

- If any records are processed unsuccessfully, the system marks these entities as failed. You     can investigate these records and reprocess them later. 

3. Optional: On the _Sync History_ (BC301000) form, you view the imported records. 

4. On the _Stock Items_ (IN202500) form, you open each of the imported or changed stock items and specify     additional settings, if needed. 

5. On the _Bill of Material_ (AM208000) form, you open each of the imported bills of material and reconcile them,     as described in _Import of Bills of Material: General Information_. 

### Item Import: Synchronization Details 

 You create and manage the stock items used in manufacturing (finished goods and components) in Arena Solutions, and then you import the items into Acumatica ERP during data synchronization. In this topic, you will find information about the synchronization of item records between Arena Solutions and Acumatica ERP. 

#### Item Revisions in Arena Solutions 

 Arena Solutions supports item revisions; that is, if the item settings have to be changed significantly, an engineer can create a new item revision. Because item revisions are not supported in Acumatica ERP, the identifier of the item revision imported from Arena Solutions is displayed in the PLM Revision ID box on the Manufacturing tab of the Stock Items (IN202500) form and is unavailable for editing. 

 When you are importing item data from Arena Solutions, for a new item revision, the system either creates a new item to represent the revision or updates the settings of the existing item being revised, depending on the state of the Create Item for New Revision check box on the Other tab of the Arena Integration (BCAR2010) form. 

 If you want each item revision to be managed separately in Acumatica ERP, you should select the Create Item for New Revision check box so that the system creates an item for each revision. 

#### Item Synchronization 

 Only items that are in production in Arena Solutions can be imported into Acumatica ERP. When you start importing item data by using the Process Data (BC501500) form, the system syncs the data as follows: 

- If an item does not exist in Acumatica ERP, the system will create the item on the _Stock Items_ (IN202500)     form. 

- If the shared settings of the current item revision have been changed in Arena Solutions, the system updates     the changed item settings. 

- If a new item revision has been added in Arena Solutions, the system behaves as follows, depending on the     state of the **Create Item for New Revision** check box on the **Other** tab of the _Arena Integration_ (BCAR2010)     form: 

- If the check box is selected, the system creates a stock item for the new revision. The system will append     the revision number to the inventory ID of the item to make it unique by using the character specified in     the **Delimiter** box on the _Arena Integration_ form. 

- If the check box is cleared, the system will update the shared settings of the existing item. 


<!-- PAGE_BREAK -->
 Importing Items | 18 

- If the status of the item has been changed to _Obsolete_ in Arena Solutions since the last sync, the system will     change the status of the stock item in Acumatica ERP to the value specified in the **Status of Obsolete Item**     box of the **Other** tab on the _Arena Integration_ form. 

- If the status of the item has been changed to _Deprecated_ in Arena Solutions since the last sync, the system     will change the status of the stock item to the value specified in the **Status of Deprecated Item** box of the     **Other** tab on the _Arena Integration_ form. 

#### Item Mapping 

 The following table shows the mapping of Acumatica ERP elements to Arena Solutions elements that is used during the import of item data from Arena Solutions. In Arena Solutions, you can find item settings in the Item world. In Acumatica ERP, you can find the item settings on the Stock Items (IN202500) form. 

 Table: Item Mapping 

 Arena Solutions Element Name Acumatica ERP Element Name Item Name Inventory ID box (Summary area) 

 Description Description box (Summary area) 

 Revision Revision ID box ( Manufacturing tab) 

 Unit of Measure Base Unit box ( General Settings tab) 

 Owner Product Manager box (Summary area) 

 Additional Attributes Attributes table ( Attributes tab) 

 If items have attributes assigned and you would like to import changes in attributes from Arena Solutions, you must first ensure that the attribute Label in Arena Solutions must match the attribute Description in Acumatica ERP for successful data synchronization. 


<!-- PAGE_BREAK -->
 Importing Bills of Material | 19 

## Importing Bills of Material 

 When integration with Arena Solutions is implemented, engineering bills of material (and their settings, such as the list of materials and the quantities required to produce a finished item) are managed in Arena Solutions and imported into Acumatica ERP during data synchronization. 

 In this chapter, you will find information about the synchronization of bill of material data. 

### Import of Bills of Material: General Information 

 If you have integrated Acumatica ERP with Arena Solutions, you create and manage engineering bills of material (EBOMs) in Arena Solutions. To make the changes to EBOMs available in Acumatica ERP, you need to import the EBOMs and reconcile them, as described in this topic. 

#### Learning Objectives 

 In this chapter, you will learn how to do the following: 

- Import engineering bills of material data from Arena Solutions into Acumatica ERP 

- Reconcile bills of material in Acumatica ERP 

#### Applicable Scenarios 

 You import bills of material from Arena Solutions in the following cases: 

- When you have created any number of engineering bills of material in Arena Solutions and would like to     make them available in Acumatica ERP 

- When you have made changes to any engineering bills of material in Arena Solutions and would like to make     the changes available in Acumatica ERP 

#### Settings that Affect the Import of Bills of Material 

 You can configure the system to import bills of material from Arena Solutions to your specifications by specifying the synchronization settings on the Other tab of the Arena Integration (BCAR2010) form. You can make the system do the following during the import of BOMs into Acumatica ERP: 

- Copy operations and materials from the previous revision of a bill of material in Acumatica ERP: You select     the **Copy Data of Latest BOM Revision to New BOM Revision** check box. 

- Copy materials from an EBOM to an operation: You select the **Create Operation and Copy EBOM Materials**     check box. 

- Add an operation with the specified number to a BOM: You specify the operation number in the **BOM**     **Operation ID** box. 

 You must specify the default operation if either (or both) of the Copy Data of Latest BOM Revision to New BOM Revision or Create Operation and Copy EBOM Materials check boxes are selected. 

- Add a specific work center to an operation: You specify the work center in the **BOM Work Center** box. 


<!-- PAGE_BREAK -->
 Importing Bills of Material | 20 

 You must specify the default work center if either (or both) of the Copy Data of Latest BOM Revision to New BOM Revision or Create Operation and Copy EBOM Materials check boxes are selected. 

#### Creation of an EBOM Revision in Arena Solutions 

 When you create an engineering bill of material in Arena Solutions, you do the following to make it available to be imported into Acumatica ERP: 

1. You create the EBOM (technically, you create the first revision of the EBOM). 

2. You add all needed components to the EBOM. 

3. You make the revision of the EBOM effective. 

 When you have made changes to an existing EBOM, you make the revision a working revision, make the required changes, and make the revision effective. 

#### Import of Engineering Bills of Material 

 You import new and changed engineering bills of material into Acumatica ERP as follows: 

1. On the _Prepare Data_ (BC501000) form, you prepare the _Bill of Material_ entity for import. 

 We recommend that you select the Incremental prepare mode so that the systems syncs only entities with changed data. This will decrease the synchronization time. 

2. On the _Process Data_ (BC501500) form, you import the prepared records. 

- If any filters have been created for the entities on the _Entities_ (BC202000) form, the system     will process the entities according the filter conditions. 

- If any records are processed unsuccessfully, the system marks these entities as failed. You     can investigate these records and reprocess them later. 

3. Optional: On the _Sync History_ (BC301000) form, you view the imported records. 

 Then you need to reconcile the imported bills of material. 

#### Reconciliation of Bills of Material 

 When you have imported the bills of material, you need to reconcile them on the Bill of Material (AM208000) form as follows: 

1. On the **Engineering BOM** tab, you view the list of materials in the engineering BOM. The **Unreconciled Qty.**     column shows the quantity of the material that you must add to a BOM operation. 

2. On the **Operations** tab, make sure that all necessary operations are displayed. If not, you can do any of the     following: 

- If this is a new bill of material, you click **Copy from EBOM** on the table toolbar to make the system     add the operation specified in the **BOM Operation ID** box on the **Other** tab of the _Arena Integration_     (BCAR2010) form and copy materials from the engineering BOM to the list of materials for this operation. 

- If this is a new revision of an existing bill of material, you click **Create from Last Revision** on the form     toolbar to make the system copy operations and materials from the previous BOM revision. 

- You add the operation or operations manually. 

3. You review and correct the list of materials for each operation as follows: 


<!-- PAGE_BREAK -->
 Importing Bills of Material | 21 

 a. You click the operation on the Operations tab. b. On the Materials tab, you review the list of materials and correct the quantities, if required. You can remove or add materials. The total quantity of the material in all operations must be equal to the quantity specified in the Unreconciled Qty. column of the Engineering BOM tab. 

 You can add only materials listed on the Engineering BOM tab. 

 c. On the other tabs of the Operation Details area, review or add the required information, such as steps or tools. 

4. On the **Engineering BOM** tab, you make sure that the **Unreconciled Qty.** column contains zero values for all     materials. 

5. In the Summary area, you make sure that the **Reconciled** check box is selected. 

### Import of Bills of Material: Synchronization Details 

 You create and manage the engineering bills of material in Arena Solutions, and then you import the settings of the engineering bills of material into Acumatica ERP during data synchronization. These settings are applied to a linked bill of material used for producing items. In this topic, you will find information about the synchronization of bill of material (BOM) records between Arena Solutions and Acumatica ERP. 

#### BOM Data Ownership 

 When Acumatica ERP is integrated with Arena Solutions, you manage the following in engineering bills of material in Arena Solutions and then import them into Acumatica ERP: 

- The list of materials (stock items) used to produce the finished good 

- The quantity of each material required for the production of the finished good 

- Reference designators In Acumatica ERP, you specify the following additional settings of bills of material: 

- Operations and their settings 

- Work centers 

- Steps 

- Tools 

- Overhead costs 

- Outside processing information 

 Only engineering bills of material that have been made effective in Arena Solutions can be synced with Acumatica ERP. 

#### BOM Synchronization Specifications 

 When you start importing BOM data by using the Process Data (BC501500) form, the system syncs the data as follows: 

- If the imported item with the specified engineering BOM does not have a default BOM ID specified on     the **Manufacturing** tab of the _Stock Items_ (IN202500) form, then the system does the following during     synchronization: 

- Creates a bill of material with the settings copied from the engineering BOM on the _Bill of Material_     (AM208000) form. (The bill of material is assigned the _On Hold_ status.) 


<!-- PAGE_BREAK -->
 Importing Bills of Material | 22 

- If the default operation number and work center are specified on the _Arena Integration_ (BCAR2010) form,     adds these values to the bill of material. 

- Creates material transactions for all the material items on the _Materials_ (AM300000) form. 

- If the imported item with the specified engineering BOM has a default BOM ID specified on the     **Manufacturing** tab of the _Stock Items_ form, then the system does the following during synchronization: 

- If the engineering BOM revision has been changed in Arena Solutions, creates the BOM revision by coping     the settings of the current BOM revision and then makes changes to the list of materials according to the     changes made in the engineering BOM. 

- If the BOM revision has not been changed in Arena Solutions, makes changes to the list of materials in     the current BOM revision based on the changes made in the engineering BOM. 

#### BOM Mapping 

 The following table shows the mapping of Acumatica ERP elements to Arena Solutions elements that is used during the import of bill of material data from Arena Solutions. In Arena Solutions, you can find BOM settings in the Bill of Material view of the Item world. In Acumatica ERP, you can find the engineering BOM settings on the Engineering BOM tab of the Bill of Material (AM208000) form. 

 Table: BOM Mapping 

 Arena Solutions Element Name Acumatica ERP Column Name Item Name Inventory ID 

 Revision PLM Item Revision 

 Quantity Quantity 

 Reference Designators Reference Designator(s) 

 Notes Notes 


<!-- PAGE_BREAK -->
 Exporting Vendors | 23 

## Exporting Vendors 

 When integration with Arena Solutions is implemented, vendors are managed in Acumatica ERP and exported to Arena Solutions during data synchronization. 

 In this chapter, you will find information about the synchronization of vendor data. 

### Vendor Export: General Information 

 If you have integrated Acumatica ERP with Arena Solutions, you create vendors in Acumatica ERP and then export them to Arena Solutions, as described in this topic. 

#### Learning Objectives 

 In this chapter, you will learn how to export vendors created in Acumatica ERP to Arena Solutions. 

#### Applicable Scenarios 

 You export vendors to Arena Solutions when you have created any number of vendors in Acumatica ERP and would like to specify the new vendor in item settings in Arena Solutions. 

#### Export of Vendors from Acumatica ERP 

 When you have created any number of vendors on the Vendors (AP303000) form of Acumatica ERP and would like to export the vendors to Arena Solutions, you do the following in Acumatica ERP: 

1. On the _Entities_ (BC202000) form, you make sure that the new vendor appears in the list of records for export. 

2. On the _Prepare Data_ (BC501000) form, you prepare the _Vendor_ entity for export. 

 We recommend that you select the Incremental prepare mode so that the systems syncs only entities with changed data. This will decrease the synchronization time. 

3. On the _Process Data_ (BC501500) form, you export the prepared records. 

- If any filters have been created for the entities on the _Entities_ (BC202000) form, the system     will process the entities according the filter conditions. 

- If any records are processed unsuccessfully, the system marks these entities as failed. You     can investigate these records and reprocess them later. 

4. Optional: On the _Sync History_ (BC301000) form, you view the exported records. 

 When you export changes made for an existing vendor, be aware that contact data, such as address and phone number, will not be updated due to the limitations of the Arena Solutions API. You will need to make these changes manually in Arena Solutions. 

#### Specification of the Exported Vendor in Item Settings in Arena Solutions 

 When you have exported a vendor to Arena Solutions, you can add the vendor (or supplier) to the settings of an item. You do the following in Arena Solutions: 

1. You make sure that the imported vendor has appeared in the list of suppliers. 


<!-- PAGE_BREAK -->
 Exporting Vendors | 24 

2. You specify the exported vendor in the item settings. 

3. You enter the other supplier-related details, such as number, name, type, description, UOM, and     procurement type. 

### Vendor Export: Synchronization Details 

 You create and manage the vendors that supply items for manufacturing in Acumatica ERP and then you export the vendors to Arena Solutions during data synchronization. In this topic, you will find information about the synchronization of vendor records between Arena Solutions and Acumatica ERP. 

#### Vendor Synchronization Specifications 

 When you select the Incremental prepare mode on the Prepare Data (BC501000) form, the system exports vendor data if the following changes have occurred on the Vendors (AP303000) form: 

- A new vendor is added 

- The account name of the vendor is updated in the **Account Name** box on the **General** tab 

- Primary contact data is added to the **Primary Contact** section of the **General** tab 

 When you export changes made for an existing vendor, be aware that contact data, such as address and phone number, are not updated due to limitation of the Arena Solutions API. You will need to make these changes manually in Arena Solutions. 

#### Vendor Mapping 

 The following table shows the mapping of Acumatica ERP elements to Arena Solutions elements that is used during the export of vendor data to Arena Solutions. In Arena Solutions, you can find these supplier settings in the Suppliers world. In Acumatica ERP, you can find vendor settings on the Vendors (AP303000) form. 

 Table: Vendor Mapping 

 Acumatica ERP Element Name Arena Solutions Element Name Vendor ID box (Summary area) Company Name box ( Profile view) 

 Account Name box ( General tab) Description box ( Profile view) 

 Account Address section ( General tab) Addresses table ( Profile view) 

 Phones in the Additional Account Info section ( General tab) 

 Phone Numbers table ( Profile view) 

 Primary Contact section ( General tab) Supplier Contacts table ( Contacts view) 


<!-- PAGE_BREAK -->
 Importing Vendor Details of Items | 25 

## Importing Vendor Details of Items 

 When integration with Arena Solutions is implemented, the vendor details of stock items are managed only in Arena Solutions and imported into Acumatica ERP during data synchronization. 

 In this chapter, you will find information about the synchronization of data with vendor details of stock items. 

### Import of Vendor Details of Items: General Information 

 If you have integrated Acumatica ERP with Arena Solutions, you manage the vendor details of stock items in Arena Solutions. To make the changes to vendor details of items available in Acumatica ERP, you need to import the details, as described in this topic. 

#### Learning Objectives 

 In this chapter, you will learn how to import vendor details of an item in Arena Solutions. 

#### Applicable Scenarios 

 You import vendor details of an item that have been changed in Arena Solutions when you want to update the vendor details in Acumatica ERP. 

#### Settings that Affect the Import of Vendor Details 

 Because the vendors involved in manufacturing are managed in Acumatica ERP, there may be a situation when a vendor specified in the settings of an item in Arena Solutions does not exist in Acumatica ERP. On the Other tab of the Arena Integration (BCAR2010) form, you set up the default system behavior to be used during import when the settings of an item contain a vendor that does not exist in Acumatica ERP: 

- If you want the system to display an error message, you select _Display an Error and Stop Sync_ in the **Action**     **for Invalid Supplier** box. 

- If you want the system to use a specific vendor to replace the vendor that does not exist in the item settings,     you select _Use Default Supplier_ in the **Action for Invalid Supplier** , box and select the vendor in the **Vendor**     box. 

#### Update of Vendor Details in Arena Solutions 

 Updating the vendor details in Arena Solutions entails creating new vendors for component items. You update these vendor details as follows: 

1. For a component item, you create a new vendor item in the sourcing details. 

2. You make sure the vendor item has the _Approved_ status. 

#### Import of Vendor Details 

 You import changes in vendor details for items into Acumatica ERP as follows: 

1. On the _Prepare Data_ (BC501000) form, you prepare the _Vendor Detail_ entity for import. 

 We recommend that you select the Incremental prepare mode so that the systems syncs only entities with changed data. This will decrease the synchronization time. 


<!-- PAGE_BREAK -->
 Importing Vendor Details of Items | 26 

2. On the _Process Data_ (BC501500) form, you import the prepared records. 

- If any filters have been created for the entities on the _Entities_ (BC202000) form, the system     will process the entities according the filter conditions. 

- If any records are processed unsuccessfully, the system marks these entities as failed. You     can investigate these records and reprocess them later. 

3. Optional: On the _Sync History_ (BC301000) form, you view the imported records. 

4. On the _Stock Items_ (IN202500) form, you open each stock item whose vendor details have been updated. 

5. On the **Vendor Details** tab, you make sure that the row for the vendor has appeared in the table and the     **Approved** check box is selected in the row. 

### Import of Vendor Details of Items: Synchronization Details 

 Although you manage vendors in Acumatica ERP and export them to Arena Solutions, the details about the vendors that supply a particular stock item are specified in Arena Solutions and then imported into Acumatica ERP during data synchronization. In this topic, you will find information about the synchronization of the vendor details of stock items between Arena Solutions and Acumatica ERP. 

#### Synchronization Specifications for Vendor Details of Items 

 When you are importing the vendor details of stock items from Arena Solutions into Acumatica ERP, the system does the following: 

- When a vendor is added to the list of approved item suppliers in Arena Solutions, adds a new row to the     **Vendor Details** tab of the _Stock Items_ (IN202500) form and selects the **Approved** check box. 

- If a vendor added as the approved item supplier does not exist in Acumatica ERP, behaves as follows: 

- Displays an error message if _Display an Error and Stop Sync_ is selected in the **Action for Invalid Supplier**     box on the **Other** tab of the _Arena Integration_ (BCAR2010) form. 

- Adds a row to the **Vendor Details** tab for the vendor specified in the **Vendor** box on the **Other** tab of the     _Arena Integration_ form if _Use Default Supplier_ is selected in the **Action for Invalid Supplier** box. 

- When a vendor is removed from the list of approved item suppliers in Arena Solutions, clears the **Approved**     check box. 

#### Mapping of Vendor Detail Data 

 The following table shows the mapping of Acumatica ERP elements to Arena Solutions elements that is used during the import of vendor detail data from Arena Solutions. In Arena Solutions, you can find these vendor details in the Sourcing view of the Item world. In Acumatica ERP, you can find the vendor details on the Vendor Details tab of the Stock Items (IN202500) form. 

 The Split and Rank values are not imported because these settings are not supported in Acumatica ERP. 

 Table: Vendor Details Mapping 

 Arena Solutions Element Name Acumatica ERP Element Name Item Name Inventory ID box (Summary area) 

 Vendor Vendor ID column ( Vendor Details tab) 


<!-- PAGE_BREAK -->
 Importing Vendor Details of Items | 27 

**Arena Solutions Element Name Acumatica ERP Element Name** 

**Approved** status **Approved** check box ( **Vendor Details** tab) 


<!-- PAGE_BREAK -->
 Importing Sales Categories | 28 

## Importing Sales Categories 

 When integration with Arena Solutions is implemented, sales categories for items used in manufacturing are managed only in Arena Solutions and are imported to Acumatica ERP during data synchronization. 

 In this chapter, you will find information about the synchronization of sales category data. 

### Import of Sales Categories: General Information 

 If you have integrated Acumatica ERP with Arena Solutions, you manage the item categories (referred to as sales categories in Acumatica ERP) specified in stock item settings in Arena Solutions. To make the changes to the list of categories available in Acumatica ERP, you need to import them, as described in this topic. 

#### Learning Objectives 

 In this chapter, you will learn how to import sales categories from Arena Solutions. 

#### Applicable Scenarios 

 You import changes to the list of item categories made in Arena Solutions when you what to update the sales categories in the item settings in Acumatica ERP. 

#### Settings that Affect the Import of Sales Categories 

 During the synchronization of the sales categories that are specified in item settings in Arena Solutions, a sales category that does not exist in Acumatica ERP may be specified for an item. On the Other tab of the Arena Integration (BCAR2010) form, you set up the default system behavior to be used during import when the settings of an item contain a sales category that does not exist in Acumatica ERP as follows: 

- If you want the system to display an error message, you select _Display an Error and Stop Sync_ in the **Action**     **for Invalid Category** box. 

- If you want the system to create the sales category on the _Item Sales Categories_ (IN204060) form, you select     _Create on fly_ in the **Action for Invalid Category** box. 

#### Creation of a Category in Arena Solutions 

 When you create category in Arena Solutions, you need to do the following in the Categories view of the Workspace Settings page to make the category ready to be imported into Acumatica ERP: 

1. You create the category and specify its place in the hierarchy. 

2. You activate the category. 

 Only active categories can be imported into Acumatica ERP. 

#### Import of Sales Categories 

 In Acumatica ERP, you do the following to import new categories from Arena Solutions: 

1. On the _Prepare Data_ (BC501000) form, you prepare the _Sales Category_ entity for import. 


<!-- PAGE_BREAK -->
 Importing Sales Categories | 29 

 We recommend that you select the Incremental prepare mode so that the systems syncs only entities with changed data. This will decrease the synchronization time. 

2. On the _Process Data_ (BC501500) form, you import the prepared records. 

- If any filters have been created for the entities on the _Entities_ (BC202000) form, the system     will process the entities according the filter conditions. 

- If any records are processed unsuccessfully, the system marks these entities as failed. You     can investigate these records and reprocess them later. 

3. Optional:On the _Sync History_ (BC301000) form, you view the imported records. 

4. On the _Item Sales Categories_ (IN204060) form, you view the imported sales categories. 

5. In the **Sales Categories** table of the **Attributes** tab on the _Stock Items_ (IN202500) form, you specify the     imported sales categories for the needed items. 

### Import of Sales Categories: Synchronization Details 

 You create and manage the categories used for stock items in Arena Solutions, and then you import the categories into Acumatica ERP during data synchronization. In this topic, you will find information about the synchronization of sales category records between Arena Solutions and Acumatica ERP. 

#### Synchronization Specifications for Sales Categories of Items 

 When you start importing sales categories by using the Process Data (BC501500) form, the system syncs the data as follows: 

- Only active categories are imported. 

- If a category does not exist in Acumatica ERP, the system does the following: 

- Displays an error message if _Display an Error and Stop Sync_ is selected in the **Action for Invalid Category**     box on the **Other** tab of the _Arena Integration_ (BCAR2010) form. 

- Creates the category on the _Item Sales Categories_ (IN204060) form if _Create on fly_ is selected in the **Action**     **for Invalid Category** box. 

- If a category that exists in Acumatica ERP has been deactivated in Arena Solutions, it will be removed from     the _Item Sales Categories_ (IN204060) form. 

#### Mapping of Sales Categories 

 The following table shows the mapping of Acumatica ERP elements to Arena Solutions elements that is used during the import of category data from Arena Solutions. In Arena Solutions, you can find categories in the Categories view of the Workspace Settings page. In Acumatica ERP, you can find the sales categories on the Item Sales Categories (IN204060) form. 

 Table: Sales Category Mapping 

 Arena Solutions Element Name Acumatica ERP Element Name Name box Description box 

 Parent box Parent Category box 


<!-- PAGE_BREAK -->
 Arena Solutions Integration: Form Reference | 30 

## Arena Solutions Integration: Form Reference 

 The topics in this section describe the UI elements on forms that are specific to integration with Arena Solutions. 

### Arena Integration 

 Form ID: (BCAR2010) 

 You use this form to set up connection to Arena Solutions, specify settings for the synchronization of entities, and specify general settings for the integration. 

 This form is available only if the Retail Commerce and Arena PLM Integration features are enabled on the Enable/ Disable Features (CS100000) form. 

#### Form Toolbar 

 The form toolbar includes standard and form-specific buttons and commands. For the list of standard buttons, see Form Toolbar and More Menu. The form-specific commands are listed in the following table. 

 Button Description 

 Test Connection Tests the ability to connect to Arena Solutions by using the information specified on the Connection Settings tab. 

#### Summary Area 

 In this area, you specify the basic settings of a particular Arena Solutions tenant, or select a tenant to view and edit its settings. 

 Element Description 

 Connector A read-only box that contains Arena , the name of the connector configured on this form. 

 Tenant Name The name of the Arena Solutions tenant to which the connection is being configured. The tenant name is specified when the connection is first configured; you cannot change it later. 

 Active A check box that indicates (if selected) that the tenant configuration is active and that the entities activated and configured for this tenant are synchronized between Acumatica ERP and Arena Solutions. 

 For inactive tenants, you can modify the tenant settings on the current form, but entities are not synchronized; you can see the history of the synchronization of entities on the Sync History (BC301000) form. 


<!-- PAGE_BREAK -->
 Arena Solutions Integration: Form Reference | 31 

 Element Description 

 Default A check box that you select to indicate that this tenant is the default tenant in Acumatica ERP. 

 If multiple tenants have been configured on this form, when you open other integration-related forms, the tenant you have defined as the default is automatically inserted in the Tenant box on these forms. 

 The system requires a tenant to be defined as the default tenant. When you are defining the first tenant in the system on this form, this check box is selected automatically. When you define another tenant, this check box is cleared by default; if you select this check box for the tenant being defined, the system clears this check box for the tenant that was previously defined as the default tenant. 

#### Connection Settings Tab 

 The Connection Settings tab includes the path and connection details that are used to connect Acumatica ERP to Arena Solutions. 

 Table: Tenant Settings Section 

 Element Description 

 Email The email address that you use to sign in to the Arena Solutions tenant. 

 Password The password you use to sign in to the Arena Solutions tenant. 

 Workspace ID The identifier of the workspace in the Arena Solutions tenant. You can find the identifier in the URL when the workspace is opened in Arena Solutions. 

 Workspace Name A read-only box that displays the name of the workspace in the Arena Solutions. 

#### Entity Settings Tab 

 The rows of this tab are automatically populated with the entities that can be synchronized between Acumatica ERP and the Arena Solutions tenant. You can activate the entities that you need to synchronize between the systems; you can also view and specify synchronization settings for these entities. 

 The table toolbar includes only standard buttons. For the list of standard buttons, see Table Toolbar. 

 Table: Table Columns 

 Column Description 

 Active A check box that indicates (if selected) that the entity is synchronized between Acumatica ERP and the Arena Solutions tenant. 

 If an entity requires other entities to be synchronized along with this entity, the system also selects the Active check box for these related entities when you select this check box. 


<!-- PAGE_BREAK -->
 Arena Solutions Integration: Form Reference | 32 

**Column Description** 

**Entity** The entity that can be synchronized between Acumatica ERP and the Arena Solutions tenant, which is one of the following: 

- _Stock Item_     For information about the synchronization details and the standard     mapping of fields, see _Item Import: Synchronization Details_. 

- _Sales Category_     For information about synchronization details and standard mapping of     fields, see _Import of Sales Categories: Synchronization Details_. 

- _Bill of Material_     This option is displayed only when the _Manufacturing_ feature is enabled     on the _Enable/Disable Features_ (CS100000) form.     For information about synchronization details and standard mapping of     fields, see _Import of Bills of Material: Synchronization Details_. 

- _Vendor_     For information about synchronization details and standard mapping of     fields, see _Vendor Export: Synchronization Details_. 

- _Vendor Details_     For information about synchronization details and standard mapping of     fields, see _Import of Vendor Details of Items: Synchronization Details_. You can click the link with each entity name to open the _Entities_ (BC202000) form in a pop-up window and specify the mapping and filtering settings for the entity. 

**Sync Direction** The direction in which the entity should be synchronized. The direction can be one of the following: 

- _Export_ : Data is exported from Acumatica ERP to the Arena Solutions ten-     ant. 

- _Import_ : Data is imported into Acumatica ERP from the Arena Solutions     tenant. The direction of the synchronization for all entities is predefined by the sys- tem and cannot be changed. For more information, see _Integrating Acumati- ca ERP with Arena Solutions: General Information_. 

**Primary System** The system that is used as the source of data during the synchronization of entities. 

 The primary system can be either of the following: 

- _Local_ (that is, Acumatica ERP) 

- _External_ (that is, Arena Solutions) The primary system is determined based on the **Sync Direction** setting as follows: 

- For _Export_ , _Local_ is set to be the primary system and cannot be changed. 

- For _Import_ , _External_ is set to be the primary system and cannot be     changed. 


<!-- PAGE_BREAK -->
 Arena Solutions Integration: Form Reference | 33 

 Column Description 

 Real-Time Import The status of the real-time import for the entity. The status can be one of the following options: 

- _Stopped_ : Real-time synchronization has not been started for the _Import_     direction. 

- _Running_ : Real-time synchronization has been started for the _Import_ di-     rection. 

- _Not Supported_ : Real-time synchronization cannot be started for the _Im-_     _port_ direction. 

 Real-Time Export The status of the real-time export for the entity. The status can be one of the following: 

- _Stopped_ : Real-time synchronization has not been started for the _Export_     direction. 

- _Running_ : Real-time synchronization has been started for the _Export_ di-     rection. 

- _Not Supported_ : Real-time synchronization cannot be started for the _Ex-_     _port_ direction. 

 Max. Number of Failed Attempts 

 The maximum number of errors allowed during the import or export of data before the synchronization record is skipped (that is, excluded from further synchronization). 

 By default, the column contains 5 : That is, the system allows 5 failed attempts before excluding the synchronization record from further processing. 

#### Other Tab 

 On this tab, you specify general settings related to integration with Arena Solutions. 

 Table: Sync Settings Section In this section, you can specify data synchronization settings. 

 Element Description 

 Action for Invalid Category 

 The action that the system performs when a sales category being imported from Arena Solutions does not exist in Acumatica ERP. You can select any of the following options: 

- _Display an Error and Stop Sync_ : The system displays an error message and stops syn-     chronization. 

- _Create on fly_ : The system creates the sales category in Acumatica ERP dynamically. 

 Action for Invalid Supplier 

 The action that the system performs when a vendor (referred to as a supplier in Arena Solutions) being imported from Arena Solutions does not exist in Acumatica ERP. You can select any of the following options: 

- _Display an Error and Stop Sync_ : The system displays an error message and stops syn-     chronization. 

- _Use Default Supplier_ : The system uses the default vendor specified in the **Vendor** box. 

 Vendor The default vendor the system uses if the Use Default Supplier option is selected in the Action for Invalid Supplier box. 


<!-- PAGE_BREAK -->
 Arena Solutions Integration: Form Reference | 34 

 Element Description 

 Create Item for New Revision 

 A check box that indicates (when selected) that the system will create a stock item during data synchronization if a new item revision was created in Arena Solutions. If the check box is cleared, the system will update the settings of the existing stock item with the revision settings. 

 Delimiter The character that the system uses to add an item revision number to the inventory ID to make it unique when creating a stock item for a new item revision. This box is available only when the Create an Item for New Revision is selected. 

 You can specify any character as the delimiter; you cannot use a space. 

 Copy Data of Latest BOM Revision to New BOM Revision 

 A check box that indicates (if selected) that the system will copy operations and materials from the previous BOM revision (if it exists) to the new BOM revision during data processing on the Process Data (BC501500) form. If the check box is cleared, the system will create the BOM revision without copying operations and materials from the previous BOM revision, and a user will have to add the operations and materials manually on the Bill of Material (AM208000) form. 

 This element is displayed only if the Material Requirements Planning or Distribution Requirements Planning feature is enabled on the Enable/Disable Features (CS100000) form. 

 Create Operation and Copy EBOM Materials 

 A check box that indicates (if selected) that the system will copy materials from an engineering bill of material (EBOM) in Arena Solutions to the operation of the corresponding bill of material specified in the BOM Operation ID box when creating a bill of material during data processing on the Process Data form. If the check box is cleared, the system will not copy materials from the EBOM and a user will need to add materials manually on the Bill of Material form. 

 This element is displayed only if the Material Requirements Planning or Distribution Requirements Planning feature is enabled on the Enable/Disable Features (CS100000) form. 

 UOM Substitution List 

 The name of the substitution list that has been created for mapping units of measure in Arena Solutions and Acumatica ERP on the Substitution Lists (SM206026) form. You need to create a substitution list if the names of units of measure differ in Arena Solutions and Acumatica ERP. 

**_Table: Default Settings Section_** 

In this section, you can specify and view the default settings that the system will use during data synchronization. 

 Element Description 

 BOM Operation ID The operation identifier that the system will add to all new bills of material created on the Bill of Material (AM208000) form during data processing on the Process Data (BC501500) form. 

 This element is displayed only if the Material Requirements Planning or Distribution Requirements Planning feature is enabled on the Enable/Disable Features (CS100000) form. 

 Default Item Class The item calls that the system will use when creating stock items during data processing on the Process Data (BC501500) form. 

 You cannot create items of the item class in Acumatica ERP; they can be created only in Arena Solutions and imported into Acumatica ERP. 


<!-- PAGE_BREAK -->
 Arena Solutions Integration: Form Reference | 35 

 Element Description 

 BOM Work Center The work center that the system will add to the new bill of material created on the Bill of Material form during data processing on the Process Data form. 

 This element is displayed only if the Material Requirements Planning or Distribution Requirements Planning feature is enabled on the Enable/Disable Features (CS100000) form. 

 Status of Deprecated Item 

 The default status that will be assigned to stock items that were deprecated in Arena Solutions when the system processes data on the Process Data (BC501500) form. You can select any of the following options, based on the business processes of your organization: 

- _Active_ 

- _No Sales_ 

- _No Purchases_ 

- _No Request_ 

- _Inactive_ 

- _Marked for Deletion_ 

 For details on status descriptions, see Stock Items. 

 Status of Obsolete Item 

 The default status that will be assigned to stock items that were defined as obsolete in Arena Solutions when the system processes data on the Process Data (BC501500) form. You can select any of the following options, based on the business processes of your organization: 

- _Active_ 

- _No Sales_ 

- _No Purchases_ 

- _No Request_ 

- _Inactive_ 

- _Marked for Deletion_ 

 For details on status descriptions, see Stock Items. 

**_Table: Arena PLM Item Classes Section_** 

In the table of this section, you can add and view the sales categories that will be used in the integration. You can also view the item classes and work centers assigned to each sales category and change the assignments if needed. The table toolbar includes only standard buttons. For the list of standard buttons, see _Table Toolbar_. 

 Column Description 

 Active A check box that indicates (if selected) that the sales category is used for data synchronization with Arena Solutions. You can clear this check box to exclude the sales category from the synchronization process. 

 Sales Category The sales category that is used in the integration. 


<!-- PAGE_BREAK -->
 Arena Solutions Integration: Form Reference | 36 

 Column Description 

 Item Class ID The identifier of the item class that is assigned to the sales category. 

 The system uses the item class when it creates items in Acumatica ERP during data synchronization as follows: If an item imported from Arena Solutions has the category in this row assigned to it, then the system copies the default settings specified for the item class on the Item Classes (IN20100) form to the item settings in Acumatica ERP. 

 You cannot create items of the item class in Acumatica ERP; they can be created only in Arena Solutions and imported into Acumatica ERP. 

 Description The description of the item class, which is copied from the Item Classes form. 

 Work Center ID The identifier of a work center that is assigned to the sales category. 

 During data synchronization, the system uses the work center when it adds items as materials to an operation of a bill of material as follows: If an EBOM being imported contains a material item with the category assigned, on the Bill of Material (AM208000) form, the system adds an operation with the number specified in the BOM Operation ID box, adds the material item to the materials list, and specifies the work center assigned to the sales category of the item in the row with the operation. 

 This element is displayed only if the Material Requirements Planning or Distribution Requirements Planning feature is enabled on the Enable/Disable Features (CS100000) form. 

 Description The description of the work center selected in the Work Center ID box, which is copied from the Work Centers (AM207000) form. 

 This element is displayed only if the Material Requirements Planning or Distribution Requirements Planning feature is enabled on the Enable/Disable Features (CS100000) form. 

### UI Elements Specific to Integration with Arena Solutions 

 In this topic, you will find a list of the UI elements added to Acumatica ERP forms in order to support integration with Arena Solutions. 

 These UI elements are displayed only when the Arena PLM Integration feature is enabled on the Enable/Disable Features (CS100000) form. 

#### Stock Items (IN202500) Form 

 On the Manufacturing tab, the following section and boxes have been added. 

 Table: PLM Integration Section 

 Button Description 

 PLM Revision ID A read-only box with the revision identifier of the stock item in Arena Solutions. 

 PLM Release Date A read-only box with the effective date of the stock item in Arena Solutions. 

 On the Vendor Details tab, the following check box has been added to the table. 


<!-- PAGE_BREAK -->
 Arena Solutions Integration: Form Reference | 37 

 Table: PLM Integration Section 

 Button Description 

 Approved A check box that indicates (if selected) that the vendor is regarded as an approved supplier in Arena Solutions. The system selects or clears this check box during data synchronization with Arena Solutions. 

#### Bill of Material (AM208000) Form 

 On the Bill of Material (AM208000) form, multiple UI elements have been added to support integration with Arena Solutions. 

 Table: Summary Area 

 Element Description 

 PLM Item Revision A read-only box with the revision identifier of the stock item, which is selected in the Inventory ID box, in Arena Solutions. 

 Reconciled A check box that indicates (if selected) that the bill of material has been fully reconciled with the engineering bill of material in Arena Solutions. This check box is selected automatically when you add all materials from the engineering bill of material to the bill of material. 

 You cannot remove the bill of material from hold until this check box is selected. 

 Table: Operations Tab The following buttons have been added to the toolbar of the Operations table. 

 Button Description 

 Copy from EBOM Copies materials from the engineering bill of material. 

 Create from Last Revision 

 Copies operations and materials from the last revision of the bill of material. 

 Table: Engineering BOM Tab On this tab, you can view the data copied from the engineering bill of material in Arena Solutions during data synchronization. All information in the table is read-only. 

 The table toolbar includes only standard buttons. For the list of standard buttons, see Table Toolbar. 

 Element Description 

 Inventory ID The identifier of a stock item that represents a material in Arena Solutions. 

 PLM Item Revision The item revision in Arena Solutions. 

 Line Number The number of the material line in the engineering bill of material. 

 Quantity The quantity of the material required for the finished item. 


<!-- PAGE_BREAK -->
 Arena Solutions Integration: Form Reference | 38 

**Element Description** 

**Unreconciled Qty.** The quantity of the material not added to any operations of the bill of material. 

**Reference Designator(s)** 

 The reference designators assigned to the material in Arena Solutions. 

**Notes** Any notes that have been added for the material in Arena Solutions. 


