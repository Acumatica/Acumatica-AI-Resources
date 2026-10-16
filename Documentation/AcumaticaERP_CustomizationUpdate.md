## Developer Guide 

# Customization Update 

# 2025 R2 


<!-- PAGE_BREAK -->
 Contents | 2 

## Contents 

 Copyright...............................................................................................................................................3 

 Validating Customization Projects........................................................................................................... 4 

 Validation of Customization Projects: General Information............................................................................4 

 Validation of Customization Projects: Compatibility Validation..................................................................... 4 

 Validation of Customization Projects: Compatibility Validation Errors.......................................................... 6 

 Validation of Customization Projects: Using AI Tools...................................................................................... 7 

 Validation of Customization Projects: Ignore List for the Compatibility Validation Errors............................ 8 

 Validation of Customization Projects: ISV Solutions....................................................................................... 8 

 Validation of Customization Projects: Certification Status of Projects.........................................................10 

 Updating Customization Projects to Acumatica ERP 2025 R2.................................................................... 12 

 Customization Update to 2025 R2: Shipments of Sales Orders.................................................................... 12 

 Customization Update to 2025 R2: Purchase Order Management................................................................17 

 Converting Customization Projects to the Modern UI...............................................................................24 

 Updating a Customization Project to the Modern UI: General Information................................................. 24 

 Updating a Customization Project to the Modern UI: Built-In Converter..................................................... 27 

 Updating a Customization Project to the Modern UI: To Convert a Custom Form.......................................28 

 Updating a Customization Project to the Modern UI: To Convert a Customized Form................................ 32 


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
 Validating Customization Projects | 4 

## Validating Customization Projects 

 A customization project must meet various technical requirements to integrate with and operate within the Acumatica ERP application. Also, the Acumatica ERP code is continuously updated to add or enhance functionality —so a customization project’s code can become inconsistent with the code of an upgraded instance of Acumatica ERP. To make sure your customization project stays compatible, you can validate customization projects. 

### Validation of Customization Projects: General Information 

 By validating customization projects, you can ensure that they can be published in the current Acumatica ERP instance, meet specific requirements, and have passed technical validation in Acumatica. 

#### Learning Objectives 

 In this chapter, you’ll learn how to do the following: 

- Validate customization projects for compatibility with the new version before an upgrade 

- Validate customization projects of independent soware vendor (ISV) solutions before submitting them for     technical validation 

- Check whether customization projects have passed technical validation by Acumatica 

#### Applicable Scenarios 

 You validate a customization project in the following cases: 

- You have a customization project that works properly for a version of Acumatica ERP, and you need     to upgrade an application instance to a newer version. Before the upgrade, you need to validate the     customization project with the newer version. For details on this scenario, see _Validation of Customization_     _Projects: Compatibility Validation_. 

- As a developer for an ISV partner of Acumatica ERP, you have developed a customization project, which you     need to submit to Acumatica for technical validation. To successfully pass this validation, you first need to     validate the customization project by using Acumatica ERP validation tools. To learn about the available     validation techniques, see _Validation of Customization Projects: ISV Solutions_. 

- You’re a system administrator who needs to check whether the customization projects you’re going to     publish on an Acumatica ERP instance have passed Acumatica’s technical validation. For more information,     see _Validation of Customization Projects: Certification Status of Projects_. 

### Validation of Customization Projects: Compatibility Validation 

 To prevent issues between a customization project and a new version of Acumatica ERP, you need to validate the customization project before upgrading a customized instance of Acumatica ERP. During publication, the Acumatica Customization Platform validates the compatibility of the project’s code with the application code of the instance. 


<!-- PAGE_BREAK -->
 Validating Customization Projects | 5 

 By default, the validation that detects breaking changes is turned on in an instance of Acumatica ERP. If you need to temporarily omit this validation, you can turn off the CheckCustomizationCompatibility key by including the following string in the <appSettings> section of the web.config file located in the website folder. 

 <add key="CheckCustomizationCompatibility" value="False" /> 

 We don’t recommend turning off the validation permanently. 

#### Before the Upgrade 

 In a development environment, test your customizations before a production upgrade to Acumatica ERP 2025 R2: 

1. Deploy a new instance of Acumatica ERP 2025 R2. (See _Deploying Acumatica ERP Instances_ for details.) 

2. On the _Customization Projects_ (SM204505) form, import all customization projects that you need to upgrade     for Acumatica ERP 2025 R2. 

3. Start the publication of these customization projects. The system first validates the projects for     compatibility with the current version. 

 If validation errors occur: 

- Learn what each error message means. (See _Validation of Customization Projects: Compatibility Validation_     _Errors_ .) 

- Check the developer release notes for descriptions of specific issues. You can find the release notes, along     with the needed Acumatica ERP build, on the _Acumatica Community_ website. 

- Replace updated or deprecated objects with the recommended alternatives. You can use AI tools to simplify     update. (See _Validation of Customization Projects: Using AI Tools_ .) 

- Redesign solutions if no alternatives are available for removed objects. 

#### During Validation 

 This validation process executes the following checks in the code of a customization project to detect the breaking changes in the code of Acumatica ERP: 

- In graph extensions: 

- Checking the signature for each method that is overridden by using the PXOverride attribute 

- Checking that each base graph exists 

- In data access class extensions when a field attribute is overridden: 

- Checking that the field exists 

- Checking that the field type hasn’t changed 

- In binary DLL files: Checking all the referenced methods, properties, fields, return types, and signatures If the validation has completed successfully, you can upgrade an instance of Acumatica ERP. For details, see _Upgrading of Acumatica ERP: General Information_. 

#### During the Upgrade 

 In the production environment, do the following during the upgrade to Acumatica ERP 2025 R2: 

1. Unpublish all customization projects. (See _Unpublishing Customization Projects_ for details.) 

2. Upgrade the Acumatica ERP instance. (Learn more in _Upgrading of Acumatica ERP: General Information_ .) 


<!-- PAGE_BREAK -->
 Validating Customization Projects | 6 

3. Replace the old customization projects with those validated for Acumatica ERP 2025 R2. (See _To Replace the_     _Content of a Project from a Package_ for more information.) 

4. Publish the validated customization projects. (See _Publishing Customization Projects_ for details.) 

### Validation of Customization Projects: Compatibility Validation Errors 

 This topic explains the error messages that may occur during the validation of the customization code’s compatibility with the code of Acumatica ERP. 

#### Failed to resolve method reference 

 This error occurs if a custom DLL has a reference to a method that either no longer exists in Acumatica ERP or has a different signature. 

 Example: The following error message indicates that the AM.Objects.dll file contains a reference to the System.Void PX.Data.PXLineNbrAttribute::.ctor(System.Type) method, which hasn’t been declared or has another signature in the PX.Data assembly. 

 AM.Objects.dll Failed to resolve method reference: System.Void PX.Data.PXLineNbrAttribute::.ctor(System.Type) declared in PX.Data, Version=1.0.0.0, Culture=neutral, PublicKeyToken=3b136cac2f602b8e 

 Because the customization code was written for a previous version of Acumatica ERP, this error occurs because the method overridden in the customization code has since been removed or its signature has been changed. To confirm that this change is implemented in the new version of Acumatica ERP, check the developer release notes for this version. You can find the release notes, along with the needed Acumatica ERP build, on the Acumatica Community website. 

 To fix the error: In the code of the specified extension library, refer to an appropriate method declared in the current assembly. 

#### Failed to resolve type reference 

 This error occurs if a custom DLL refers to a type whose declaration no longer exists in Acumatica ERP. 

 Example: The following error message means that the FETempFix.dll file contains a reference to the PX.Data.PXGraphWithActionsBase2 type, which is not declared in the PX.Data assembly. 

 FETempFix.dll Failed to resolve type reference: PX.Data.PXGraphWithActionsBase2 declared in PX.Data, Version=1.0.0.0, Culture=neutral, PublicKeyToken=3b136cac2f602b8e 

 To fix the error: In the extension library, refer to an appropriate type declared in the current assembly. 

#### Could not resolve 

 This error occurs if the validation process finds a reference to a custom DLL that it can’t locate. 

 Example: The following error message tells you that the FullRegen.dll file contains the ADODB reference, which cannot be resolved. 


<!-- PAGE_BREAK -->
 Validating Customization Projects | 7 

 FullRegen.dll Could not resolve: ADODB, Version=7.0.3300.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a 

 To fix the error: In the extension library, refer to a DLL file located in the Bin folder of the website. 

#### Declaring Type missing 

 This error occurs if the customization code in the App_RuntimeCode folder contains a reference to a type whose declaration doesn’t exist in Acumatica ERP. 

 Example: The following error message indicates that the PX.Objects.EP.CRBaseActivityMaint1<PX.Objects.CR.CRTaskMaint> class refers to the undeclared BaseBAccount type. 

 Declaring Type missing: BaseBAccount from PX.Objects.EP.CRBaseActivityMaint1<PX.Objects.CR.CRTaskMaint> 

 To fix the error: In the corresponding Code or DAC item of the customization project, refer to an appropriate type. 

#### Referenced Field missing 

 This error occurs if the customization code in the App_RuntimeCode folder contains a field that’s undeclared in the data access class (DAC). 

 Example: The following error message tells you that the PX.Objects.CS.CSAnswers DAC doesn’t contain the _EntityID field. 

 Referenced Field missing: _EntityID from PX.Objects.CS.CSAnswers 

 To fix the error: In the corresponding Code or DAC item of the customization project, refer to an existing field. 

### Validation of Customization Projects: Using AI Tools 

 Suppose that you have a customization project that works properly for Acumatica ERP 2025 R1, and you need to upgrade an application instance to 2025 R2. Before the upgrade, you validate the customization project with the newer version, as described in Validation of Customization Projects: Compatibility Validation. If validation errors occur, you need to fix these errors. 

 You can use an AI tool, such as GitHub Copilot, to speed up and simplify fixing of errors. 

#### Using an AI Tool in Visual Studio 

 You can use the following general steps to update your customization project by using an AI tool: 

1. Review the developer release notes to understand the changes in the new version. 

2. Open your customization project’s extension library in Visual Studio. 

3. Add the **Markdown** version of the developer release notes from the _Acumatica Community_ website to the     project of the extension library. 


<!-- PAGE_BREAK -->
 Validating Customization Projects | 8 

4. Open a file with the Acumatica ERP-specific code, such as a graph or DAC extension. 

5. Launch a chat with your AI tool. 

6. Write a prompt, such as _Update this class to Acumatica ERP 2025 R2, use #<project name>/_     _AcumaticaERP_2025R2_ReleaseNotes_for_Developers.md_. 

 Instead of referencing the file in the prompt, you can copy and paste the contents of the file to the chat. 

7. Wait for the AI agent to process the context. 

8. Carefully review the provided recommendations and apply valid ones. Double-check them with the     developer release notes if you aren’t sure about the changes. 

9. Use the same context for other files in the project of your extension library. 

### Validation of Customization Projects: Ignore List for the Compatibility Validation 

### Errors 

 If the validation of the compatibility of the published customization with the new version fails, the platform cancels the upgrade process and shows an error message. However, if you’re sure that a generated error isn’t really an error, you can force the validation process to ignore it so that you can continue upgrading of the customized instance of Acumatica ERP. For example, you may need to ignore an error in a third-party DLL file. 

 To force the validation process to ignore an error, you perform the following actions: 

1. In the App_Data folder of the website, create a .txt file whose name has the _CstValidationIgnore_ prefix,     such as CstValidationIgnore.txt or CstValidationIgnore_ProjectName.txt. 

 You can create multiple CstValidationIgnore*.txt files with ignore lists for an instance of Acumatica ERP. 

2. In the file, paste the error message that you want to ignore. 

 You can add multiple error messages to each file with ignore lists. 

3. Save the file. 

4. Determine which customization project has the code that provokes the error message. 

5. Add the file with the ignore list to the project (see _To Add a Custom File to a Project_ for details). 

 If a file with a CstValidationIgnore prefix is placed in the App_Data folder, the Acumatica Customization Platform will ignore the specified errors during validation. 

 As a result, if you publish the customization project or upgrade an Acumatica ERP instance where the project is published, the validation process ignores the error that is specified in the file. 

### Validation of Customization Projects: ISV Solutions 

 The validation of a customization project is especially important when the project is a part of an independent soware vendor (ISV) solution. 


<!-- PAGE_BREAK -->
 Validating Customization Projects | 9 

 To learn the technical requirements for an ISV customization project, open the Acumatica Partner Portal and click ISV Program > ISV Solution Assessment. 

 To prepare your solution for technical validation, you can use the tools and validation techniques described below. 

#### Validation of Customization Projects 

 You can validate any number of customization projects to be sure each project meets the following criteria: 

- The database schema changes included in the customization project are valid. 

- The customization project does not replace or modify any files distributed as part of Acumatica ERP. 

- The data types of custom database columns correspond to the data access class (DAC) fields bound to them. You can perform this type of validation on the _Customization Projects_ (SM204505) form. On the More menu (under **Validations** ), click **Validate Highlighted Project** or **Validate Multiple Projects**. 

#### Validation of Data Consistency in Published Customization Projects 

 The validation of data consistency in published customization projects checks whether the data types of DAC fields match the field states generated by field attributes at runtime. To perform this validation, you use the commands on the More menu (under Validations ) of the Customization Projects (SM204505) form as follows: 

- To verify that the data types of DAC fields match the field states generated at runtime, click **DAC Field Types**     **(Runtime Validation)**. 

- To check for PXAttributeFamilyAttribute violations on DAC fields, click **DAC Attributes (Runtime**     **Validation)**. 

- To verify that PXDimensionAttribute attributes properly handle foreign key segments, click **Lookup**     **Definitions (Runtime Validation)**. 

#### Validation of a Project Prefix 

 In the Customization Project Editor, you can specify a prefix that should be added to all objects of the customization project. If a prefix is used, all project item names must start with it. 

 When validation of the customization project is performed, the platform checks all objects to be sure they have the prefix. 

 To add a prefix for a customization project and validate the project's items for the added prefix, do the following: 

1. On the main menu of the Customization Project Editor, select **File > Validate Project Prefix**.     The **Customization Project Prefix** dialog box opens. 

2. In the **Project Prefix** box of the dialog box, type the prefix for the customization project. The prefix can be     two to four case-insensitive Latin letters ( _A_ through _Z_ ). 

3. Click **Save**. 

4. Click **Validate Project Items**. In the **Validation Result** area, the result of the validation appears. 

#### Format of the Validation Results 

 If any errors or warnings have been detected during project validation, the validation results have the following format: 

- <CustomizationProjectName> 

- <CustomizationRuleName> 

- <PathToTheDLL> | <ProjectItemType> | <NameOfTheProjectItem> 


<!-- PAGE_BREAK -->
 Validating Customization Projects | 10 

 List of rules broken down by the specified item 

 The <PathToTheDLL> field is optional and appears only if a dll file included in the project is analyzed. 

#### Analysis of Assemblies Included in the Customization Project 

 You can analyze assemblies included in a customization project to verify that the project doesn’t replace or modify files distributed as part of Acumatica ERP. 

 To run the analysis, on the main menu of the Customization Project Editor, click Extension Library > Analyze Referenced Assemblies. A CSV file is downloaded with all references made in the project's custom files. 

#### Generation of a Workbook with Project Items 

 When you submit your solution for technical validation in Acumatica, you need to provide an Excel workbook with project items. You can generate this workbook in the Customization Project Editor by clicking File > Export Project Items Workbook. 

 The generated workbook contains a list of solution objects and integration scenarios grouped into the following types: 

- Site map nodes 

- Mobile site map nodes 

- BLСs and BLC extensions 

- DACs and DAC extensions 

- Push notifications 

- Import or export scenarios 

### Validation of Customization Projects: Certification Status of Projects 

 If a customization project doesn’t pass technical validation, it may negatively affect the performance of Acumatica ERP. To prevent this performance degradation, the system verifies the certification status of the customization projects that you create or upload. 

 This functionality is available for only licensed Acumatica ERP instances and is turned off by default. To use it, contact your Acumatica support provider. 

#### Validating the Certification Status of Customization Projects 

 To validate the certification status of customization projects, you perform the following steps: 

1. Open the _Customization Projects_ (SM204505) form. 

2. On the More menu (under **Validations** ), click **Validate Certification Status**.     The system performs the check and displays the result in the **Certification Status** column for each project. 

 Each customization project has one of these certification statuses in the Acumatica ERP instance: 

- _Certified_ : The project has been imported and is available in the database with the certified customization     projects. 


<!-- PAGE_BREAK -->
 Validating Customization Projects | 11 

- _Not Certified_ : The project has been imported but isn’t available in the database with the certified     customization projects. 

- _Not Verified_ : The project has been: 

- Uploaded before the upgrade to 2025 R2 

- Created manually 

- Certified—but then a customizer modified it 

- _Not Certified for Current Version_ : The project has been imported and is available in the database with the     certified customization projects. However, it was certified for a different major version than the major     version of the current Acumatica ERP instance. 

If a project isn’t certified or its certification status can’t be verified, the system displays a warning icon to the right of its name. 

 If you modify a certified customization project, its certification status will change to Not Verified. 

We recommend that you avoid publishing a customization project with the _Not Certified_ , _Not Verified_ , or _Not Certified For Current Version_ certification status. If you decide to publish one, the system will display a warning during publication. 


<!-- PAGE_BREAK -->
 Updating Customization Projects to Acumatica ERP 2025 R2 | 12 

## Updating Customization Projects to Acumatica ERP 2025 

## R2 

 In this chapter, you can find details on the major changes in Acumatica ERP 2025 R2 that affect customization projects. The full list of changes is available in the developer release notes. You can find the release notes, along with the needed Acumatica ERP build, on the Acumatica Community website. 

### Customization Update to 2025 R2: Shipments of Sales Orders 

 If you've ever customized the SOShipmentEntry graph, you know how tightly it was coupled with sales order logic. In Acumatica ERP 2025 R2, we’ve significantly refactored this graph to reduce that coupling—making it easier to work with specific functionality without unintended side effects. 

#### The Big Picture 

 We’ve separated data views, actions, and methods into multiple new extensions of the SOShipmentEntry graph. For example: 

- SOOrderExtension contains common logic for sales orders and shipments. 

- UpdateInventoryExtension handles inventory update operations and provides extension points for     these operations. 

- UpdateInventorySOExtension uses these extension points to inject logic from the     SOOrderExtension extension. See the diagram below for a high-level overview of the new graph extensions. 

 Figure: SOShipmentEntry extensions 

#### New SOOrderExtension 

 Acumatica ERP 2025 R2 introduces the new PX.Objects.SO.GraphExtensions.SOShipmentEntryExt.SOOrderExtension class, which is an extension of the SOShipmentEntry graph. The new extension contains the common business logic related to the SOOrder and SOShipment entities. 

 The following elements have been moved to SOOrderExtension: 


<!-- PAGE_BREAK -->
 Updating Customization Projects to Acumatica ERP 2025 R2 | 13 

- The following data views: addsofilter, dummy_soline, soline, solinesplit, soorder,     soordertype, soshipmentplan, DiscountDetails, OrderSite, OrderList, and     OrderListSimple 

- The AddSO, selectSO, and AddSOCancel actions 

- The OnInvoiceLinked workflow event handler 

- The OrigSOLineSplitSet class 

#### New CreateShipmentExtension 

 The new PX.Objects.SO.GraphExtensions.SOShipmentEntryExt.CreateShipmentExtension class is another extension of the SOShipmentEntry graph. This new extension handles logic related to the creation of shipments. The CreateShipmentExtension extension includes logic related to only the SOShipment entity. 

 The following methods have been moved to CreateShipmentExtension: 

 The methods marked with * have new signatures. 

- CreateShipment(CreateShipmentArgs args) 

- RemoveLineFromShipment(SOShipLine shipline, bool RemoveFlag) 

- CreateShipmentFromSchedules(CreateShipmentArgs args, IShipLineSource res,     SOShipLine newline) (*) 

- PromptReplenishment(PXCache sender, SOShipLine newline, InventoryItem     item, IShipLineSource plan) (*) 

- ReceiveLotSerial(IShipLineSource plan, SOShipLine newline,     PXResult<InventoryItem, INLotSerClass> item) (*) 

- SetShipmentFieldsFromOrigDocument(SOShipment shipment, CreateShipmentArgs     args, bool newlyCreated) (*) 

- ShipAvailable(IShipLineSource plan, SOShipLine newline,     PXResult<InventoryItem, INLotSerClass> item) (*) 

#### New CreateShipmentSOExtension 

 The new PX.Objects.SO.GraphExtensions.SOShipmentEntryExt.CreateShipmentSOExtension class is another extension of the SOShipmentEntry graph and SOOrderExtension and CreateShipmentExtension graph extensions. This extension manages the relations between the SOOrder and SOShipment entities during shipment creation. 

 The SetShipAddressAndContact(SOShipment shipment, int? shipAddressID, int? shipContactID) method has been moved to CreateShipmentSOExtension. 

#### New ConfirmShipmentExtension 

 The new PX.Objects.SO.GraphExtensions.SOShipmentEntryExt.ConfirmShipmentExtension class is another extension of the SOShipmentEntry graph. This extension contains the elements related to shipment confirmation. 

 The following elements have been moved to ConfirmShipmentExtension: 

 The methods marked with * have new signatures. 


<!-- PAGE_BREAK -->
 Updating Customization Projects to Acumatica ERP 2025 R2 | 14 

- The confirmShipmentAction action 

- The OnShipmentConfirmed workflow event handler 

- The PrepareShipmentForConfirmation(SOShipment shiporder) method 

- The ValidateShipment(SOShipment shiporder) method 

- The ConfirmShipment(ConfirmShipmentArgs args) method (*) 

#### New InvoiceExtension 

 The new PX.Objects.SO.GraphExtensions.SOShipmentEntryExt.InvoiceExtension extension of the SOShipmentEntry graph contains elements related to invoice creation. 

 The following elements have been moved to InvoiceExtension: 

- The createInvoice action 

- The createDropshipInvoice action 

- The InvoiceReceipt(Dictionary<string, object> parameters, List<SOShipment>     list, InvoiceList created, bool isMassProcess) method 

- The InvoiceShipment(SOInvoiceEntry docgraph, SOShipment shiporder,     DateTime invoiceDate, InvoiceList list, PX.Data.PXQuickProcess.ActionFlow     quickProcessFlow) method 

#### New UpdateInventoryExtension 

 The new PX.Objects.SO.GraphExtensions.SOShipmentEntryExt.UpdateInventoryExtension class is an extension of the SOShipmentEntry graph. This extension contains the elements related to updating inventory. The UpdateInventoryExtension extension includes logic related to only the SOShipment entity. 

 The following elements have been moved to UpdateInventoryExtension: 

 The methods marked with * have new signatures. 

- The updateIN action 

- The NeedWarningShipNotInvoicedUpdateIN(PXGraph graph, SOSetup setup,     IEnumerable<SOShipment> shipments, bool validateEachShipmentLine) method 

- The PostShipment(PX.Objects.SO.Services.INRegisterEntryFactory factory,     SOShipment shiporder, PX.Objects.CS.DocumentList<PX.Objects.IN.INRegister>     list) method 

- The ShipmentINTranRowPersisted(PXCache sender, PXRowPersistedEventArgs e)     method 

- The PostShipment(PostShipmentArgs args) method (*) 

#### New UpdateInventorySOExtension 

 The new PX.Objects.SO.GraphExtensions.SOShipmentEntryExt.UpdateInventorySOExtension class is another extension of the SOShipmentEntry graph and the SOOrderExtension and UpdateInventoryExtension graph extensions. This extension manages the relations between the SOOrder and SOShipment entities when inventory is updated. 

 The UpdatePlansRefNoteID(SOOrderShipment orderShipment, Guid? refNoteID, IEnumerable<INItemPlan> reattachedPlans) method has been moved to UpdateInventoryExtension. 


<!-- PAGE_BREAK -->
 Updating Customization Projects to Acumatica ERP 2025 R2 | 15 

#### Other Changed Classes and Methods 

 The PX.Objects.PM.GraphExtensions.SOShipmentEntryProjectsExt extension has been replaced with PX.Objects.PM.GraphExtensions.POReceiptEntryProjectsExt, which is an extension of the POReceiptEntry graph. 

 The signature of the PX.Objects.SO.SOShipmentEntry.CorrectShipment(SOOrderEntry docgraph, SOShipment shiporder) method has been changed to CorrectShipment(CorrectShipmentArgs args). 

 The PX.Objects.SO.SOShipmentEntry.CopyOrderHeaderNoteAndFiles(SOOrder srcOrder, SOShipment dstShipment, SOOrderType orderType) method has been removed. Instead of overriding this method, specify the FilesAndNotesSource and CopyNotesAndFilesSettings properties of the CreateShipmentArgs object passed to the CreateShipment method. 

#### Example: Using a New Extension 

 Suppose that you have an extension of the SOShipmentEntry graph shown below. 

 public class SOShipmentEntryPXExt : PXGraphExtension<LabelsPrinting, SOShipmentEntry> 

 If you now need to use the elements moved to the InvoiceExtension extension in your extension, you need to adjust your extension as follows. 

 public class SOShipmentEntryPXExt : PXGraphExtension< InvoiceExtension , LabelsPrinting, SOShipmentEntry> 

#### Example: Using Data Views and Actions 

 If your application uses any of the moved data views or actions, you need to adjust your code. For example, suppose that you have the following code in your application. 

 protected virtual void InsertDetail(PXGraph graph) { var shipmentEntry = (SOShipmentEntry)graph; var filterCache = shipmentEntry.addsofilter.Cache; 

 ... 

 shipmentEntry.addSO.Press(); } 

 You need to replace this code with the following code. 

 protected virtual void InsertDetail(PXGraph graph) { var shipmentEntryOrderExt = graph.GetExtension<SOOrderExtension>() ; var filterCache = shipmentEntryOrderExt .addsofilter.Cache; 

 ... 

 shipmentEntryOrderExt .addSO.Press(); } 


<!-- PAGE_BREAK -->
 Updating Customization Projects to Acumatica ERP 2025 R2 | 16 

#### Example: Changing the Method’s Signature 

 Imagine that your extension overrides a method as the following code shows. 

 /// Overrides <seealso cref="SOShipmentEntry.ConfirmShipment(SOOrderEntry, SOShipment)"/> [PXOverride] public void ConfirmShipment(SOOrderEntry docgraph, SOShipment shiporder, ConfirmShipmentDelegate baseMethod) { SOShipment shipment = shiporder; 

 ... 

 baseMethod(docgraph, shipment); } 

 The signature of the base method has been changed. You need to adjust this code as follows. 

 /// Overrides <seealso cref="SOShipmentEntry.ConfirmShipment(Objects.SO.Models.ConfirmShipmentArgs)"/>. [PXOverride] public void ConfirmShipment( Objects.SO.Models.ConfirmShipmentArgs args , ConfirmShipmentDelegate baseMethod) { SOShipment shipment = args.Shipment ; 

 ... 

 baseMethod( args ); } 

#### Example: Adjusting the Workflow 

 Suppose that you have the following code as part of a customization project that adjusts a workflow. 

 fss.Add<State.confirmed>(flowState => { return flowState .WithActions(actions => { actions.Add(g => g.createInvoice, a => a.IsDuplicatedInToolbar(). WithConnotation(ActionConnotation.Success)); }) .WithEventHandlers(handlers => { handlers.Add(g => g.OnInvoiceLinked); }) }); 

 The createInvoice action and the OnInvoiceLinked workflow event handler have been moved to the InvoiceExtension and SOOrderExtension graph extensions, respectively. You need to change your code as follows. 

 fss.Add<State.confirmed>(flowState => 


<!-- PAGE_BREAK -->
 Updating Customization Projects to Acumatica ERP 2025 R2 | 17 

 { return flowState .WithActions(actions => { actions.Add <InvoiceExtension> (g => g.createInvoice, a => a.IsDuplicatedInToolbar(). WithConnotation(ActionConnotation.Success)); }) .WithEventHandlers(handlers => { handlers.Add(g => g. GetExtension<SOOrderExtension>(). OnInvoiceLinked); }) }); 

### Customization Update to 2025 R2: Purchase Order Management 

 In Acumatica ERP 2025 R2, we’ve significantly refactored the POCreate, POOrderEntry, and POReceiptEntry graphs to improve clarity and maintainability. The logic managing the relationship between sales orders and purchase orders has been moved to separate extensions, reducing tight coupling with the SOOrder entity. 

#### Core Graph Extensions 

 See the diagram below for a high-level overview of the new graph extensions. 

 Figure: Purchase order-related graph extensions 


<!-- PAGE_BREAK -->
 Updating Customization Projects to Acumatica ERP 2025 R2 | 18 

#### New Cache Extension of the POCreateFilter DAC 

 The new PX.Objects.SO.POCreateExt.SOxPOCreateFilter cache extension of the POCreate.POCreateFilter DAC is available in Acumatica ERP 2025 R2. This cache extension contains sales order-related parameters of the filter that is used during purchase order creation. The following fields of the POCreateFilter DAC have been moved to this extension: 

- CustomerID 

- OrderType 

- OrderNbr 

#### Changes to the POFixedDemand DAC 

 The following fields of the POFixedDemand DAC have been removed: 

- OrderType 

- OrderNbr 

- LineNbr 

- Behavior 

- AlternateID 

- CuryUnitCost 

- BaseShippedQty 

- POCreateDate The values of these fields were obtained from the SOLine and SOLineSplit DACs. Now sales order-related functionality doesn’t extend the functionality of the POCreate graph. Instead, the new PX.Objects.SO.GraphExtensions.POOrderEntryExt.CreatePOOrdersFromSODemandsExtension graph extension handles these values. 

 Also, the RecordID field of the POFixedDemand DAC has been renamed to PriceRecordID. 

 The following fields of the POFixedDemand DAC have been moved to the new PX.Objects.SO.POCreateExt.SOxPOFixedDemand cache extension: 

- SalesBranchID 

- SalesCustomerID 

- IsSpecialOrder 

#### Changes to the POCreate Graph 

 The methods in the following table have been marked as obsolete. You should replace them with the new methods, which take the POCreateFilter DAC as an input parameter 

 Obsolete New 

 PXRedirectRequiredException CreatePOOrders(List<POFixedDemand> list, DateTime? PurchDate, bool extSort, int? branchID) 

 PXRedirectRequiredException CreatePOOrders(List<POFixedDemand> demands, POCreateFilter processingSettings) 


<!-- PAGE_BREAK -->
 Updating Customization Projects to Acumatica ERP 2025 R2 | 19 

 Obsolete New 

 void CreateProc(List<POFixedDemand> list, DateTime? orderDate, bool extSort, int? branchID) 

 void CreateProc(List<POFixedDemand> demands, POCreateFilter processingSettings) 

 Also, Acumatica ERP 2025 R2 introduces the new PX.Objects.SO.POCreateExt.POCreateSOExtension extension of the POCreate graph. This new extension unites all elements that are related to purchase order creation for sales orders. 

#### Changes to the POOrderEntry Graph 

 The List<POFixedDemand> SortPOFixDemandList(List<POFixedDemand> list) method has been removed. Instead, you should use the overriding POCreate.GetSorterString(PXResult<POFixedDemand> record) method, which populates the POFixedDemand.SorterString field. The system sorts POFixedDemand records by this field before processing. 

 Also, the following elements have been removed: 

- void FillPOLineFromDemand(POLine dest, POFixedDemand demand, String     OrderType, SOLineSplit3 solinesplit) method 

- POOrder FillPOOrderFromDemand(POOrder order, POFixedDemand demand, SOOrder     soorder, DateTime? PurchDate, bool extSort, int? branchID) method 

- onCopyPOLineFields delegate Instead, you should use the following methods of the new PX.Objects.PO.GraphExtensions.POOrderEntryExt.CreatePOOrdersFromDemandsExtension graph extension: 

- POLine FillNewPOLineFromDemand(POLine poLine, POFixedDemand demand,     PODemandSourceInfo demandSource) 

- POOrder FillNewPOOrderFromDemand(POOrder poOrder, POFixedDemand demand,     PODemandSourceInfo demandSource) 

- void CopyNoteAndFilesToNewPOLine(POLine poLine, POFixedDemand demand,     PODemandSourceInfo demandSource) 

#### Changes to the POReceiptEntry Graph 

 The following methods have been moved to the new PX.Objects.PO.GraphExtensions.POReceiptEntryExt.SO2POSync graph extension: 

- void CollectDemandForTransferOrders(POReceiptLine line, List<INItemPlan>     posupply, HashSet<PXResult<INItemPlan, INPlanType>> podemand) 

- void ReattachDemandPlansToIN(INRegisterEntryBase docgraph, INTranSplit     newsplit, List<INItemPlan> posupply, HashSet<PXResult<INItemPlan,     INPlanType>> podemand) The onBeforeSalesOrderProcessPOReceipt delegate has been removed. Instead, you should use the new bool TryProcessReceiptLinkedAllocation(POReceipt receipt, POLine poLine, INTran newLine) method in the SO2POSync graph extension. 


<!-- PAGE_BREAK -->
 Updating Customization Projects to Acumatica ERP 2025 R2 | 20 

#### Other Changed Classes and Methods 

 The PX.Objects.PO.GraphExtensions.POReceiptEntryExt.PurchaseSupplyExt extension has been removed. Use the PX.Objects.PO.GraphExtensions.POReceiptEntryExt.SO2POSync extension instead. 

 The PX.Objects.SO.SOOrderEntry.ProcessPOReceipt(PXGraph graph, IEnumerable<PXResult<PX.Objects.IN.INItemPlan, INPlanType>> list, string POReceiptType, string POReceiptNbr) method has been moved to the PX.Objects.SO.GraphExtensions.SO2PO.SO2POSyncFromPOReceiptExtension<TGraph> generic extension. The method's signature has been changed to Process((string Type, string Nbr) poReceiptKey, IEnumerable<PXResult<INItemPlan, INPlanType>> poDemands). 

#### Example: Using a New Graph Extension 

 Suppose that you have an extension of the POCreate graph shown below. 

 public class POCreateAMExtension : PXGraphExtension<POCreate> 

 If you now need to use the elements moved to the POCreateSOExtension extension in your graph extension, you need to adjust your extension as follows. 

 public class POCreateAMExtension : PXGraphExtension<POCreateSOExtension, POCreate> 

#### Example: Using a New Cache Extension 

 Suppose that you have the following dynamic BQL query. 

 Base.FixedDemand.WhereAnd<Where< Where2<Where<FSServiceOrder.customerID, Equal<Current< POCreateFilter.customerID >>, Or<Current< POCreateFilter.customerID >, IsNull, Or<FSServiceOrder.refNbr, IsNull>>>, And2<Where<FSServiceOrder.srvOrdType, Equal<Current<FSxPOCreateFilter.srvOrdType>>, Or<Current<FSxPOCreateFilter.srvOrdType>, IsNull>>, And<Where<FSServiceOrder.refNbr, Equal<Current<FSxPOCreateFilter.serviceOrderRefNbr>>, Or<Current<FSxPOCreateFilter.serviceOrderRefNbr>, IsNull>>>>>>>(); 

 You need to replace the removed fields with the fields of the new cache extension, as shown below. Also, in this code, traditional BQL is replaced with fluent BQL. 

 Base.FixedDemand.WhereAnd<Where< Brackets< FSServiceOrder.customerID.IsEqual< SOxPOCreateFilter.customerID .FromCurrent>. Or< SOxPOCreateFilter.customerID .FromCurrent.IsNull>. Or<FSServiceOrder.refNbr.IsNull>>. And< FSServiceOrder.srvOrdType.IsEqual<FSxPOCreateFilter.srvOrdType.FromCurrent>. Or<FSxPOCreateFilter.srvOrdType.FromCurrent.IsNull>>. And< FSServiceOrder.refNbr.IsEqual<FSxPOCreateFilter.serviceOrderRefNbr.FromCurrent>. Or<FSxPOCreateFilter.serviceOrderRefNbr.FromCurrent.IsNull>> >>(); 


<!-- PAGE_BREAK -->
 Updating Customization Projects to Acumatica ERP 2025 R2 | 21 

#### Example: Replacing Removed Methods 

 Imagine that you have the following method in your code. 

 [PXOverride] public virtual void FillPOLineFromDemand(POLine dest, POFixedDemand demand, string OrderType, SOLineSplit3 solinesplit, FillPOLineFromDemandDelegate del) { if (demand.PlanType == INPlanConstants.PlanF6) { PXResult<FSSODetSplit, FSSODet> fsSODetSplitDetRow = (PXResult<FSSODetSplit, FSSODet>) PXSelectJoin<FSSODetSplit, InnerJoin<FSSODet, On< FSSODet.lineNbr, Equal<FSSODetSplit.lineNbr>, And<FSSODet.srvOrdType, Equal<FSSODetSplit.srvOrdType>, And<FSSODet.refNbr, Equal<FSSODetSplit.refNbr>>>>>, Where< FSSODetSplit.planID, Equal<Required<FSSODetSplit.planID>>>> .Select(Base, demand.PlanID); 

 if (fsSODetSplitDetRow != null) { FSSODetSplit fsSODetSplitRow = (FSSODetSplit)fsSODetSplitDetRow; FSSODet fsSODetRow = (FSSODet)fsSODetSplitDetRow; 

 dest.LineType = (fsSODetSplitRow.LineType == SO.SOLineType.Inventory ? POLineType.GoodsForServiceOrder : POLineType.NonStockForServiceOrder); 

 if (fsSODetRow.ManualCost == true) { dest.CuryUnitCost = fsSODetRow.CuryUnitCost; } 

 dest.ProjectID = fsSODetRow.ProjectID; dest.TaskID = fsSODetRow.TaskID; dest.CostCodeID = fsSODetRow.CostCodeID; } } 

 del(dest, demand, OrderType, solinesplit); } 

 You can adjust it as follows. 

 public sealed class FSxPODemandSourceInfo : PXCacheExtension<PODemandSourceInfo> { public static bool IsActive() => PXAccess.FeatureInstalled<FeaturesSet.serviceManagementModule>(); 

 public FSSODet Line { get; set; } public FSSODetSplit Split { get; set; } 

 public static FSxPODemandSourceInfo Of(PODemandSourceInfo target) 


<!-- PAGE_BREAK -->
 Updating Customization Projects to Acumatica ERP 2025 R2 | 22 

=> target?.GetExtension<PODemandSourceInfo, FSxPODemandSourceInfo>(); } 

/// Overrides <seealso cref="CreatePOOrdersFromDemandsExtension.MakeDemandSourceInfo(POFixedDemand, POCreate.POCreateFilter)"/> [PXOverride] public PODemandSourceInfo MakeDemandSourceInfo(POFixedDemand demand, POCreate.POCreateFilter processingSettings, Func<POFixedDemand, POCreate.POCreateFilter, PODemandSourceInfo> base_MakeDemandSourceInfo) { var info = base_MakeDemandSourceInfo(demand, processingSettings); 

 if (demand.PlanType == INPlanConstants.PlanF6) { var fsSODetSplitDetRow = (PXResult<FSSODetSplit, FSSODet>) PXSelectJoin<FSSODetSplit, InnerJoin<FSSODet, On< FSSODet.lineNbr, Equal<FSSODetSplit.lineNbr>, And<FSSODet.srvOrdType, Equal<FSSODetSplit.srvOrdType>, And<FSSODet.refNbr, Equal<FSSODetSplit.refNbr>>>>>, Where< FSSODetSplit.planID, Equal<Required<FSSODetSplit.planID>>>> .Select(Base, demand.PlanID); 

 if (fsSODetSplitDetRow != null) { var fsInfo = FSxPODemandSourceInfo.Of(info); fsInfo.Line = fsSODetSplitDetRow; fsInfo.Split = fsSODetSplitDetRow; 

 info.ProjectID = fsInfo.Line.ProjectID; info.TaskID = fsInfo.Line.TaskID; info.CostCodeID = fsInfo.Line.CostCodeID; } } 

return info; } 

/// Overrides <seealso cref="CreatePOOrdersFromDemandsExtension.FillNewPOLineFromDemand(POLine, POFixedDemand, PODemandSourceInfo)"/> [PXOverride] public POLine FillNewPOLineFromDemand(POLine poLine, POFixedDemand demand, PODemandSourceInfo demandSource, Func<POLine, POFixedDemand, PODemandSourceInfo, POLine> base_FillNewPOLineFromDemand) { if (demand.PlanType == INPlanConstants.PlanF6) { var fsInfo = FSxPODemandSourceInfo.Of(demandSource); 

 poLine.LineType = fsInfo.Split != null && fsInfo.Split.LineType != SO.SOLineType.Inventory ? POLineType.NonStockForServiceOrder : POLineType.GoodsForServiceOrder; 


<!-- PAGE_BREAK -->
 Updating Customization Projects to Acumatica ERP 2025 R2 | 23 

 if (fsInfo.Line?.ManualCost == true) poLine.CuryUnitCost = fsInfo.Line.CuryUnitCost; } 

return base_FillNewPOLineFromDemand(poLine, demand, demandSource); } 


<!-- PAGE_BREAK -->
 Converting Customization Projects to the Modern UI | 24 

## Converting Customization Projects to the Modern UI 

 If your customization project introduces new Acumatica ERP forms, you need to convert them to the Modern UI to deliver these forms with Acumatica ERP 2025 R2. 

### Updating a Customization Project to the Modern UI: General Information 

 This chapter describes how to convert custom and customized forms in a customization project to the Modern UI by using Acumatica ERP’s conversion tool. 

#### Learning Objectives 

 In this chapter, you’ll learn how to do the following: 

- Convert a custom form by using the conversion tool 

- Convert a customized form with the help of the conversion tool 

- Include all items in a customization project 

#### Applicable Scenarios 

 You update a customization project to the Modern UI if you have custom or customized forms built for the Classic UI and want to convert them to the Modern UI. 

#### Overview of Customization Files 

 Any form in the Modern UI or customization of such a form is defined by a pair of two files (TypeScript and HTML) with identical names. The name of the files has the following structure: <screenID>_<customizationName> (for example, IN202500_PhoneRepairShop). 

 The TypeScript file should always contain a mixin (an extension) of the original screen class. You can generate the extension code in the Modern UI Editor or write it manually. 

 The HTML file must contain the <template> tag on the top level. The template tag may be empty or may contain the layout customization. All customization tags should be located on the same level in the top level template tag. You can generate an HTML extension in the Modern UI Editor or manually. 

 For details about creating HTML and TypeScript extensions manually, see UI Customization Development: General Information. 

#### Converting a Custom Form 

 To convert a custom form, you can use Acumatica ERP’s built-in conversion tool. It generates all necessary TypeScript and HTML files with most of the fields and view classes configured as they were in the Classic UI. Then you need to modify the template configuration in the HTML file (if necessary) and include files in the customization project. 

 To convert a custom form, do the following: 

1. Configure the converter. For more details, see _UI Definition in HTML and TypeScript: Built-In Converter_. 

2. Open the custom form in Acumatica ERP. 

3. On the **Customization** menu, click **Convert to Modern UI**. The system:     a. Generates the files. 


<!-- PAGE_BREAK -->
 Converting Customization Projects to the Modern UI | 25 

 b. Saves them in the module folder in the FrontendSources\screen\src\development \screens\ folder of the instance. c. Displays a notification that the conversion has completed. For example, if you have a custom form with the IN202510 screen ID, the files for the screen will be located in the FrontendSources\screen\src\development\screens\IN\IN202510 folder. 

4. Optional: Move the generated files from the development folder to the folder of the corresponding     module in the following folder. 

 FrontendSources\screen\src\screens\ 

 For example, if you’ve run the converter for a custom form with the IN202510 screen ID, move the generated IN202510 folder to the IN folder. 

 Since Acumatica ERP 2025 R2 RC, all files in the development folder can be built and added to the customization project so you don't need to move them to the \screen\src \screens\ folder. 

5. Review the TypeScript file and adjust it, if necessary. For example, you may need to do the following:     a. Remove unnecessary import directives.     b. Fix any formatting issues.     c. Adjust the name in the viewInfo decorator, which specifies the container name. (This name is used as        an object name during the configuration of particular functionality, such as workflows and import and        export scenarios.) 

6. Review the HTML file and adjust it, if necessary. For example, you may need to do the following:     a. Modify the name attribute of the qp-tempalte tag. The layout should adhere to the recommendations        in _Form Layout: Predefined Templates_.     b. Change the IDs so that they match the guidelines for IDs. See the guidelines for IDs of UI components in        _UI Component Guide_.     c. Remove the wg-container attribute if you don’t have tests for the Classic UI of this form. (For details        about the tests, see _Testing the Modern UI_ .) 

7. Optional: Build the code manually and make sure the form is displayed correctly. For details, see _Modern UI_     _Development: Building the Source Code_. 

8. Include the files in the customization project: In the Customization Project Editor, click **Modern UI Files** in     the navigation pane. On the Modern UI Files page, add the TypeScript and HTML files for the form. 

9. Publish the customization project.     During publishing, the system builds the Modern UI code and shows log messages in the Compilation     window. When the customization project is published successfully, you can open the form in the Modern UI. 

#### Converting a Customized Form 

 To convert a customized form, you need to generate the Modern UI version of the original form and the Modern UI version of the customized form—and then compare them to find the difference. Then you need to write an extension of the original form in the Modern UI and include the difference in this extension, such as added fields or modified properties of a table. 

 To convert a customized form, do the following: 

1. Make sure no customization projects are published in the instance. 

2. In Acumatica ERP, open the original version of the form (without customization) in the Classic UI. 

3. Run the converter for it. 


<!-- PAGE_BREAK -->
 Converting Customization Projects to the Modern UI | 26 

4. Save the resulting files. 

5. Publish the customization projects that modify the form. 

6. Open the customized form and run the converter for the form again. 

7. Compare the generated pair of TypeScript and HTML files with the ones you generated in Instruction 3. 

8. Create the extensions folder in the following location if it doesn’t already exist. 

 FrontendSources\screen\src\screens\<module>\<screenID> 

9. In the extensions folder, create a TypeScript file whose name follows this pattern:     <screenID>_<customization_name>.     For example, if you’re customizing the _Stock Items_ (IN202500) form, the name could be     IN202500_PhoneRepairShop.ts. 

10.In the TypeScript file, do the following: 

- Create an extension (a mixin) of the screen class. 

- Define the changes for differences you’ve found in the comparison of the TypeScript files. You may need     to do the following: 

- For a custom view: Create a new view class with all the fields and initiate it in the extension of the     screen class. 

- For custom fields in existing views: Extend the existing view class and define the custom fields in it. 

- For custom actions: Define them in the extension of the screen class or an extension of a view class,     depending on the action’s location. 

- For fields whose properties were modified: Extend the view class and modify the properties by using     the decorators. 

 Instead of defining all elements manually, you can use the features of the Modern UI Editor. It provides code snippets for a number of customization activities. 

11.In the HTML file, do the following: 

- Add the template tag at the top level. 

- In the template tag, you may need to do the following: 

- For a custom field: Add the field tag and specify the field’s location. 

- For a custom fieldset: Add the qp-fieldset tag, bind it to the view, and populate it with the field     tags. 

- For a modified field: Add the field tag and specify its new properties. 

- For a custom action: Add the qp-button tag and specify its location (if it’s not located on a toolbar). 

 Instead of defining all elements manually, you can use the features of the Modern UI Editor. It will generate the proper code and location for the field tag based on the position of the cursor in the original HTML code. 

12.Optional: Build the code manually and make sure the form is displayed correctly. 

13.Include the files in the customization project: In the Customization Project Editor, click **Modern UI Files** in the navigation pane. On the Modern UI Files page, add the TypeScript and HTML files for the form. 

14.Publish the customization project. 

 During publication, the system builds the Modern UI code and shows log messages in the Compilation window. When the customization project is published successfully, you can open the form in the Modern UI. 


<!-- PAGE_BREAK -->
 Converting Customization Projects to the Modern UI | 27 

### Updating a Customization Project to the Modern UI: Built-In Converter 

 You can use Acumatica's built-in converter, which transforms an Acumatica ERP form from the Classic UI to the Modern UI. The converter parses an ASPX page of the form and generates the source files of the form in the Modern UI. These source files include a TypeScript definition and initialization of views and an HTML layout of the form. 

#### Running the Converter 

 To use the Modern UI, you need to have the following setting in the appSettings section of the web.config file of the Acumatica ERP instance: <add key="EnableSiteMapSwitchUI" value="True" />. For details on this setting, see Modern UI Development: General Information. 

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


<!-- PAGE_BREAK -->
 Converting Customization Projects to the Modern UI | 28 

- usingOfPXJoinSyntaxEnabled: If you set this property to _True_ , the system uses the approach for     joined fields, which uses periods. For details on the approaches to define joined fields, see _UI Definition in_     _HTML and TypeScript: Joined Fields_. By default, this property is _True_. 

- isAutoFormatEnabled: If you set this property to _True_ , the system uses the Prettier tool to     automatically format the HTML and the TypeScript code generated by the converter. 

### Updating a Customization Project to the Modern UI: To Convert a Custom Form 

 The following activity will walk you through the conversion of a custom Acumatica ERP form from the Classic UI to the Modern UI. You’ll convert the form by using the built-in converter. 

#### Story 

 Suppose that you have developed the Serviced Devices (RS202000) form for the Smart Fix company. The form has been developed for a previous version of Acumatica ERP and is displayed in the Classic UI. You need to convert the form to the Modern UI and want to use the built-in converter. 

#### Process Overview 

 You will modify the converter settings to fit your needs and convert the form to the Modern UI. You’ll then review the contents of the TypeScript and HTML files and adjust them. You will include the Modern UI files in the customization project, publish it, and review the resulting form. 

#### System Preparation 

 Before you begin converting the Serviced Devices (RS202000) form, do the following: 

1. Complete the following prerequisite activity: _Modern UI Development: To Deploy an Instance with Custom_     _Forms and the Modern UI_. The prepared instance contains the Serviced Devices (RS202000) form in the     Classic UI. 

2. Optional: If you plan to build code manually, perform the prerequisite actions and build the source code for     the first time, as described in _Modern UI Development: To Build the Source Code of All Acumatica ERP Forms_     _for Modern UI Development_. 

#### Step 1: Adjusting the Converter Settings 

 The built-in converter comes with default settings. You need to adjust them to have the following results aer conversion: 

- The views are declared in the RS202000.ts file instead of a separate views.ts file. 

- The files of the Serviced Devices (RS202000) form are saved in the FrontendSources\screen\src     \development\screens\RS\RS202000 folder of the instance instead of a ZIP file. To configure the converter, add the shouldFilesBeDownloaded and declareViewsInViewModelFile attributes in the px.core\ui\screenConverter tag of the web.config file of the instance, as shown in the following code. 

 <ui> <screenConverter usingOfPXJoinSyntaxEnabled="true" shouldFilesBeDownloaded="false" declareViewsInViewModelFile="true"/> </ui> 


<!-- PAGE_BREAK -->
 Converting Customization Projects to the Modern UI | 29 

 The usingOfPXJoinSyntaxEnabled attribute is specified in the web.config file by default. 

#### Step 2: Generating the Source Files with the Converter 

 Now you can generate the source files of the form by using the converter. To generate the files, do the following: 

1. Open the Serviced Devices (RS202000) form. 

2. On the **Customization** menu, click **Convert to Modern UI**.     The system generates the files, saves them in the FrontendSources\screen\src\development     \screens\RS\RS202000 folder of the instance, and displays a notification that the conversion has     completed. 

3. Close the notification by clicking **OK**.     The RS202000 folder will appear in the FrontendSources/development/screens/RS folder. 

4. Optional: Move the generated files from the development folder to the following location. 

 FrontendSources\screen\src\screens\RS\RS202000 

 Since Acumatica ERP 2025 R2 RC, all files in the development folder can be built and added to the customization project so you don't need to move them to the \screen\src \screens\ folder. 

#### Step 3: Adjusting the Generated TypeScript File 

 The generated TypeScript file may contain unnecessary import directives. To clean up the code, do the following: 

1. Review the RS202000.ts file.     The TypeScript code contains the RS202000 screen class, which extends the PXScreen class and includes     a property for the data view of the form. The code also contains the RSSVDevice view class, which extends     the PXView class. 

2. Adjust the file as follows:     a. Remove unnecessary import directives.     b. Fix any formatting issues.     c. Adjust the name in the viewInfo decorator, which specifies the container name. (This name is used as        an object name during the configuration of particular functionality, such as workflows and import and        export scenarios.)     The resulting file looks as follows. 

 import { createSingle, PXScreen, graphInfo, viewInfo, PXView, PXFieldState } from "client-controls"; 

 @graphInfo({ graphType: "PhoneRepairShop.RSSVDeviceMaint", primaryView: "ServDevices", }) export class RS202000 extends PXScreen { @viewInfo({containerName: "Service Devices"}) ServDevices = createSingle(RSSVDevice); } 


<!-- PAGE_BREAK -->
 Converting Customization Projects to the Modern UI | 30 

 // View export class RSSVDevice extends PXView { DeviceCD : PXFieldState; Description : PXFieldState; Active : PXFieldState; AvgComplexityOfRepair : PXFieldState; } 

#### Step 4: Adjusting the Generated HTML File 

 The generated HTML file may contain unnecessary code elements and inaccurate IDs. To adjust the file, do the following: 

1. Review the RS202000.html file.     The HTML code includes one qp-template element with the 1-1 name, which organizes the elements on     the form into two columns of equal width. Each column is defined with the qp-fieldset element, which     is marked with the slot attribute to identify the column of the template to which the fieldset belongs. Each     fieldset includes the field elements for UI elements that appear on the form. 

2. Adjust the file as follows:     a. Move fields from the fieldset with slot="B" to the end of the fieldset with slot="A" and remove the        fieldset with slot="B". Since the form has only four fields, it is better to organize them in one column.     b. Change the IDs so that they match the guidelines for IDs. You can use the following IDs: 

- For the qp-template tag: form-ServDevices 

- For the qp-fieldset tag: fsColumnA 

 You can find the guidelines for IDs of particular UI components in UI Component Guide. 

 c. Remove the wg-container attribute because you do not have tests for the Classic UI of the Serviced Devices (RS202000) form, which can be reused for the Modern UI. (For details about the tests, see Testing the Modern UI .) d. Fix any formatting issues. The resulting HTML code looks as follows. 

 <template> <qp-template id="form-ServDevices" name="1-1"> <qp-fieldset id="fsColumnA" slot="A" view.bind="ServDevices"> <field name="DeviceCD"></field> <field name="Description"></field> <field name="Active"></field> <field name="AvgComplexityOfRepair"></field> </qp-fieldset> </qp-template> </template> 

#### Step 5: Publishing the Project and Viewing the Form 

 At this point, all Modern UI files for the form are prepared. You can build the code of the form manually from the console to make sure the files are correct or you can include the files in the customization project and publish it. When the customization project is being published, the system builds the Modern UI code and displays errors if there are any. For details on building the code manually, see Modern UI Development: Building the Source Code. 


<!-- PAGE_BREAK -->
 Converting Customization Projects to the Modern UI | 31 

To include the Modern UI source files in the customization project, publish it, and view how the converted form looks in the Modern UI, do the following: 

1. Include the Modern UI files in the customization project:     a. Open the Customization Project Editor.     b. In the navigation pane, click **Modern UI Files**.     c. On the Modern UI Files page toolbar, click **Add New Record**.     d. In the **Add Files** dialog box, select the RS202000.html and RS202000.ts files, which are located in        the FrontendSources\screen\src\screens\RS\RS202000 folder (or in the development        folder if you haven't moved them).     e. Click **Save**. 

2. Publish the customization project. 

3. Open the Serviced Devices (RS202000) form. 

4. While you’re on the Classic UI of the Serviced Devices (RS202000) form, click **Tools > Switch to Modern UI**     on the form title bar. The Modern UI for the form is displayed. 

5. In the **Device Code** box, click the magnifier button.     The lookup table opens, as shown below. 

 Figure: The lookup table 

6. In the lookup table, select the _MotorRAZR_ device.     The remaining elements on the form are filled in with the _MotorRAZR_ device settings, as shown below. 


<!-- PAGE_BREAK -->
 Converting Customization Projects to the Modern UI | 32 

 Figure: The device properties 

7. Clear the **Active** check box. 

8. On the form toolbar, click **Save**. 

### Updating a Customization Project to the Modern UI: To Convert a Customized Form 

 The following activity will walk you through the conversion of a customized Acumatica ERP form from the Classic UI to the Modern UI. You’ll convert the form by using the built-in converter and then generating the customization elements by using the Modern UI Editor. 

#### Story 

 Suppose that you’ve customized the Stock Items (IN202500) form for the Smart Fix company. The customization, developed for a previous version of Acumatica ERP, contains files in the Classic UI. You need to convert the customized form to the Modern UI and want to use the built-in converter. 

#### Process Overview 

 You will modify the converter settings to fit your needs, convert the original form and the customized form to the Modern UI, and then compare the code to see what needs to be done in the customization. You will then generate the contents of the TypeScript and HTML files in the Modern UI Editor. You will include the Modern UI files in the customization project and review the resulting form. 

#### System Preparation 

 Before you begin converting the customization of the Stock Items (IN202500) form, do the following: 

1. Complete the following prerequisite activity: _Modern UI Development: To Deploy an Instance with Custom_     _Forms and the Modern UI_. The prepared instance contains the customized _Stock Items_ (IN202500) form in the     Classic UI. 

2. Optional: If you plan to build code manually, perform the prerequisite actions and build the source code for     the first time, as described in _Modern UI Development: To Build the Source Code of All Acumatica ERP Forms_     _for Modern UI Development_. 


<!-- PAGE_BREAK -->
 Converting Customization Projects to the Modern UI | 33 

#### Step 1: Adjusting the Converter Settings 

 You don’t need to perform this step if you’ve adjusted the converter in UI Definition in HTML and TypeScript: To Convert an Acumatica ERP Form to the Modern UI with the Converter. 

 The built-in converter comes with default settings. You need to adjust them to have the following results aer conversion: 

- The views are declared in the IN202500.ts file instead of a separate views.ts file. 

- The files of the _Stock Items_ (IN202500) form are saved in the FrontendSources\screen\src     \development\screens\IN\IN202500 folder of the instance instead of a ZIP file. To configure the converter, add the shouldFilesBeDownloaded and declareViewsInViewModelFile attributes in the px.core\ui\screenConverter tag of the web.config file of the instance, as shown in the following code. 

 <ui> <screenConverter usingOfPXJoinSyntaxEnabled="true" shouldFilesBeDownloaded="false" declareViewsInViewModelFile="true"/> </ui> 

 The usingOfPXJoinSyntaxEnabled attribute is specified in the web.config file by default. 

#### Step 2: Converting the Original Form 

 Now you’ll generate the source files of the original form by using the converter. 

 We don’t recommend using the existing code of the Stock Items (IN202500) form in the Modern UI, which is available in the FrontendSources folder, for the following reasons: 

- The form’s code is split into multiple files and extensions, which are hard to compare to a     converted file. 

- The available code is different from what you get aer the converter in some cases—for     example, in the generated code id attributes have generated values while in the converted     code they have meaningful names according to the conventions. 

 To generate the files, do the following: 

1. Unpublish all customization projects. 

2. Open the _Stock Items_ (IN202500) form. 

3. On the **Customization** menu, click **Convert to Modern UI**.     The system generates the files, saves them in the FrontendSources\screen\src\development     \screens\IN\IN202500 folder of the instance, and displays a notification that the conversion has     completed. 

4. Close the notification by clicking **OK**. 

5. Move the generated files from the development folder to the following location. 

 FrontendSources\screen\src\development\screens\IN_original\IN202500 


<!-- PAGE_BREAK -->
 Converting Customization Projects to the Modern UI | 34 

 You need to do this so that when you generate the files for the customized form, the original files aren’t overwritten. 

#### Step 3: Converting the Customized Form 

 To generate the source files for the customized form, do the following: 

1. Publish the _PhoneRepairShop_ customization project. 

2. Open the _Stock Items_ (IN202500) form. 

3. On the **Customization** menu, click **Convert to Modern UI**.     The system generates the files, saves them in the FrontendSources\screen\src\development     \screens\IN\IN202500 folder of the instance, and displays a notification that the conversion has     completed. 

4. Close the notification by clicking **OK**. 

 Now you can proceed with comparing the source files and writing the extension. 

#### Step 4: Creating the TypeScript Extension 

 To write a TypeScript extension, you need to compare the TypeScript file for the original version of the form with that for the customized version. When you see the changes, you can generate the needed extension by coding manually or generating the code in the Modern UI Editor. 

 Do the following: 

1. Create the IN202500_PhoneRepairShop.ts file in the following location. 

 FrontendSources\screen\src\screens\IN\IN202500\extensions 

 All extensions of the Modern UI screens should be located in the extensions folder for the corresponding screen. Their names should have the suffix hat indicates the customization. 

2. Compare the files—for example, in VS Code: Open the IN202500.ts file located in the \IN_original     \IN202500 folder and the IN202500.ts file located in the IN\IN202500 folder. 

 To compare the files in VS Code, select both files, right-click the selection, and click Compare Selected. 

3. Notice the following differences that the IN202500.ts file for the customized form has: 

- The CompatibleDevices view, which is initialized in the IN202500 screen class 

- The UsrRepairItem and UsrRepairItemType fields added in the InventoryItem2 view class 

- The RSSVStockItemDevice grid view class added Below you can see a comparison of the two files with some of the differences. 


<!-- PAGE_BREAK -->
 Converting Customization Projects to the Modern UI | 35 

 The page contains two different types of customization: 

- Two custom fields. To add these fields, you’ll need to extend the InventoryItem2 view class. 

- A custom view. To add this custom view, you’ll need to add the RSSVStockItemDevice view class     and initialize the view in the extension of the IN202500 screen class. 

4. Open the Modern UI Editor for the IN202500 screen: 

 a. Open the Customization Project Editor. b. On the Screens page toolbar, click Customize Existing Screen. c. In the Customize Existing Screen dialog box, select the IN202500 screen and click OK. d. In the navigation pane, select Screens > IN202500 > Modern UI Editor. The IN20500 (Stock Items) page opens. 

5. To add the two custom fields, do the following: 

 a. In the customized IN202500.ts file, note the view class where the two custom fields are located: InventoryItem2. b. Find the name of the view that’s initialized with this view class, that is shown in the following code. This name is ItemSettings. 

 ItemSettings = createSingle(InventoryItem2); 

 c. In the Modern UI Editor, click Add Field on the page toolbar. d. In the Add Field dialog box, select the following values: 

- **Data View** : _Item Settings_ 

- **DAC** : PX.Objects.IN.InventoryItem (populated automatically) 

 This box displays the original DAC, not the extension where you have the custom fields defined. But the customization project must include the DAC extension with the definition of the custom fields. 

- **Field or Display Name** : UsrRepairItem 


<!-- PAGE_BREAK -->
 Converting Customization Projects to the Modern UI | 36 

 In the table, two fields should be shown: UsrRepairItem and UsrRepairItemType. e. Select both fields and click Save to Extension. f. On the page toolbar, click Edit TypeScript Extension. The Edit TypeScript Extension dialog box opens. g. In the Extension_Name box, select the name of the extension that you just generated. 

 Extensions that were generated from the Modern UI Editor have the following structure: <ScreenID>_<CustomizationProjectName>_generated. 

 h. Analyze the extension’s contents: It contains the mixin of the IN202500 screen class and the mixin of the ItemSettings view class. The mixin of the view class contains the definitions of the two fields: UsrRepairItem and UsrRepairItemType. 

 export interface IN202500_PhoneRepairShop_generated extends IN202500 {} export class IN202500_PhoneRepairShop_generated {} 

 export interface ItemSettings_generated extends ItemSettings {} export class ItemSettings_generated { UsrRepairItem: PXFieldState; 

 UsrRepairItemType: PXFieldState; } 

 j. Copy the dialog box’s contents to the resulting IN202500_PhoneRepairShop.ts file. 

6. To add the custom view, do the following: 

 a. In the customized IN202500.ts file, find the definition of the RSSVStockItemDevice view class, as shown below. 

 b. Copy it to the resulting IN202500_PhoneRepairShop.ts file. c. Make sure the IN202500_PhoneRepairShop.ts file contains the mixin of the IN202500 screen class. d. In the IN202500_PhoneRepairShop_generated class, initialize the grid view the same way as in the diff between the original and the customized IN202500.ts file. 

 @viewInfo({containerName: "Compatible Devices"}) CompatibleDevices = createCollection(RSSVStockItemDevice); 


<!-- PAGE_BREAK -->
 Converting Customization Projects to the Modern UI | 37 

 You can also create a view class and initialize a view by using the Modern UI Editor: On the IN202500 (Stock Items) page toolbar, click Add View. In the Add View wizard, specify the view name from the graph, the view settings for the frontend code, and the fields that should be available in the UI. You can view the generated extension by clicking the Edit TypeScript Extension dialog box. 

#### Step 5: Creating the HTML Extension 

 To generate code for the HTML extension, do the following: 

1. Create the IN202500_PhoneRepairShop.html file in the following location. 

 FrontendSources\screen\src\screens\IN\IN202500\extensions 

 All extensions of the Modern UI screens should be located in the extensions folder for the corresponding screen. Their names should have the suffix that indicates the customization name. 

2. Compare the files—for example, in VS Code: Open the IN202500.html file located in the     \IN_original\IN202500 folder and the IN202500.html file located in the IN\IN202500 folder. 

 To compare the files in VS Code, select both files, right-click the selection, and click Compare Selected. 

3. Notice the following differences that the IN202500.ts file for the customized form has: 

- In the qp-fieldset tag with the **Item Defaults** caption, two field tags for the UsrRepairItem     and UsrRepairItemType fields which are located aer the ItemType field tag. 

- The qp-tab tag aer the qp-tab with the **eCommerce** caption. The qp-tab tag contains the qp-     grid tag bound to the CompatibleDevices view. 

4. To add the two custom fields to the HTML extension, do the following:     a. Open the Stock Items screen in the Modern UI Editor.     b. In the Search box (in the top le corner of the page), type UsrRepairItem.        The UsrRepairItem and UsrRepairItemType fields appear in the tree.     c. On the **HTML** tab, find the ItemType field in the qp-fieldset with the **Item Defaults** caption. Put        the cursor aer the field tag.     d. Next to the UsrRepairItem field, click the arrow button.        The new field tag appears in the code.     e. Next to the UsrRepairItemType field, click the arrow button.        The new field tag appears in the code.     f. On the toolbar of the HTML tab, click **Save Changes to Extension**. The **Save Changes to Extension**        dialog box opens with the following customization code. 

 <template> <field name="UsrRepairItem" after="#fsItemDefaults-General [name='ItemType']" ></field> <field name="UsrRepairItemType" 


<!-- PAGE_BREAK -->
 Converting Customization Projects to the Modern UI | 38 

 after="#fsItemDefaults-General [name='UsrRepairItem']" ></field> </template> 

 g. Copy the code to the IN202500_PhoneRepairShop.html file. 

5. To add a custom tab with a grid, do the following:     a. In the comparison of the HTML files, find and copy the definition of the qp-tab tag with the **Compatible**        **Devices** caption, shown in the following code. 

 <qp-tab id="tab_15" caption="Compatible Devices"> <qp-grid id="CompatibleDevices_CstPXGrid3" view.bind="CompatibleDevices"> </qp-grid> </qp-tab> 

 Notice that the tab is defined aer the eCommerce tab. b. In the Modern UI Editor, on the HTML tab, paste the code aer the definition of the eCommerce tab. c. Modify the ID of the qp-tab and qp-grid tags so that they follow the ID guidelines. For details, see Tab: General Information and Table (Grid): General Information. d. On the HTML tab toolbar, click Save Changes to Extension. The Save Changes to Extension dialog box opens with the following customization code. 

 <template> <field name="UsrRepairItem" after="#fsItemDefaults-General [name='ItemType']" ></field> <field name="UsrRepairItemType" after="#fsItemDefaults-General [name='UsrRepairItem']" ></field> <qp-tab after="#tab-eCommerce" id="tab-CompatibleDevices" caption="Compatible Devices" > <qp-grid id="grid-CompatibleDevices" view.bind="CompatibleDevices"> </qp-grid> </qp-tab> </template> 

 The generated code includes the custom fields from the previous instruction and the new tab definition. e. Copy the code to the IN202500_PhoneRepairShop.html file. 

#### Step 6: Publishing the Project and Viewing the Form 

 At this point, all Modern UI files for the form are prepared. You can build the code of the form manually from the console to make sure the files are correct or you can include the files in the customization project and publish it. When the customization project is being published, the system builds the Modern UI code and displays errors if there are any. For details on building the code manually, see Modern UI Development: Building the Source Code. 

 To include the Modern UI source files in the customization project, publish it, and view how the converted form looks in the Modern UI, do the following: 

1. Include the Modern UI files in the customization project: 


<!-- PAGE_BREAK -->
 Converting Customization Projects to the Modern UI | 39 

 a. Open the Customization Project Editor. b. In the navigation pane, click Modern UI Files. c. On the Modern UI Files page toolbar, click Add New Record. d. In the Add Files dialog box, select the IN202500_PhoneRepairShop.html and IN202500_PhoneRepairShop.ts files located in the FrontendSources\screen\src \screens\IN\IN202500\extensions folder. e. Click Save. 

2. Publish the customization project. 

3. Open the _Stock Items_ (IN202500) form. 

4. Select the _BAT3310EX_ item. 

5. Click **Tools > Switch to Modern UI** on the form title bar. The Modern UI for the form is displayed. 

6. On the **General** tab ( **Item Defaults** section), make sure the **Repair Item** check box and the **Repair Item**     **Type** box are visible. 

7. Select the **Repair Item** check box. Make sure that the **Repair Item Type** box is available because the **Repair**     **Item** check box is selected, as shown below. 

 Figure: Custom boxes on the Stock Items form 

8. Make sure that the **Compatible Devices** tab is displayed, as shown below. (The tab is displayed because the     **Repair Item** check box is selected on the **General** tab.) 


<!-- PAGE_BREAK -->
 Converting Customization Projects to the Modern UI | 40 

 Figure: A custom tab on the Stock Items form 

9. On the **Compatible Devices** tab, add the _Nokia3310_ device to the list. 

10.Save your changes. 

11.Select the _HEADSET_ item and make sure that the **Compatible Devices** tab is not displayed for this item. (This is because the **Repair Item** check box is cleared.) 


