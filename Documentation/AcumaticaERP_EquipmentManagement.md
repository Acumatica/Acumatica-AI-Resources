## End-User Guide 

# Equipment Management 

# 2025 R1 


<!-- PAGE_BREAK -->
 Contents | 2 

## Contents 

 Copyright...............................................................................................................................................5 

 Overview of the Equipment Management Functionality............................................................................ 6 

 Overview of Equipment Types................................................................................................................. 7 

 Managing Equipment.............................................................................................................................. 9 

 Equipment Types............................................................................................................................................... 9 

 Resource Equipment....................................................................................................................................... 10 

 Item Classes for Equipment and Components.............................................................................................. 11 

 Target Equipment............................................................................................................................................ 12 

 Model Equipment............................................................................................................................................ 14 

 Configuring Stock Items to Be Tracked Post-Sale.....................................................................................17 

 Stock Items to Be Tracked Post-Sale: General Information.......................................................................... 17 

 Stock Items to Be Tracked Post-Sale: To Create a Stock Item with No Components................................... 18 

 Stock Items to Be Tracked Post-Sale: To Create Components...................................................................... 20 

 Stock Items to Be Tracked Post-Sale: To Create Stock Items with Components..........................................23 

 Stock Items to Be Tracked Post-Sale: To Record the Receipt of Stock Items................................................27 

 Creating Target Equipment....................................................................................................................30 

 Target Equipment: General Information........................................................................................................ 30 

 Target Equipment: To Sell a Stock Item as Target Equipment......................................................................31 

 Target Equipment: To Manually Create Equipment.......................................................................................35 

 Target Equipment: To Create a Service Appointment................................................................................... 37 

 Target Equipment: Related Report and Inquiry Forms................................................................................. 39 

 Selling a Piece of Equipment and an Optional Component....................................................................... 40 

 Selling a Piece of Equipment and an Optional Component: General Information...................................... 40 

 Selling a Piece of Equipment and an Optional Component: Process Activity..............................................42 

 Selling an Optional Component of Target Equipment.............................................................................. 46 

 Selling an Optional Component of Target Equipment: General Information...............................................46 

 Selling an Optional Component of Target Equipment: Process Activity...................................................... 48 

 Upgrading Default Component of Equipment to Be Sold.......................................................................... 51 

 Upgrading a Default Component of Equipment to Be Sold: General Information.......................................51 

 Upgrading a Default Component of Equipment to Be Sold: Process Activity.............................................. 53 

 Replacing Target Equipment..................................................................................................................56 

 Replacing Target Equipment: General Information.......................................................................................56 

 Replacing Target Equipment: Process Activity...............................................................................................58 

 Replacing a Component of Target Equipment......................................................................................... 62 


<!-- PAGE_BREAK -->
 Contents | 3 

 Replacing a Component of Target Equipment: General Information........................................................... 62 

 Replacing a Component of Target Equipment: Process Activity...................................................................64 

**Creating Service Contracts.................................................................................................................... 67** 

 Service Contracts: General Information......................................................................................................... 67 

 Service Contracts: Billing Type Setup.............................................................................................................70 

 Service Contracts: To Create and Process a Service Contract Billed at Time of Service.............................. 73 

 Service Contracts: To Create and Process an End-Period Billing Service Contract (Appointment with No Overage Items)................................................................................................................................................. 76 

 Service Contracts with End-Period Billing: To Bill a Period with No Appointments.................................... 80 

 Service Contracts: To Create and Process a Service Contract with Beginning-Period Fixed Billing............ 82 

 To Activate the Next Period for the End-Period Billing Contracts................................................................. 86 

 Service Contracts: Activation, Cancellation, and Suspension of a Contract................................................ 87 

 Service Contracts: Status Update................................................................................................................... 89 

 Service Contracts: Related Inquiry Forms......................................................................................................89 

**Renewing Service Contracts.................................................................................................................. 92** 

 Renewal of Service Contracts: General Information......................................................................................92 

 Renewal of Service Contracts: Process Activity............................................................................................. 93 

**Copying Service Contracts.....................................................................................................................97** 

 Copying Service Contracts: General Information.......................................................................................... 97 

 Copying Service Contracts: Process Activity.................................................................................................. 98 

**Managing Service Templates................................................................................................................102** 

 Service Templates..........................................................................................................................................102 

 To Create a Service Template....................................................................................................................... 102 

**Managing Manufacturers..................................................................................................................... 104** 

 Manufacturers: General Information............................................................................................................ 104 

 Manufacturers: To Create a Manufacturer....................................................................................................105 

**Equipment Management Use Cases...................................................................................................... 107** 

 Selling Model Equipment.............................................................................................................................. 107 

 Selling a Model Equipment Entity and Optional Component.....................................................................110 

 Selling an Optional Component of Target Equipment................................................................................ 113 

 Upgrading a Default Component of Model Equipment to Be Sold............................................................. 116 

 Replacing Target Equipment.........................................................................................................................119 

 Replacing a Component of Target Equipment.............................................................................................122 

 Selling a Stock Item that Does Not Require Record in Equipment Management.......................................125 

**Appendix............................................................................................................................................ 129** 

 Reports........................................................................................................................................................... 129 


<!-- PAGE_BREAK -->
 Contents | 4 

 Report Form.......................................................................................................................................... 129 

 Report....................................................................................................................................................134 

Form Toolbar and More Menu.......................................................................................................................136 

Table Toolbar................................................................................................................................................. 143 


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
 Overview of the Equipment Management Functionality | 6 

## Overview of the Equipment Management Functionality 

 By using the equipment management functionality, you can maintain and track information about the equipment that your company uses to provide services or for which your company provides services. For frequently maintained equipment, you can create service contracts in which you can add schedules of customer visits and set the specific billing period for the customer. With the integration between the equipment management functionality and the service management functionality of Acumatica ERP, you can process service orders and appointments related to contracts of equipment maintenance. 

 You use equipment management functionality to perform a variety of procedures related to managing equipment, which are briefly described in the following sections of this topic. 

#### Managing and Tracking Equipment 

 You can enter, maintain, and track information on the equipment that is involved in the service delivery process. In Acumatica ERP, equipment is divided into two major categories, resource equipment and target equipment, based on how the equipment is related to the service. Resource equipment is a resource of your company that is used to perform services, while target equipment is serviced by your company. In the system, you can easily track the resource equipment used during appointments, keep information and arrange appointments for maintenance of target equipment. 

 In Acumatica ERP, you can track the serial numbers of equipment aer it is sold. You can track the warranties, upgrades, and all other pertinent information for the equipment by using its serial number. You can also track the service history for the equipment, including every part that has been added to it. The system also supports tracking multiple serial numbers for the same equipment and tracking serial numbers for different components. An unlimited number of serial numbers can be tracked. 

 For details, see Managing Equipment. 

#### Processing Service Contracts 

 In Acumatica ERP, you can create service contracts with the following types of billing: 

- _At Time of Service_ : The service contract billing is performed aer each appointment based on what was done     during the appointment. 

- _End-Period Plus_ : The service contract billing is performed at the end of the contract period based on what is     covered by the contract plus overage items. 

- _Beginning-Period Fixed_ : The service contract billing is performed at the beginning of the billing period based     on what is covered by the contract. The overage items used in appointments during the period are not     billed. 

- _Beginning-Period Plus_ : The service contract billing is performed at the beginning of the billing period. The     overage items used in appointments during the period are also billed. For service contracts, you can create one or multiple schedules for delivering equipment services to a customer. By using these schedules, the system will generate service orders or appointments.. For details, see _Service Contracts: General Information_. 


<!-- PAGE_BREAK -->
 Overview of Equipment Types | 7 

## Overview of Equipment Types 

 By using the equipment management functionality, you can maintain and track information about the equipment that your company uses to provide services, as well as the equipment for which your company provides services. For equipment that requires regular maintenance, you can create service contracts that include customer visit schedules and specify the billing period for each customer. Additionally, you can manage service orders and appointments associated with equipment maintenance contracts. 

#### Equipment Categories in Acumatica ERP 

 In Acumatica ERP, equipment is divided into two major categories, based on how the equipment is related to the service: 

- Resource equipment is a resource of your company that is used to perform services. In the system, you can     easily track the resource equipment that is used during appointments. 

- Target equipment is serviced by your company. In Acumatica ERP, you can keep information about target     equipment and arrange appointments for its maintenance. In some cases, one piece of equipment can be both target equipment and resource equipment. For example, when you create appointments for a customer, you might include a drill as resource equipment, but if you want to repair your own drill, you could create an internal appointment and select the same drill as target equipment. 

 The following sections describe both of these types of equipment in greater detail. 

#### Resource Equipment Creation 

 In Acumatica ERP, you can enter and keep information about resource equipment. Resource equipment is a physical resource of your company that staff members use to perform services. 

 You add each specific piece of resource equipment (for example, a specific screwdriver or drill) that will be used to perform services as a record on the Equipment (FS205000) form. In the Summary area of the form, you define this record as resource equipment by selecting the Resource Equipment check box; you also select the equipment type, and specify that your company owns the equipment by selecting the Company option button (under Owner ). To maintain the relevant details of each equipment record that you add to the system, you can enter additional information, such as general, manufacturing, and purchase settings. 

#### Target Equipment Creation and Tracking 

 In Acumatica ERP, you can enter and maintain information about target equipment: equipment that needs to be serviced at the customer site or at your company. This equipment can be created in the system in the following ways: 

- On the _Stock Items_ (IN202500) form, you create stock items based on an item class defined for model     equipment—equipment that your company expects to sell and later service. This item class is a class     with the **Model Equipment** option button selected on the **Service Management** tab of the _Item Classes_     (IN201000) form. When a stock item with an equipment class for model equipment is sold to a customer     and the corresponding invoice is released, the system automatically creates an equipment record on the     _Equipment_ form. 

- On the _Equipment_ (FS205000) form, you create a record for each piece of equipment that will be either     serviced (target equipment) or used to perform a service (resource equipment). This may include     equipment purchased from a third party. A piece of target equipment may have components for which stock items with the **Component** equipment class are created on the _Stock Items_ (IN202500) form. A component is a part of a piece of equipment that may have its own warranty and serial number. 


<!-- PAGE_BREAK -->
 Overview of Equipment Types | 8 

In Acumatica ERP, you can track the serial numbers of equipment aer it is sold. You can track the warranties, upgrades, and other pertinent information for the equipment. You can also track its service history, including every part that has been added to it. The system also supports the tracking of multiple serial numbers for the same equipment record and the tracking of serial numbers for different components. 


<!-- PAGE_BREAK -->
 Managing Equipment | 9 

## Managing Equipment 

 In Acumatica ERP, you can maintain all the necessary information about the equipment that your company uses to perform services and equipment for which service is needed. You can enter the information about each piece of equipment, such as its serial number, registration information, manufacturing information, purchase information, components and warranty information, owner, and location. 

 This chapter describes how to manage equipment in the system. 

### Equipment Types 

 In Acumatica ERP, you can enter equipment types, which are categories that are used for grouping equipment and associating a group of equipment with a service. You create equipment types, specify the appropriate type for each resource or target equipment, and assign equipment types to services. These steps ensure that the right equipment will later be selected to perform these services. 

 In this topic, you will read about how equipment types are created and assigned to services in the system. 

#### Creating Equipment Types 

 Equipment types structure the data in the system and make it easier to select the right equipment for performing services. Equipment of one equipment type is used for similar types of work. For instance, if your company provides installation services, you might create the first equipment type for all drills of the company and the second equipment type for screwdrivers. You create equipment types on the Equipment Types (FS200800) form. 

 If you need to specify properties for the equipment of the type beyond those tracked by predefined settings, you can add a list of attributes for the equipment type. When equipment of the equipment type is created in the system, the user specifies the values of these attributes. 

 Once you have created the equipment types, you can assign them to the appropriate resource or target equipment. You can also specify an equipment type for a manufacturer model. 

#### Setting Up Attributes for Equipment Type 

 To give users the ability to specify additional properties (that is, attributes) that your organization wants to track for equipment of a particular type, you list those attributes and their settings on the Attributes tab of the Equipment Types (FS200800) form. The active attributes you define for the equipment type are listed for equipment of this type on the Attributes tab of the Equipment (FS205000) (FS205000) form. 

 On this tab, you can select attributes only if they have already been defined in the system. If you need an attribute that is not defined in the system, you can use the Attributes (CS205000) form to create the attribute. Then you will be able to select the new attribute for any equipment type. 

 You can specify whether each attribute of the equipment type is required. When creating a piece of equipment of the type, a user must specify values for all the required attributes. Also, you can specify default values for any attributes of the type; users can overwrite these values for a particular piece of equipment. 

 You can deactivate an obsolete attribute for equipment of a particular type by clearing the Active check box on this tab. If you do, the deactivated attribute will no longer be displayed for the equipment of the type, but all attribute values that have already been specified for existing equipment will still be stored in the database. If you reactivate the attribute, its values (where specified) will become visible in the system again. 


<!-- PAGE_BREAK -->
 Managing Equipment | 10 

 However, if it is not necessary to preserve the data related to an obsolete attribute, you can deactivate the attribute and then delete it by using the Delete Row button on the table toolbar. In this case, the attribute will be permanently deleted from the type and all attribute values will be deleted from the database. 

#### Assigning Equipment Types to Services 

 You can specify which types of resource equipment are needed for each service. Services are defined in the system as non-stock items of the Service type on the Non-Stock Items (IN202000) form. You assign the appropriate equipment types to the service on the Resource Equipment Types tab of this form. 

### Resource Equipment 

 In Acumatica ERP, you can enter and keep information about resource equipment. Resource equipment is a physical resource of your company that staff members use to perform services. You specify the appropriate equipment type for each resource equipment to ensure that the right equipment will later be selected to perform these services. 

 In this topic, you will read about how resource equipment is added to the system, and how this equipment is assigned to appointments. 

#### Adding Resource Equipment 

 You add each specific entity of resource equipment (for example, a specific screwdriver or drill) that will be used to perform services on the Equipment (FS205000) form. In the Summary area of the form, you define this item as a resource equipment by selecting the Resource Equipment check box, select the equipment type, and specify that your company owns the equipment by selecting the Company option button (under Owner ). 

 To maintain the relevant details of each equipment entity you add to the system, you can record additional information, such as general, manufacturing, and purchase information. For details on manufacturing information, see Manufacturers: General Information. 

 Also Acumatica ERP includes the Equipment (EP208000) form, which is generally used to specify equipment. For any equipment that has been added to your system by using this form, you can make it available for use with the field services functionality by clicking Extend to SM Equipment on the form toolbar and then specifying the necessary information on the Equipment (FS205000) form in the Equipment Management functional area, which the system brings up. 

 You can view information about equipment in the system on multiple forms. For details, see Target Equipment: Related Report and Inquiry Forms. 

#### Specification of Attributes 

 To give users the ability to specify additional information for a piece of equipment so that your company can track this information, attributes have to be defined for the related equipment type on the Equipment Types (FS200800) form. 

 When you create a piece of equipment on the Equipment (FS205000) form and select its equipment type, the system populates the Attributes tab with the attributes (and any default values) defined for the equipment type on the Equipment Types form. You can specify or modify equipment attribute values in the Values column. If the Required check box is selected for an attribute, the value has to be specified before you save the new equipment you are creating. 

 Also on the Attributes tab of the Equipment form are the Image set of elements, which you can use to attach an image of the piece of equipment. 


<!-- PAGE_BREAK -->
 Managing Equipment | 11 

#### Assigning Resource Equipment to Appointments 

 You can assign the necessary resource equipment to the appointments of a service order on the Service Orders (FS300100) form or to a particular appointment on the Appointments (FS300200) form. You use the Resource Equipment tab of either form to assign the resource equipment. On this tab, for each equipment entity you want to add, you add a row and select the necessary equipment entity from the list in the Equipment ID column. 

### Item Classes for Equipment and Components 

 In Acumatica ERP, if you use the equipment management functionality to keep track of stock items and their parts aer they are sold, you need to create appropriate item classes. Item classes, which are created and maintained on the Item Classes (IN201000) form, are used to group stock or non-stock items with similar properties and to provide default settings for new items. 

 In this topic, you will read about the equipment and component item classes that you can create in the system. 

#### Part or Other Inventory Item Class 

 You create an item class of the Part or Other Inventory type in one of the following situations: 

- You need to create an item class of this type for stock items that are not related to equipment entities and     should not be tracked in the Equipment Management functional area. 

- Your company has stock items that can be sold as parts of equipment entities and can be covered as a part     of the equipment entity warranty. For example, suppose that a vehicle purchased by a customer is defined     in the system as target equipment under warranty. You want to register that a sale of a spark plug for this     vehicle is covered by the vehicle warranty. You have to create at least one item class of the **Part or Other**     **Inventory** equipment type and assign an item class of this type to the spark plug stock item. To create this type of item class on the _Item Classes_ (IN201000) form, you select the **Part or Other Inventory** option button under **Equipment Item Class** in the **Equipment Management** section on the **Service Management** tab. 

#### Model Equipment Item Class 

 You create at least one model equipment item class if aer stock items are sold, you want to track them (and their components if necessary) for preventive maintenance or warranty handling. When you create this item class, to specify that it is a model equipment item class, you select the Model Equipment option button under Equipment Item Class in the Equipment Management section on the Service Management tab of the Item Classes (IN201000) form. 

 If you need to track the components of model equipment and perform actions (such as selling and replacing) upon these components, you should first create at least one component item class (for details, see the next section of this topic). In the table on the Service Management tab of the Item Classes form for the model equipment item class, you then specify these components and assign them component item classes. You also specify the default quantity of each component and whether it is optional. Then when a stock item is created on the Stock Items (IN202500) form and the model equipment class is selected, the system fills in the components in the table on the Service Management tab. 

 You can create model equipment with components only if components have been specified for its item class. 

 For instructions on how to create a model equipment item class, see Stock Items to Be Tracked Post-Sale: To Create a Stock Item with No Components. 


<!-- PAGE_BREAK -->
 Managing Equipment | 12 

#### Component Item Class 

 You create at least one component item class if a stock item, defined as a model equipment in the system, has components that you want to keep track of for preventive maintenance or warranty handling. Each component that you need to track and perform actions upon (that is, selling and replacing them) has to be defined on the Stock Items (IN202500) form as a stock item assigned to a component item class. You define each component item class on the Item Classes (IN201000) form. To specify that the item class is a component item class, you select the Component option button under Equipment Item Class in the Equipment Management section on the Service Management tab. 

 You need to associate a component with a stock item only if you will need to reflect in the system selling and replacing components. 

 For instructions on how to create a component item class, see Stock Items to Be Tracked Post-Sale: To Create Components. 

#### Consumable Item Class 

 You create at least one consumable item class for items that are sold as parts of equipment entities but are not under a warranty. To specify that the item class is a consumable item class, you select the Consumable option button under Equipment Item Class in the Equipment Management section on the Service Management tab of the Item Classes (IN201000) form. 

 For example, a vehicle is a customer's target equipment under warranty. You want to register in the system an oil change for the vehicle. To do this, you have to assign an item class of the Consumable equipment type to the stock item representing the oil. 

### Target Equipment 

 In Acumatica ERP, you can enter and maintain information about target equipment. Target equipment is equipment that needs to be serviced at the customer site or at your company. You can enter this equipment into the system manually, or it can be created automatically when a stock item that is model equipment (that is, a stock item intended to be tracked by your company aer its sale) is sold by your company. 

 A piece of target equipment may have components. A component is a part of an equipment entity that can have a warranty and a serial number that are independent of the related equipment entity. 

 If your company sells equipment that it expects to service later, you should define at least one item class to be assigned to stock items that will become equipment. You should also define any components of the stock item in the item class. 

 In this topic, you will read about how to add target equipment to the system, how to create target equipment for sold stock items, how to define components and warranties, and how to assign target equipment to services. 

#### Adding Target Equipment 

 You add each specific entity of target equipment to the system to track all the equipment for which your company provides services. You can add it manually in one of the following ways: 

- If the equipment is not already defined in your system, you enter this new equipment on the _Equipment_     (FS205000) form. 

- If the equipment was already defined on the _Equipment_ (EP208000) form, you can click **Extend to SM**     **Equipment** on the form toolbar to add this equipment to the Equipment Management functional area. 


<!-- PAGE_BREAK -->
 Managing Equipment | 13 

 The system brings up the Equipment form in the Equipment Management functional area with the relevant information filled in, and you can add or change any information and save your changes. If your company routinely sells a stock item that your company personnel then service, you can configure the system to automatically create the target equipment entity when an invoice is released for a sales order that includes the stock item. 

#### Creating Target Equipment for Sold Items 

 For target equipment that your company sells as stock items and that you want to track in the system aer its sale, you have to define the stock items as model equipment. If a stock item defined as model equipment is added to a sales order on the Sales Orders (SO301000) form, and the Selling Target Equipment action is selected in the Equipment Action column for this model equipment, when an invoice related to the sales order is released, the system converts the entity of model equipment to an entity of target equipment. 

 To convert to target equipment a stock item that was not defined as model equipment and was sold, you do the following: 

1. On the _Stock Items_ (IN202500) form, select the stock item and assign a model equipment item class to it in     the **Item Classes** box. 

2. On the _Create Equipment for Sold Items_ (FS500900) form, create target equipment entity to be tracked in the     Equipment Management functional area for the stock item. 

 Regardless of when the stock item was converted to target equipment, it may have components; that is, you may have specified components for the item class on the Service Management tab of the Item Classes form. In this case, aer you convert the stock items to target equipment, for each piece of equipment created, you should specify the details of its components on the Component and Warranties tab of the Equipment (FS205000) form. 

#### Defining Components and Their Warranties 

 You can keep details on the components of each piece of target equipment and their warranties. To add components to a piece of target equipment, in the Model box on the General Info tab of the Equipment (FS205000) form, select the identifier of the model equipment (that is, the inventory ID of the stock item that is defined as model equipment) related to this piece of target equipment. The system adds to the piece of equipment the components that have been assigned to the model equipment on the Service Management tab of the Stock Items (IN202500) form. 

 You can view the components that are defined in the system and their warranty information on the Component Summary (FS400700) form. 

#### Specification of Attributes 

 To give users the ability to specify additional information for a piece of equipment so that your company can track this information, attributes have to be defined for the related equipment type on the Equipment Types (FS200800) form. 

 When you create a piece of equipment on the Equipment (FS205000) form and select its equipment type, the system populates the Attributes tab with the attributes (and any default values) defined for the equipment type on the Equipment Types form. You can specify or modify equipment attribute values in the Values column. If the Required check box is selected for an attribute, the value has to be specified before you save the new equipment you are creating. 

 Also on the Attributes tab of the Equipment form are the Image set of elements, which you can use to attach an image of the piece of equipment. 


<!-- PAGE_BREAK -->
 Managing Equipment | 14 

#### Assigning Target Equipment and Components to Services 

 You can assign the necessary target equipment to the services of a service order on the Service Orders (FS300100) form or to the services of an appointment on the Appointments (FS300200) form. On the Details tab of either form, in the in the Target Equipment ID column of the row for each service that is performed on equipment, you select the identifier of the target equipment entity from the list. 

 You can also assign target equipment to a schedule of a service contract in the Equipment ID column on the Details tab of the Service Contract Schedules (FS305100) form. Aer you have done this, when you generate service orders or appointments for the contract, the service orders will already contain the target equipment assigned to the schedule of the applicable contract. Similarly, you can assign components to schedules. 

 Also, while viewing a piece of target equipment on the Equipment (FS205000) form, you can schedule an appointment for servicing the equipment by using the Schedule Appointments menu. 

#### Performing Actions on Target Equipment 

 Aer you have created target equipment in the system, while you are working with a sales order, service order, or appointment, you can easily register the following actions if they are performed upon particular target equipment entities: 

- Selling an optional component of target equipment 

- Replacing target equipment 

- Replacing components of target equipment 

### Model Equipment 

 In Acumatica ERP, you can keep track of a stock item aer it has been sold to a customer. To do that, you create a piece of model equipment —that is, a stock item with the Model Equipment equipment class specified. 

 A piece of model equipment is a stock item that can be sold to a customer and tracked by your company aer it is sold. When an invoice is released, the system automatically converts it into target equipment that you can track. You can also keep track of the details of the components of model equipment, such as the serial numbers of these components. 

 In this topic, you will read about adding a piece of model equipment, defining the components of the model equipment, selling the model equipment, and performing additional actions on the equipment. 

#### Understanding the Process of Model Equipment Creation 

 To create a piece of model equipment in the system, you perform the following steps: 

1. If you want to track the components of a piece of model equipment in the system, you create at least one     item class for components on the _Item Classes_ (IN201000) form. 

2. You create an item class for model equipment on the _Item Classes_ form. If the model equipment has     components, you have to specify them in the item class and assign them a component item class. 

3. If your company is going to register the selling and replacing of components in the system while employees     work with either service orders or sales orders, you create stock items for the components of this model     equipment entity on the _Stock Items_ (IN202500) form. For details on selling and replacing components, see     the component-related topics in the _Equipment Management Use Cases_ chapter. 

4. You create a piece of model equipment on the _Stock Items_ form. 


<!-- PAGE_BREAK -->
 Managing Equipment | 15 

#### Defining Components and Warranties 

 If components are defined for a model equipment item class on the Item Classes (IN201000) form, the system adds the components with the default settings when you create a model equipment entity on the Stock Items (IN202500) form and select this item class. In the Components table of the Service Management tab, you can view the details of the components and change them if necessary. 

 You can add only components that are defined for the model equipment item class. 

 If you are going to perform sales or replacement of these components and track them in the system, stock items should be created in the system for them. If stock items have been created for any of the components listed for a model equipment entity, you select the default inventory identifier of each such component in the Inventory ID column in the Components table. 

 On this tab, you can also specify the warranty period provided for the model equipment in the Equipment General Warranty section, and for its components in the table. Based on the information provided in this section, the system calculates the warranty period for target equipment that is created for this model equipment. Depending on the setting in the Equipment Settings section of the Equipment Management Preferences (FS100300) form, the system uses an installation date or the sales date to calculate the warranty period. 

#### Selling Equipment 

 When you sell equipment, you create a sales order that includes the equipment being sold for (with the Selling Model Equipment action selected) on the Details tab of the Sales Orders (SO301000) form. You then process the sales order, as described in Processing Sales of Stock Items. 

 When you release the invoice for the sales order, the system creates a target equipment entity on the Equipment (FS205000) form with the customer location assigned based on the customer location that was assigned to the model equipment on the Stock Items (IN202500) form. For details on target equipment, see Target Equipment. 

 Alternatively, you can reflect a sell of a piece of model equipment in an appointment or service order on the Appointments (FS30.02.00) or Service Orders (FS300100) form, respectively. If you use these forms, you can schedule the installation of the equipment along with the sale. 

#### Defining Attributes for Model Equipment 

 While you are creating a stock item that is defined as model equipment, you can specify a type related to the equipment in the Equipment Type box on the Service Management tab of the Stock Items (IN202500) form. 

 When the system converts the model equipment to target equipment from the sale of the stock item, the attributes (and any values) that the system copies to the Attributes tab of the Equipment form are determined based on whether the attributes (and values) of the equipment and the stock item are the same as follows: 

- If they are the same, the system copies these common attributes and values to the tab. 

- If they are not the same--that is, if attributes or values (or both) differ --the system copies the attributes of     the selected equipment type and ignores the attributes of the stock item. 

#### Performing Actions on Equipment 

 Aer you have created target equipment in the system, while you are working with a sales order, service order, or appointment, you can easily register the following actions being performed upon particular target equipment entities: 

- Selling a piece of equipment (for details, see _Target Equipment: To Sell a Stock Item as Target Equipment_ ) 


<!-- PAGE_BREAK -->
 Managing Equipment | 16 

- Selling equipment and optional component for it (for details, see _Selling a Piece of Equipment and an_     _Optional Component: Process Activity_ ) 

- Selling an equipment with a replaced default component (as described in _Upgrading a Default Component of_     _Equipment to Be Sold: Process Activity_ ) 


<!-- PAGE_BREAK -->
 Configuring Stock Items to Be Tracked Post-Sale | 17 

## Configuring Stock Items to Be Tracked Post-Sale 

 In Acumatica ERP, you can track equipment aer it has been sold to a customer. 

### Stock Items to Be Tracked Post-Sale: General Information 

 To track equipment aer a sale in Acumatica ERP, on the Stock Items (IN202500) form, you need to create a stock item of an equipment class that is designated for model equipment. A stock item of this class represents a piece of equipment that can be sold to a customer and subsequently tracked by your company. 

 A piece of equipment may or may not include components, which are stock items that belong to an equipment class that is designated for components. You can sell these components along with the equipment or separately, such as when a component of the equipment needs to be replaced or upgraded. 

#### Learning Objectives 

 In this lesson, you will learn how to do the following: 

- Create a manufacturer record, which will be specified in the stock item settings. 

- Create a stock item of a model equipment class without components (that is, a record for a piece of     equipment to be sold without components). 

- Create a stock item of a model equipment class with components (that is, a record for a piece of equipment     to be sold with components). You will also create components (stock items of a component equipment     class). 

- Record the receipt of stock items to add them to the warehouse inventory. 

#### Applicable Scenarios 

 You configure stock items for post-sale tracking in the following scenarios: 

- Your company needs to track equipment aer it has been sold to a customer, ensuring proper maintenance,     service, or warranty handling. 

- You sell equipment that includes components and need to manage the sale and tracking of these     components as part of the equipment. 

- A customer requires the replacement or upgrade of a component in existing equipment, and the     components must be created and managed as separate stock items. 

- Components are sold separately from the equipment—such as for repairs, upgrades, or replacements—and     need to be properly recorded in the system. 

#### Equipment-Related Options of a Stock Item 

 Before you can create a stock item of a model equipment or component equipment class, you first have to create the applicable item classes on the Item Classes (IN201000) form. 

 In Acumatica ERP, item classes are used to group stock or non-stock items with similar properties and to provide default settings for new items. When you create a new stock or non-stock item, you select the appropriate item class, and the item’s settings are populated with those defined by the item class. 

 For an item class intended for equipment to be tracked aer the sale, you select one of the following option buttons (see Item 2 in the following screenshot) on the Service Management tab (Item 1) of the Item Classes form: 


<!-- PAGE_BREAK -->
 Configuring Stock Items to Be Tracked Post-Sale | 18 

- **Part or Other Inventory** (default): Stock items are either equipment parts without warranty and     maintenance tracking or stock items not related to equipment records. 

- **Model Equipment** : Stock items that are tracked aer the sale, either for preventive maintenance or for     warranty purposes. 

- **Component** : Stock items that can be sold as equipment parts. Components may have warranties, serial     numbers, and other settings that are independent from those of the equipment. 

- **Consumable** : Stock items that are sold as equipment parts but are not covered by a warranty. By selecting one of these option buttons, you define the item class as an equipment class. 

 Figure: An equipment item class 

#### Warranty Settings 

 For a stock item with warranties, you can specify the warranty settings on the Service Management tab of the Stock Items (IN202500) form. You can specify the following warranty durations: 

- **Company Warranty** : The duration of the warranty that your company provides to the customer for the     stock item 

- **Vendor Warranty** : The duration of the warranty that the vendor provides to your company for the stock     item For each stock item of an equipment class with the **Model Equipment** or **Component** option button selected, you can specify the duration for either of the warranties, both of them, or neither of them. 

 Also, on the Equipment Management Preferences (FS100300) form, you can select whether the warranty duration is calculated based on the sales order date, the installation date, the earliest of these dates, or the latest of these dates. 

### Stock Items to Be Tracked Post-Sale: To Create a Stock Item with No Components 

 In this activity, you will create a stock item with no components that will be tracked aer the item is sold. To do this, you will first create an item class with the Model Equipment equipment class specified, which indicates that the 


<!-- PAGE_BREAK -->
 Configuring Stock Items to Be Tracked Post-Sale | 19 

 stock items of this class will be tracked post-sale. Then you will create a piece of equipment—a stock item of an equipment class designed for model equipment without components—based on the newly created item class. 

#### Story 

 Suppose that the SweetLife Service and Equipment Sales Center is planning to sell a range of centrifugal juicers, including models with features like automatic pulp ejection, and to track these items aer the sale. Acting as an administrative user, you will create the CENTRIFJUC Centrifugal Juicers item class with the Model Equipment option button selected. Various centrifugal juicer models will belong to this equipment class, which is intended for items sold without components. 

 You will then create a specific stock item, JUICE_J22C Multifruit Centrifugal Juicer J22C , based on this item class. This juicer model, featuring automatic pulp ejection, will be tracked aer the sale. 

#### Process Overview 

 On the Item Classes (IN201000) form, you will create an item class with the Model Equipment option button selected. Then on the Stock Items (IN202500) form, you will create a piece of equipment with no components based on the created item class. 

#### System Preparation 

 Before you begin performing the steps of this activity, on the Acumatica ERP website, sign in to a company with the U100 dataset preloaded. You should sign in as a system administrator by using the gibbs username and the 123 password. 

#### Step 1: Creating an Item Class for Equipment 

 To create an item class, do the following: 

1. On the _Item Classes_ (IN201000) form, add a new record and specify the following settings in the Summary     area: 

- **Class ID** : CENTRIFJUC 

- **Description** : Centrifugal Juicers 

2. On the **General** tab ( **General Settings** section), specify the following settings: 

- **Stock Item** : Selected 

- **Item Type** : _Finished Good_ 

- **Tax Category** : _EXEMPT_ 

- **Posting Class** : _AOL_ 

- **Default Warehouse** : _EQUIPHOUSE_ 

- **Availability Calculation Rule** : _ALLOTHER_ 

3. In the **Unit of Measure** section of the tab, specify the following settings: 

- **Base Unit** : _ITEM_ 

- **Sales Unit** : _ITEM_ 

- **Purchase Unit** : _ITEM_ 

4. On the **Service Management** tab, select **Model Equipment** under **Equipment Class**. A stock item of the     _CENTRIFJUC_ item class will be tracked aer it is sold. 

5. On the form toolbar, click **Save**. 


<!-- PAGE_BREAK -->
 Configuring Stock Items to Be Tracked Post-Sale | 20 

#### Step 2: Creating a Stock Item with No Components 

 To create a stock item with no components that will be tracked aer it is sold, do the following: 

1. On the _Stock Items_ (IN202500) form, add a new record and specify the following settings in the Summary     area: 

- **Inventory ID** : JUICE_J22C 

- **Item Status** : _Active_ 

- **Description** : Multifruit Centrifugal Juicer J22C 

2. On the **General** tab ( **Item Defaults** section), select _CENTRIFJUC_ as the **Item Class**.     The **Type** , **Tax Category** , **Posting Class** , and **Default Warehouse** boxes, as well as the boxes in the **Unit of**     **Measure** section, have been populated with the values from the item class you selected. 

3. On the **Service Management** tab, in the **Manufacturer** box, select _JUICEAPP_.     Notice that the **Model Equipment** option button on this tab (under **Equipment Class** ) has been selected     because this option button is selected for the item class. Unlike most settings specified for the item class,     this setting cannot be overridden. 

4. On the form toolbar, click **Save**. 

### Stock Items to Be Tracked Post-Sale: To Create Components 

 In this activity, you will create components for a stock item. To do this, you will first create an item class that is intended to group and provide similar settings to components (that is, stock items of a component equipment class). Then you will create stock items based on this item class. You will also specify warranty settings for these components. 

#### Story 

 Suppose that the SweetLife Service and Equipment Sales Center is planning to sell cold press juicers with components. Acting as an administrative user, you will create the CPRESSCOMP Cold press juicer components item class designed for components, which will group the components of cold press juicers. You will then create stock items based on this item class to represent the individual components for the cold press juicers. 

#### Process Overview 

 On the Item Classes (IN201000) form, you will create an item class with the Component option button selected on the Service Management tab. Then on the Stock Items (IN202500) form, you will create stock items based on the newly created item class. 

#### System Preparation 

 Before you begin performing the steps of this activity, on the Acumatica ERP website, sign in to a company with the U100 dataset preloaded. You should sign in as a system administrator by using the gibbs username and the 123 password. 

#### Step 1: Creating an Item Class for Components 

 To create an item class for components, do the following: 


<!-- PAGE_BREAK -->
 Configuring Stock Items to Be Tracked Post-Sale | 21 

1. On the _Item Classes_ (IN201000) form, add a new record and specify the following settings in the Summary     area: 

- **Class ID** : CPRESSCOMP 

- **Description** : Cold press juicer components 

2. On the **General** tab ( **General Settings** section), specify the following settings: 

- **Stock Item** : Selected 

- **Item Type** : _Finished Good_ 

- **Tax Category** : _EXEMPT_ 

- **Posting Class** : _AOL_ 

- **Default Warehouse** : _EQUIPHOUSE_ 

- **Availability Calculation Rule** : _ALLOTHER_ 

3. In the **Unit of Measure** section, specify the following settings: 

- **Base Unit** : _ITEM_ 

- **Sales Unit** : _ITEM_ 

- **Purchase Unit** : _ITEM_ 

4. On the **Service Management** tab, select **Component** under **Equipment Class**. 

5. On the form toolbar, click **Save**. 

 Now you can create the stock items (that is, the individual components) in the item class that you have created. 

#### Step 2: Creating Components 

 In this step, you will create the components listed in the table below. 

 Description Inventory ID Company Warranty Vendor Warranty 

 Juice Cup H30J CUPH300J 6 months 3 months 

 Hopper for cold press juicers (plastic) 

 HOPPERH3 3 months N/A 

 Hopper H30J metallic 30HOPPERJK 3 months N/A 

 Plunger H30J PLUNGERH30J 6 months 12 months 

 Auger H30J AUGERH30J 12 months 12 months 

 Drum H30J DRUMH30J 12 months 6 months 

 To create the components, do the following: 

1. On the _Stock Items_ (IN202500) form, add a new record and specify the following settings in the Summary     area: 

- **Inventory ID** : CUPH300J 

- **Item Status** : _Active_ 

- **Description** : Juice Cup H30J 

2. On the **General** tab, in the **Item Class** box ( **Item Defaults** section), select _CPRESSCOMP_.     The **Type** , **Tax Category** , **Posting Class** , and **Default Warehouse** boxes, as well as those in the **Unit of**     **Measure** section, have been populated with the values from the selected item class. 


<!-- PAGE_BREAK -->
 Configuring Stock Items to Be Tracked Post-Sale | 22 

3. On the **Price/Cost** tab, set the **Default Price** to 50. 

4. On the **Service Management** tab, do the following: 

- In the **Manufacturer** box, select _JUICEAPP_. 

- In the **Equipment General Warranty** section, set **Company Warranty** to 6 _Months_ and **Vendor Warranty**     to 3 _Months_.     Notice that the **Component** option button (under **Equipment Class** ) has been selected based on the     settings of the item class you selected, and you cannot change this setting. 

5. On the form toolbar, click **Save**. 

6. On the form toolbar, click **Add New Record** to create a new component and specify the following settings: 

- **Inventory ID** : HOPPERH3 

- **Item Status** : _Active_ 

- **Description** : Hopper for cold press juicers (plastic) 

7. On the **General** tab, select _CPRESSCOMP_ as the **Item Class**. 

8. On the **Price/Cost** tab, set the **Default Price** to 40. 

9. On the **Service Management** tab, do the following: 

- In the **Manufacturer** box, select _JUICEAPP_. 

- In the **Company Warranty** box, specify 3 _Months_ , and in the **Vendor Warranty** box, leave _0_.     Notice that the **Component** option button is again selected and unavailable. 

10.On the form toolbar, click **Save**. 

11.On the form toolbar, click **Add New Record** to create a new component and specify the following settings in the Summary area: 

- **Inventory ID** : 30HOPPERJK 

- **Item Status** : _Active_ 

- **Description** : Hopper H30J metallic 

12.On the **General** tab, select _CPRESSCOMP_ as the **Item Class**. 

13.On the **Price/Cost** tab, set the **Default Price** to 50. 

14.On the **Service Management** tab, do the following: 

- In the **Manufacturer** box, select _JUICEAPP_. 

- In the **Company Warranty** box, specify 3 _Months_ , and in the **Vendor Warranty** box, leave _0_.     Notice that the **Component** option button is again selected and unavailable. 

15.On the form toolbar, click **Save**. 

16.On the form toolbar, click **Add New Record** to create a new component and specify the following settings: 

- **Inventory ID** : PLUNGERH30J 

- **Item Status** : _Active_ 

- **Description** : Plunger H30J 

17.On the **General** tab, select _CPRESSCOMP_ as the **Item Class**. 

18.On the **Price/Cost** tab, set the **Default Price** to 25. 

19.On the **Service Management** tab, do the following: 

- In the **Manufacturer** box, select _JUICEAPP_. 

- In the **Company Warranty** box, specify 6 _Months_ , and in the **Vendor Warranty** box, specify 12 _Months_.     Notice that the **Component** option button is again selected and unavailable. 

20.On the form toolbar, click **Save**. 

21.On the form toolbar, click **Add New Record** to create a new component, and specify the following settings: 


<!-- PAGE_BREAK -->
 Configuring Stock Items to Be Tracked Post-Sale | 23 

- **Inventory ID** : AUGERH30J 

- **Item Status** : _Active_ 

- **Description** : Auger H30J 22.On the **General** tab, select _CPRESSCOMP_ as the **Item Class**. 23.On the **Price/Cost** tab, set the **Default Price** to 70. 24.On the **Service Management** tab, do the following: 

- In the **Manufacturer** box, select _JUICEAPP_. 

- In the **Company Warranty** box, specify 12 _Months_ , and in the **Vendor Warranty** box, specify 12 _Months_.     Notice that the **Component** option button is again selected and unavailable. 25.On the form toolbar, click **Save**. 26.On the form toolbar, click **Add New Record** to create a new component and specify the following settings in the Summary area: 

- **Inventory ID** : DRUMH30J 

- **Item Status** : _Active_ 

- **Description** : Drum H30J 27.On the **General** tab, select _CPRESSCOMP_ as the **Item Class**. 28.On the **Price/Cost** tab, set the **Default Price** to 100. 29.On the **Service Management** tab, do the following: 

- In the **Manufacturer** box, select _JUICEAPP_. 

- In the **Company Warranty** box, specify 12 _Months_ , and in the **Vendor Warranty** box, specify 6 _Months_.     Notice that the Component option button is again selected and unavailable. 30.On the form toolbar, click **Save**. 

 Now you can create a piece of equipment with components, but first, you need to create the appropriate item class for it. 

### Stock Items to Be Tracked Post-Sale: To Create Stock Items with Components 

 In this activity, you will create a piece of equipment with components that will be tracked aer the equipment is sold. To accomplish this, you will first create an item class to group similar equipment with components. For the item class, you will define the components, including one optional component (that is, the equipment can be sold without this particular component). You will also specify the quantity required for each component in each piece of equipment. 

 You will then create a stock item for a piece of equipment with components, based on the newly created item class. 

#### Story 

 Suppose the SweetLife Service and Equipment Sales Center plans to sell commercial cold press juicers with various components and to track these juicers aer they are sold. As the administrative user, you will create the COLDPRESS 

_- Commercial Cold Press Juicers_ item class for model equipment; this class is specifically designed to manage equipment with components. Next, you will create the _CPRESS30J - Cold Press Juicer H30J_ stock item based on this item class and define the components included with this piece of equipment. 


<!-- PAGE_BREAK -->
 Configuring Stock Items to Be Tracked Post-Sale | 24 

#### Process Overview 

 On the Item Classes (IN201000) form, you will create an item class with the Model Equipment setting and specify the necessary components for this class. Then on the Stock Items (IN202500) form, you will create a piece of equipment with components based on the newly created item class. 

#### System Preparation 

 Before you begin performing the steps of this lesson, do the following: 

1. On the Acumatica ERP website, sign in to a company with the _U100_ dataset preloaded. You should sign in as     a system administrator by using the _gibbs_ username and the _123_ password. 

2. In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, set the business date     to _1/30/2025_. For simplicity, in this activity, you will create and process all documents in the system on this     business date. 

3. To perform this activity, make sure that you have performed the following prerequisite activity: _Stock Items_     _to Be Tracked Post-Sale: To Create Components_. 

#### Step 1: Creating an Item Class for Equipment with Components 

 To create an item class for equipment that has components, do the following: 

1. On the _Item Classes_ (IN201000) form, add a new record and specify the following settings in the Summary     area: 

- **Class ID** : COLDPRESS 

- **Description** : Commercial Cold Press Juicers 

2. On the **General** tab ( **General Settings** section), specify the following settings: 

- **Stock Item** : Selected 

- **Item Type** : _Finished Good_ 

- **Tax Category** : _EXEMPT_ 

- **Posting Class** : _AOL_ 

- **Default Warehouse** : _EQUIPHOUSE_ 

- **Availability Calculation Rule** : _ALLOTHER_ 

3. In the **Unit of Measure** section of the tab, specify the following settings: 

- **Base Unit** : _ITEM_ 

- **Sales Unit** : _ITEM_ 

- **Purchase Unit** : _ITEM_ 

4. On the **Service Management** tab, select **Model Equipment** under **Equipment Class**. 

5. On the form toolbar, click **Save**. 

6. On the table toolbar of the table on the **Service Management** tab, click **Add Row** , and specify the following     settings in the added row to add a component to the item class: 

- **Component ID** : JUICECUP 

- **Active** : Selected 

- **Optional** : Cleared 

- **Quantity** : 1 

- **Description** : Juice Cup 

- **Item Class ID** : _CPRESSCOMP_ 


<!-- PAGE_BREAK -->
 Configuring Stock Items to Be Tracked Post-Sale | 25 

7. On the table toolbar, click **Add Row** again, and specify the following settings in the added row to add     another component to the item class: 

- **Component ID** : HOPPER 

- **Active** : Selected 

- **Optional** : Cleared 

- **Quantity** : 1 

- **Description** : Hopper 

- **Item Class ID** : _CPRESSCOMP_ 

8. On the table toolbar, click **Add Row** again, and specify the following settings in the added row to add the     third component to the item class: 

- **Component ID** : HOPPER_O 

- **Active** : Selected 

- **Optional** : Selected     With this check box selected, you can sell equipment of the class without this component. 

- **Quantity** : 1 

- **Description** : Hopper (optional) 

- **Item Class ID** : _CPRESSCOMP_ 

9. On the table toolbar, click **Add Row** again, and specify the following settings in the row to add the fourth     component to the item class: 

- **Component ID** : PLUNGER 

- **Active** : Selected 

- **Optional** : Cleared 

- **Quantity** : 1 

- **Description** : Plunger 

- **Item Class ID** : _CPRESSCOMP_ 

10.Click **Add Row** , and specify the following settings in the row to add the fih component to the item class: 

- **Component ID** : AUGER 

- **Active** : Selected 

- **Optional** : Cleared 

- **Quantity** : 1 

- **Description** : Auger 

- **Item Class ID** : _CPRESSCOMP_ 

11.Click **Add Row** , and specify the following settings to add the sixth component to the item class: 

- **Component ID** : DRUM 

- **Active** : Selected 

- **Optional** : Cleared 

- **Quantity** : 1 

- **Description** : Drum 

- **Class ID** : _CPRESSCOMP_ 

12.On the form toolbar, click **Save**. 

 You have added the components to the COLDPRESS item class, as shown in the following screenshot. 


<!-- PAGE_BREAK -->
 Configuring Stock Items to Be Tracked Post-Sale | 26 

 Figure: The item class with components 

#### Step 2: Creating a Piece of Equipment with Components 

 To create a piece of model equipment with components, do the following: 

1. On the _Stock Items_ (IN202500) form, add a new record and specify the following settings in the Summary     area: 

- **Inventory ID** : CPRESS30J 

- **Item Status** : _Active_ 

- **Description** : Cold Press Juicer H30J 

2. On the **General** tab, select _COLDPRESS_ as the **Item Class**.     The **Type** , **Tax Category** , **Posting Class** , and **Default Warehouse** boxes, as well as the boxes in the **Unit of**     **Measure** section, have been populated with the values from the selected item class. 

3. On the **Price/Cost** tab, set the **Default Price** to 800. 

4. On the **Service Management** tab, do the following: 

- In the **Manufacturer** box, select _JUICEAPP_. 

- In the **Company Warranty** box, specify 12 _Months_ , and in the **Vendor Warranty** box, specify 6 _Months_.     Notice that the **Model Equipment** option button has been selected based on the settings of the item     class, and you cannot change this setting. 

5. On the form toolbar, click **Save**. 

6. In the table of the **Service Management** tab, specify the following identifiers in the **Inventory ID** column     for the rows with the mentioned **Component ID** values, so that you are specifying the stock items     corresponding to the required components: 

- _AUGERH30J_ in the row with the _AUGER_ component 

- _DRUMH30J_ in the row with the _DRUM_ component 

- _HOPPERH3_ in the row with the _HOPPER_ component 

- _30HOPPERJK_ in the row with the _HOPPER_O_ component 

- _CUPH300J_ in the row with the _JUICECUP_ component 


<!-- PAGE_BREAK -->
 Configuring Stock Items to Be Tracked Post-Sale | 27 

- _PLUNGERH30J_ in the row with the _PLUNGER_ component Notice that as you select the inventory IDs, the system updates the warranty settings. 

7. Clear the **Requires Serial** check box in all rows except the row with the _DRUM_ component. 

8. In the row with the _AUGERH30J_ component, select _SQUEEZO_ in the **Vendor ID** column. 

9. On the form toolbar, click **Save**. 10.Navigate to the _Model Equipment and Component Summary_ (FS400400) form, and verify that both pieces of     model equipment that you have created are listed. Notice that all the components you have created are also     listed here. 

 Figure: The defined model equipment 

### Stock Items to Be Tracked Post-Sale: To Record the Receipt of Stock Items 

 When new stock items are created in Acumatica ERP, you enter a purchase order (optional) and a receipt to record the items in the warehouse, making them available for further processing and sale. 

#### Story 

 Suppose that the SweetLife Service and Equipment Sales Center purchased equipment from the vendor and needs to register the purchase in the system so that the items will be reflected in the warehouse. 

 Acting as an accountant, you will add a receipt to the system indicating the purchase of the equipment. (To keep this training streamlined, you do not need to sign in as the accountant; you will complete this step while signed in to the service manager’s user account.) 

#### Process Overview 

 On the Receipts (IN301000) form, you will create and release a receipt listing purchased items so that the items are available in your warehouse. 


<!-- PAGE_BREAK -->
 Configuring Stock Items to Be Tracked Post-Sale | 28 

#### System Preparation 

 Before you begin performing the steps of this lesson, do the following: 

1. On the Acumatica ERP website, sign in to a company with the _U100_ dataset preloaded. You should sign in as     a service manager by using the _davis_ username and the _123_ password. 

2. In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, set the business date     to _1/30/2025_. For simplicity, in this activity, you will create and process all documents in the system on this     business date. 

3. To perform this activity, make sure that you have performed the following prerequisite activities: _Stock_     _Items to Be Tracked Post-Sale: To Create a Stock Item with No Components_ , _Stock Items to Be Tracked_     _Post-Sale: To Create Components_ , and _Stock Items to Be Tracked Post-Sale: To Create Stock Items with_     _Components_. 

#### Step: Recording the Receipt of Stock Items 

 Perform the following instructions: 

1. On the _Receipts_ (IN301000) form, click **Add New Record**. 

2. On the **Details** tab, add a new row with the following settings: 

- **Inventory ID** : _CPRESS30J_ 

- **Quantity** : 20 

- **Unit Cost** : 800 

3. Again click **Add Row** , and specify the following settings in the row: 

- **Inventory ID** : _JUICE_J22C_ 

- **Quantity** : 20 

- **Unit Cost** : 700 

4. Again click **Add Row** , and specify the following settings in the row: 

- **Inventory ID** : _CUPH300J_ 

- **Quantity** : 20 

- **Unit Cost** : 50 

5. Click **Add Row** again, and specify the following settings in the row: 

- **Inventory ID** : _HOPPERH3_ 

- **Quantity** : 20 

- **Unit Cost** : 40 

6. Click **Add Row** again, and specify the following settings in the row: 

- **Inventory ID** : _30HOPPERJK_ 

- **Quantity** : 20 

- **Unit Cost** : 50 

7. Again click **Add Row** , and specify the following settings in the row: 

- **Inventory ID** : _PLUNGERH30J_ 

- **Quantity** : 20 

- **Unit Cost** : 25 

8. Click **Add Row** once again, and specify the following settings in the row: 

- **Inventory ID** : _AUGERH30J_ 

- **Quantity** : 20 


<!-- PAGE_BREAK -->
 Configuring Stock Items to Be Tracked Post-Sale | 29 

- **Unit Cost** : 70 

9. Click **Add Row** once again, and specify the following settings in the row: 

- **Inventory ID** : _DRUMH30J_ 

- **Quantity** : 20 

- **Unit Cost** : 100 10.On the form toolbar, click **Save**. You have created the receipt for the model equipment in the system. 11.On the form toolbar, click **Release**. 

Once the receipt is released, the items of each row are available in your warehouse, as the following screenshot shows. 

**_Figure: The receipt for the equipment items_** 

Now you can proceed to creating a sales order for equipment. 


<!-- PAGE_BREAK -->
 Creating Target Equipment | 30 

## Creating Target Equipment 

 In Acumatica ERP, target equipment is equipment that your staff members will service at the customer site or at your company. 

 In this chapter, you will learn how to create target equipment in Acumatica ERP. 

### Target Equipment: General Information 

 In this lesson, you will learn how to work with target equipment in Acumatica ERP. Target equipment refers to items that your company tracks for maintenance, service, or warranty purposes. This includes equipment sold directly to customers and equipment purchased from third parties but serviced by your company. 

#### Learning Objectives 

 In this lesson, you will learn how to do the following: 

- Create a sales order and an invoice to record the sale of a stock item. On release of the invoice related to the     sales order, the system automatically creates a target equipment record. 

- Create a piece of target equipment manually. 

- Create an appointment for services performed on the customer's target equipment. 

#### Applicable Scenarios 

 You create target equipment in the following scenarios: 

- A customer requests to purchase equipment along with installation services, with plans for ongoing regular     maintenance services on this equipment. 

- Your company needs to service equipment that was originally purchased from a third party, requiring the     entry of the equipment record in Acumatica ERP to enable tracking, scheduling, and servicing. 

#### Target Equipment Creation 

 You can create target equipment in the following ways: 

- By selling a stock item with the **Model Equipment** equipment class, which causes the system to create the     corresponding target equipment record on the _Equipment_ (FS205000) form. The record is created when you     release the invoice associated with this sale on the _Invoices_ (SO303000) form. 

- By creating a target equipment record directly on the _Equipment_ form (when your company plans to provide     services for equipment purchased by a customer from another company). 

- By modifying the item class of the stock items that you have already sold to indicate that these stock items     will now be handled as model equipment, and then converting these stock items into target equipment on     the _Create Equipment for Sold Items_ (FS500900) form. 

#### Workflow of Sales Order Processing 

 The steps involved in the sale of a piece of model equipment are shown in the diagram below. 


<!-- PAGE_BREAK -->
 Creating Target Equipment | 31 

 Figure: Selling a piece of model equipment from a sales order 

### Target Equipment: To Sell a Stock Item as Target Equipment 

 The following activity will walk you through the process of selling two stock items with the Model Equipment equipment class. When you release the invoice for the sale, the system will automatically create a target equipment record. You will then verify that the stock items sold to the customer are listed as target equipment owned by this customer. 


<!-- PAGE_BREAK -->
 Creating Target Equipment | 32 

#### Story 

 Suppose that the GOODFOOD (GoodFood One Restaurant) customer would like to purchase two pieces of equipment, along with installation services, from the SweetLife Service and Equipment Sales Center. 

 Acting as a service manager, you will receive the request and create a sales order. Then acting as an accountant, you will prepare and release an invoice. (To keep this training simple, you will perform all instructions by using the user account of the service manager, Maia Davis.) 

#### Process Overview 

 On the Sales Orders (SO301000) form, you will create a new sales order. In this sales order, you will add stock items and specify the Selling Model Equipment equipment action for them. Then you will prepare and release a sales invoice. By releasing the invoice, the system will create the target equipment. 

#### System Preparation 

 Before you begin performing the steps of this activity, do the following: 

1. On the Acumatica ERP website, sign in to a company with the _U100_ dataset preloaded. You should sign in as     a service manager by using the _davis_ username and the _123_ password. 

2. In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, set the business date     to _1/30/2025_. For simplicity, in this activity, you will create and process all documents in the system on this     business date. 

#### Step 1: Creating a Sales Order for Equipment 

 To create a sales order, perform the following instructions: 

1. On the _Sales Orders_ (SO301000) form, add a new sales order and specify the following settings in the     Summary area: 

- **Order Type** : _SO_ 

- **Customer** : _GOODFOOD - GoodFood One Restaurant_ 

2. On the form toolbar, click **Save**. 

3. On the **Details** tab, click **Add Row** on the table toolbar, and add a piece of model equipment to the sales     order by specifying the following settings in the row: 

- **Inventory ID** : _JUICE_J22C_ 

- **Equipment Action** : _Selling Model Equipment_ 

- **Quantity** : 1.00 

- **Unit Price** : 700.0000 

4. On the table toolbar, again click **Add Row** , and specify the following settings in the row to add another piece     of model equipment to the sales order: 

- **Inventory ID** : _CPRESS30J_ 

- **Equipment Action** : _Selling Model Equipment_ 

- **Quantity** : 1.00 

- **Unit Price** : 800.0000 

5. On the form toolbar, click **Save**. 

6. On the form toolbar, click **Create Shipment**. 


<!-- PAGE_BREAK -->
 Creating Target Equipment | 33 

7. In the **Specify Shipment Parameters** dialog box, click **OK** to create a shipment for the business date     ( _1/30/2025_ ) and the default warehouse of your branch location (which is _EQUIPHOUSE_ ).     The system has opened the _Shipments_ (SO302000) form with the details copied from the corresponding     sales order. 

8. On the form toolbar, click **Confirm Shipment** to change the shipment’s status to _Confirmed_. 

9. On the form toolbar, click **Prepare Invoice** ; the system has opened the _Invoices_ (SO303000) form with the     details copied from the shipment. 10.On the form toolbar of the opened form, click **Release**.     By releasing the invoice related to the sales order that included the items for which you specified the     _Selling Model Equipment_ action, you cause the system to create the target equipment in the system that     corresponds to the stock items. The system inserts the reference numbers of the equipment in the **Target**     **Equipment ID** column. 

 Figure: Target equipment created on release of the invoice 

#### Step 2: Reviewing the Target Equipment List 

 To verify that the equipment has been created, perform the following instructions: 

1. Open the _Equipment Summary_ (FS400200) form.     This form shows you all the equipment that has been created in the system. Notice that the **Target**     **Equipment** check boxes are selected for the pieces of equipment you have created in the previous step,     meaning that your company expects to service this equipment. In the **Model Equipment** column, you can     view the inventory ID of the stock item corresponding to the target equipment.     Notice that the **Customer ID** column displays _GOODFOOD_ for both pieces of equipment. 

2. In the table row with _Multifruit Centrifugal Juicer J22C_ , click the _FSE00010_ link in the **Equipment Nbr.**     column.     The _Equipment_ (FS205000) form has been opened in a new window with this target equipment selected. 

3. On the **General** tab, notice that the **Installation Date** box has been filled with the date of the sales invoice     (as shown in the following screenshot). 


<!-- PAGE_BREAK -->
 Creating Target Equipment | 34 

 Figure: Settings of the target equipment 

4. On the **Components and Warranties** tab, verify that no settings have been filled in. This is because this     target equipment has no parts or warranties. 

5. On the **Source** tab, verify that the **Document Ref. Nbr.** and **Sales Order Nbr.** boxes contain links to the     documents, which confirm the purchase of this equipment by the customer. 

6. Close the window with the _Equipment_ form. 

7. On the _Equipment Summary_ form, for the row with _Cold Press Juicer H30J_ , click the _FSE00011_ link in the     **Equipment Nbr.** column. 

8. On the _Equipment_ form, which the system has opened, click the **Components and Warranties** tab. 

 Notice that the components of the Cold Press Juicer H30J equipment are listed on this tab, as shown in the following screenshot. The warranty end dates for the components that have warranties are automatically calculated based on the equipment invoice date and the warranty duration that you defined for the corresponding model equipment. You entered these components and their warranty durations in Lesson 1.2. 


<!-- PAGE_BREAK -->
 Creating Target Equipment | 35 

 Figure: Components and warranties of the equipment 

9. Close the window with the _Equipment_ form. 10.On the _Component Summary_ (FS400700) form, view the list of components serviced by SweetLife.     Notice that the target equipment records now all have the _Active_ status. 

### Target Equipment: To Manually Create Equipment 

 In this activity, you will create in the system a piece of equipment that the customer already has and that SweetLife will be servicing. 

#### Story 

 Suppose that the SweetLife Service and Equipment Sales Center needs to perform services on the equipment that was sold to the HMBAKERY HM's Bakery & Cafe customer by a third party. Acting as a service manager, you will enter this equipment record in Acumatica ERP. 

#### Process Overview 

 On the Equipment (FS205000) form, you will add a new piece of equipment to be serviced. 

#### System Preparation 

 Before you begin performing the steps of this activity, do the following: 

1. On the Acumatica ERP website, sign in to a company with the _U100_ dataset preloaded. You should sign in as     a service manager by using the _davis_ username and the _123_ password. 

2. In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, set the business date     to _1/30/2025_. For simplicity, in this activity, you will create and process all documents in the system on this     business date. 

#### Step: Creating Target Equipment 

 To create this piece of target equipment, perform the following instructions: 


<!-- PAGE_BREAK -->
 Creating Target Equipment | 36 

1. On the _Equipment_ (FS205000) form, add a new record and specify the following settings in the Summary     area: 

- **Description** : Multifruit Centrifugal Juicer J22C (see Item 1 in the following screenshot) 

- **Target Equipment** : Selected (Item 2) 

2. Under **Owner** , select the **Customer** option button, and in the **Customer** box, select _HMBAKERY - HM's Bakery_     _& Cafe_ (Item 3). 

3. Under **Location** , in the **Customer** box, select _HMBAKERY - HM's Bakery & Cafe_ (Item 4). 

4. On the **General** tab ( **Installation Info** section), in the **Installation Date** box (Item 5), select the current     business date ( _1/30/2025_ ). 

5. In the **Model Equipment** box of the **Inventory Info** section, select _JUICE_J22C_ (Item 6). 

 Figure: Manual creation of target equipment 

6. On the form toolbar, click **Save**. 

7. On the _Equipment Summary_ (FS400200) form, in the **Customer** box of the Summary area, select _HMBAKERY_. 

8. In the table, make sure the _FSE00012_ equipment record is listed, as shown in the screenshot below. 


<!-- PAGE_BREAK -->
 Creating Target Equipment | 37 

 Figure: The created target equipment 

 If you click the FSE00012 link in the Equipment Nbr. column, the system will open the Equipment form, where you just created the target equipment. 

### Target Equipment: To Create a Service Appointment 

 In this activity, you will create an appointment to deliver setup services for target equipment located at the customer's premises. 

#### Story 

 Suppose that the GOODFOOD (GoodFood One Restaurant) customer wants the SweetLife Service and Equipment Sales Center to perform installation and repair services at the customer's location on the cold press and centrifugal juicers it has purchased. Acting as a service manager, you will receive the request and create and process an appointment. 

#### Process Overview 

 On the Appointments (FS300200) form, you will create a new appointment. In this appointment, you will specify the services and the target equipment that will be serviced. You will also assign a staff member with the appropriate skills and, on behalf of a staff member, process the appointment. 

#### System Preparation 

 Before you begin performing the steps of this activity, do the following: 

1. On the Acumatica ERP website, sign in to a company with the _U100_ dataset preloaded. You should sign in as     a service manager by using the _davis_ username and the _123_ password. 

2. In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, set the business date     to _1/30/2025_. For simplicity, in this activity, you will create and process all documents in the system on this     business date. 

#### Step: Creating an Appointment for the Servicing of Target Equipment 

 Do the following: 

1. On the _Appointments_ (FS300200) form, click **Add New Record**. 

2. Specify the following settings in the Summary area: 

- **Service Order Type** : _INST_ 

- **Customer** : _GOODFOOD (GoodFood One Restaurant)_ 


<!-- PAGE_BREAK -->
 Creating Target Equipment | 38 

- **Description** : Installation and training services 

3. On the form toolbar, click **Save**. 

4. On the **Details** tab, click **Add Row** and specify the following settings in the row: 

- **Inventory ID** : _INSTALL_ 

- **Target Equipment ID** : _FSE00010_ (this target equipment is the _Multifruit Centrifugal Juicer J22C_ stock     item) 

5. On the form toolbar, click **Save**. 

6. Click **Add Row** again and specify the following settings in the row: 

- **Inventory ID** : _REPAIR_ 

- **Target Equipment ID** : _FSE00011_ (this target equipment is the _Cold Press Juicer H30J_ stock item) 

7. On the form toolbar, click **Save**. 

8. On the **Staff** tab, click **Add Row** , and in the **Staff Member** column, select _EP00000003 - Jon Waite_. This staff     member has the _INSTALLING - Juicer installation skills_ and _REPAIRING - Repair of juicers_ skills assigned on the     **Skills** tab on the _Employees_ (EP203000) form. 

9. On the form toolbar, click **Save**. 

10.On the form toolbar, click **Start**. In this instruction, you are acting as Jon Waite arriving at the appointment. 

11.On the **Details** tab, click the _FSE00010_ link in the **Target Equipment ID** column. 

 The system has opened the Equipment (FS205000) form, where the staff member attending the appointment can view the settings of the equipment scheduled for service. 

12.On the More menu (under **Inquiries** ), click **Target Equipment History**. 

 The system opens the Appointment Details (FS400500) form. You can see the appointment created for the selected piece of equipment. (See the following screenshot.) 

 Figure: Appointment history for the target equipment 

13.Return to the _Appointments_ (FS300200) form. 

14.On the **Details** tab, click the _FSE00011_ link in the **Target Equipment ID** column to view the settings of the _Cold Press Juicer H30J_ to be assembled. 

15.On the _Equipment_ form, which the system opens, click the **Components and Warranties** tab. 

16.In the **Serial Nbr.** column of the components table, enter 12345 for the _DRUM_ component (which has a warning indicating that the serial number is missing). 

17.On the form toolbar, click **Save**. 

18.Close the window with the _Equipment_ form and return to the _Appointments_ form. 

19.On the **Settings** tab, in the **Actual Date and Time** section, enter the actual start and end times (for simplicity in this training, set them to match the scheduled start and end times). Select the **Finished** check box. 

20.On the form toolbar, click **Complete** and then **Close**. 

 Now an accountant can run billing for the appointment. 


<!-- PAGE_BREAK -->
 Creating Target Equipment | 39 

### Target Equipment: Related Report and Inquiry Forms 

 In Acumatica ERP, you can easily view the needed details of the equipment that your company services and the appointments in which the equipment was involved. 

 If you do not see a particular report or form that is described, you may have signed in to the system with a user account that does not have access rights to the report or form. Contact your system administrator to obtain access to any needed reports or forms. 

#### Viewing Equipment-Related Stock Items 

 On the Model Equipment and Component Summary (FS400400) form, you can view the list of all the stock items defined in the system as model equipment or components. You can filter the list by item class ID. 

#### Viewing Equipment Details 

 On the Equipment Summary (FS400200) form, you can view the list of all equipment added to the system and its general information, such as type, description, serial number, owner information, model, and installation date. You can filter the list by equipment type, customer (for equipment owned by customers rather than your company), customer location, and model (stock item ID). 

 To view the details of a particular piece of equipment , you can click its equipment number in the Equipment Nbr. column. The system navigates to the Equipment (FS205000) form. 

#### Viewing Component Details 

 On the Component Summary (FS400700) form, you can view the list of all components related to target equipment in your system You can filter the list by equipment entity, customer (for equipment owned by customers rather than your company), customer location, and model (stock item ID). 

 To view the details of the equipment related to a particular component, you can click the equipment number in the Equipment Nbr. column. The system navigates to the Equipment (FS205000) form. 

#### Viewing Equipment Appointments 

 On the Appointment Details (FS400500) form, you can filter the list of appointments by the particular equipment that was used during the appointments. You can go directly to this form and filter the list as needed, or you can invoke this form on the Equipment (FS205000) form to view the history of the selected equipment as follows: 

- On the form toolbar, on the More menu (under **Inquiries** ), click **Resource Equipment History** if the selected     equipment is resource equipment. 

- On the form toolbar, on the More menu (under **Inquiries** ), click **Target Equipment History** if the selected     equipment is target equipment. 


<!-- PAGE_BREAK -->
 Selling a Piece of Equipment and an Optional Component | 40 

## Selling a Piece of Equipment and an Optional Component 

 In Acumatica ERP, you can sell equipment and its components. To do this, you will specify the Selling Model Equipment and Selling Optional Component equipment-related actions for the selected stock item in an appointment created on the Appointments (FS300200) form. 

### Selling a Piece of Equipment and an Optional Component: General Information 

 With Acumatica ERP, you can sell a piece of equipment along with services and continue to provide services for the equipment aer the sale. 

#### Learning Objectives 

 In this lesson, you will learn how to sell a piece of equipment, an optional component, and installation services through an appointment. 

#### Applicable Scenarios 

 You sell a piece of equipment and an optional component in the following scenarios: 

- A customer has asked your company to sell a new piece of equipment. 

- A customer has requested optional components for equipment serviced by your company, along with     installation services. 

#### Workflow of Model Equipment Sale with Optional Component 

 In the diagram below, you can see the process of selling a piece of equipment and its optional component by using a service order. 


<!-- PAGE_BREAK -->
 Selling a Piece of Equipment and an Optional Component | 41 

**_Figure: The sale of model equipment and its optional component in a service order_** 


<!-- PAGE_BREAK -->
 Selling a Piece of Equipment and an Optional Component | 42 

 When a customer request is received, a service manager enters a service order by using the Service Orders (FS300100) form. In the service order, the service manager specifies the customer from which the request has been received, the branch and branch location to provide services, and the services that should be performed. 

 The service manager can instead start by creating an appointment with all these settings, and the service order will be created automatically. In Selling a Piece of Equipment and an Optional Component: Process Activity , the appointment will be created first. 

 On the Details tab of the Appointments (FS300200) form, the service manager does the following to add the model equipment record and the optional component to be sold: 

1. In the row with the equipment record ( _CPRESS30J_ ), the service manager selects _Selling Model Equipment_ in     the **Equipment Action** column. 

2. In the row with the optional component ( _30HOPPERJK_ ), the service manager selects _Selling Optional_     _Component_ in the **Equipment Action** column, specifies the related equipment in the **Model Equipment Ref.**     **Nbr.** column, and selects the identifier of the equipment component in the **Component ID** column. 

### Selling a Piece of Equipment and an Optional Component: Process Activity 

 The following activity will walk you through the process of selling a piece of equipment, an optional component, and the associated installation service. 

#### Story 

 Suppose that the customer has contacted the SweetLife Service and Equipment Sales Center to request the following: 

- A cold press juicer—that is, the _CPRESS30J - Cold Press Juicer H30J_ equipment (a stock item of the _Model_     _Equipment_ type) 

- An optional component for the juicer—the _30HOPPERJK - Hopper H30J metallic_ component (a stock item of     the _Component_ type) 

- Installation services Acting as a service manager, you will create an appointment. Further processing will then be performed by the assigned staff member and the accountant, who will prepare and process the billing documents for the customer. To keep this training simple, you will perform all instructions while you are signed in to the user account of the service manager (Maia Davis). 

#### Process Overview 

 On the Appointments (FS300200) form, you will create a new appointment, add the required items, specify the equipment-related actions for each item, and process the appointment. 

#### System Preparation 

 Before you begin performing the steps of this activity, do the following: 

1. On the Acumatica ERP website, sign in to a company with the _U100_ dataset preloaded. You should sign in as     a service manager by using the _davis_ username and the _123_ password. 

2. In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, set the business date     to _1/30/2025_. For simplicity, in this activity, you will create and process all documents in the system on this     business date. 


<!-- PAGE_BREAK -->
 Selling a Piece of Equipment and an Optional Component | 43 

3. To perform this activity, make sure that you have performed the following prerequisite activities: _Stock_     _Items to Be Tracked Post-Sale: To Create Components_ and _Stock Items to Be Tracked Post-Sale: To Create_     _Stock Items with Components_. 

#### Step: Selling a Piece of Model Equipment and an Optional Component 

 In this step, you will create an appointment (causing the system to create the corresponding service order) that includes the installation service INST , the CPRESS30J Cold Press Juicer H30J equipment, and the optional 30HOPPERJK Hopper H30J metallic component. You will go through the whole process until you generate an invoice for both the service and the sold equipment. 

 Perform the following instructions: 

1. On the _Appointments_ (FS300200) form, click **Add New Record**. 

2. In the Summary area, specify the following settings: 

- **Service Order Type** : _INST_ 

- **Customer** : _TOMYUM - Thai Food Restaurant_ 

- **Description** : Selling a juicer with optional component 

3. On the form toolbar, click **Save**. 

4. On the **Details** tab, add a row, and in the **Inventory ID** column of the row, select _INSTALL_.     Notice that you do not specify target equipment IDs because the corresponding records in the system have     not yet been created. 

5. On the **Details** tab, add a row, and specify the following settings in the row to add a piece of model     equipment (a juicer) to the appointment: 

- **Inventory ID** : _CPRESS30J_ 

- **Equipment Action** : _Selling Model Equipment_ 

- **Estimated Quantity** : 1.00 

- **Unit Price** : 800.0000 

6. On the form toolbar, click **Save**. 

7. Click **Add Row** again, and specify the following settings in the row to add another piece of equipment (an     additional component) to the appointment: 

- **Inventory ID** : _30HOPPERJK_ 

- **Equipment Action** : _Selling Optional Component_ 

- **Model Equipment Ref. Nbr.** : _0002_ 

- **Component ID** : _HOPPER O_ 

- **Estimated Quantity** : 1.00 

- **Unit Price** : 50.0000 

8. On the form toolbar, click **Save**.     Notice that for the optional component, you have specified the related model equipment number in     the **Model Equipment Ref. Nbr.** column and selected the identifier of the equipment component in the     **Component ID** column.     Now you can assign the appointment and proceed with the services. At this stage, the target equipment     corresponding to the model equipment has not yet been created. 

9. On the **Staff** tab, click **Add Row** , and specify _EP00000043 - Edward Smith_ as the **Staff Member**. 10.On the form toolbar, click **Save**. 11.On the form toolbar, click **Start**.     As you perform this instruction and the next two, you are acting as Edward Smith at the appointment. 


<!-- PAGE_BREAK -->
 Selling a Piece of Equipment and an Optional Component | 44 

12.On the **Settings** tab, in the **Actual Date and Time** section, enter the actual start and end times (for simplicity in this training, set them to match the scheduled start and end times). Select **Finished**. 

13.Click **Complete**. 

 As you perform the remaining instructions in this step, you are now acting as an accountant. 

14.On the form toolbar, click **Close**. 

15.On the form toolbar, click **Run Billing**. The _Invoices_ (SO303000) form opens with the details of the invoice. 

 Notice that the Related Svc. Doc. Nbr. column contains the link to the appointment document from which the sales invoice has originated. 

 You can also open the Invoices form by clicking the link of the invoice in the Reference Nbr. column of the Billing Documents tab on the Appointments form. 

16.On the form toolbar of the _Invoices_ form, click **Remove Hold** and then **Release**. 

 When the invoice was released, the target equipment record was created (as shown in the following screenshot). 

 Figure: Released invoice showing the created target equipment 

17.In the **Target Equipment ID** column, click the equipment reference number link to open the _Equipment_ (FS205000) form. 

18.On the **Components and Warranties** tab (see Item 1 in the following screenshot), verify that the system has added the additional component of the model equipment record that has been sold within the same order (Item 2). 


<!-- PAGE_BREAK -->
 Selling a Piece of Equipment and an Optional Component | 45 

**_Figure: The equipment record with the additional component_** 


<!-- PAGE_BREAK -->
 Selling an Optional Component of Target Equipment | 46 

## Selling an Optional Component of Target Equipment 

 In Acumatica ERP, you can process an appointment to provide the installation of optional components to existing equipment at a customer's site, along with installation services. To do this, you will specify the Selling Optional Component equipment-related action for the selected stock item in an appointment created on the Appointments (FS300200) form. 

### Selling an Optional Component of Target Equipment: General Information 

 With Acumatica ERP, you can install optional components for existing equipment at a customer site and provide associated installation services as requested. 

#### Learning Objectives 

 In this lesson, you will learn how to sell an optional component that will upgrade target equipment. 

#### Applicable Scenarios 

 You sell an optional component that can become target equipment in the following scenarios: 

- When a customer requests the installation of an optional component for existing equipment already in use     at their site. 

- When a customer requires both the component installation and associated installation services to be     provided by your company. In these situations, the service manager initiates the appointment, assigns necessary staff, and coordinates with the accountant to prepare and process billing documents for the customer. 

#### Workflow of a Sales of an Optional Component for Target Equipment 

 In the following diagram, you can see the process of selling an optional component for target equipment. 


<!-- PAGE_BREAK -->
 Selling an Optional Component of Target Equipment | 47 

**_Figure: The sale of an optional component of target equipment_** 

When a customer request is received, a service manager enters a service order by using the _Service Orders_ (FS300100) form; see 1 in the diagram above. In the service order, the service manager specifies the customer from which the request has been received, the branch and branch location to provide services, and the services that should be performed. 

The service manager can instead start by creating an appointment with all these settings; the service order will be created automatically. 

On the _Appointments_ (FS300200) form, the service manager adds the general setting. On the **Details** tab, the service manager adds the optional component to be sold. In the row of this component, the service manager selects _Selling Optional Component_ in the **Equipment Action** column, specifies the related target equipment in the **Target Equipment ID** column, and selects the identifier of the equipment component in the **Component ID** column. 


<!-- PAGE_BREAK -->
 Selling an Optional Component of Target Equipment | 48 

### Selling an Optional Component of Target Equipment: Process Activity 

 The following activity will guide you through the process of installing an optional component for existing equipment at a customer site and providing the related installation service. 

#### Story 

 Suppose that the customer has requested that an optional component ( 30HOPPERJK ) of target equipment ( CPRESS30J Cold Press Juicer H30J , which the company already has) be installed at the customer site, along with installation services from SweetLife Service and Equipment Sales Center. 

 Acting as a service manager, you will create an appointment. The assigned staff member will process it further, and the accountant will prepare billing documents for the customer and process them in the system. To simplify this training, you will perform all instructions while signed in to the user account of the service manager (Maia Davis). 

#### Process Overview 

 On the Appointments (FS300200) form, you will create a new appointment, add the service along with the required stock item of a component equipment class, specify the equipment-related action for this item, and process the appointment. 

#### System Preparation 

 Before you begin performing the steps of this activity, do the following: 

1. On the Acumatica ERP website, sign in to a company with the _U100_ dataset preloaded. You should sign in as     a service manager by using the _davis_ username and the _123_ password. 

2. In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, set the business date     to _1/30/2025_. For simplicity, in this activity, you will create and process all documents in the system on this     business date. 

3. To perform this activity, make sure that you have performed the following prerequisite activities: _Stock_     _Items to Be Tracked Post-Sale: To Create Components_ and _Stock Items to Be Tracked Post-Sale: To Create_     _Stock Items with Components_. 

#### Step: Selling an Optional Component of Target Equipment 

 In this step, you will create an appointment (causing the system to create the corresponding service order) that includes the installation service ( INSTALL ) and an additional component, 30HOPPERJK. You will then generate a sales invoice by using the Quick Process button. 

 Perform the following instructions: 

1. On the _Appointments_ (FS300200) form, click **Add New Record**. 

2. Specify the following settings in the Summary area: 

- **Service Order Type** : _EQUP_ 

- **Customer** : _TOMYUM - Thai Food Restaurant_ 

- **Description** : Selling optional component 

3. On the form toolbar, click **Save**. 

4. On the **Details** tab, add a row, and in the **Inventory ID** column of the row, select the _INSTALL_ service. 


<!-- PAGE_BREAK -->
 Selling an Optional Component of Target Equipment | 49 

5. Add another row, and specify the following settings in the row to add a component (a hopper) to the     appointment: 

- **Inventory ID** : _30HOPPERJK_ 

- **Equipment Action** : _Selling Optional Component_ 

- **Target Equipment ID** : _FSE00013_ ( _Cold Press Juicer H30J_ ) 

- **Component ID** : _HOPPER_O_ 

- **Estimated Quantity** : 1.00 

- **Unit Price** : 50.0000 

6. Save your changes. 

7. On the table toolbar of the **Staff** tab, click **Add Row** ; specify _EP00000003 - Jon Waite_ as the **Staff Member**. 

8. Save your changes. 

9. On the form toolbar, click **Start**. 

 As you perform this instruction (and the next three instructions), you are acting as Jon Waite at the appointment. 

10.On the **Settings** tab, in the **Actual Date and Time** section, enter the actual start and end times (for simplicity in this training, set them to match the scheduled start and end times). Select the **Finished** check box. 

11.On the form toolbar, click **Complete**. 

12.On the form toolbar, click **Close**. 

13.On the form toolbar, click **Quick Process**. 

 You are now acting as an accountant. 

14.In the **Process Appointment** dialog box, which opens, ensure that the following check boxes are selected: 

- **Prepare Invoice** 

- **Release Invoice** 

15.Click **OK**. Once the billing process has completed, the billing document reference numbers appear in the **Processing Results** dialog box. Close the dialog box, and notice that the appointment now has the _Billed_ status. 

16.On the **Billing Documents** tab, review the list of generated documents, and click the reference number of the sales invoice in the **Reference Nbr.** column. The system opens the _Invoices_ (SO303000) form. Review the details of the generated invoice. Notice that the invoice has been released and has the _Open_ status, which means that the target equipment record has been updated. 

17.In the **Target Equipment** column, click the reference number link of the equipment to open the _Equipment_ (FS205000) form. 

18.Click the **Components and Warranties** tab to verify that the system has added the optional component to the target equipment record (see the following screenshot). 


<!-- PAGE_BREAK -->
 Selling an Optional Component of Target Equipment | 50 

**_Figure: Equipment record with the additional component_** 


<!-- PAGE_BREAK -->
 Upgrading Default Component of Equipment to Be Sold | 51 

## Upgrading Default Component of Equipment to Be Sold 

 In Acumatica ERP, you can process the sale of a stock item of the Model Equipment class to upgrade a default component of existing equipment at a customer's site. To do this, you will specify the Selling Model Equipment equipment-related action for the selected stock item in an appointment created on the Appointments (FS300200) form. 

### Upgrading a Default Component of Equipment to Be Sold: General Information 

 With Acumatica ERP, you can handle customer requests for purchasing and installing equipment, upgrading default components (as described in this topic), and providing on-site installation services. 

#### Learning Objectives 

 In this lesson, you will learn how to upgrade a default component of a piece of equipment being sold. 

#### Applicable Scenarios 

 You upgrade a default component of equipment in the following cases: 

- A customer requests the sale and installation of a piece of equipment, including an upgrade of one of its     default components. 

- A customer requests an upgrade to a component of equipment they already own. 

#### Workflow of Model Equipment Sale and Default Component Upgrade 

 In the diagram below, you can see the process of selling a piece of equipment and upgrading one of its default components. 


<!-- PAGE_BREAK -->
 Upgrading Default Component of Equipment to Be Sold | 52 

**_Figure: The sale of model equipment and the upgrading of a default component_** 

When a customer request is received, a service manager enters a service order on the _Service Orders_ (FS300100) form. In the service order, the service manager specifies the customer from which the request has been received, the branch and branch location to provide services, and the services that should be performed. 

The service manager can instead start by creating an appointment with all these settings, and the service order will be created automatically. In _Upgrading a Default Component of Equipment to Be Sold: Process Activity_ , the appointment will be created first. 

On the _Appointments_ (FS300200) form, in addition to specifying the general settings, the service manager does the following on the **Details** tab to add the model equipment record and the optional component to be sold: 

1. In the row with the model equipment record, the service manager selects _Selling Model Equipment_ in the     **Equipment Action** column. 


<!-- PAGE_BREAK -->
 Upgrading Default Component of Equipment to Be Sold | 53 

2. In the row with the component, the service manager selects _Upgrading Component_ in the **Equipment**     **Action** column, specifies the related model equipment in the **Model Equipment Ref. Nbr.** column, and     selects the identifier of the equipment component in the **Component ID** column. 

### Upgrading a Default Component of Equipment to Be Sold: Process Activity 

 The following activity will walk you through the process of selling model equipment, upgrading a default component, and providing installation services at the customer site. 

#### Story 

 Suppose that the customer has requested the following from the SweetLife Service and Equipment Sales Center: 

- The _CPRESS30J - Cold Press Masticating Juicer H3000J_ model equipment. 

- A replacement of one of the default components of the juicer. The customer wants the _30HOPPERJK_ 

_- Hopper H30J metallic_ component instead of the _HOPPERH3 - Hopper for cold press juicers (plastic)_ component. 

- Installation services for the juicer and component. Acting as a service manager, you will create an appointment. You will then perform further processing, acting as the assigned staff member and then as the accountant who will prepare billing documents for the customer and will process them in the system. To keep this training simple, you will perform all instructions while signed in to the account of the service manager (Maia Davis). 

#### Process Overview 

 On the Appointments (FS300200) form, you will create a new appointment, add the service along with the model equipment and component stock items, specify the equipment-related actions for each item, and process the appointment. 

#### System Preparation 

 Before you begin performing the steps of this activity, do the following: 

1. On the Acumatica ERP website, sign in to a company with the _U100_ dataset preloaded. You should sign in as     a service manager by using the _davis_ username and the _123_ password. 

2. In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, set the business date     to _1/30/2025_. For simplicity, in this activity, you will create and process all documents in the system on this     business date. 

3. To perform this activity, make sure that you have performed the following prerequisite activities: _Stock_     _Items to Be Tracked Post-Sale: To Create Components_ and _Stock Items to Be Tracked Post-Sale: To Create_     _Stock Items with Components_. 

#### Step: Upgrading a Default Component of Equipment to Be Sold 

 In this step, you will create an appointment (causing the system to create the corresponding service order) that includes the following items: 

- The _INSTALL_ installation service 

- The _CPRESS30J_ inventory item 

- The _30HOPPERJK - Hopper H30J metallic hopper_ , which replaces the _HOPPERH3 - Hopper for cold press juicers_     _(plastic)_ default hopper 


<!-- PAGE_BREAK -->
 Upgrading Default Component of Equipment to Be Sold | 54 

You will go through the whole process until you release the corresponding invoice for both the service and the sold equipment. 

Perform the following instructions: 

1. On the _Appointments_ (FS300200) form, click **Add New Record**. 

2. Specify the following settings in the Summary area: 

- **Service Order Type** : _INST_ 

- **Customer ID** : _HMBAKERY - HM's Bakery & Cafe_ 

- **Description** : Selling a juicer with upgraded hopper 

3. On the form toolbar, click **Save**. 

4. On the **Details** tab, add a row and select the _INSTALL_ service in the **Inventory ID** column of the row. 

5. To add a piece of equipment to this appointment, add another row and specify the following settings in the     row: 

- **Inventory ID** : _CPRESS30J_ 

- **Equipment Action** : _Selling Model Equipment_ 

- **Estimated Quantity** : 1.00 

- **Unit Price** : 800.0000 

6. On the form toolbar, click **Save**. 

7. To add another piece of equipment (an optional component) to the appointment, click **Add Row** again and     specify the following settings in the row: 

- **Inventory ID** : _30HOPPERJK_ 

- **Equipment Action** : _Upgrading Component_     This action registers the component (which replaces the default component) of the piece of model     equipment. 

- **Model Equipment Ref. Nbr.** : _0002_     This is the piece of model equipment that is being upgraded during the sale of the model equipment. 

- **Component ID** : _HOPPER_     This is the identifier of the component being upgraded in the model equipment. 

- **Estimated Quantity** : 1.00 

- **Unit Price** : 50.0000 

8. On the form toolbar, click **Save**. 

9. On the **Staff** tab, click **Add Row** and specify _EP00000003 - Jon Waite_ as the **Staff Member**. 10.On the form toolbar, click **Save**. 11.On the form toolbar, click **Start**.     As you perform this instruction and the next two instructions, you are acting as Jon Waite at the     appointment. 12.On the **Settings** tab, in the **Actual Date and Time** section, enter the actual start and end times (for     simplicity in this training, set them to match the scheduled start and end times). Select the **Finished** check     box. 13.Click **Complete**. 14.Click **Close**.     As you perform this instruction and the remaining instructions of the activity, you are now acting as an     accountant. 15.On the form toolbar, click **Quick Process**.     In the **Process Appointment** dialog box, which opens, ensure that the following check boxes are selected: 


<!-- PAGE_BREAK -->
 Upgrading Default Component of Equipment to Be Sold | 55 

- **Run Billing** 

- **Release Invoice** 

16.Click **OK**. 

 Once the billing process is completed, the reference numbers of the billing documents appear in the Processing Results dialog box. Click OK. Notice that the appointment now has the Billed status. 

17.On the **Billing Documents** tab, click the reference number of the sales invoice in the **Reference Nbr.** column. The system opens the _Invoices_ (SO303000) form. Review the details of the generated invoice. Notice that the invoice has been released and has the _Open_ status, which means that the target equipment record has been created. 

18.In the **Target Equipment** column, click the reference number (which is also a link) of the equipment to open the _Equipment_ (FS205000) form. 

19.On the **Components and Warranties** tab, verify that the system has replaced the default hopper with the component ( _30HOPPERJK Hopper H30J metallic_ ) that you selected when you created the appointment (see the following screenshot). 

 Figure: The equipment record with the non-default component 


<!-- PAGE_BREAK -->
 Replacing Target Equipment | 56 

## Replacing Target Equipment 

 In Acumatica ERP, you can process the replacement of old equipment with new models and manage the associated services. To do this, you will specify the Replacing Target Equipment equipment-related action for the selected stock item in an appointment created on the Appointments (FS300200) form. 

### Replacing Target Equipment: General Information 

 With Acumatica ERP, you can efficiently manage customer requests for replacing old target equipment with new models and performing the associated services. 

#### Learning Objectives 

 In this lesson, you will learn how to replace target equipment. 

#### Applicable Scenarios 

 You process the replacement of target equipment in the following scenarios: 

- A customer requests a new piece of equipment to replace an older model that is already in use. 

- Replacement services are required to ensure seamless equipment transition at the customer’s location. In these situations, the service manager schedules an appointment, coordinates service actions, and collaborates with accounting to prepare and process billing documents for the customer. 

#### Workflow of Target Equipment Replacement 

 In the following diagram, you can see the complete process of replacing target equipment. 


<!-- PAGE_BREAK -->
 Replacing Target Equipment | 57 

**_Figure: Replacement of target equipment_** 

When a customer request is received, a service manager enters a service order by using the _Service Orders_ (FS300100) form. In the service order, the service manager specifies the customer from which the request has been received, the branch and branch location to provide services, and the services that should be performed. 

The service manager can instead start by creating an appointment with all these settings; the service order will be created automatically. In _Replacing Target Equipment: Process Activity_ , the appointment will be created first. 

On the _Appointments_ (FS300200) form, the service manager enters the general settings. On the **Details** tab, the service manager adds the equipment record that will replace the old target equipment record. To specify that the replacement is being performed, for the equipment record, the service manager selects _Replacing Target Equipment_ in the **Equipment Action** column and specifies the target equipment record to be replaced in the **Target Equipment ID** column. 


<!-- PAGE_BREAK -->
 Replacing Target Equipment | 58 

### Replacing Target Equipment: Process Activity 

 The following activity will walk you through the process of replacing old equipment with a new model and managing the associated service. 

#### Story 

 Suppose that the HM's Bakery & Cafe customer has requested a new piece of equipment ( J22C Multifruit Centrifugal Juicer ) to replace an old one, along with replacement services from SweetLife Service and Equipment Sales Center. 

 Acting as a service manager, you will create an appointment. You will then perform further processing, acting as the assigned staff member and then as the accountant who will prepare billing documents for the customer and will process them in the system. To keep this training simple, you will perform all instructions while signed in to the user account of the service manager (Maia Davis). 

#### Process Overview 

 On the Appointments (FS300200) form, you will create a new appointment, add the service along with the necessary stock item (which is defined as model equipment), specify the required equipment-related action for the item, and then process the appointment. 

#### System Preparation 

 Before you begin performing the steps of this activity, do the following: 

1. On the Acumatica ERP website, sign in to a company with the _U100_ dataset preloaded. You should sign in as     a service manager by using the _davis_ username and the _123_ password. 

2. In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, set the business date     to _1/30/2025_. For simplicity, in this activity, you will create and process all documents in the system on this     business date. 

3. To perform this activity, make sure that you have performed the following prerequisite activities: _Stock_     _Items to Be Tracked Post-Sale: To Create a Stock Item with No Components_ , _Stock Items to Be Tracked_     _Post-Sale: To Create Components_ , and _Stock Items to Be Tracked Post-Sale: To Create Stock Items with_     _Components_. 

#### Step: Replacing Target Equipment 

 In this step, you will create an appointment (which causes the system to create the corresponding service order) that includes the INSTALL service and the Multifruit Centrifugal Juicer J22C inventory item, which replaces the target equipment. You will go through the whole process until you release the corresponding invoice for both the service and the sold equipment. 

 Perform the following instructions: 

1. On the _Appointments_ (FS300200) form, click **Add New Record**. 

2. Specify the following settings in the Summary area: 

- **Service Order Type** : _INST_ 

- **Customer** : _HMBAKERY - HM's Bakery & Cafe_ 

- **Description** : Replacing a juicer 

3. On the form toolbar, click **Save**. 

4. On the **Details** tab, do the following: 


<!-- PAGE_BREAK -->
 Replacing Target Equipment | 59 

 a. Add a row and select INSTALL in the Inventory ID column. b. To add model equipment to this appointment, add another row and specify the following settings in the row: 

- **Inventory ID** : _JUICE_J22C_ 

- **Equipment Action** : _Replacing Target Equipment_ 

- **Target Equipment ID** : _FSE00012_ ( _Multifruit Centrifugal Juicer J22C_ ) 

- **Estimated Quantity** : 1.00 

- **Unit Price** : 700.0000 

5. On the form toolbar, click **Save**. 

 Now you can assign the appointment and proceed with the service. 

6. On the **Staff** tab, click **Add Row** and specify _EP00000003 - Jon Waite_ as the **Staff Member**. 

7. On the form toolbar, click **Save**. 

8. On the form toolbar, click **Start**. 

 As you perform this instruction and the next two instructions, you are acting as Jon Waite at the appointment. 

9. On the **Settings** tab, in the **Actual Date and Time** section, enter the actual start and end times (for     simplicity in this training, set them to match the scheduled start and end times). Select the **Finished** check     box. 

10.On the form toolbar, click **Complete**. 

11.On the form toolbar, click **Close**. 

 As you perform this instruction and the remaining instructions of the activity, you are now acting as an accountant. 

12.On the form toolbar, click **Quick Process**. 

 In the Process Appointment dialog box, which opens, ensure that the following check boxes are selected: 

- **Run Billing** 

- **Release Invoice** 

13.In the dialog box, click **OK**. 

 Once the billing process is completed, the reference number of the invoice appears in the Processing Results dialog box. Notice that the appointment now has the Billed status. 

14.In the **Processing Results** dialog box, click the reference number of the invoice. The _Invoices_ (SO303000) form opens. Notice that the invoice has been released and has the _Open_ status, which means that the target equipment record has been assigned the _Disposed_ status and the new equipment has been created. 

15.On the _Invoices_ form, in the **Suspended Target Equipment ID** column, click the reference number of the equipment (which is a link) to open the _Equipment_ (FS205000) form. 

16.Verify that the status of the equipment is _Disposed_ (see the following screenshot). 


<!-- PAGE_BREAK -->
 Replacing Target Equipment | 60 

 Figure: Disposed equipment 

17.Close the _Equipment_ form. 

18.On the _Invoices_ form, click the equipment reference number in the **Target Equipment ID** column. 

19.On the _Equipment_ that opens, review the details of the created equipment. In the **Installation Info** section of the **General** tab, you can find the reference numbers of the related service order and appointment. 

20.Go to the **Source** tab (see Item 1 in the following screenshot). In the **Equipment Replaced** box (Item 2), you can find the reference number of the equipment that was replaced with the current one. 


<!-- PAGE_BREAK -->
 Replacing Target Equipment | 61 

**_Figure: Settings related to the replaced equipment_** 


<!-- PAGE_BREAK -->
 Replacing a Component of Target Equipment | 62 

## Replacing a Component of Target Equipment 

 In Acumatica ERP, you can process the replacement of a component in existing equipment and coordinate the associated replacement services. To do this, you will specify the Replacing Component equipment-related action for the selected stock item in an appointment created on the Appointments (FS300200) form. 

### Replacing a Component of Target Equipment: General Information 

 With Acumatica ERP, you can manage customer requests for replacing components in existing equipment and performing the necessary replacement services on-site. 

#### Learning Objectives 

 In this lesson, you will learn how to replace a component of target equipment. 

#### Applicable Scenarios 

 You replace a component of target equipment in the following cases: 

- A customer requests the replacement of a specific component within existing target equipment they already     own. 

- Replacement services are required to install the new component in the equipment at the customer’s site. 

#### Workflow of Target Equipment Component Replacement 

 In the following diagram, you can see the entire process of a component of target equipment being replaced. 


<!-- PAGE_BREAK -->
 Replacing a Component of Target Equipment | 63 

**_Figure: Replacement of a component of target equipment_** 

When a customer request is received, a service manager enters a service order by using the _Service Orders_ (FS300100) form. In the service order, the service manager specifies the customer from which the request has been received, the branch and branch location to provide services, and the services that should be performed. 

The service manager can instead start by creating an appointment with all these settings; the service order will be created automatically. In _Replacing a Component of Target Equipment: Process Activity_ , the appointment will be created first. 

On the _Appointments_ (FS300200) form, the service manager enters the general settings. On the **Details** tab, the service manager adds the component that will replace the old component. To specify that the replacement is being performed, for the new component, the service manager selects _Replacing Component_ in the **Equipment Action** column, specifies the target equipment record in which the component has to be replaced in the **Target Equipment ID** column and specifies the component to be replaced in the **Component Ref. Nbr.** column. 

The remainder of the process of target equipment being replaced is identical to the process of model equipment being replaced. 


<!-- PAGE_BREAK -->
 Replacing a Component of Target Equipment | 64 

### Replacing a Component of Target Equipment: Process Activity 

 The following activity will walk you through the process of replacing a component in existing equipment and coordinating the associated replacement services. 

#### Story 

 Suppose that the GoodFood One Restaurant customer has requested a new component (a new drum) to replace an old one in the existing target equipment ( CPRESS30J Cold Press Juicer H30J ), along with replacement services from SweetLife Service and Equipment Sales Center. 

 Acting as a service manager, you will create an appointment. You will then perform further processing, acting as the assigned staff member and then as the accountant who will prepare billing documents for the customer and will process them in the system. To keep this training simple, you will perform all instructions while signed in to the user account of the service manager (Maia Davis). 

#### Process Overview 

 On the Appointments (FS300200) form, you will create a new appointment, add the service along with the stock item of the Component equipment class, specify the required equipment-related action for the item, and then process the appointment. 

#### System Preparation 

 Before you begin performing the steps of this activity, do the following: 

1. On the Acumatica ERP website, sign in to a company with the _U100_ dataset preloaded. You should sign in as     a service manager by using the _davis_ username and the _123_ password. 

2. In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, set the business date     to _1/30/2025_. For simplicity, in this activity, you will create and process all documents in the system on this     business date. 

3. To perform this activity, make sure that you have performed the following prerequisite activity: _Stock Items_     _to Be Tracked Post-Sale: To Create Components_ , _Stock Items to Be Tracked Post-Sale: To Create Stock Items_     _with Components_. 

#### Step: Replacing a Component of Target Equipment 

 In this step, you will create an appointment (causing the system to create the corresponding service order) that includes the REPAIR service and the DRUMH30J inventory item, which replaces the target equipment. You will go through the whole process until you release the corresponding invoice for both the service and the replaced component. 

 Perform the following instructions: 

1. On the _Appointments_ (FS300200) form, click **Add New Record**. 

2. Specify the following settings in the Summary areas: 

- **Service Order Type** : _INST_ 

- **Customer ID** : _GOODFOOD - GoodFood One Restaurant_ 

- **Description** : Replacing a part of a juicer 

3. On the form toolbar, click **Save**. 

4. On the **Details** tab, add a row with the following settings: 


<!-- PAGE_BREAK -->
 Replacing a Component of Target Equipment | 65 

- **Inventory ID** : _REPAIR_ 

- **Target Equipment ID** : _FSE00011_ (Cold Press Juicer H30J) 

5. On the form toolbar, click **Save**. 

6. To add a component to this appointment, add another row, and specify the following settings in the row: 

- **Inventory ID** : _DRUMH30J_ 

- **Equipment Action** : _Replacing Component_ 

- **Target Equipment ID** : _FSE00011_ (Cold Press Juicer H30J) 

- **Component ID** : _DRUM_ 

- **Component Ref. Nbr.** : _00005_ 

- **Estimated Quantity** : 1.00 

- **Unit Price** : 100.0000 

7. On the form toolbar, click **Save**. 

 Notice that the Warranty check box is selected in the DRUM row, meaning that it is under warranty. 

8. On the **Staff** tab, click **Add Row** , and specify _EP00000044 - Ricardo Martinez_ as the **Staff Member**. 

9. On the form toolbar, click **Save**. 

10.On the form toolbar, click **Start**. 

 (As you perform this instruction, you are acting as Ricardo Martinez at the appointment.) 

11.On the **Settings** tab, in the **Actual Date and Time** section, enter the actual start and end times (for simplicity in this training, set them to match the scheduled start and end times). Select the **Finished** check box. 

12.On the form toolbar, click **Complete**. 

13.On the form toolbar, click **Close**. 

 (As you perform this instruction, you are now acting as an accountant.) 

14.On the form toolbar, click **Quick Process**. 

 In the Process Appointment dialog box, which opens, ensure that the following check boxes are selected: 

- **Run Billing** 

- **Release Invoice** 

15.In the dialog box, click **OK**. 

 Once the billing process is completed, the reference number of the invoice appears in the Processing Results dialog box. Notice that the appointment now has the Billed status. 

16.In the **Processing Results** dialog box, click the reference number of the invoice. The _Invoices_ (SO303000) form opens. Notice the invoice has been released and has the _Open_ status, which means that the target equipment record has been updated. 

17.In the **Target Equipment** column on the **Details** tab, click the equipment reference number (which is a link) to open the _Equipment_ (FS205000) form. 

18.On the **Components and Warranties** tab, verify that the status of the _00005_ line is _Disposed_ (see the following screenshot). It has been replaced with line _00006_. 

 You can also replace a component of a piece of target equipment by clicking the Replace Component button on the table toolbar of the Components and Warranties tab on the Equipment form. In the dialog box that opens, you can manually select the installation and sales dates of the component being replaced. 


<!-- PAGE_BREAK -->
 Replacing a Component of Target Equipment | 66 

 Figure: Disposed component 

19.On the More menu (under **Inquiries** ), click **Target Equipment History**. On the _Appointment Details_ (FS400500) form, which has opened, verify that the information about the replaced drum is in the list, along with other details related to this equipment. 


<!-- PAGE_BREAK -->
 Creating Service Contracts | 67 

## Creating Service Contracts 

 Acumatica ERP's service contract billing is flexible to the timing that best fits your company's processes, including billing at the time the services are provided. The service contract billing depends on the options you specify when you create a service contract. 

 The topics of this chapter describe how to create and process service contracts with different billing options specified. 

### Service Contracts: General Information 

 Service Contracts: Billing Type Setup In Acumatica ERP, you can create and process contracts for the services requested by your company's customers. A service contract is a document that contains information about the customer, the services to be provided, and the schedule or schedules determining when your service staff will perform these services. You can use service contracts for creating appointment schedules for a piece of target equipment and generating periodic appointments. 

 In Acumatica ERP, you can create service contracts with different billing options, which you set up depending on the company's needs. 

#### Learning Objectives 

 In this chapter, you will learn how to create and process a service contract by doing the following: 

- Creating a service contract that is billed at the time of service 

- Creating a service contract that is billed at the end of the billing period and processing an appointment with     no additional items (those that are not covered by a service contract) 

- Creating and processing a service contract that is billed at the beginning of the billing period 

#### Applicable Scenarios 

 You create a service contract when a customer requires services to be performed periodically at the customer's place. 

#### Processing Workflow 

 The following steps and optional steps are involved in the creation and processing of a service contract: 

1. Creating the service contract: On the _Service Contracts_ (FS305700) form, a service manager enters the     service contract. 

2. Creating at least one schedule: By using the _Service Contract Schedules_ (FS305100) form, the service     manager creates a schedule (or multiple schedules) for the delivery of the services covered by the contract. 

3. Activating the service contract: The service manager activates the service contract so that service orders or     appointments can be generated for the contract schedules. 

4. Generating the service orders or appointments: The service manager generates service orders or     appointments, which can then be processed. 

5. Generating and processing billing documents: An accountant approves the service orders or appointments     of the service contract for the generation of billing documents. The accountant then generates billing     documents for the service documents and processes them in the system. 


<!-- PAGE_BREAK -->
 Creating Service Contracts | 68 

6. Suspending the contract (optional): If it is necessary to pause the service delivery and billing for the contract     temporarily, the service manager can suspend the contract. 

7. Canceling the contract (optional): If the service manager has activated the contract but the services for     the contract will no longer be provided for some reason, the contract can be canceled. This step can be     performed before or aer your company has started to provide services according to the contract. 


<!-- PAGE_BREAK -->
 Creating Service Contracts | 69 

**_Figure: Processing a service contract billed at the time of service_** 


<!-- PAGE_BREAK -->
 Creating Service Contracts | 70 

#### Service Contract Billing Types 

 When you create a service contract, you can select how its billing is performed. On the Service Contracts (FS305700) form, four options are available in the Billing Type box: 

- _At Time of Service_ : The billing is performed aer each appointment based on what was done during the     appointment (that is, the service contract is billed at the time when the services are performed). 

- _End-Period Plus_ : The billing is performed based on what is covered by the contract at the end of the billing     period, plus any overage items. 

- _Beginning-Period Fixed_ : The billing is performed at the beginning of the billing period at the fixed price     specified in the contract. Any usage and overage items used in appointments are covered by the fixed     contract price. 

- _Beginning-Period Plus_ : The billing is performed at the beginning of the billing period at the fixed price     specified in the contract. The overage items used in appointments are billed separately at the time of     service. 

### Service Contracts: Billing Type Setup 

 In Acumatica ERP, you can create service contracts with different billing types. When you create a service contract, you specify the billing type that corresponds to your company needs. In this topic, you will learn in more details about available billing types. 

 In the following sections of this topic, these capabilities are described in detail for service contracts created on the Service Contracts form. The capabilities work similarly for a route service contract created on the Route Service Contracts form. 

#### Service Contracts Billed at the Time of Service 

 You can create service contracts to be billed at the time of service, and perform the contract billing based on what was done in appointments when each particular appointment took place, or based on what was estimated in the service order. For this type of a service contract, on the Summary tab of the Service Contracts (FS305700) form, you select At Time of Service in the Billing Type box. 

 When creating a service contract, you define either appointments or service orders will be generated for the service contract. In the Schedule Generation Type box of the Summary tab on the Service Contracts form, you specify one of the following options: 

- _Appointments_. You select this option if you know the date and time when the visit to a customer should     occur. Aer the system generates an appointment, the date and time can be changed. 

- _Service Orders_. You select this option if you do not know the exact date and time when the visit to a     customer should happen but you know the time frame. Aer the service order is generated, you define the     date and time when the visit will occur according to the employees availability, and the confirmation from     the customer. Then you define which prices will be used for the items specified in the service contract. In the **Take Prices From** box on the **Summary** tab of the _Service Contracts_ form, you specify one of the following options: 

- _Contract_. When you select this option, the system copies the rows from the **Details** tab of the _Service_     _Contract Schedules_ form to the **Prices** tab of the _Service Contracts_ form. On this tab, you can manually     specify the price for each item in the contract, and save your changes to the contract. 

- _Regular Price_. When you select this option, the system uses the prices according to the rules of automatic     price selection, that is the prices specified form a service or inventory item in the **Default Price** box of the     _Non-Stock Items_ (IN202000) or _Stock Items_ (IN202500) form, or in the price list on the _Sales Prices_ (AR202000)     form at the date when an appointment or a service order is created. 


<!-- PAGE_BREAK -->
 Creating Service Contracts | 71 

 The prices agreed by the service contract will only be applied to the line items added to the Details tab on the Service Contract Schedules form. If an additional item is added manually to the service order or appointment when it has been already generated, the system will use the price selected according to the standard rules of automatic price selection. 

 On the Schedules tab, you create a schedule for generating appointments or service orders. On the table toolbar, you click Add Schedule , the system opens the Service Contract Schedules (FS305100) form. On the Details tab of this form, you specify the services or inventory items (or both) to be included in the appointments or services, and on the Recurrence tab, you set up schedule settings. Then, you save the schedule and close the form. The system returns you on the Service Contracts form, and adds a line with the created schedule on the Schedules tab. 

 Then you click Activate on the More menu to assign the service contract the Active status. 

#### Service Contracts Billed at the End of the Period 

 You can create and process service contracts that are billed at the end of the billing period. This billing type assumes that at the end of the billing period, for the service contract, you generate an invoice, which includes a fixed price for a service or services (for example, for a fixed number of hours or visits) specified in the contract plus an amount for an overage number of hours, visits, or materials that has been added to the service document (an appointment or service order) during the billing period but has not been covered by the service contract. 

 For this type of a service contract, on the Summary tab of the Service Contracts (FS305700) form, you select EndPeriod Plus in the Billing Type box, and in the Billing Type Settings section, specify the billing period ( Week , Month , Quarter , Half a Year , or Year ) in the Period box. 

 On the Services per Period tab of the Service Contracts form, you add a line for each service to be provided during each billing period. In each line, you select a service or non-stock item. For each item, you specify the quantity in the Value column, and the price that is paid for the specified quantity of the items in the Recurring Item Price column. You also specify the price to be used when the specified quantity has been exceeded during the period in the Overage Item Price column. 

 On the Schedules tab, you create a schedule for generating appointments or service orders. On the table toolbar, you click Add Schedule , the system opens the Service Contract Schedules (FS305100) form. On the Details tab of this form, you specify the services or inventory items (or both) to be included in the appointments or service orders, and on the Recurrence tab, you set up schedule settings. Then, you save the schedule and close the form. The system returns you on the Service Contracts form, and adds a line with the created schedule on the Schedules tab. 

 Besides appointments and service orders generated from a schedule or schedules, a service order or an appointment can also be created on the fly, and assigned to the service contract. 

 At the end of each billing period, you generate an invoice for a service contract. The invoice includes a fixed number of hours or visits at a price predefined in the service contract. If the number of hours or visits defined in the service contract has been exceeded during the billing period, the price that has been specified for overage items is applied. The items that are not covered by the service contract but have been used in appointments or service orders during the billing period are also included in the invoice generated at the end of the period. 

#### Service Contracts with Beginning-Period Fixed Billing 

 You can create and manage service contracts with fixed billing at the beginning of the billing period. This billing type assumes that at the beginning of the billing period, for a service contract, you generate an invoice that includes a fixed price specified in the contract. This fixed price covers all services and inventory items listed in the contract, and provided to the customer during the billing period. If any additional services or materials are used in appointments (that is, are added to service documents) during the billing period, these items are not billed— once you have run billing for an appointment or a service order, the generated invoice will have a zero total amount specified. For this type of a service contract, on the Summary tab of the Service Contracts (FS305700) form, you select Beginning-Period Fixed in the Billing Type box, and specify the billing period ( Week , Month , Quarter , Half a Year , or Year ) in the Period box. On the Services per Period tab of the form, for each service to be provided during 


<!-- PAGE_BREAK -->
 Creating Service Contracts | 72 

 each period, you add an item (for example, a non-stock item that represents a contract deposit) and specify the flat-rate price that has to be paid at the beginning of each billing period. 

 On the Schedules tab, you create a schedule for generating appointments or service orders. On the table toolbar, you click Add Schedule , the system opens the Service Contract Schedules (FS305100) form. On the Details tab of this form, you specify the services or inventory items (or both) to be included in the appointments or service orders, and on the Recurrence tab, you set up schedule settings. Then, you save the schedule and close the form. The system returns you on the Service Contracts form, and adds a line with the created schedule on the Schedules tab. 

 Note that for a service contract with the Beginning-Period Fixed billing type, you can either generate appointments or service orders based on a schedule, or create a service document (appointment or service order) on the fly, and associate it with the service contract by specifying the service contract reference number in the Service Contract box on the Summary area of the Appointments (FS300200) or Service Orders (FS300100) form. 

 You can set up the deferral of the invoice amount by specifying the code in the Deferral Code column so that aer the service contract invoice has been released, the system creates a deferral schedule. 

 At the beginning of each billing period, on the Run Service Contract Billing (FS501300) form, you generate an invoice that contains the fixed contract price. 

 When you run billing for a service order or an appointment during the billing period, the system generates an invoice with the total amount set to zero because the items specified in the service order or appointment linked to the service contract are covered by the contract price. 

 On occasion, a service may be needed that is not covered by the fixed contract price. If this happens, you can edit the appointment or service order by clearing the Free Item check box in the needed detail line on the Details tab of the Appointments (FS300200) or Service Orders (FS300100) form. This causes the system to update the total amount of the appointment (and thus update the related billing document). 

#### Service Contracts with Beginning-Period Plus Billing 

 You can create and manage service contracts with fixed billing at the beginning of the billing period for the items specified in the service contract only. This billing type assumes that at the beginning of the billing period, for a service contract, you generate an invoice, which includes a fixed price specified in the contract. This fixed price covers all services and inventory items listed in the contract, and provided to the customer during the billing period. If any additional items (those that are not included in the service contract) have been used in appointments (that is, have been added to the service document) during the billing period, these items are billed separately. 

 For this type of a service contract, on the Service Contracts (FS305700) form, you specify the Beginning-Period Plus option in the Billing Type box. On the Services per Period tab, you add an item (for example, a non-stock item that represents a contract deposit), and specify its flat-rate price that have to be paid at the beginning of each billing period. On the Billing Type Settings section of the Summary tab, you specify the length of the billing period. 

 On the Schedules tab, you create a schedule for generating appointments or service orders. On the table toolbar, you click Add Schedule , the system opens the Service Contract Schedules (FS305100) form. On the Details tab of this form, you specify the services or inventory items (or both) to be included in the appointments or service orders, and on the Recurrence tab, you set up schedule settings. Then, you save the schedule and close the form. The system returns you on the Service Contracts form, and adds a line with the created schedule on the Schedules tab. 

 For a service contract with the Beginning-Period Plus billing type, you can either generate appointments or service orders based on a schedule, or create a service document (appointment or service order) on the fly, and associate it with the service contract by specifying the service contract reference number in the Service Contract box on the Summary area of the Appointments (FS300200) or Service Orders (FS300100) form. Note that if you need certain predefined services to occur periodically, on the Service Contract Schedules , create a schedule or schedules, and on the Details tab, add these services, and in the detail lines, specify None in the Billing Rule column. 

 You can set up the deferral of the invoice amount by specifying the code in the Deferral Code column so that aer the service contract invoice has been released, the system creates a deferral schedule. 


<!-- PAGE_BREAK -->
 Creating Service Contracts | 73 

 At the beginning of the billing period, on the Run Service Contract Billing (FS501300) form, you generate an invoice that contains the fixed contract price. During the billing period, for an appointment or a service order (depending on the option specified in the Schedule Generation Type box on the Service Contracts box), you generate additional billing document. 

### Service Contracts: To Create and Process a Service Contract Billed at Time of 

### Service 

 In this activity, you will create and process a service contract that is billed aer each appointment has taken place based on what was done during the appointment. 

 This activity is based on the U100 dataset. If you are using another dataset, or if any system settings have been changed in U100 , these changes can affect the workflow of the activity and the results of the processing. To avoid any issues, restore the U100 dataset to its initial state. 

#### Story 

 Suppose that the GoodFood One Restaurant customer requires appointments on Mondays and Fridays of each week for one year, starting next week, and is willing to sign a contract. The service to be performed is the cleaning of the customer's equipment. The service manager of the SweetLife Service and Equipment Sales Center (Maia Davis) needs to create a service contract in Acumatica ERP, and create a schedule of appointments, which will allow employees to generate appointments for each upcoming week. 

 Acting as the service manager, you need to create a contract, create a schedule for the appointment generation, activate the contract, and generate the appointments for the first two weeks. 

#### Configuration Overview 

 In the U100 dataset, the following configuration tasks have been performed to prepare the system for this activity to be performed: 

- On the _Enable/Disable Features_ (CS100000) form, the _Equipment Management_ feature (under _Service_     _Management_ ) has been enabled. 

- On the _Branch Locations_ (FS202500) form, the _WEST BRIGHTON_ branch location has been configured. 

- On the _Service Order Types_ (FS202300) form, the _MRO_ service order type has been configured to generate     sales orders to bill customers for provided services. That is, the **Sales Orders** option has been selected     under **Generated Billing Documents** in the **Billing Settings** section. Also in this section, the _IN_ sales order     type has been selected as the **Order Type for Invoice** so that the processing of sales orders does not require     shipments. 

- On the _Billing Cycles_ (FS206000) form, the following settings have been specified for the _AP AP_ billing cycle: 

- **Run Billing For** : **Appointments** 

- **Group Billing Documents By** : **Appointments** Based on these billing cycle settings, a separate billing document is generated for each appointment; this document presents the details of each service of the appointment. 

- On the _Customers_ (AR303000) form, the _GOODFOOD (GoodFood One Restaurant)_ customer has been defined.     The _AP AP_ billing cycle has been specified for the customer on the **Billing** tab. 

- On the _Non-Stock Items_ (IN202000) form, the _CLEANING_ non-stock item has been created. For this item, the     _Service_ is selected in the **Type** box on the **General** tab, and _Time_ is selected in the **Billing Rule** box on the     **Price/Cost** tab. 

- On the _Equipment_ (FS205000) form, the _FSE00007 (Commercial citrus juicer with a production rate of 1.5 litres_     _per minute)_ target equipment has been defined. 


<!-- PAGE_BREAK -->
 Creating Service Contracts | 74 

- On the _Employees_ (EP203000) form, _EP00000040 (Maia Davis)_ has been created, and the **Staff Member in**     **Service Management** check box has been selected on the **General Info** tab. 

- On the _User Profile_ (SM203010) form, the _SWEETEQUIP_ default branch and _WEST BRIGHTON_ default branch     location have been specified for _Maia Davis_. 

#### Process Overview 

 In this activity, you will create a service contract on the Service Contracts (FS305700) form, create an appointment schedule on the Service Contract Schedules (FS305100) form, and then activate the contract on the Service Contracts form. You will then generate appointments for the contract on the Generate Maintenance from Contract Schedules (FS500300) form. 

#### Step 1: Creating the Service Contract 

 To create the service contract billed at the time of service for the GoodFood One Restaurant, do the following: 

1. On the _Service Contracts_ (FS305700) form, click **Add New Record**. 

2. In the Summary area, specify the following settings: 

- **Customer** : _GOODFOOD - GoodFood One Restaurant_ 

- **Description** : Cleaning contract 

3. On the **Summary** tab ( **Contract Settings** section), specify the following settings for the contract: 

- **Start Date** : 1/30/2025 

- **Expiration Type** : _Expiring_ 

- **Duration** : 1 _Year_ 

- **Schedule Generation Type** : _Appointments_ 

4. In the **Billing Type** box of the **Billing Settings** section, make sure that _At Time of Service_ is selected. This     setting means that the service contract will be billed aer an appointment generated for it has taken place,     based on what was done during the appointment. 

5. On the form toolbar, click **Save**. 

#### Step 2: Creating an Appointment Schedule and Activating the Contract 

 Add a schedule to the service contract and activate the contract as follows: 

1. While you are still viewing the service contract on the _Service Contracts_ (FS305700) form, on the **Schedules**     tab, click **Add Schedule**.     The _Service Contract Schedules_ (FS305100) form opens in a pop-up window. 

2. In the Summary area, in the **Service Order Type** box, make sure that _MRO_ is selected. 

3. In the **Scheduled Start Time** box, select _10:00 AM_. 

4. On the **Details** tab, add a row and specify the following settings in the row: 

- **Inventory ID** : _CLEANING_ 

- **Target Equipment ID** : _FSE00007_ 

5. On the **Recurrence** tab, in the **Frequency** box, select **Weekly** and do the following in the **Weekly Settings**     section: 

- Leave **Every** _1_ **Week(s)**. 

- Select the **Monday** and **Friday** check boxes. Clear **Sunday**. 

- Leave the check boxes cleared for the remaining days of the week. 

6. Save your changes and close the pop-up window. 


<!-- PAGE_BREAK -->
 Creating Service Contracts | 75 

 The system has created the schedule and added it to the Schedules tab of the Service Contracts form. 

7. On the _Service Contracts_ form (to which you returned when you closed the window with the _Service Contract_     _Schedules_ form), on the More menu, click **Activate**.     The system changes the status of the contract from _Dra_ to _Active_. 

#### Step 3: Generating Appointments from the Contract 

 To generate appointments from the service contract, do the following: 

1. Open the _Generate Maintenance from Contract Schedules_ (FS500300) form. 

2. In the Summary area, specify the following settings: 

- **Customer** : _GOODFOOD - GoodFood One Restaurant_ 

- **Generate Up To** : _2/13/2025_ 

3. In the table, select the check box in the row with the schedule that you have created in the previous step. 

4. On the form toolbar, click **Process**.     The system opens the **Processing** dialog box, in which you can see the status of the process. 

5. Aer the processing has successfully completed, in the **Processing** dialog box, click **Close**. 

 The appointments have been generated for the service contract until 2/13/2025. 

#### Step 4: Reviewing the Appointments Generated for the Service Contract 

 Review the appointments that have been generated for the service contract as follows: 

1. On the _Service Contracts_ (FS305700) form, open the service contract that you created in the previous step. 

2. On the More menu (under **Inquiries** ), click **Appointment History**. 

3. On the _Appointment Summary_ (FS400100) form, which opens, clear the **Staff Member** box in the Selection     area. 

4. In the **To Scheduled Date** box, select _2/13/2025_.     The list of appointments generated for the selected service contract is displayed in the table (see the     following screenshot). 

 Figure: The appointments generated for the service contract 

5. Click an appointment reference number in the **Appointment Nbr.** column. The system opens the     _Appointments_ (FS300200) form. On the **Details** tab, confirm that the system has added the line from the     **Details** tab of the _Service Contract Schedules_ (FS305100) form. On the **Other** tab, notice that the reference     numbers of the source service contract and source schedule are specified. 


<!-- PAGE_BREAK -->
 Creating Service Contracts | 76 

### Service Contracts: To Create and Process an End-Period Billing Service Contract 

### (Appointment with No Overage Items) 

 In this activity, you will create a service contract that is billed at the end of each billing period for the following: 

- The services and inventory items specified in the contract 

- An overage number of services (or inventory items) that has been added to the service document during the     billing period but was not covered by the service contract You will also create a schedule for this service contract and generate appointments from the schedule. 

 This activity is based on the U100 dataset. If you are using another dataset, or if any system settings have been changed in U100 , these changes can affect the workflow of the activity and the results of the processing. To avoid any issues, restore the U100 dataset to its initial state. 

#### Story 

 Suppose that the HM's Bakery and Cafe customer has agreed to enter into a contract with the SweetLife Service and Equipment Sales Center for one hour of cleaning a juicer every week. The contract states that one hour of service is paid every week at a price of $70; for overage cleaning services (which are occasionally required), a price of $85 per hour should be paid. The customer will pay at the end of each week based on the prices that are defined in the contract. 

 The appointment schedule needs to be specified for the contract, and an appointment for the next week should be generated. You will perform the needed actions in the system, acting as the service manager, Maia Davis. 

#### Configuration Overview 

 In the U100 dataset, the following configuration tasks have been performed to prepare the system for this activity to be performed: 

- On the _Enable/Disable Features_ (CS100000) form, the _Service Management_ and _Equipment Management_     features have been enabled. 

- On the _Branch Locations_ (FS202500) form, the _WEST BRIGHTON_ branch location has been configured. 

- On the _Service Order Types_ (FS202300) form, the _MRO_ service order type has been configured to generate     sales orders to bill customers for provided services. That is, the _Sales Orders_ option has been selected in the     **Generated Billing Documents** box in the **Billing Settings** section. Also in this section, the _IN_ sales order     type has been selected as the **Order Type for Invoice** so that the processing of sales orders does not require     shipments. 

- On the _Billing Cycles_ (FS206000) form, the following settings have been specified for the _AP AP_ billing cycle: 

- **Run Billing For** : **Appointments** 

- **Group Billing Documents By** : **Appointments** Based on these billing cycle settings, a separate billing document is generated for each appointment; this document presents the details of each service of the appointment. 

- On the _Customers_ (AR303000) form, the _HMBAKERY (HM's Bakery and Cafe)_ customer has been defined. The     _AP AP_ billing cycle has been specified for the customer on the **Billing** tab. 

- On the _Employees_ (EP203000) form, _EP00000040 (Maia Davis)_ has been created, and the **Staff Member in**     **Service Management** check box has been selected on the **General Info** tab. 

- On the _User Profile_ (SM203010) form, the _SWEETEQUIP_ default branch and _WEST BRIGHTON_ default branch     location have been specified for _Maia Davis_. 


<!-- PAGE_BREAK -->
 Creating Service Contracts | 77 

- On the _Non-Stock Items_ (IN202000) form, the _CLEANING_ non-stock item has been created. For this item, the     _Service_ is selected in the **Type** box on the **General** tab, and _Time_ is selected in the **Billing Rule** box on the     **Price/Cost** tab. 

- On the _Equipment_ (FS205000) form, the _FSE00006 (Commercial citrus juicer with a production rate of 1.5 liters_     _per minute)_ target equipment has been defined. 

#### Process Overview 

 You will create a service contract with the End-Period Plus billing type on the Service Contracts (FS305700) form. In this service contract, you will specify the services to be provided during each billing period, along with the prices for the items covered by the contract and for any overage items. Next, on the Service Contract Schedules (FS305100) form, you will create a contract schedule that includes the services to be provided in appointments. Finally, you will generate an appointment based on the schedule by using the Generate Maintenance from Contract Schedules (FS500300) form. 

#### System Preparation 

 To prepare the system for this activity to be performed, do the following: 

1. Launch the Acumatica ERP website, and sign in to a company with the _U100_ dataset preloaded. You should     sign in as a service manager by using the _davis_ username, and the _123_ password. 

2. In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, click the Business     Date menu button, and select the 1/30/2025 date. For simplicity, in this activity, you will create and process     all documents in the system on this business date. 

#### Step 1: Creating a Service Contract with End-Period Billing 

 To create the service contract with end-period billing for HM's Bakery and Cafe, do the following: 

1. On the _Service Contracts_ (FS305700) form, click **Add New Record**. 

2. In the Summary area, specify the following settings: 

- **Customer** : _HMBAKERY - HM's Bakery and Cafe_ 

- **Description** : Cleaning contract 

3. On the **Summary** tab ( **Contract Settings** section), specify the following settings for the contract: 

- **Start Date** : 1/30/2025 

- **Expiration Type** : _Expiring_ 

- **Duration** : 1 _Year_ 

- **Schedule Generation Type** : _Appointments_ 

4. In the **Billing Type** box of the **Billing Settings** section, select _End-Period Plus_. 

5. In the **Period** box of the **Billing Type Settings** section, select _Week_. 

6. On the form toolbar, click **Save**. 

7. On the **Services per Period** tab, add a row and specify the following settings in the added row: 

- **Inventory ID** : _CLEANING_ 

- **Target Equipment ID** : _FSE00006_ 

- **Value** : 1h 00m 

- **Recurring Item Price** : 70 

- **Overage Item Price** : 85 

8. On the form toolbar, click **Save**. 


<!-- PAGE_BREAK -->
 Creating Service Contracts | 78 

9. On the More menu (under **Processing** ), click **Activate**.     The first billing period (1/30/2025 - 02/05/2025) has been activated during contract activation, as the     following screenshot shows. 

 Figure: The service contract 

#### Step 2: Creating a Contract Schedule and Generating Appointments from the Schedule 

 Now you will add a schedule for the service contract and generate the first two appointments of that schedule. Do the following: 

1. While you are still viewing the service contract on the _Service Contracts_ (FS305700) form, on the **Schedules**     tab, click **Add Schedule**.     The _Service Contract Schedules_ (FS305100) form opens. 

2. In the Summary area, do the following: 

- In the **Service Order Type** box, ensure that _MRO_ is selected. 

- In the **Scheduled Start Time** box, select _11:00 AM_. 

3. On the **Details** tab, add a row and specify the following settings in the row: 

- **Line Type** : _Service_ 

- **Inventory ID** : _CLEANING_ 

- **Target Equipment ID** : _FSE00006_ 

4. On the **Recurrence** tab, in the **Frequency** box, select **Weekly** and do the following in the **Weekly Settings**     section: 

- Specify **Every** _1_ **Weeks**. 

- Select the **Tuesday** check box. Clear **Sunday**. 

- Leave the check boxes cleared for the remaining days of the week. 

5. On the form toolbar, click **Save**. 

6. On the form toolbar, click **Generate from Service Contracts**.     The _Generate Maintenance from Contract Schedules_ (FS500300) form opens. 

7. In the **Generate Up To** box of the Summary area, select _2/12/2025_. 

8. In the table, select the unlabeled check box in the row with the schedule you have created. 

9. On the form toolbar, click **Process**.     The system opens the **Processing** dialog box, in which you can see the status of the processing. 10.Aer the processing has successfully completed, in the **Processing** dialog box, click **Close**. 11.Close the _Generate Maintenance from Contract Schedules_ (FS500300) form. 


<!-- PAGE_BREAK -->
 Creating Service Contracts | 79 

 12.Close the Service Contract Schedules (FS305100) form. 13.On the Services Per Period tab of the Service Contracts (FS305700) form, notice that the Scheduled Period Value is now 1 h 00 m (as the following screenshot shows). This means that 1 hour of services has been scheduled for the selected billing period. 

 Figure: One hour of service scheduled for the billing period 

#### Step 3: Reviewing the Generated Appointments 

 Review the appointments generated from the schedule on the previous step by doing the following: 

1. While you are still viewing the service contract on the _Service Contracts_ (FS305700) form, on the More menu,     click **Appointment History**. The _Appointment Summary_ (FS400100) form opens. 

2. Clear the **Staff Member** box in the Selection area. 

3. In the **From Scheduled Date** box, ensure that 1/30/2025 is selected. 

4. In the **To Scheduled Date** box, select _2/12/2025_.     The form displays the appointments generated from the service contract. Notice that the appointment     generated for the active billing period has the _Not Started_ status, and the appointment generated for the     future billing period has the _Awaiting_ status (see the following screenshot). 

 Figure: The appointments generated from the contract schedule 

#### Step 4: Processing an Appointment 

 To process an appointment, do the following: 

1. On the _Appointment Summary_ (FS400100) form, click the reference number of the appointment with the _Not_     _Started_ status. The _Appointments_ (FS300200) form opens. 

2. On the form toolbar, click **Start**.     (As you perform this instruction and the next two instructions, you are acting as a staff member at the     appointment.) 


<!-- PAGE_BREAK -->
 Creating Service Contracts | 80 

3. On the **Settings** tab, in the **Actual Date and Time** section, enter the actual start and end times (for     simplicity in this training, set them to match the scheduled start and end times). Select **Finished**. 

4. On the form toolbar, click **Complete**. 

5. On the form toolbar, click **Close**.     (As you perform this instruction and the remaining instructions in this activity, you are now acting as an     accountant.) 

6. Open the _Run Service Contract Billing_ (FS501300) form. 

7. In the **Up to Date** box, specify _2/12/2025_. 

8. In the list, select a service contract related to an appointment that you have completed, and click **Process**     on the form toolbar. 

9. Once the billing process is completed, in the **Processing** dialog box, click the reference number in the **Batch**     **Nbr.** column. The _Service Contract Billing Batches_ (FS306100) form opens in a pop-up window. 10.In the **Document Nbr.** column, click the reference number link. The _Invoices and Memos_ (AR301000) form     opens, and you can review the generated invoice. Notice that the line in the invoice is for the service covered     by the contract. It includes a fixed number of hours at a predefined price, and the number of hours defined     in the service contract has not been exceeded, so the invoice amount is equal to the contract's predefined     price. 

### Service Contracts with End-Period Billing: To Bill a Period with No Appointments 

 In this activity, you will learn how to generate an invoice for the billing period of a service contract with the endperiod billing if no appointments took place in this period. 

#### Story 

 Suppose that the second billing period (February 6, 2025 through February 12, 2025) of the contract with the HM's Bakery and Cafe customer has passed. No appointments have been scheduled because it was canceled by the customer. The accountant of Service Equipment and Sales Center (Yona Jones) is generating an invoice for the second billing period. Acting as Yona Jones, you will perform the needed actions in the system. 

#### Configuration Overview 

 In the U100 dataset, the following configuration tasks have been performed to prepare the system for this activity to be performed: 

- On the _Enable/Disable Features_ (CS100000) form, the _Service Management_ and _Equipment Management_     features have been enabled. 

- On the _Branch Locations_ (FS202500) form, the _WEST BRIGHTON_ branch location has been configured. 

- On the _Billing Cycles_ (FS206000) form, the following settings have been specified for the _AP AP_ billing cycle: 

- **Run Billing For** : **Appointments** 

- **Group Billing Documents By** : **Appointments** Based on these billing cycle settings, a separate billing document is generated for each appointment; this document presents the details of each service of the appointment. 

- On the _Customers_ (AR303000) form, the _HMBAKERY (HM's Bakery and Cafe)_ customer has been configured. 

- On the _Employees_ (EP203000) form, _EP00000040 (Maia Davis)_ has been configured, and the **Staff Member in**     **Service Management** check box has been selected on the **General Info** tab. 

- On the _User Profile_ (SM203010) form, the _SWEETEQUIP_ default branch, and _WEST BRIGHTON_ default branch     location has been specified for _Maia Davis_. 


<!-- PAGE_BREAK -->
 Creating Service Contracts | 81 

- On the _Employees_ (EP203000) form, the _EP00000012 - Yona Jones_ employee has been configured. 

- A service contract has been created according to _Service Contracts: To Create and Process an End-Period_     _Billing Service Contract (Appointment with No Overage Items)_. For the service contract, the schedule has been     created, and two appointments have been generated (for the next two weeks) according to the schedule.     Then the appointment for _2/7/2025_ has been canceled. 

#### Process Overview 

 In this activity, you will specify the start and end date of the billing period and generate an invoice for the service contract by using the Run Service Contract Billing (FS501300) form. 

#### System Preparation 

 Do the following: 

1. Launch the Acumatica ERP website, and sign in to a company with the _U100_ dataset preloaded. You should     sign in as an accountant by using the _jones_ username, and the _123_ password. 

2. In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, click the Business     Date menu button, and select the _2/13/2025_ date. For simplicity, in this activity, you will create and process     all documents in the system on this business date. 

3. On the Company and Branch Selection menu, also on the top pane of the Acumatica ERP screen, select the     _Service and Equipment Sales Center_ branch under the _SweetLife Fruits & Jams_ company. 

#### Step 1: Reviewing Appointments For the Second Billing Period 

 To review an appointment generated for the second billing period of the service contract, do the following: 

1. Open the _Appointment Summary_ (FS400100) form. 

2. In the **Customer** box of the Selection area, select _HMBAKERY (HM's Bakery and Cafe)_. 

3. In the **Service Contract ID** box, select _FCT00000002_. 

4. In the **From Scheduled Date** box, select _2/6/2025._ 

5. In the **To Scheduled Date** box, select _2/12/2025._ 

6. Make sure the **Staff Member** box is cleared.     Notice that only an appointment with _Canceled_ status is in the list. It was generated according to contract     schedule, but later it was canceled. 

#### Step 2: Generating a Billing Document for the Second Billing Period 

 To generate a billing document for the second billing period, do the following: 

1. Open the _Run Service Contract Billing_ (FS501300) form. 

2. In the **Billing Customer** box of the Selection area, select _HMBAKERY (HM's Bakery and Cafe)_. 

3. In the **Up To Date** box, select 02/12/2025. 

4. In the table, select the unlabeled check box in the row with the service contract. 

5. On the form toolbar, click **Process**.     The system opens the **Processing** pop-up window, in which you can see the status of the process. 

6. Aer the processing has successfully completed, click the **Processed** card.     The system displays a table in the dialog box with the processed record. 


<!-- PAGE_BREAK -->
 Creating Service Contracts | 82 

7. Click the link in the **Batch Nbr.** column in the row with the processed record.     The _Service Contract Billing Batches_ (FS306100) form opens with the details of the selected batch. 

8. In the table of this form, click the link in the **Document Nbr.** column.     The _Invoices and Memos_ (AR301000) form opens, and you can review the generated invoice. The invoice     includes the item that has been covered by the contract, as the following screenshot shows. It means that     even if there are no appointments in the period, the contract item is billed. 

 Figure: The invoice for the second billing period of the service contract 

9. On the form toolbar, click **Remove Hold** , and then **Release**. 10.On the _Service Contracts_ form, select the contract. On the **Billing Documents** tab, review the reference     number of the invoice. On the **Service Per Period** tab, in the **Billing Period** box, click the lookup icon.     Review that the status of the _02/06/2025 - 02/12/2025_ period is _Invoiced_ , and the next billing period is     automatically created and set as _Active_. 

### Service Contracts: To Create and Process a Service Contract with Beginning-Period 

### Fixed Billing 

 In this activity, you will create a service contract with fixed billing at the beginning of the period, and you will generate appointments for the service contract. 

 This activity is based on the U100 dataset. If you are using another dataset, or if any system settings have been changed in U100 , these changes can affect the workflow of the activity and the results of the processing. To avoid any issues, restore the U100 dataset to its initial state. 

#### Story 

 Suppose that the GoodFood One Restaurant customer has decided to sign an annual maintenance contract with the SweetLife Service and Equipment Sales Center for a fixed price, which will be billed at the beginning of each billing period (a month). The contract will cover the full assistance during the contract period. The list of services covered by the service contract has been agreed upon; it includes the cleaning of a customer's equipment twice a week on Tuesday and Friday. 

 The service manager (Maia Davis) needs to create a service contract with fixed billing at the beginning of each month, and to add schedules for the generation of appointments. 


<!-- PAGE_BREAK -->
 Creating Service Contracts | 83 

#### Configuration Overview 

 In the U100 dataset, the following configuration tasks have been performed to prepare the system for this activity to be performed: 

- On the _Enable/Disable Features_ (CS100000) form, the _Equipment Management_ feature (under _Service_     _Management_ ) has been enabled. 

- On the _Branch Locations_ (FS202500) form, the _WEST BRIGHTON_ branch location has been configured. 

- On the _Service Order Types_ (FS202300) form, the _MRO_ service order type has been configured to generate     sales orders to bill customers for provided services. That is, the _Sales Orders_ option has been selected in the     **Generated Billing Documents** box in the **Billing Settings** section. Also in this section, the _IN_ sales order     type has been selected as the **Order Type for Invoice** so that the processing of sales orders does not require     shipments. 

- On the _Billing Cycles_ (FS206000) form, the following settings have been specified for the _AP AP_ billing cycle: 

- **Run Billing For** : **Appointments** 

- **Group Billing Documents By** : **Appointments** Based on these billing cycle settings, a separate billing document is generated for each appointment; this document presents the details of each service of the appointment. 

- On the _Customers_ (AR303000) form, the _GOODFOOD (GoodFood One Restaurant)_ customer has been defined.     The _AP AP_ billing cycle has been specified for the customer on the **Billing** tab. 

- On the _Non-Stock Items_ (IN202000) form, the _CLEANING_ and _TRAINING_ non-stock items have been created.     For the items, _Service_ is selected in the **Type** box on the **General** tab, and _Time_ is selected in the **Billing Rule**     box on the **Price/Cost** tab. 

- On the _Non-Stock Items_ (IN202000) form, the _DEPOSIT_ non-stock item has been created. 

- On the _Equipment_ (FS205000) form, the _FSE00007 (Commercial citrus juicer with a production rate of 1.5 litres_     _per minute)_ target equipment has been defined. 

- On the _Employees_ (EP203000) form, _EP00000040 (Maia Davis)_ has been defined, and the **Staff Member in**     **Service Management** check box has been selected on the **General Info** tab. 

- On the _User Profile_ (SM203010) form, the _SWEETEQUIP_ default branch and _WEST BRIGHTON_ default branch     location have been specified for _Maia Davis_. 

#### Process Overview 

 In this activity, you will create a service contract on the Service Contracts (FS305700) form. Next, you will create two schedules for appointment generation on the Service Contract Schedules (FS305100) form, and activate the contract on the Service Contracts form. You will then generate a billing document for the first billing period on the Run Service Contract Billing (FS501300) form. Finally, you will review the scheduled appointments on the Appointment Summary (FS400100) form. 

#### System Preparation 

 Before you begin performing the steps of this activity, do the following: 

1. Launch the Acumatica ERP website, and sign in to a company with the _U100_ dataset preloaded. You should     sign in as a service manager by using the _davis_ username, and the _123_ password. 

2. In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, click the Business     Date menu button, and select the 1/30/2025 date. For simplicity, in this activity, you will create and process     all documents in the system on this business date. 


<!-- PAGE_BREAK -->
 Creating Service Contracts | 84 

#### Step 1: Creating a Service Contract with Fixed Billing at the Beginning of the Period 

 To create the service contract with fixed billing at the beginning of the contract period for the GoodFood One Restaurant, do the following: 

1. On the _Service Contracts_ (FS305700) form, click **Add New Record**. 

2. In the Summary area, specify the following settings: 

- **Customer** : _GOODFOOD - GoodFood One Restaurant_ 

- **Description** : Juicer cleaning contract 

3. On the **Summary** tab ( **Contract Settings** section), specify the following settings for the contract: 

- **Start Date** : 1/30/2025 

- **Expiration Type** : _Expiring_ 

- **Duration** : 1 _Year_ 

- **Schedule Generation Type** : _Appointments_ 

4. In the **Billing Type** box of the **Billing Settings** section, select _Beginning-Period Fixed_. 

5. In the **Period** of the **Billing Type Settings** section, make sure that _Month_ is selected. 

6. On the **Services per Period** tab, add a row and specify the following settings in the added row: 

- **Line Type** : _Non-Stock Item_ 

- **Inventory ID** : _DEPOSIT_ 

- **Recurring Item Price** : 150 

7. On the form toolbar, click **Save**. 

8. On the More menu (under **Processing** ), click **Activate**.     The system changes the status of the contract from _Dra_ to _Active_. 

 The first billing period for the contract is 1/30/2025 – 2/27/2025 , as the following screenshot shows. 

 Figure: The active billing period 

#### Step 2: Creating an Appointment Schedule for the Cleaning Service and Generating 

#### Appointments 

 To add a schedule for the cleaning service to the contract and generate an appointment for the first billing period, do the following: 

1. While you are still viewing the service contract on the _Service Contracts_ (FS305700) form, on the **Schedules**     tab, click **Add Schedule**.     The _Service Contract Schedules_ (FS305100) form opens. 


<!-- PAGE_BREAK -->
 Creating Service Contracts | 85 

2. In the Summary area, do the following: 

- In the **Service Order Type** box, ensure that _MRO_ is selected. 

- In the **Scheduled Start Time** box, select _12:00 PM_. 

3. On the **Details** tab, add a row and specify the following settings in the row: 

- **Inventory ID** : _CLEANING_ 

- **Target Equipment ID** : _FSE00007_ 

4. On the **Recurrence** tab, in the **Frequency** box, select **Weekly** , and do the following in the **Weekly Settings**     section: 

- Leave **Every** _1_ **Weeks**. 

- Select the **Tuesday** and **Friday** check boxes. Clear **Sunday**. 

- Leave the check boxes cleared for the remaining days of the week. 

5. On the form toolbar, click **Save**. 

6. On the form toolbar, click **Generate from Service Contracts**.     The _Generate Maintenance from Contract Schedules_ (FS500300) form opens. 

7. In the **Customer** box of the Summary area, select _GOODFOOD - GoodFood One Restaurant_. 

8. In the **Generate Up To** box, select _2/27/2025_. 

9. In the table, select the check box in the row with the schedule you have created (with the _Juicer cleaning_     _contract_ description). 10.On the form toolbar, click **Process**.     The system opens the **Processing** dialog box, in which you can see the status of the processing. 11.Aer the processing has successfully completed, in the **Processing** dialog box, click **Close**. 12.Close the _Generate Maintenance from Contract Schedules_ form and the _Service Contract Schedules_ form. 

 The system has created a schedule and added it to the Schedules tab of the Service Contracts form. 

#### Step 3: Reviewing the Generated Appointments 

 To review the generated appointments for the service contract, do the following: 

1. On the _Service Contracts_ (FS305700) form (to which you returned), on the More menu (under **Inquiries** ),     click **Appointment History**. 

2. On the _Appointment Summary_ (FS400100) form, which opens, in the Selection area, specify the following     settings: 

- **Staff Member** : Cleared 

- **To Scheduled Date** : _2/27/2025_ The list of appointments generated for the selected service contract is shown in the table. The appointments for the cleaning services are generated to be performed each week on Tuesday and Friday during the billing period ( _1/30/2025_ – _2/27/2025_ ). Open the first appointment by clicking its reference number in the **Appointment Nbr.** column. The _Appointments_ (FS300200) form opens. In the appointment, notice that the _CLEANING_ service has been added on the **Details** tab and the **Free Item** check box is selected for it, indicating that this service is covered by the service contract. Notice that in the **Summary** area, the appointment total is set to _0_. 

#### Step 4: Running the Service Contract Billing 

 To run service contract billing at the beginning of the contract period, do the following: 


<!-- PAGE_BREAK -->
 Creating Service Contracts | 86 

1. On the _Run Service Contract Billing_ (FS501300) form, in the **Billing Customer** box, select _GOODFOOD -_     _GoodFood One Restaurant_. 

2. In the **Up to Date** box of the Summary area, select _1/30/2025_. 

3. Select the unlabeled check box next to the _Juicer cleaning contract_ you have just created. 

4. On the form toolbar, click **Process**. 

5. Once the processing is finished, in the **Processing** dialog box, click the link in the **Service Contract ID**     column. 

6. On the _Service Contracts_ (FS305700) form, which opens, on the **Billing Documents** tab, ensure that the     generated invoice for the first billing period of the contract is listed. 

7. Click the invoice number in the **Reference Nbr.** column. The _Invoices and Memos_ (AR301000) form opens.     In the Summary area, review the invoice's total balance, which is _150.00_. This is the fixed price specified in     the service contract to be paid in each billing period for the services covered by the contract. 

8. Close the _Invoices and Memos_ and _Service Contracts_ forms. 

#### Step 5: To Run Billing for the First Appointment of the Billing Period 

 In this step, you will run billing for the first appointment of the billing period and review the generated billing documents. Do the following: 

1. Open the _Appointment Summary_ (FS400100) form. 

2. In the Summary area, specify the following settings: 

- **Customer** : _GOODFOOD - GoodFood One Restaurant_ 

- **Service Contract ID** : _FCT00000007 - Juicer cleaning contract_ 

- **Staff Member** : Cleared 

- **To Scheduled Date** : _2/4/2025_ 

3. In the **Appointment Nbr.** column, click the link of the appointment in the list (the appointment scheduled     for _1/31/2025_ ).     The appointment opens on the _Appointments_ (FS300200) form. 

4. On the form toolbar, click **Start**. 

5. On the **Details** tab, in the row with the _CLEANING_ service, notice that the **Free Item** check box is selected. 

6. On the **Settings** tab, in the **Actual Date and Time** section, enter the actual start and end times (for     simplicity in this training, set them to match the scheduled start and end times). Select the **Finished** check     box. 

7. On the form toolbar, click **Complete**. (You perform this action on behalf of a staff member.) 

8. On the form toolbar, click **Close**. (You perform this instruction and the remaining instructions on behalf of     an accountant.) 

9. On the form toolbar, click **Run Billing**. 10.On the _Invoices_ (SO303000) form, which opens, notice that the total of the invoice is _0_. Close the form. 

### To Activate the Next Period for the End-Period Billing Contracts 

 You can activate the next billing period for a contract billed at the end of the billing period. 


<!-- PAGE_BREAK -->
 Creating Service Contracts | 87 

#### To Activate the Next Period for a Particular Contract 

1. Open the _Service Contracts_ (FS305700) form. 

2. In the **Service Contract ID** box of the Summary area, select the contract for which you want to activate the     period. 

3. On the **Services per Period** tab, make sure that _Modify Upcoming Billing Period_ is selected in the **Actions**     box. 

4. On the table toolbar, click **Activate Period**. 

 Now you can generate a billing document for the activated period. 

#### To Activate the Next Period for Multiple Contracts 

1. Open the _Process Service Contracts_ (FS501200) form. 

2. In the **Action** box of the Summary area, select _Activate Upcoming Billing Period_. 

3. Optional: In the **Branch** box, select the branch whose employees provide the services of the service     contracts whose billing period you want to activate. 

4. Optional: In the **Branch Location** box, select the branch location of the service contracts whose billing     period you want to activate. 

5. Optional: In the **Customer** box, select the customer for which services are performed in the service     contracts whose billing period you want to activate. 

6. Optional: In the **Contract Nbr.** box, select the service contract related to the service contracts whose billing     period you want to activate. 

7. Do one of the following: 

- Click **Process All** to activate the next period for all the listed service contracts. 

- Select the unlabeled check box in the row of each service contract whose billing period you want to     activate. Click **Process**. 

 You can configure the system to automatically activate the period when a billing document is generated on the Run Service Contract Billing (FS501300) form. To do this, you select the Automatically Activate Upcoming Period check box on the Equipment Management Preferences (FS100300) form. 

### Service Contracts: Activation, Cancellation, and Suspension of a Contract 

 In Acumatica ERP, you can activate, cancel, or suspend a service contract. 

#### Activating a Service Contract with the Dra Status 

 When you create a service contract in the system, the contract is automatically assigned the Dra status. When you finish entering the necessary information for the contract, you should activate the contract so that you can generate service orders, appointments, or invoices for it. 

 You activate the contract on the Service Contracts (FS305700) form by clicking Activate on the More menu (under Processing ). The system changes the status of the service contract to Active. 


<!-- PAGE_BREAK -->
 Creating Service Contracts | 88 

#### Activating a Service Contract with the Suspended Status 

 Contracts with the Suspended status can be activated again starting on a particular date (whether or not it is the current date). To activate a suspended service contract, you open the necessary contract on the Service Contracts (FS305700) form and click Activate on the More menu (under Processing ). The system opens the Activation Contract dialog box, in which you specify the starting date when the contract has to be activated. 

 If schedules have been generated for the service contract, you can view them in the table of the Activation Contract dialog box. You can change the date of the service orders or appointments to be generated when the contract is active. To do so, for each schedule, you select the check box in the Change Recurrence column. You then specify the date since which the service orders or appointments will be generated according to the schedule for the active contract in the Effective Recurrence Start Date column. The system recalculates the Next Execution date. 

 If the activation date is later than the current date, when you click OK to close the dialog box and return to the form, the Upcoming Status box contains Active (indicating that the service contract will be active) and the Effective Until Date box contains the activation date (indicating that the current status of Suspended is effective until the activation date. 

#### Canceling a Service Contract 

 In Acumatica ERP, if for some reason the services will no longer be provided for the customer, you can cancel the service contract if it has the Active or Suspended status. When you cancel the service contract, the system deletes any documents that were generated for the dates that are the same as or later than the cancellation date. 

 To cancel a service contract, you open the necessary contract on the Service Contracts (FS305700) form, and on the More menu, click Cancel. The system opens the Terminate Contract dialog box, where you specify the date since which the contract has to be canceled. 

 If this date is later than the current date, when you click OK in the dialog box to close it and return to the form, the system inserts Canceled in the Upcoming Status box (to indicate that the contract will be canceled) and inserts the cancellation date in the Effective Until Date box (to indicate that the current status is effective until this date). If the cancellation date is the same as the current date, when you click OK in the dialog box, the system assigns the Canceled status to the service contract. 

 A contract with the Canceled status is read-only and cannot be deleted. 

#### Suspending a Service Contract 

 In Acumatica ERP, you can suspend an active contract so that it is no longer active during the time it is suspended. When you suspend the contract, the system deletes any documents that were generated on the suspension date or the dates that are aer it. You cannot generate service orders, appointments, or invoices from contracts with the Suspended status. The suspended contract can then be activated again or canceled. 

 To suspend the contract, you open the necessary contract on the Service Contracts (FS305700) form, and on the More menu, click Suspend. The system opens the Suspend Contract dialog box, where you specify the date since which the contract has to be suspended. 

 If this date is later than the current date, when you click OK in the dialog box to close the dialog box and return to the form, the system inserts Suspended into the Upcoming Status box and the suspension date into the Effective Until Date box (indicating that the current status is effective until the suspension date). If the suspension date is the same as the current date, when you click OK in the dialog box, the system assigns the Suspended status to the service contract. 


<!-- PAGE_BREAK -->
 Creating Service Contracts | 89 

### Service Contracts: Status Update 

 In Acumatica ERP, the system does not change the current status of a service contract when the effective date has arrived. You can update the status manually on or aer the date or use an automation schedule to update the contract status on this date. 

 If you know the particular date in the future when a service contract is going to be canceled, or suspended, you can specify the cancellation or suspension date on the Service Contracts (FS305700) form, so the future status will be shown in the Upcoming Status box of the Summary area. Then, on or aer the effective date, you can update the contract's status on the Process Service Contracts (FS501200) form so that the system automatically changes the status of the contract. If the contract has an expiration date, when you are entering the service contract into the system, the system specifies Expired as the upcoming status on that date. 

#### Updating a Status Manually 

 To change the current status of a service contract (or multiple service contracts) to upcoming (whose effective date came) of one or multiple service contracts, you use the Process Service Contracts (FS501200) form. On this form, you select the Update Upcoming Status option in the Action box of the form; you then specify the selection criteria to display the necessary service contract (or multiple contracts) in the table and process the contract or contracts. The system updates the statuses of the processed contracts. 

 Acumatica ERP provides an automation schedule to automatically invoke this action, as the section below explains. 

#### Updating the Status by Automation Schedule 

 To cause the system automatically invoke the Update Upcoming Status action on the Process Service Contracts (FS501200) form for contracts in the system, the Update Service Contract Status automation schedule has been created on the Automation Schedules (SM205020) form. To use this schedule, you should ensure that this schedule is active in the system (that is, make sure the Active check box is selected for the schedule on the Automation Schedules form). This schedule runs daily, and you can modify this schedule if necessary. 

### Service Contracts: Related Inquiry Forms 

 In the following sections, you can find details about the inquiry forms you may want to review to gather information about processing the service contracts. 

 If you do not see a particular report or form that is described, you may have signed in to the system with a user account that does not have access rights to the report or form. Contact your system administrator to obtain access to any needed reports or forms. 

#### Searching for a Billing Document 

 On the Service Contract Billing Batches (FS306100) form, you can find the list of billing documents generated for the service contracts with the following billing options: End-Period Plus , Beginning-Period Plus and Beginning-Period Fixed. These options are specified in the Billing Type box on the Summary tab of the Service Contracts (FS305700) or Route Service Contracts (FS300800) form. 


<!-- PAGE_BREAK -->
 Creating Service Contracts | 90 

#### Reviewing Appointments Generated from a Service Contract 

 To review the appointments that have been generated for a particular service contract, on the Service Contracts (FS305700) form, on the More menu (under Inquiries ), click Appointment History. The Appointment Summary (FS400100) form opens with the appointments generated for the selected service contract. 

 You can also open the Appointment Summary form directly. In the Selection area of the form, specify a customer, a service contract, and other needed selection criteria. As a result, the system displays the list of appointments (if any) in the table below. 

#### Reviewing Service Orders Generated from a Service Contract 

 To review the service orders that have been generated for a particular service contract, on the Service Contracts (FS305700) form, on the More menu (under Inquiries ), click Service Order History. The Service Order History (FS400300) form opens with the service orders generated for the selected service contract. 

 You can also open the Service Order History form directly. In the Selection area of the form, specify a customer, a service contract, and other needed selection criteria. As a result, the system displays the list of service orders (if any) in the table below. 

#### Generating a Service Contract Quote 

 You can prepare the service contract quote report, which contains the forecast data related to the service contract by clicking Forecast & Print Quote on the More menu on the Service Contracts (FS305700) form (or on the Route Service Contracts (FS300800) form). Once you have clicked the command, the system opens a dialog box in which you specify the start and end date for forecasting. Then the system generates the Service Contract Quote report, and opens it in a print-friendly form. 

 The quote report shows the expected quantity of visits that should occur during the forecast contract duration, the price for each scheduled visit, the total price of all forecast visits, and the expected number of billing documents to be generated during the contract duration. (Depending on the billing type specified for the service contract, some of these settings may not be shown in the report.) Note that the taxes and discounts are not considered in the quote report. 

#### Emailing a Service Contract Quote 

 You can email the service contract quote report to the customer by clicking Email Quote on the More menu on the Service Contracts form (or on the Route Service Contracts (FS300800) form). 

 The Email Quote command is available if the selected service contract has at least one service contract quote report generated. 

 You can also email the service contract quote report by clicking Send on the toolbar of the printable report form. 

 The quote report can be emailed immediately aer generation or at any later time. 

 For service contracts with billing type settings other than the At Time of Service billing type and the Contract option selected in the Take Prices From box on the Summary tab of the Service Contracts ( Route Service Contracts ) form, for the quote report, the system uses the prices specified on the Stock Items (IN202500) or Non-Stock Items (IN202000) form, in the Default Price box of the Price/Cost tab. Thus, the prices in the quote reports may vary during the contract duration. 


<!-- PAGE_BREAK -->
 Creating Service Contracts | 91 

#### Viewing Customer's Contract Schedules 

 On the More menu (under Inquiries ) of the Customers (AR303000) form, click Contract Schedule Summary. The Contract Schedule Summary (FS401100) form opens. On this form, you can view the list of contract schedules registered in the system for a selected customer. 


<!-- PAGE_BREAK -->
 Renewing Service Contracts | 92 

## Renewing Service Contracts 

 The topics of this chapter describe how to create and process a renewable service contract. 

### Renewal of Service Contracts: General Information 

 In Acumatica ERP, you can create and process a renewable service contract. 

 In the following sections of this topic, the capability is described in detail for service contracts created on the Service Contracts (FS305700) form. The capability works similarly for a route service contract created on the Route Service Contracts (FS300800) form. 

#### Learning Objectives 

 In this chapter, you will learn how to do the following: 

- Create a renewable service contract 

- Renew the service contract 

- Update the status of the service contract 

#### Applicable Scenarios 

 You create or renew a renewable service contract in the following cases: 

- When you need to create a long-term service contract that automatically updates its expiration date based     on a specified duration. 

- When you need to renew an active service contract before or aer its expiration, maintaining the original     contract settings and schedules. 

#### Creation of a Renewable Service Contract 

 You create a renewable service contract on the Service Contracts (FS305700) form. When creating a service contract, on the Summary tab of the form, you select the Renewable option in the Expiration Type box, which causes the Duration box to appear on the form. In this box, you specify the time period until the next expiration date. Once you save and activate the service contract, the system inserts the date in the Expiration Date box, which is calculated based on the specified duration. 

#### Renewal of a Service Contract 

 You can renew a service contract with the Active status before or aer its expiration date. On the More menu of the Service Contracts (FS305700) form, you click the Renew command (under Processing ). This command is available when a renewable service contract—one with Renewable selected in the Expiration Type box in the Contract Settings section—has been activated. 

 When you renew a service contract, its expiration date is moved forward by the specified duration. A renewed service contract keeps the settings of the original contract, including the schedules that have been generated. When you click Renew , the system determines the contract renewal date based on the contract expiration date. The new renewal date is the day aer the previous expiration date. The system inserts this date in the Renewal Date box and updates the date in the Expiration Date box based on the period specified in the Duration box. 

 A service contract can be renewed multiple times. Each time you click Renew , the system moves the renewal and expiration dates forward by the amount of time specified in the Duration box. 


<!-- PAGE_BREAK -->
 Renewing Service Contracts | 93 

 You can renew multiple service contracts at once by using the Process Service Contracts (FS501200) form. In the Action box of the Selection area, select Renew , then in the list of contracts, select service contracts to be renewed, and on the form toolbar, click Process All. 

### Renewal of Service Contracts: Process Activity 

 The following activity will walk you through the process of renewing a service contract. 

 This activity is based on the U100 dataset. If you are using another dataset, or if any system settings have been changed in U100 , these changes can affect the workflow of the activity and the results of the processing. To avoid any issues, restore the U100 dataset to its initial state. 

#### Story 

 Suppose that SweetLife Fruits & Jams company has signed in a service contract with the GoodFood One Restaurant customer. The customer wants to be able to extend the contract for one year aer the contract expiration date. 

 Acting as the service manager of Service and Equipment Sales Center (Maia Davis), you need to create a renewable service contract, renew the contract, and then manually update the status of the service contract to Expired. 

#### Configuration Overview 

 In the U100 dataset, the following configuration tasks have been performed to prepare the system for this activity to be performed: 

- On the _Enable/Disable Features_ (CS100000) form, the _Service Management_ and _Equipment Management_     features have been enabled. 

- On the _Branch Locations_ (FS202500) form, the _WEST BRIGHTON_ branch location has been configured. 

- On the _Billing Cycles_ (FS206000) form, the following settings have been specified for the _AP AP_ billing cycle: 

- **Run Billing For** : **Appointments** 

- **Group Billing Documents By** : **Appointments** Based on these billing cycle settings, a separate billing document is generated for each appointment; this document presents the details of each service of the appointment. 

- On the _Customers_ (AR303000) form, the _GOODFOOD (GoodFood One Restaurant)_ customer has been defined.     The _AP AP_ billing cycle has been specified for the customer on the **Billing** tab. 

- On the _Service Order Types_ (FS202300) form, the _MRO_ service order type has been configured to generate     sales orders to bill customers for provided services. That is, the _Sales Orders_ option has been selected in the     **Generated Billing Documents** box in the **Billing Settings** section. Also in this section, the _IN_ sales order     type has been selected as the **Order Type for Invoice** so that the processing of sales orders does not require     shipments. 

- On the _Employees_ (EP203000) form, _EP00000040 (Maia Davis)_ has been created, and the **Staff Member in**     **Service Management** check box has been selected on the **General Info** tab. 

- On the _User Profile_ (SM203010) form, the _SWEETEQUIP_ default branch and _WEST BRIGHTON_ default branch     location have been specified for _Maia Davis_. 

#### Process Overview 

 On the Service Contracts (FS305700) form, you will create a renewable service contract. Then on the same form, you will renew the service contract so that its expiration date will be moved forward by the duration specified in the Duration box, and its start date will be modified. Once it is done, you will update the service contract status by using the Process Service Contracts (FS501200) form. 


<!-- PAGE_BREAK -->
 Renewing Service Contracts | 94 

#### System Preparation 

 Before you begin performing the steps of this activity, do the following: 

1. Launch the Acumatica ERP website, and sign in to a company with the _U100_ dataset preloaded. You should     sign in as a service manager by using the _davis_ username, and the _123_ password. 

2. In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, click the Business     Date menu button, and select the 1/30/2025 date. For simplicity, in this activity, you will create and process     all documents in the system on this business date. 

#### Step 1: Creating a Renewable Service Contract 

 To create a renewable service contract, do the following: 

1. On the _Service Contracts_ (FS305700) form, click **Add New Record**. 

2. In the Summary area, specify the following settings: 

- **Customer** : _GOODFOOD - GoodFood One Restaurant_ 

- **Description** : Maintenance Contract 

3. On the **Summary** tab ( **Contract Settings** section), specify the following settings for the contract: 

- **Start Date** : _1/30/2025_ 

- **Expiration Type** : _Renewable_ 

- **Duration** : 1 Year 

- **Schedule Generation Type** : _Appointments_ 

4. In the **Billing Type** box of the **Billing Settings** section, make sure that _At Time of Service_ is selected. This     setting means that the service contract will be billed aer each appointment has taken place, based on what     was done during the appointment. 

5. In the **Billing Type Settings** section, leave the _Regular Price_ in the **Take Prices From** box. This option     means that the system will use the price of the service or inventory item specified in the price list on the     _Sales Prices_ (AR202000) form or in the **Default Price** box on the _Non-Stock Items_ (IN202000) or _Stock Items_     (IN202500) form. 

6. On the form toolbar, click **Save**. 

7. On the More menu, click **Activate**. The system has inserted _1/30/2025_ in the **Effective From Date** box of the     Summary area. 

#### Step 2: Renewing the Service Contract 

 Assume that one year has passed since contract activation, the contract expiration date has come, and you, acting as a service manager, are renewing the service contract. Do the following: 

1. While you are still viewing the service contract, on the More menu, click **Renew**.     The system has updated the dates in the **Renewal Date** and **Expiration Date** boxes. The system has     inserted _1/30/2026_ in the **Renewal Date** box; this is the day aer the previous expiration date. It has also     inserted _1/29/2027_ in the **Expiration Date** box—the date calculated based on the new renewal date and the     period specified in the **Duration** box. 

2. On the **History** tab, review the list of actions that have been performed with the service contract (see the     following screenshot). 


<!-- PAGE_BREAK -->
 Renewing Service Contracts | 95 

 Figure: The History tab on the Service Contracts form 

#### Step 3: Updating the Status of the Service Contract to Expired 

 Suppose that once two years have passed, the customer does not want to prolong the service contract. Thus, you need to mark the contract status as Expired in the system. In the Summary area of the Service Contracts (FS305700) form, notice that the upcoming status of the contract is Expired. To update the status of the contract manually, do the following: 

1. In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, set the business date     to _1/29/2027_ ; this is the contract expiration date. 

2. Open the _Process Service Contracts_ (FS501200) form. 

3. In the **Action** box of the Selection area, select _Update to Upcoming Status_. 

4. In the table, select the unlabeled check box in the row of the contract to be updated. 

5. Click **Process** on the form toolbar. 

6. In the **Processing** dialog box, click the service contract ID in the **Service Contract ID** column. 

7. On the _Service Contracts_ (FS305700) form, which opens, notice that the status of the contract has changed     to _Expired_ (see Item 1 in the following screenshot). 

8. On the **History** tab of the form, notice that the _Expire_ action has been performed on the service contract on     _1/29/2027_ (Item 2). 


<!-- PAGE_BREAK -->
 Renewing Service Contracts | 96 

**_Figure: The history of actions performed on the service contract_** 


<!-- PAGE_BREAK -->
 Copying Service Contracts | 97 

## Copying Service Contracts 

 The topics in this chapter explain how to create a new service contract by copying an existing service contract. 

### Copying Service Contracts: General Information 

 A service contract can be copied. You may need to copy a service contract when a customer is due for renewal but some settings of the existing contract should be changed, or you just need another service contract with the similar settings. 

 In the following sections of this topic, the capability is described in detail for service contracts created on the Service Contracts form. The capability work similarly for a route service contract created on the Route Service Contracts form. 

#### Learning Objectives 

 In this chapter, you will learn how to do the following: 

- Copy a service contract 

- Modify the settings in the copied service contract 

- Generate and email a forecast report 

#### Applicable Scenarios 

 You copy a service contract the following cases: 

- When you need to create a new service contract with similar settings and schedules to an existing one,     saving time and effort in setup. 

- When you need to replicate an existing service contract for a different customer, location, or project while     retaining the flexibility to modify key details such as start and end dates. 

#### Copying a Service Contract 

 You copy a service contract by clicking Copy on the More menu on the Service Contracts (FS305700) form (or on the Route Service Contracts (FS300800) form). Once you click Copy , the Copy Contract dialog box opens. In the dialog box, you specify the start date of the new service contract and of any schedules that have been generated for the service contract. 

 When you copy a service contract, the system creates a new contract with the Dra status with most of the same settings (and similar generated schedules) as those specified in the original service contract. In the copied service contract, you can modify the following settings (even if the service contract has schedules associated with it): Customer , Location , Billing Customer , Billing Location , Project , Start Date , Expiration Type , and Expiration Date. 

 On the History tab of the Service Contracts form, you can review which actions have been performed for the contract and when, as well as view the reference numbers of the original service contract and schedule. 


<!-- PAGE_BREAK -->
 Copying Service Contracts | 98 

 When you change the contract start date or end date (or both), the schedule start date or end date (or both) are updated accordingly if the contract start date is equal to the schedule start date, and the contract end date is equal to the schedule end date. If the contract start date differs from the start date of the schedule, or the contract end date differs from the contract end date, you should ensure that the new contract start date is not later than the schedule start date, and the contract end date is not earlier than the schedule end date. 

### Copying Service Contracts: Process Activity 

 The following activity will walk you through the process of copying a service contract. 

 This activity is based on the U100 dataset. If you are using another dataset, or if any system settings have been changed in U100 , these changes can affect the workflow of the activity and the results of the processing. To avoid any issues, restore the U100 dataset to its initial state. 

#### Story 

 Suppose that HM's Bakery and Cafe customer has opened a new office in a new location, and wants to create a service contract for a new location with similar conditions as those specified in the existing service contract. Acting as the service manager (Maia Davis) of the Service and Equipment Sales Center branch, you need to make a copy of the service contract. In the copied contract, you need to update the start and end dates, the customer location, and schedule frequency settings. Then you will generate and send the forecast quote report to the customer for approve, and aer the customer approves the changes, you will activate the new service contract. 

#### Configuration Overview 

 In the U100 dataset, the following configuration tasks have been performed to prepare the system for this activity to be performed: 

- On the _Enable/Disable Features_ (CS100000) form, the _Service Management_ and _Equipment Management_     features have been enabled. 

- On the _Branch Locations_ (FS202500) form, the _WEST BRIGHTON_ branch location has been configured. 

- On the _Billing Cycles_ (FS206000) form, the following settings have been specified for the _AP AP_ billing cycle: 

- **Run Billing For** : **Appointments** 

- **Group Billing Documents By** : **Appointments** Based on these billing cycle settings, a separate billing document is generated for each appointment; this document presents the details of each service of the appointment. 

- On the _Service Order Types_ (FS202300) form, the _MRO_ service order type has been configured to generate     sales orders to bill customers for provided services. That is, the **Sales Orders** option has been selected     under **Generated Billing Documents** in the **Billing Settings** section. Also in this section, the _IN_ sales order     type has been selected as the **Order Type for Invoice** so that the processing of sales orders does not require     shipments. 

- On the _Customers_ (AR303000) form, the _HMBAKERY (HM's Bakery and Cafe)_ customer has been configured.     The _AP AP_ billing cycle has been specified for a customer on the **Billing** tab. 

- On the _Customer Locations_ (AR303020) form, the _MAIN2_ location has been configured. 

- On the _Service Contracts_ (FS305700) form, the _FCT00000001_ contract has been created. 


<!-- PAGE_BREAK -->
 Copying Service Contracts | 99 

#### Process Overview 

 On the Service Contracts (FS305700) form, you will copy a service contract. In the copied service contract, on the Service Contracts form, you will change the customer location, and on the Service Contract Schedules (FS305100) form, you will change the schedule settings. Then, on the Service Contracts form, you will generate a forecast report, and send it to customer for approve. We assume that a customer has approved the new service contract, so that on the Service Contracts form, you will activate the contract. 

#### System Preparation 

 Do the following: 

1. Launch the Acumatica ERP website, and sign in to a company with the _U100_ dataset preloaded. You should     sign in as service manager by using the _davis_ username and the _123_ password. 

2. In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the     business date in your system is set to _1/30/2025_. If a different date is displayed, click the Business Date menu     button and select _1/30/2025_ on the calendar. For simplicity, in this activity, you will create and process all     documents in the system on this business date. 

3. On the Company and Branch Selection menu, also on the top pane of the Acumatica ERP screen, ensure the     _Service and Equipment Sales Center_ branch under the _SweetLife Fruits & Jams_ company is selected. 

#### Step 1: Copying a Service Contract 

 To copy a service contract, do the following: 

1. Open the _Service Contracts_ (FS305700) form. 

2. In the **Service Contract ID** box, select the service contract to be copied: _FCT00000004_ 

3. On the More menu (under **Other** ), click **Copy**. 

4. In the **Copy** dialog box that opens, specify the start date for the new service contract _02/01/2025_ , and click     **OK**.     The system has opened a new service contract with the _Dra_ status assigned. The system copied     the settings of the original service contract including the summary information (such as a customer,     description, and project), the schedule generated for the contract added on the **Schedules** tab, and the     service included in the contract on the **Services per Period** tab. 

#### Step 2: Modifying the Settings in the Copied Service Contract 

 The customer has asked to specify a new location in the service contract, and to change the frequency settings of the schedule. Do the following: 

1. While you are viewing the service contract on the _Service Contracts_ (FS305700) form, in the Summary area,     in the **Location** box, select _MAIN2_. 

2. On the **Schedules** tab, click the reference number of the schedule in the **Schedule ID** column. 

3. On the _Service Contract Schedules_ (FS305100) form that opens, on the **Recurrence** tab, clear **Monday** check     box, and select **Tuesday** and **Friday**. 

4. On the form toolbar, click **Save** , and close the _Service Contract Schedules_ form. 


<!-- PAGE_BREAK -->
 Copying Service Contracts | 100 

#### Step 3: Generating and Emailing a Forecast Report 

 Before activating the new service contract, you want to send a service contract quote report to the customer to get approve for the contract terms. To generate a forecast report, and email it to the customer, do the following: 

1. While you are viewing the service contract on the _Service Contracts_ (FS305700) form, on the More menu,     click **Forecast & Print Quote**.     The **Contract Quote** dialog box opens. 

2. In the dialog box, specify the start and end dates for the quote report as _2/2/2025_ for the start date, and     _1/2/2026_ for the end date, and click **OK**.     The system has generated and opened the quote report in the printed view (as the following screenshot     shows). 

 Figure: Service Contract Quote report 

3. Return to the _Service Contracts_ form, and on the More menu, click **Email Report**. 

4. Click **Activities** at the right top corner of the _Service Contracts_ form. In the **Tasks & Activities** dialog box     that opens, click the link, and review the email sent to the customer.     The copy of the service contract quote has been attached to the email, and sent to the customer. 


<!-- PAGE_BREAK -->
 Copying Service Contracts | 101 

 If you have made any changes in the contract aer generating the quote, you need to use the Forecast & Print Quote command once again before emailing the quote report to the customer. 

#### Step 4: Activating a Service Contract 

 Once the customer has approved the new service contract, you activate the contract. Do the following: 

1. Return to the _Service Contracts_ (FS305700) form and in the **Service Contract ID** box, select the new service     contract. Notice that it has the _Dra_ status assigned. 

2. On the More menu, click **Activate**.     The contract status has changed to _Active_. 


<!-- PAGE_BREAK -->
 Managing Service Templates | 102 

## Managing Service Templates 

 Acumatica ERP provides you with functionality that helps you manage the services for which equipment is used or sold when you process customers' orders. You can create service templates that group services that are usually provided together for the contracts, to speed the entry of services in service contracts. 

 This chapter describes the service templates, as well as the process of adding service templates to the system. 

### Service Templates 

 A service template is a set of services and inventory items that is used to create service contract schedules. Using service templates helps to reduce the time that would be spent entering the service data into the contract when the appropriate user creates the schedule. 

 In this topic, you will read about creating service templates in the system and adding them to a contract schedule. 

#### Creating a Service Template 

 You can create a service template on the Service Templates (FS204900) form. On this form, you enter the identifier of the template, the description, the service order type, and you add the services (and any stock items) that will be used with this template. For details, see To Create a Service Template. 

 You can use the service templates when you schedule service contracts on the Service Contract Schedules (FS305100) form. 

#### Adding Service Templates to a Schedule 

 To speed up the process of adding services and inventory items to the service contract schedule, on the Details tab of the Service Contract Schedules (FS305100) form, you add an appropriate service template by selecting Service Template in the Line Type column and selecting the service template in the Service Template ID column. 

 On the Service Contracts (FS305700) form, you can view the services, service templates, and inventory items that were added to the schedules of a particular contract on the Services and Details tabs. You can also view the prices of the services and the stock items of the contract on the Service Prices and Inventory Item Prices tabs of the Service Contracts form, respectively. 

### To Create a Service Template 

 You use the Service Templates (FS204900) form to create a service template in the system. For details on service templates, see Service Templates. 

#### Before You Proceed 

 Before you begin creating a service template, make sure that the necessary types of equipment-related service orders have been created on the Service Order Types (FS202300) form and services for the orders have been created on the Non-Stock Items (IN202000) form. 

#### To Create a Service Template 

1. Open the _Service Templates_ (FS204900) form. 

2. On the form toolbar, click **Add New Record**. 


<!-- PAGE_BREAK -->
 Managing Service Templates | 103 

3. In the **Service Template ID** box, enter the identifier of the service template. 

4. In the **Description** box, enter a brief description of the service template. 

5. In the **Service Order Type** box, select the service order type related to the services of the template. 

6. On the **Details** tab, do the following for each service you want to add to the template:     a. On the table toolbar, click **Add Row**.     b. In the **Service ID** column, select the service you want to add.     c. In the **Quantity** column, change the quantity of service items (which is 1 by default) if necessary. 

7. Optional: On the **Details** tab, perform the following steps for each stock item you need to add:     a. On the table toolbar, click **Add Row**.     b. In the **Inventory ID** column, select the stock item you want to add.     c. In the **Quantity** column, check the quantity of stock items and change it if necessary. By default, 1 is        specified. 

8. Click **Save**. 

#### Notes About the Procedure 

 The notes in this section describe the nuances of the UI elements available on the form, such as when an element is required and when it is not, and when the system fills in settings by default. This section can include other notes. 

 You can add items on the Details tab only if the Sales Orders option is selected in the Generated Billing Documents box on the General tab of the Service Order Types (FS202300) form for the selected service order type. The necessary stock items have to be created on the Stock Items (IN202500) form in order to be added on this tab. 


<!-- PAGE_BREAK -->
 Managing Manufacturers | 104 

## Managing Manufacturers 

 In Acumatica ERP, you can maintain information about manufacturers and the equipment that they produce (referred to as manufacturer models ). The information about manufacturers includes addresses and contacts. The information about manufacturer models includes the model names and the equipment type. 

 This chapter describes how to manage manufacturers and their models. 

### Manufacturers: General Information 

 In Acumatica ERP, you can enter and maintain information about manufacturers and the equipment that they produce. Once you create a manufacturer in the system, you can specify it for any piece of equipment that is added to the system. Also, for any piece of equipment, you can specify the related manufacturer model. The details specified for manufacturers and their models are used for informational purposes only; no specific functionality in the system is associated with this information. 

 In this topic, you will read about how manufacturers are created and assigned to equipment in the system. 

#### Learning Objectives 

 In this chapter, you will learn how to create a manufacturer in Acumatica ERP. 

#### Applicable Scenarios 

 You create a manufacturer in Acumatica ERP when your company needs to maintain detailed information about equipment manufacturers, including assigning a manufacturer to each piece of equipment added to the system. 

#### Adding Manufacturers 

 When you create equipment in the system, you can select any manufacturer defined in the system. You define a manufacturer that produces equipment on the Manufacturers (FS204400) form. When you define the manufacturer, you specify its address and main contact information, such as the identifier of the contact person, the contact's email address, and the contact's phone and fax numbers. For details on how to add a manufacturer, see Manufacturers: To Create a Manufacturer. 

 You can assign manufacturers to new and existing equipment. For each manufacturer, you can also add its model information to the system. 

#### Adding Manufacturer Models 

 A manufacturer model is equipment that is produced by a specific manufacturer. In Acumatica ERP, you can add a manufacturer model on the Manufacturer Models (FS204800) form. On this form, you specify the manufacturer, the identifier of the model, and its description. You can also assign to the model an equipment type defined in the system. 

 Aer you have entered the model, you can assign it to appropriate equipment. 

#### Assigning a Manufacturer and Model to Equipment 

 You assign a manufacturer and its model to equipment in the Manufacturer Info section on the General tab of the Equipment (FS205000) form. You select the manufacturer of the equipment in the Manufacturer box, and you associate the manufacturer model with the equipment in the Manufacturing Model box. You can also specify the year when the equipment was produced in the Manufacturing Year box. 


<!-- PAGE_BREAK -->
 Managing Manufacturers | 105 

### Manufacturers: To Create a Manufacturer 

 To keep information about the company that produced certain stock items, you specify the manufacturer in the stock item settings during item creation. In this activity, you will create a manufacturer record in the system. 

#### Story 

 Suppose that SweetLife Service and Equipment Sales Center has in stocks equipment of the Juice Appliances Co. manufacturer, a producer of the juicers, and sells this equipment to its customers. Acting as an administrative user, you will create a manufacturer record in the system. 

#### Process Overview 

 On the Manufacturers (FS204400) form, you will create a manufacturer. 

#### System Preparation 

 Before you start creating a manufacturer, do the following: 

1. On the Acumatica ERP website, sign in to a company with the _U100_ dataset preloaded. You should sign in as     a system administrator by using the _gibbs_ username and the _123_ password. 

2. On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, select the     _SWEETEQUIP - Service and Equipment Sales Center_ branch. 

#### Step: Creating a Manufacturer 

 To create a manufacturer, do the following: 

1. On the _Manufacturers_ (FS204400) form, add a new record and specify the following settings: 

- **Manufacturer ID** : JuiceApp (see Item 1 in the following screenshot) 

- **Description** : Juice Appliances Co. (Item 2) 

- **Country** (in the **Main Address** section): _US_ (Item 3) 


<!-- PAGE_BREAK -->
 Managing Manufacturers | 106 

 Figure: Creation of a manufacturer 

2. On the form toolbar, click **Save**. 


<!-- PAGE_BREAK -->
 Equipment Management Use Cases | 107 

## Equipment Management Use Cases 

 With the equipment management functionality, you can perform equipment-related actions while you are working with sales orders, service orders, or appointments. 

 In this chapter, you will read about some possible use cases of registering sales and replacements of equipment or components in the equipment management functional area, as well as selling stock items without creating or modifying records in the equipment management functional area. 

### Selling Model Equipment 

 In Acumatica ERP, while you are working with a sales order, service order, or appointment on the applicable form, you can easily register the sale of model equipment entities. 

 For the use case considered in this topic, suppose that the customer has requested a model equipment entity, along with installation services from your company. A service manager of your company then receives the request and enters it into Acumatica ERP. Further processing is then performed by the scheduler, the assigned staff members, and the accountant who prepares invoices for the customer and processes them in the system. 

 In this topic, you will read about the steps involved in processing the service order along with the sale of the target equipment. 

#### Applying the System Settings of the Use Case 

 In this example, settings are applied in the system as follows: 

- On the _Billing Cycles_ (FS206000) form, the billing cycle assigned to the customer is configured to generate     billing documents and group them by appointment (that is, in the Summary area, the **Appointments** option     button is selected under both **Run Billing For** and **Group Billing Documents By** ). 

- For the service order type, on the **General** tab of the _Service Order Types_ (FS202300) form, the applicable     service order type is configured as follows: 

- In the **Billing Settings** section, the option button to create sales orders ( **Sales Orders** under **Generated**     **Billing Documents** ) is selected. 

- In the **General Settings** section, the **Complete Service Order When Its Appointments Are Completed**     check box is selected, so that service orders of the type are completed automatically when their     appointments are completed. Also, the **Complete Service Order When Its Appointments Are Closed**     check box is selected, meaning that service orders of the type are closed automatically when their     appointments are closed. In the diagram below, you can see the entire process of selling model equipment within a service order. 


<!-- PAGE_BREAK -->
Equipment Management Use Cases | **108** 


<!-- PAGE_BREAK -->
 Equipment Management Use Cases | 109 

 In the following sections, you will read about each step of the process. 

#### Entering an Order 

 When a service manager receives a customer request, he or she enters a service order by using the Service Orders (FS300100) form (see 1 in the diagram above). In the service order, the service manager specifies the customer from which the request has been received, the branch and branch location where the services are delivered, the services that should be performed. For instructions on how to create a service order, see Service Orders with a Single Appointment: Process Activity. 

 In addition, on the Inventory Item tab of this form, the service manager adds a model equipment entity that is sold. For the model equipment entity, the service manager selects Selling Model Equipment in the Equipment Action column. 

#### Creating Appointments 

 Aer the service order has been created in the system, a scheduler of your company (that is, a person who is responsible for planning the appointments) uses the Calendar Board (FS300300) form to schedule the appointments (2 in the diagram above) that are needed to perform the services requested by the customer. 

 When the scheduler selects a staff member to attend an appointment, he or she takes into consideration the work schedule of the staff member and filters the displayed staff members by the skills and licenses needed to perform the service and the service area where the services are provided. The scheduler checks the information on each appointment and enters additional information, such as the resource equipment used to perform the services and the stock items purchased by the customer along with the service. (The system assigns the Not Started status to the created appointments.) 

#### Attending an Appointment 

 The staff member who is assigned to an appointment looks through his or her upcoming appointments on the Staff Calendar Board (FS300400) form, identifies which appointment he or she has to attend currently, and goes to the location where the service has to be performed, which usually is the customer location). When the staff member starts to perform the service, he or she starts the appointment on the Appointments (FS300200) form (3 in the diagram above). The appointment is assigned the In Process status. 

 While the services are being performed, the staff member adds the information on services (such as statuses, quantities, and extra stock items that were used) to the appointment on the Appointments form. When the services are done, the staff member checks the details of the appointment. When everything is correct and complete, the staff member completes the appointment (4), which gives it the Completed status. 

 When all appointments of a particular service order are completed, the system assigns the service order the Completed status. 

#### Processing Invoices 

 Further processing of the service order is performed by an accountant. On the Appointments (FS300200) form, the accountant opens the completed appointment and verifies quantities and prices. When all information is verified and the appointments are ready for invoicing, the accountant closes the appointments and the service order (5). (The appointments and service order get the Closed status.) 

 The accountant generates a sales order document with the Open status by using the Run Appointment Billing (FS500100) form (6 in the diagram above). 

 The accountant then prepares the invoice (7) by using the Sales Orders (SO301000) form, and processes and releases the invoice on the Invoices (SO303000) form (8). 


<!-- PAGE_BREAK -->
 Equipment Management Use Cases | 110 

 When the invoice related to the service order is released, the sold model equipment converts to a target equipment, and the system adds a record for the new target equipment entity with the Active status on the Equipment (FS205000) form. 

### Selling a Model Equipment Entity and Optional Component 

 In Acumatica ERP, while you are working with a sales order, service order, or appointment on the applicable form, you can easily register the sale of model equipment entities and optional components of it. 

 For the use case considered in this topic, suppose that the customer has requested a model equipment entity and an optional component for it, along with installation services from your company. A service manager of your company receives the request and enters it into Acumatica ERP. Further processing is then performed by the scheduler, the assigned staff members, and the accountant who prepares invoices for the customer and processes them in the system. 

 In this topic, you will read about the steps involved in processing the service order that includes the sale of model equipment and its optional component. 

#### Applying the System Settings of the Use Case 

 In this example, settings are applied in the system as follows: 

- On the _Billing Cycles_ (FS206000) form, the billing cycle assigned to the customer is configured to generate     billing documents and group them by appointment (that is, in the Summary area, the **Appointments** option     button is selected under both **Run Billing For** and **Group Billing Documents By** ). 

- For the service order type, on the **General** tab of the _Service Order Types_ (FS202300) form, the applicable     service order type is configured as follows: 

- In the **Billing Settings** section, the option button to create sales orders ( **Sales Orders** under **Generated**     **Billing Documents** ) is selected. 

- In the **General Settings** section, the **Complete Service Order When Its Appointments Are Completed**     check box is selected, so that service orders of the type are completed automatically when their     appointments are completed. Also, the **Complete Service Order When Its Appointments Are Closed**     check box is selected, meaning that service orders of the type are closed automatically when their     appointments are closed. In the diagram below, you can see the entire process of selling model equipment and its optional component within a service order. 


<!-- PAGE_BREAK -->
Equipment Management Use Cases | **111** 


<!-- PAGE_BREAK -->
 Equipment Management Use Cases | 112 

 In the following sections, you will read about each step of the process. 

#### Entering an Order 

 When a service manager receives a customer request, he or she enters a service order by using the Service Orders (FS300100) form (see 1 in the diagram above). In the service order, the service manager specifies the customer from which the request has been received, the branch and branch location where the services are delivered, the services that should be performed. 

 In addition, on the Inventory Item tab of this form, the service manager adds the model equipment entity and the optional component to be sold as follows: 

1. For the model equipment entity, the service manager selects _Selling Model Equipment_ in the **Equipment**     **Action** column. 

2. For the optional component, the service manager selects _Selling Optional Component_ in the **Equipment**     **Action** column, specifies the related model equipment in the **Model Equipment Line Nbr.** column, and     selects the identifier of the equipment component in the **Component ID** column. 

#### Creating Appointments 

 Aer the service order has been created in the system, a scheduler of your company (that is, a person who is responsible for planning the appointments) uses the Calendar Board (FS300300) form to schedule the appointments (2 in the diagram above) that are needed to perform the services requested by the customer. 

 When the scheduler selects a staff member to attend an appointment, he or she takes into consideration the work schedule of the staff member and filters the displayed staff members by the skills and licenses needed to perform the service and the service area where the services are provided. The scheduler checks the information on each appointment and enters additional information, such as the resource equipment used to perform the services and the stock items purchased by the customer along with the service. (The system assigns the Not Started status to the created appointments.) 

#### Attending an Appointment 

 The staff member who is assigned to an appointment looks through his or her upcoming appointments on the Staff Calendar Board (FS300400) form, identifies which appointment he or she has to attend currently, and goes to the location where the service has to be performed, which usually is the customer location). When the staff member starts to perform the service, he or she starts the appointment on the Appointments (FS300200) form (3 in the diagram above). The appointment is assigned the In Process status. 

 While the services are being performed, the staff member adds the information on services (such as statuses, quantities, and extra stock items that were used) to the appointment on the Appointments form. When the services are done, the staff member checks the details of the appointment. When everything is correct and complete, the staff member completes the appointment (4), which gives it the Completed status. 

 When all appointments of a particular service order are completed, the system assigns the service order the Completed status. 

#### Processing Invoices 

 Further processing of the service order is performed by an accountant. On the Appointments (FS300200) form, the accountant opens the completed appointment and verifies quantities and prices. When all information is verified and the appointments are ready for invoicing, the accountant closes the appointments and the service order (5). (The appointments and service order get the Closed status.) 

 The accountant generates a sales order document with the Open status by using the Run Appointment Billing (FS500100) form (6 in the diagram above). 


<!-- PAGE_BREAK -->
 Equipment Management Use Cases | 113 

 The accountant then prepares the invoice (7) by using the Sales Orders (SO301000) form, and processes and releases the invoice on the Invoices (SO303000) form (8). 

 When the invoice related to the service order is released, the system automatically adds a record for the new target equipment entity with the Active status on the Equipment (FS205000) form, including an optional component of the Active status on the Components and Warranties tab. 

### Selling an Optional Component of Target Equipment 

 In Acumatica ERP, while you are working with a sales order, service order, or appointment on the applicable form, you can easily register a sale of an optional component of target equipment. 

 For the use case considered in this topic, suppose that the customer has requested that an optional component of target equipment (which the company already has) be installed at the customer site, along with installation services from your company. A service manager of your company receives the request and enters it into Acumatica ERP. Further processing is then performed by the scheduler, the assigned staff members, and the accountant who prepares invoices for the customer and processes them in the system. 

 In this topic, you will read about the steps involved in processing the service order that includes the sale of an optional component of target equipment. 

#### Applying the System Settings of the Use Case 

 In this example, settings are applied in the system as follows: 

- On the _Billing Cycles_ (FS206000) form, the billing cycle assigned to the customer is configured to generate     billing documents and group them by appointment (that is, in the Summary area, the **Appointments** option     button is selected under both **Run Billing For** and **Group Billing Documents By** ). 

- For the service order type, on the **General** tab of the _Service Order Types_ (FS202300) form, the applicable     service order type is configured as follows: 

- In the **Billing Settings** section, the option button to create sales orders ( **Sales Orders** under **Generated**     **Billing Documents** ) is selected. 

- In the **General Settings** section, the **Complete Service Order When Its Appointments Are Completed**     check box is selected, so that service orders of the type are completed automatically when their     appointments are completed. Also, the **Complete Service Order When Its Appointments Are Closed**     check box is selected, meaning that service orders of the type are closed automatically when their     appointments are closed. In the diagram below, you can see the entire process of selling an optional component of target equipment within a service order. 


<!-- PAGE_BREAK -->
 Equipment Management Use Cases | 114 

**_Figure: Selling an optional component of target equipment within a service order_** 


<!-- PAGE_BREAK -->
 Equipment Management Use Cases | 115 

 In the following sections, you will read about each step of the process. 

#### Entering an Order 

 When a service manager receives a customer request, he or she enters a service order by using the Service Orders (FS300100) form (see 1 in the diagram above). In the service order, the service manager specifies the customer from which the request has been received, the branch and branch location where the services are delivered, the services that should be performed. 

 In addition, on the Inventory Item tab of this form, the service manager adds the optional component to be sold. For the optional component, the service manager selects Selling Optional Component in the Equipment Action column, specifies the related target equipment in the Target Equipment ID column, and selects the identifier of the equipment component in the Component ID column. 

#### Creating Appointments 

 Aer the service order has been created in the system, a scheduler of your company (that is, a person who is responsible for planning the appointments) uses the Calendar Board (FS300300) form to schedule the appointments (2 in the diagram above) that are needed to perform the services requested by the customer. 

 When the scheduler selects a staff member to attend an appointment, he or she takes into consideration the work schedule of the staff member and filters the displayed staff members by the skills and licenses needed to perform the service and the service area where the services are provided. The scheduler checks the information on each appointment and enters additional information, such as the resource equipment used to perform the services and the stock items purchased by the customer along with the service. (The system assigns the Not Started status to the created appointments.) 

#### Attending an Appointment 

 The staff member who is assigned to an appointment looks through his or her upcoming appointments on the Staff Calendar Board (FS300400) form, identifies which appointment he or she has to attend currently, and goes to the location where the service has to be performed, which usually is the customer location). When the staff member starts to perform the service, he or she starts the appointment on the Appointments (FS300200) form (3 in the diagram above). The appointment is assigned the In Process status. 

 While the services are being performed, the staff member adds the information on services (such as statuses, quantities, and extra stock items that were used) to the appointment on the Appointments form. When the services are done, the staff member checks the details of the appointment. When everything is correct and complete, the staff member completes the appointment (4), which gives it the Completed status. 

 When all appointments of a particular service order are completed, the system assigns the service order the Completed status. 

#### Processing Invoices 

 Further processing of the service order is performed by an accountant. On the Appointments (FS300200) form, the accountant opens the completed appointment and verifies quantities and prices. When all information is verified and the appointments are ready for invoicing, the accountant closes the appointments and the service order (5). (The appointments and service order get the Closed status.) 

 The accountant generates a sales order document with the Open status by using the Run Appointment Billing (FS500100) form (6 in the diagram above). 

 The accountant then prepares the invoice (7) by using the Sales Orders (SO301000) form, and processes and releases the invoice on the Invoices (SO303000) form (8). 


<!-- PAGE_BREAK -->
 Equipment Management Use Cases | 116 

 When the invoices related to the service order is released, the system automatically adds a component with the Active status to the target equipment record on the Components and Warranties tab of the Equipment (FS205000) form. 

### Upgrading a Default Component of Model Equipment to Be Sold 

 In Acumatica ERP, while you are working with a sales order, service order, or appointment on the applicable form, you can easily register the sale of model equipment and replacement of a default component in it. 

 For the use case considered in this topic, suppose that the customer has requested a model equipment entity and a replacement of one of the default components of this equipment entity, along with installation services from your company. A service manager of your company receives the request and enters it into Acumatica ERP. Further processing is then performed by the scheduler, the assigned staff members, and the accountant who prepares invoices for the customer and processes them in the system. 

 In this topic, you will read about the steps involved in processing the service order that includes the sale of model equipment and the upgrade of its default component. 

#### Applying the System Settings of the Use Case 

 In this example, settings are applied in the system as follows: 

- On the _Billing Cycles_ (FS206000) form, the billing cycle assigned to the customer is configured to generate     billing documents and group them by appointment (that is, in the Summary area, the **Appointments** option     button is selected under both **Run Billing For** and **Group Billing Documents By** ). 

- For the service order type, on the **General** tab of the _Service Order Types_ (FS202300) form, the applicable     service order type is configured as follows: 

- In the **Billing Settings** section, the option button to create sales orders ( **Sales Orders** under **Generated**     **Billing Documents** ) is selected. 

- In the **General Settings** section, the **Complete Service Order When Its Appointments Are Completed**     check box is selected, so that service orders of the type are completed automatically when their     appointments are completed. Also, the **Complete Service Order When Its Appointments Are Closed**     check box is selected, meaning that service orders of the type are closed automatically when their     appointments are closed. In the diagram below, you can see the entire process of selling a piece of model equipment and upgrading a default component of model equipment within a service order. 


<!-- PAGE_BREAK -->
 Equipment Management Use Cases | 117 

**_Figure: Selling model equipment and upgrading a default component within a service order_** 

In the following sections, you will read about each step of the process. 


<!-- PAGE_BREAK -->
 Equipment Management Use Cases | 118 

#### Entering an Order 

 When a service manager receives a customer request, he or she enters a service order by using the Service Orders (FS300100) form (see 1 in the diagram above). In the service order, the service manager specifies the customer from which the request has been received, the branch and branch location where the services are delivered, the services that should be performed. 

 In addition, on the Inventory Item tab of this form, the service manager adds the model equipment entity and the component to be sold as follows: 

1. For the model equipment entity, the service manager selects _Selling Model Equipment_ in the **Equipment**     **Action** column. 

2. For the component, the service manager selects _Upgrading Component_ in the **Equipment Action** column,     specifies the related model equipment in the **Model Equipment Line Nbr.** column, and selects the identifier     of the equipment component in the **Component ID** column. 

#### Creating Appointments 

 Aer the service order has been created in the system, a scheduler of your company (that is, a person who is responsible for planning the appointments) uses the Calendar Board (FS300300) form to schedule the appointments (2 in the diagram above) that are needed to perform the services requested by the customer. 

 When the scheduler selects a staff member to attend an appointment, he or she takes into consideration the work schedule of the staff member and filters the displayed staff members by the skills and licenses needed to perform the service and the service area where the services are provided. The scheduler checks the information on each appointment and enters additional information, such as the resource equipment used to perform the services and the stock items purchased by the customer along with the service. (The system assigns the Not Started status to the created appointments.) 

#### Attending an Appointment 

 The staff member who is assigned to an appointment looks through his or her upcoming appointments on the Staff Calendar Board (FS300400) form, identifies which appointment he or she has to attend currently, and goes to the location where the service has to be performed, which usually is the customer location). When the staff member starts to perform the service, he or she starts the appointment on the Appointments (FS300200) form (3 in the diagram above). The appointment is assigned the In Process status. 

 While the services are being performed, the staff member adds the information on services (such as statuses, quantities, and extra stock items that were used) to the appointment on the Appointments form. When the services are done, the staff member checks the details of the appointment. When everything is correct and complete, the staff member completes the appointment (4), which gives it the Completed status. 

 When all appointments of a particular service order are completed, the system assigns the service order the Completed status. 

#### Processing Invoices 

 Further processing of the service order is performed by an accountant. On the Appointments (FS300200) form, the accountant opens the completed appointment and verifies quantities and prices. When all information is verified and the appointments are ready for invoicing, the accountant closes the appointments and the service order (5). (The appointments and service order get the Closed status.) 

 The accountant generates a sales order document with the Open status by using the Run Appointment Billing (FS500100) form (6 in the diagram above). 


<!-- PAGE_BREAK -->
 Equipment Management Use Cases | 119 

 The accountant then prepares the invoice (7) by using the Sales Orders (SO301000) form, and processes and releases the invoice on the Invoices (SO303000) form (8). 

 When the invoice related to the service order is released, the system adds a record for the new target equipment entity with the Active status on the Equipment (FS205000) form, including a new component of the Active status on the Components and Warranties tab. 

### Replacing Target Equipment 

 In Acumatica ERP, while you are working with a sales order, service order, or appointment on the applicable form, you can easily register the replacement of an existing target equipment entity with a new entity. 

 For the use case considered in this topic, suppose that the customer has requested a new equipment entity to replace an old one, along with replacement services from your company. A service manager of your company receives the request and enters it into Acumatica ERP. Further processing is then performed by the scheduler, the assigned staff members, and the accountant who prepares invoices for the customer and processes them in the system. 

 In this topic, you will read about the steps involved in processing the service order and replacing the target equipment. 

#### Applying the System Settings of the Use Case 

 In this example, settings are applied in the system as follows: 

- On the _Billing Cycles_ (FS206000) form, the billing cycle assigned to the customer is configured to generate     billing documents and group them by appointment (that is, in the Summary area, the **Appointments** option     button is selected under both **Run Billing For** and **Group Billing Documents By** ). 

- For the service order type, on the **General** tab of the _Service Order Types_ (FS202300) form, the applicable     service order type is configured as follows: 

- In the **Billing Settings** section, the option button to create sales orders ( **Sales Orders** under **Generated**     **Billing Documents** ) is selected. 

- In the **General Settings** section, the **Complete Service Order When Its Appointments Are Completed**     check box is selected, so that service orders of the type are completed automatically when their     appointments are completed. Also, the **Complete Service Order When Its Appointments Are Closed**     check box is selected, meaning that service orders of the type are closed automatically when their     appointments are closed. In the diagram below, you can see the entire process of replacing target equipment within a service order. 


<!-- PAGE_BREAK -->
Equipment Management Use Cases | **120** 


<!-- PAGE_BREAK -->
 Equipment Management Use Cases | 121 

 In the following sections, you will read about each step of the process. 

#### Entering an Order 

 When a service manager receives a customer request for replacement of target equipment, he or she enters a service order by using the Service Orders (FS300100) form (see 1 in the diagram above). In the service order, the service manager specifies the customer from which the request has been received, the branch and branch location where the services are delivered, the services that should be performed. 

 In addition, on the Inventory Item tab of this form, the service manager adds a model equipment entity that will replace the old target equipment entity. To specify that the replacement is being performed, for the model equipment entity, the service manager selects Replacing Target Equipment in the Equipment Action column and specifies the target equipment entity to be replaced in the Target Equipment ID column. 

#### Creating Appointments 

 Aer the service order has been created in the system, a scheduler of your company (that is, a person who is responsible for planning the appointments) uses the Calendar Board (FS300300) form to schedule the appointments (2 in the diagram above) that are needed to perform the services requested by the customer. 

 When the scheduler selects a staff member to attend an appointment, he or she takes into consideration the work schedule of the staff member and filters the displayed staff members by the skills and licenses needed to perform the service and the service area where the services are provided. The scheduler checks the information on each appointment and enters additional information, such as the resource equipment used to perform the services and the stock items purchased by the customer along with the service. (The system assigns the Not Started status to the created appointments.) 

#### Attending an Appointment 

 The staff member who is assigned to an appointment looks through his or her upcoming appointments on the Staff Calendar Board (FS300400) form, identifies which appointment he or she has to attend currently, and goes to the location where the service has to be performed, which usually is the customer location). When the staff member starts to perform the service, he or she starts the appointment on the Appointments (FS300200) form (3 in the diagram above). The appointment is assigned the In Process status. 

 While the services are being performed, the staff member adds the information on services (such as statuses, quantities, and extra stock items that were used) to the appointment on the Appointments form. When the services are done, the staff member checks the details of the appointment. When everything is correct and complete, the staff member completes the appointment (4), which gives it the Completed status. 

 When all appointments of a particular service order are completed, the system assigns the service order the Completed status. 

#### Processing Invoices 

 Further processing of the service order is performed by an accountant. On the Appointments (FS300200) form, the accountant opens the completed appointment and verifies quantities and prices. When all information is verified and the appointments are ready for invoicing, the accountant closes the appointments and the service order (5). (The appointments and service order get the Closed status.) 

 The accountant generates a sales order document with the Open status by using the Run Appointment Billing (FS500100) form (6 in the diagram above). 

 The accountant then prepares the invoice (7) by using the Sales Orders (SO301000) form, and processes and releases the invoice on the Invoices (SO303000) form (8). 


<!-- PAGE_BREAK -->
 Equipment Management Use Cases | 122 

 When the invoice related to the service order is released, the system adds a record for the new target equipment entity on the Equipment (FS205000) form and changes the status of replaced target equipment entity to Disposed on the same form. 

### Replacing a Component of Target Equipment 

 In Acumatica ERP, while you are working with a sales order, service order, or appointment on the applicable form, you can register the replacement of components of target equipment with new components. 

 For the use case considered in this topic, suppose that the customer has requested a new component to replace an old one in the existing target equipment, along with replacement services from your company. A service manager of your company receives the request and enters it into Acumatica ERP. Further processing is then performed by the scheduler, the assigned staff members, and the accountant who prepares invoices for the customer and processes them in the system. 

 In this topic, you will read about the steps involved in processing the service order and replacing the component. 

#### Applying the System Settings of the Use Case 

 In this example, settings are applied in the system as follows: 

- On the _Billing Cycles_ (FS206000) form, the billing cycle assigned to the customer is configured to generate     billing documents and group them by appointment (that is, in the Summary area, the **Appointments** option     button is selected under both **Run Billing For** and **Group Billing Documents By** ). 

- For the service order type, on the **General** tab of the _Service Order Types_ (FS202300) form, the applicable     service order type is configured as follows: 

- In the **Billing Settings** section, the option button to create sales orders ( **Sales Orders** under **Generated**     **Billing Documents** ) is selected. 

- In the **General Settings** section, the **Complete Service Order When Its Appointments Are Completed**     check box is selected, so that service orders of the type are completed automatically when their     appointments are completed. Also, the **Complete Service Order When Its Appointments Are Closed**     check box is selected, meaning that service orders of the type are closed automatically when their     appointments are closed. In the diagram below, you can see the entire process of replacing a component of target equipment within a service order. 


<!-- PAGE_BREAK -->
 Equipment Management Use Cases | 123 

**_Figure: Replacing a component of target equipment_** 


<!-- PAGE_BREAK -->
 Equipment Management Use Cases | 124 

 In the following sections, you will read about each step of the process. 

#### Entering an Order 

 When a service manager receives a customer request for replacement of target equipment, he or she enters a service order by using the Service Orders (FS300100) form (see 1 in the diagram above). In the service order, the service manager specifies the customer from which the request has been received, the branch and branch location where the services are delivered, the services that should be performed. 

 In addition, on the Inventory Item tab of this form, the service manager adds a component that will replace the old component. To specify that the replacement is performed, for the new component, the service manager selects Replacing Component in the Equipment Action column, specifies the target equipment entity in which the component has to be replaced in the Target Equipment ID column, and specifies the component to be replaced in the Component Ref. Nbr. column. 

#### Creating Appointments 

 Aer the service order has been created in the system, a scheduler of your company (that is, a person who is responsible for planning the appointments) uses the Calendar Board (FS300300) form to schedule the appointments (2 in the diagram above) that are needed to perform the services requested by the customer. 

 When the scheduler selects a staff member to attend an appointment, he or she takes into consideration the work schedule of the staff member and filters the displayed staff members by the skills and licenses needed to perform the service and the service area where the services are provided. The scheduler checks the information on each appointment and enters additional information, such as the resource equipment used to perform the services and the stock items purchased by the customer along with the service. (The system assigns the Not Started status to the created appointments.) 

#### Attending an Appointment 

 The staff member who is assigned to an appointment looks through his or her upcoming appointments on the Staff Calendar Board (FS300400) form, identifies which appointment he or she has to attend currently, and goes to the location where the service has to be performed, which usually is the customer location). When the staff member starts to perform the service, he or she starts the appointment on the Appointments (FS300200) form (3 in the diagram above). The appointment is assigned the In Process status. 

 While the services are being performed, the staff member adds the information on services (such as statuses, quantities, and extra stock items that were used) to the appointment on the Appointments form. When the services are done, the staff member checks the details of the appointment. When everything is correct and complete, the staff member completes the appointment (4), which gives it the Completed status. 

 When all appointments of a particular service order are completed, the system assigns the service order the Completed status. 

#### Processing Invoices 

 Further processing of the service order is performed by an accountant. On the Appointments (FS300200) form, the accountant opens the completed appointment and verifies quantities and prices. When all information is verified and the appointments are ready for invoicing, the accountant closes the appointments and the service order (5). (The appointments and service order get the Closed status.) 

 The accountant generates a sales order document with the Open status by using the Run Appointment Billing (FS500100) form (6 in the diagram above). 

 The accountant then prepares the invoice (7) by using the Sales Orders (SO301000) form, and processes and releases the invoice on the Invoices (SO303000) form (8). 


<!-- PAGE_BREAK -->
 Equipment Management Use Cases | 125 

 When the invoice related to the service order is released, the system modifies a record for the target equipment entity on the Equipment (FS205000) form. That is, the system changes the status of replaced component to Disposed and adds a record for a new component on the Components and Warranties tab. 

### Selling a Stock Item that Does Not Require Record in Equipment Management 

 In Acumatica ERP, while employees are working with a sales order, service order, or appointment on the applicable form, they can reflect the sales of stock items without creating or modifying records in the equipment management functional area. 

 For the use case to be considered in this topic, suppose that the customer has requested additional component of a target equipment. Your company is not going to keep record of the sold component in the system. The request is received and entered into Acumatica ERP by a service manager of your company. Further processing of a service order is then performed by the scheduler, the assigned staff members, and the accountant who prepares invoices for the customer and processes them in the system. 

 In this topic, you will read about the steps involved in the processing of the service order that includes the sale of stock item that do not require recording in the system. 

#### Applying the System Settings of the Use Case 

 In this example, settings are applied in the system as follows: 

- On the _Billing Cycles_ (FS206000) form, the billing cycle assigned to the customer is configured to generate     billing documents and group them by appointment (that is, in the Summary area, the **Appointments** option     button is selected under both **Run Billing For** and **Group Billing Documents By** ). 

- For the service order type, on the **General** tab of the _Service Order Types_ (FS202300) form, the applicable     service order type is configured as follows: 

- In the **Billing Settings** section, the option button to create sales orders ( **Sales Orders** under **Generated**     **Billing Documents** ) is selected. 

- In the **General Settings** section, the **Complete Service Order When Its Appointments Are Completed**     check box is selected, so that service orders of the type are completed automatically when their     appointments are completed. Also, the **Complete Service Order When Its Appointments Are Closed**     check box is selected, meaning that service orders of the type are closed automatically when their     appointments are closed. In the diagram below, you can see the entire process of replacing target equipment within a service order. 


<!-- PAGE_BREAK -->
 Equipment Management Use Cases | 126 

**_Figure: Selling a stock item that do not require recording in Equipment Management_** 


<!-- PAGE_BREAK -->
 Equipment Management Use Cases | 127 

 In the following sections, you will read about each step of the process 

#### Entering an Order 

 When a service manager receives a customer request, he or she enters a service order by using the Service Orders (FS300100) form (see 1 in the diagram above). In the service order, the service manager specifies the customer from which the request has been received, the branch and branch location where the services are delivered, and the services that should be performed. 

 The service manager adds the stock item to be sold on the Details tab of this form and selects N/A in the Equipment Action column. 

 In addition, the service manager adds the optional component to be sold on the Details tab. For the component, the service manager selects N/A in the Equipment Action column, specifies the related target equipment in the Target Equipment ID column, and selects the identifier of the equipment component in the Component ID column. 

#### Creating Appointments 

 Aer the service order has been created in the system, a scheduler of your company (that is, a person who is responsible for planning the appointments) uses the Calendar Board (FS300300) form to schedule the appointments (2 in the diagram above) that are needed to perform the services requested by the customer. 

 When the scheduler selects a staff member to attend an appointment, he or she takes into consideration the work schedule of the staff member and filters the displayed staff members by the skills and licenses needed to perform the service and the service area where the services are provided. The scheduler checks the information on each appointment and enters additional information, such as the resource equipment used to perform the services and the stock items purchased by the customer along with the service. (The system assigns the Not Started status to the created appointments.) 

#### Attending an Appointment 

 The staff member who is assigned to an appointment looks through his or her upcoming appointments on the Staff Calendar Board (FS300400) form, identifies which appointment he or she has to attend currently, and goes to the location where the service has to be performed, which usually is the customer location). When the staff member starts to perform the service, he or she starts the appointment on the Appointments (FS300200) form (3 in the diagram above). The appointment is assigned the In Process status. 

 While the services are being performed, the staff member adds the information on services (such as statuses, quantities, and extra stock items that were used) to the appointment on the Appointments form. When the services are done, the staff member checks the details of the appointment. When everything is correct and complete, the staff member completes the appointment (4), which gives it the Completed status. 

 When all appointments of a particular service order are completed, the system assigns the service order the Completed status. 

#### Processing Invoices 

 Further processing of the service order is performed by an accountant. On the Appointments (FS300200) form, the accountant opens the completed appointment and verifies quantities and prices. When all information is verified and the appointments are ready for invoicing, the accountant closes the appointments and the service order (5). (The appointments and service order get the Closed status.) 

 The accountant generates a sales order document with the Open status by using the Run Appointment Billing (FS500100) form (6 in the diagram above). 

 The accountant then prepares the invoice (7) by using the Sales Orders (SO301000) form, and processes and releases it on the Invoices (SO303000) form (8). 


<!-- PAGE_BREAK -->
 Equipment Management Use Cases | 128 

When the invoice related to the service order is released, the system does not add any records on the _Equipment_ (FS205000) form. 


<!-- PAGE_BREAK -->
 Appendix | 129 

## Appendix 

 The appendix provides some reference information relevant for this document. The additional information in this section is a useful source for readers who need some reference material that is related to system forms and tables, as well as running reports. 

 In this section: 

- _Reports_ 

- _Form Toolbar and More Menu_ 

- _Table Toolbar_ 

- _Glossary_ 

### Reports 

 In addition to offering a comprehensive collection of reports, Acumatica ERP gives you a high degree of control over each report. 

 On a typical report form, described in Report Form , you can adjust the report settings to meet your specific informational needs. You can specify sorting and filtering options and select the data by using report-specific settings—such as financial period, ledger, and account—and configure additional processing settings for each report. The settings can be saved as a report template for later use. For details, see To Run a Report and To Create a Report Template. 

 Aer you run a report, the prepared report appears on your screen. You can print the report, export the report to a file, or send the report by email. 

 This chapter describes a typical report form and the main tasks related to using reports. 

#### In This Chapter 

- _Report Form_ 

- _To Run a Report_ 

- _To Modify a Filter on a Report Form_ 

- _To Create a Report Template_ 

### Report Form 

 Before you run a report, you specify the needed parameters on the report form. You can select a template and manually make selections that affect the information collected. Also, you can specify appropriate settings to print or email the finished report. 

 The following screenshot shows a typical report form. 


<!-- PAGE_BREAK -->
 Appendix | 130 

 Figure: Report form 

1. Report form toolbar 

2. Selection area 

3. Details area 

#### Report Form Toolbar 

 The following table lists the buttons of the report form toolbar, which appears on the report form when you are configuring a report. 

 Button Description 

 Cancel Clears any changes you have made on the report form and restores the default settings. 

 Run Report Initiates data collection for the report and displays the generated report. 

 Save Template Gives you the ability to save the currently selected report as a template with all the selected settings. 

 Remove Template 

 Removes the previously saved template. 

 This button is available only when a template is specified on the report form. 

#### Report Toolbar 

 The following table lists the buttons of the report toolbar, which is shown on the generated report that you have run. 

 Buttons Icon Description 

 Parameters Navigates back to the report form to let you change the report parameters. 


<!-- PAGE_BREAK -->
 Appendix | 131 

 Buttons Icon Description 

 Refresh Refreshes the information displayed in the report (if any data changes were made). 

 Groups Adds to the report a le pane where the report structure is shown. Click a report node to highlight the pertinent data in the right pane. 

 View PDF / View HTML 

##### / 

 Displays the report as a PDF, or displays the report in HTML format. The available button depends on the current report view; if you're viewing a PDF, for instance, you will see the View HTML button. 

 First Displays the first page of the report. 

 Previous Displays the previous page. 

 Next Displays the next page. 

 Last Displays the last page of the report. 

 Print Opens the browser dialog box so you can print the report. 

 Send Opens the Email Activity dialog box, which you use to send the report file (in the selected format) to the specified email address. 

 Export Enables you to export the data in the selected format (Excel or PDF). 

#### Selection Area 

 You use the elements in this area to select an existing template, which you can share with other users or use as your default report settings. You can also select the locale and the localization. 

 The elements of this area, which are available for all reports, are described in the following table. 

 Element Description 

 Template The template to be used for the report. If any templates have been created and saved, you can select a template to use its settings for the report. 

 Default A check box that indicates (if selected) that the selected template is marked as the default one for you. A default template cannot be shared. 


<!-- PAGE_BREAK -->
 Appendix | 132 

 Element Description 

 Shared A check box that indicates (if selected) that the selected template is shared with other users. A shared template cannot be marked as the default. 

 Locale A locale that you select to indicate to the system that the report should be prepared with the data translated to the language associated with this locale. This box is displayed if there are multiple active locales in the system. For details, see Locales and Languages. 

 Localization The localization that is used for the report. 

 This box appears on the form if the following conditions are met: 

- The _Canadian Localization_ or _UK Localization_ feature is enabled on the _Enable/Disable_     _Features_ (CS100000) form. 

- A localized version of the report exists in the system. One of the following options can be selected in the box: 

- _None_ (default): Even though the report has a localized version, the report will be printed     without any localization applied. 

- _Canada_ : The Canadian version of the report will be printed. If the company in which you     are signed in has _Canada_ selected in the **Localization** box on the **Company Details** tab     ( **Configuration Settings** section) on the _Companies_ (CS101500) form, this setting is se-     lected by default in the current box. 

 To determine if a localized version of a report exists, the system checks the Site\ReportsDefault directory, the database, the ReportsCustomized folder, and the ReportsDefault folder. 

#### Report Parameters Tab 

 The Report Parameters tab has sections where you can specify the contents of the report depending on the current report and vary in the following regards: 

- Which elements are available on a particular report 

- Whether elements contain default values 

- Whether specific elements require values to be selected 

- Whether elements may be le blank to let you display a broader range of data 

#### Additional Sort and Filters Tab 

 The Additional Sort and Filter tab contains additional sorting and filtering conditions: 

- **Additional sorting conditions** : Defines the sorting order. You can add a line, select one of the report-     specific properties, and select the _Descending_ or _Ascending_ sort order for the column. 

- **Additional filtering conditions** : Defines the report filter. You can add a line, select one of the report-     specific properties, and define a condition and its value. The list of conditions include one-operand and     two-operand conditions. To create a more complicated logical expression, you can use brackets and logical     operations between brackets. For more information on creating filters, see _Managing Advanced Filters_. For     detailed procedures on using ad hoc filters, see _Reports: Process Activity_. 


<!-- PAGE_BREAK -->
 Appendix | 133 

#### Print and Email Settings Tab 

 If you plan to print the report or save the report as a PDF, select the appropriate settings in the Print Settings area. 

 Table: Print Settings Section 

 Element Description 

 Deleted Records Selects the visibility of the data deleted from the database. 

 Print All Pages Causes all pages of the report to be printed. 

 Print in PDF format Displays the report in PDF format. 

 Compress PDF file Indicates that the system will generate a compressed PDF. 

 Embed fonts in PDF file Indicates that the system will generate the PDF with fonts embedded. 

 If you plan to send the report as an email, in the Email Settings area, specify the format in which the report will be sent, as well as the email subject, the recipients of copies of the report, and the email account of the recipient. 

 Table: Email Settings Section 

 Field Description 

 Format The format ( HTML , PDF , or Excel ) in which the report will be emailed. 

 Merge function for reports in Excel format is not supported. If you want to merge a report with other reports and send an aggregated report by email, you should select either the HTML or PDF format for the report. 

 Email Account The email address of the recipient. 

 CC An additional addressee to receive a carbon copy (CC) of the email. 

 BCC The email address of a person to receive a blind carbon copy (BCC) of the email; an address entered in this box will be hidden from other recipients. 

 Subject The subject of the email. 

#### Report Versions Tab 

 If the report has multiple versions, you can select one of them. 

 This tab displays the data only to users assigned with report designer user role. 

 Report versions are designed in the Report Designer. To activate editing report versions, give the user report designer role. 

 Table: Report Versions Tab Toolbar 

 Button Description 

 Refresh Refreshes the list of report versions. 


<!-- PAGE_BREAK -->
 Appendix | 134 

 Button Description 

 Select Temporarily activates the selected report version. 

#### Email Notifications Tab 

 The Email Notifications tab lists the email templates used to send the report. 

 Table: Table Toolbar The table toolbar includes standard buttons and buttons that are specific to this table. For the list of standard buttons, see Table Toolbar. The table-specific buttons are listed below. 

 Button Description 

 Schedule Report Opens the Email Templates (SM204003) form, where you can select or create a new email template that can be used to send the report and specify a schedule for notifications. 

 The button appears only if the user account to which you are signed in has at least the Insert level of access rights to the Email Templates (SM204003) form. 

 Table: Table Columns 

 Column Description 

 Email Template The email template to be used to generate the body of the email notification. 

 Screen ID The identifier of the form whose elements are used as the source of specific placeholders for this template. 

 Recipients The email addresses of the people to receive the email. Use semicolons as separators between addresses. 

 Report Template The template configured for the report. 

 Report Template Owner 

 The name of the user who created the template. 

 Related Links 

- _To Run a Report_ 

- _To Create a Report Template_ 

- _Types of Filters_ 

- _Automation Schedule Statuses_ 

### Report 

 Once you click Run Report , the prepared report appears on your screen. You can print the report, export the report to a file, or send the report by email. 

 The prepared report is displayed in the report view of the report form. For more information about setting up the report parameters and the parameters view of the report form, see Report Form. 


<!-- PAGE_BREAK -->
 Appendix | 135 

#### Report Toolbar 

 The following table lists report toolbar buttons. 

 Buttons Icon Description 

 Parameters Navigates back to the report form to let you change the report parameters. 

 Refresh Refreshes the information displayed in the report (if any data changes were made). 

 Groups Adds to the report a le pane where the report structure is shown. Click a report node to highlight the pertinent data in the right pane. 

 View PDF / View HTML 

##### / 

 Displays the report as a PDF, or displays the report in HTML format. The available button depends on the current report view; if you're viewing a PDF, for instance, you will see the View HTML button. 

 First Displays the first page of the report. 

 Previous Displays the previous page. 

 Next Displays the next page. 

 Last Displays the last page of the report. 

 Print Opens the browser dialog box so you can print the report. 

 Send Opens the Email Activity dialog box, which you use to send the report file (in the chosen format) to the specified email address. 

 Export Enables you to export the data in the chosen format (Excel or PDF). 

 Related Links 

- _Filters_ 

- _Report_ 


<!-- PAGE_BREAK -->
 Appendix | 136 

### Form Toolbar and More Menu 

 The form toolbar, which is available on most forms, is located near the top of the form, under the form name (and record title, if the form has one), as shown in the following screenshot. 

 The form toolbar includes the following: 

- Standard buttons (see Item 1 in the following screenshot), with the particular set of buttons depending on     the specific form 

- On some forms, form-specific buttons (Item 2) 

- On some form, the More button (Item 3); clicking this button opens the More menu (Item 4), which contains     additional form-specific commands 

 Figure: The form toolbar and the More menu 

 You use the standard buttons on the form toolbar to navigate through entities that were created by using the current form, insert or delete an entity, use the clipboard, save the data you have entered, or cancel your work on the form. 

 A form toolbar on a particular form may include form-specific buttons in addition to standard buttons; it may also (or instead) include commands on the More menu. By using these form-specific buttons and commands, users can navigate to related records and forms, initiate specific actions, and perform modifications or processing related to the functionality of the form. 

#### Standard Form Toolbar Buttons 

 The following table lists the standard buttons of the form toolbar. A form toolbar may include some or all of these buttons. 


<!-- PAGE_BREAK -->
 Appendix | 137 

**_Table: Standard Form Toolbar Buttons_** 

 Button Icon Description 

 Discard Changes and Close 

 Discards any unsaved changes made to the entity, and navigates to the list of records that is related to the current form. 

 If the system opened the current form in a pop-up window (from a different form), this button is not displayed. To return to the original form, click Close. 

 Save & Close Saves the changes made to the entity, and navigates to the list of records that is related to the current form. 

 Save Saves the changes made to the entity. 

 Cancel Depending on the context, does one of the following: 

- Discards any unsaved changes you have made to entities and retrieves the     last saved version. 

- Clears all changes and restores the default settings. 

 Add New Record Clears any values you've specified on the form, restores any default values, and initiates the creation of a new entity. 

 Delete Deletes the currently selected entity, clears any values you have specified on the form, and populates elements with the default values that the system inserts when a new entity is created. 

 You can delete an entity only if it is not linked with another entity. 

 Archive Archives the document that is opened on the form. This button is available if archival is set up on the Archival Policy (SM200400) form for the type of the document open on the form and if the document meets the archival criteria—that is, if the document is older than the retention period specified on the Archival Policy form and has been processed to completion or canceled. 

 For more information on archiving the documents, see Archiving Old Documents in the Acumatica ERP System Administration guide. 

 Extract Extracts the archived document from the archive and makes the system use this document in day-to-day operations. This button is available if archival is set up on the Archival Policy (SM200400) form for the type of the document opened on the form is archived. 

 For more information on archiving the documents, see Archiving Old Documents in the Acumatica ERP System Administration guide. 


<!-- PAGE_BREAK -->
 Appendix | 138 

 Button Icon Description 

 Clipboard Provides menu commands you can use to do the following: 

- **Copy** : Copy the selected entity to the clipboard. 

- **Paste** : Paste an entity or template from the clipboard. 

- **Save as Template** : Create a template based on the selected entity. 

- **Import from XML** : Import an entity or a template from an .xml file. 

- **Export to XML** : Export the selected entity to an .xml file. For more information on templates and copy-and-paste operations in Acumatica ERP, see _Using Forms_. For more information on importing and ex- porting .xml files, see _Importing and Exporting Data to Excel and XML_ in the Acumatica ERP User Guide. 

 Go to First Record Displays the first entity (in the list of entities of the specific type) and its details. 

 Go to Previous Record 

 Displays the previous entity and its details. 

 Go to Next Record Displays the next entity and its details. 

 Go to Last Record Displays the last entity (in the list of entities of the specific type) and its details. 

 View Schedule Gives you the ability to schedule the processing. For more information, see Automated Processing: General Information. 

#### Inquiry Form Toolbar Buttons 

 Acumatica ERP inquiry forms present data in a tabular format; they may also have selection criteria you can use to filter the data in the table. Predefined inquiry forms are provided as part of Acumatica ERP out of the box, and inquiry forms can be designed by a user with the appropriate access rights by using the Generic Inquiry tool (for details, see Managing Generic Inquiries in the Acumatica ERP Reporting Tools Guide). A form toolbar of an inquiry form contains both the standard form toolbar buttons (described in the table above) and the additional buttons described below. 

 Button Icon Description 

 Refresh Refreshes the inquiry data in the table. 

 Cancel Clears all changes (including selection criteria that has been specified, if the generic inquiry form has this criteria) and restores the default settings. 


<!-- PAGE_BREAK -->
 Appendix | 139 

 Button Icon Description 

 Add New Record Initiates the creation of a new entity. 

 Edit Opens the applicable data entry form with the selected record. 

 Fit to Screen Expands the form to fit on the screen and adjusts the column widths proportionally. 

 Export to Excel Exports the data to an Excel file. For more information, see Integration with Excel in the Acumatica ERP Getting Started Guide. 

 Filter Settings Opens the Filter Settings dialog box, which you can use to define a new filter. After the filter has been created and saved, the corresponding tab appears on the table. For more information about filtering, see Filters. 

#### The More Menu and Form-Specific Buttons 

 If there are multiple form-specific commands on the form toolbar, they are displayed on a single menu—the More menu—and listed under descriptive categories, which makes it easier to find the needed menu command. On the More menu, you can easily define your favorite menu commands, which eases access to them. 

 On some forms, the system places a button (which is highlighted in green) on the form toolbar for the expected next command, which represents the likely next step to be performed on the selected record. The following screenshot, which shows the Cash Transactions (CA304000) form, illustrates an example of the form toolbar and the More menu, which contains categories and menu commands. 

 Figure: The form toolbar of the Transactions form 

 The numbered items in the screenshot indicate the following: 

1. A highlighted button for the expected next command, which represents the next logical step to be     performed on the record selected on the form 

2. Another button for a command that is commonly performed on the form 

3. The More button, which you click to open the More menu 


<!-- PAGE_BREAK -->
 Appendix | 140 

4. The More menu with most form-specific menu commands and descriptive categories on it 

5. The star icon, which is used to mark the individual user's favorite commands on the form 

6. An unavailable command 

#### Favorite Commands 

 Based on your role in the company and your job duties, you may use some commands more oen than others. On the form toolbar, you can specify these commands as favorites. This will cause the system to duplicate the commands as form toolbar buttons, easing access to them. 

 To add a command to the form toolbar as a button, you open the More menu, hover over the needed command, and click the star icon when it appears. The yellow color of the star indicates that the command has been added to your favorites, and a button for the command appears on the form toolbar immediately. The following example shows two commands that have been added to the user's favorites on the Invoices and Memos (AR301000) form and thus added as buttons on the form toolbar. 

 Figure: Favorite commands on the More menu and the corresponding toolbar buttons 

 Favorites are individual to each user account, specific to a particular form, and preserved across user sessions. 

#### Highlighted Buttons and Commands 

 On some forms, the system applies predefined logic to commands for specific records. Based on this logic, the system may place a button on the form toolbar, highlight it using some color, or do both of these things. 

 If a command is the expected next command (that is, the command that is most likely to be clicked for a record with the current status), it is shown both on the form toolbar and on the More menu. The primary command on the form toolbar is highlighted in green (see Item 1 in the following screenshot), and on the More menu, it is marked with a green dot (Item 2). Below is an example of a cash transaction on the Cash Transactions (CA304000) form that has the On Hold status (Item 3). Before you can process it, you need to remove it from hold. Because Remove Hold is the next logical command, it is displayed as a button on the form toolbar and highlighted in green. 


<!-- PAGE_BREAK -->
 Appendix | 141 

 Figure: The highlighted command and the corresponding status 

#### Unavailable Commands on the More Menu 

 By default, on the More menu, the system displays all commands that could be available for the form, based on the system configuration. Some of these commands may be unavailable (that is, they are listed but cannot be clicked). These are the commands that are not applicable to the record based on its current status or other factors. 

#### The Responsive Form Toolbar and More Menu 

 The form toolbar and the More menu have a responsive layout, meaning that they dynamically adjust to different screen sizes. When there is enough space, buttons for highlighted and favorite commands are displayed on the form toolbar. When the screen size decreases, the system moves the commands off the form toolbar one by one but keeps them on the More menu. 

 If there are multiple categories on the More menu, the categories and menu commands can be displayed in multiple columns on the More menu, depending on the screen size and the number of categories. When the screen size decreases, the system moves some categories and menu commands to the le to decrease the number of columns, and in the screens of the smallest size, all categories are displayed in one column. Below are two examples of the same menu in different screen sizes for a record on the Bills and Adjustments (AP301000) form. 


<!-- PAGE_BREAK -->
 Appendix | 142 

**_Figure: The form toolbar and More menu on a wide screen_** 

**_Figure: The form toolbar and More menu on a narrow screen_** 


<!-- PAGE_BREAK -->
 Appendix | 143 

 Related Links 

- _Integration with Excel_ 

- _To Copy a Document Contents to a New Document_ 

- _To Create a Document with a Template_ 

### Table Toolbar 

 Each table on an Acumatica ERP form, tab, dialog box, or page has a table toolbar, which contains the buttons you can use to work with the details or objects of the table. A toolbar, shown in the following screenshot, includes buttons that are specific to the table, standard buttons that most table toolbars have, and the search box (for some tables; for others, the search box is displayed in the filtering area). 

 Figure: Table toolbar 

#### Standard Table Toolbar Buttons 

 The following table describes the standard table toolbar buttons. A table toolbar may include some or all of those buttons. If a table toolbar includes table-specific buttons, they are described in the reference help topic. 

 Button Icon Description 

 Refresh Refreshes the data in the table. 

 Switch Between Grid and Form 

 Controls how the elements are displayed: in a table (grid) with rows and columns; or as separately arranged elements for one table row, with navigation tools you use to move between row data. 

 Add Row Appends a new row to the table so you can define a new detail or object. The new row may contain some default values. 

 Delete Row Deletes the selected row or rows. 


<!-- PAGE_BREAK -->
 Appendix | 144 

 Button Icon Description 

 Move Row Up Moves the selected row one position up. 

 Move Row Down Moves the selected row one position down. 

 Fit to Screen Adjusts the table to the screen width and makes the column width proportional. 

 Export to Excel Exports the data in the table to an Excel file. For more information, see Integration with Excel in the Acumatica ERP Getting Started Guide. 

 Filter Settings Opens the Filter Settings dialog box, which you can use to define a new advanced filter. After you create and save the filter, the corresponding tab appears on the table. 

 For more information about filtering, see Filters. For details on the Filter Settings dialog box, see Filter Settings Dialog Box. 

 Load Records from File 

 Opens the File Upload dialog box, described in detail below, so you can locate and upload a local file for import. You can use this option to import data from an Excel spreadsheet (.xlsx) or .csv file. For the detailed procedure, see To Import Data from a Local File to a Table. 

 Search A box in which you can type a word, part of a word, or multiple words. As you type, the system filters the contents of the table to display only rows that contain the string you have typed in any column. 

 Download Downloads the selected file. 

#### File Upload Dialog Box 

 With the File Upload dialog box, you select a file of one of the supported formats (.csv or .xlsx) to import data from the file. 

 Element Description 

 File Path The path to the file you want to upload. 

 To select the file, click Browse , and then find and select the file you want to upload. 

 The dialog box has the following button. 

 Upload Closes the dialog box and opens the Common Settings dialog box, where you specify the import settings. 


<!-- PAGE_BREAK -->
 Appendix | 145 

#### Common Settings Dialog Box 

 In the Common Settings dialog box, which opens if you click Upload in the File Upload dialog box, you specify the import settings for a file that you has selected in the File Upload dialog box. 

 Element Description 

 Separator Chars The character that is used as the separator in the imported file. 

 By default, the comma is used as the separator. You specify the separator character if the imported file uses any other separator. 

 This box appears only if you import data from a .csv file. 

 Null Value Optional. The value that is used to mark an empty column in the imported file. You specify the null value if the value in the imported file differs from the empty string. 

 Encoding The encoding that is used in the imported file. 

 This box appears only if you import data from a .csv file. 

 Culture The regional format that has been used to display the time, currency, and other measurements in the imported file. 

 Mode The mode that determines which rows of the uploaded file will be imported into the table. The following options are available: 

- _Update Existing_ : The rows already present in the table will be updated, and the rows     not present in the table will be added. 

- _Bypass Existing_ : Only the new rows that are not present in the table will be imported.     The rows that are already present in the table will not be updated. 

- _Insert All Records_ : All the rows from the file will be imported into the table. 

 If you select this option, you may get duplicated rows because the system does not check for duplicates when importing rows from the file. 

 The dialog box has the following buttons. 

 OK Closes the dialog box and opens the Columns dialog box. 

 Cancel Closes the dialog box without importing the data from the file. 

#### Columns Dialog Box 

 In the Columns dialog box, which opens if you click OK in the Common Settings dialog box, you match the columns in the imported file that you have selected in the File Upload dialog box to the columns in the Acumatica ERP table to which you are importing data. 

 Element Description 

 Column Name The name of the column in the uploaded file. 

 Property Name The name of the corresponding column in the table in Acumatica ERP. 


<!-- PAGE_BREAK -->
 Appendix | 146 

 Element Description 

 The dialog box has the following buttons. 

 OK Closes the dialog box and imports the selected file. 

 Cancel Closes the dialog box without importing the data from the file. 

**Related Links** 

- _Tables_ 

- _Integration with Excel_ 

- _To Import Data from a Local File to a Table_ 


