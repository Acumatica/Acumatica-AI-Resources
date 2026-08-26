# Case Classes: General Information {#_043b5cef-56a7-47bc-bb34-fc9fa22b4a1d .concept}

In Acumatica ERP, you group cases into classes based on specific characteristics. Using case classes may help you effectively manage your customer support processes, such as distributing cases, collecting information to help with solving customers' problems related to your company's products or services, and preparing support reports to evaluate the performance of your support team.

This topic provides information about the creation and settings of case classes.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Develop a general understanding of the settings for case classes
-   Create a case class
-   Specify the case class that the system will use by default for each new case
-   Become familiar with modes of case billing
-   For cases of the class, give users the ability to select the activity in which the solution to the case was provided
-   Activate time tracking for case commitments and specify target commitment times
-   Become familiar with attributes, which can be used for case classes

## Applicable Scenarios { .section}

You may want to learn how to create case classes in scenarios that include the following:

-   You need to give users the ability to group cases that represent customer requests of the same type, business area, or product, such as service requests, support tickets, or requests for information about products or services.
-   You need to give users the ability to group cases that represent requests submitted by employees of a particular customer.
-   You need to set up the system to automatically assign new cases to the appropriate owners.

## Case Classes { .section}

In Acumatica ERP, a case class is a grouping entity for cases that share at least one common characteristic. Case classes help you gather different sets of additional information about the cases in each class, and they can be used for reporting purposes and for providing default values during the data entry of individual cases.

You can define case classes on the [Case Classes](CR_20_60_00.md) \(CR206000\) form based on your company’s business needs. You need to enable the *Case Management* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form to have an ability to create and manage case classes. Case classes help you quickly do the following:

-   Specify default settings for cases of a class, including billing settings
-   Distribute cases between owners
-   Specify the work calendar to be used for cases of the class
-   Track the fulfillment of case commitments established within service-level agreements \(SLA\) and monitor fulfillment times
-   Set up the ability for a user to mark an activity, event, task, or email as including a case solution for a case of the class

When a user is creating a case on the [Cases](CR_30_60_00.md) \(CR306000\) form and selects a case class in the Summary area of the form, the system fills in the values that have been specified for the class; these default values can be overridden, if needed.

On the [Case Classes](CR_20_60_00.md) form, you can specify the following settings for each case class:

-   The identifier and description of the case class.
-   The work calendar and workday hours, which are defined based on the selected calendar. It can be used to define the company's working hours for fulfilling customer commitments and monitoring fulfillment times.
-   The type of business account that can be selected in cases of the class:
    -   If the **Require Customer** check box is selected, you can select only business accounts of the *Customer* or *Customer &amp; Vendor* type.
    -   If the **Require Vendor** check box is selected, you can select only business accounts of the *Vendor* or *Customer &amp; Vendor* type.
    -   If both check boxes are selected, you can select only business accounts of the *Customer &amp; Vendor* type.
-   The default email account that can be used for sending emails to customers who have contacted your customer service team.
-   The billing modes, which are *Per Case* or *Per Activity*. For details, see [Case Classes: Modes of Case Billing](CRM_Case_Classes_Modes_of_Case_Billing.md).
-   The labor items that represent a particular type of employee labor, such as the work done by a consultant or a technician, and are used for recording the hourly rates of employees, the general ledger accounts to be used, and the applicable taxes. For details, see [Case Classes: Modes of Case Billing](CRM_Case_Classes_Modes_of_Case_Billing.md).
-   The billable time settings.
-   The ability for users to mark an activity, event, task, or email as including a case solution for a case of the class.
-   The period in days during which a case of the class can be reopened.
-   For each case severity level, the corresponding target commitment times. For details, see [Case Classes: Case Commitments](CRM_Case_Classes_Case_Severity_Response_Times.md).
-   The condition \(the case becoming inactive or the case solution being provided in an activity\) that causes the system to stop counting the resolution time for a case of the class.
-   The option to include system activities in response time calculation for case commitment statistics.
-   The attributes specific to the case class, as well as whether they are required or optional.

You can give users the ability to create internal cases in the system and through the Self-Service Portal and submit these cases to employees from such teams as IT or legal team. To do this, on the **Details** tab of the [Case Classes](CR_20_60_00.md) form, for a case class that defines these cases, you select the **Allow Selecting Employee as Case Contact** check box.

You may want to provide your customer support team with the ability to mark an activity, task, event, or email as including a case solution for a case of the class. If you select the **Track Solutions in Activities** check box on the [Case Classes](CR_20_60_00.md) form for a case class, then the **Solution Provided In** box appears on the [Cases](CR_30_60_00.md) \(CR306000\) form for a case of this class. In this box, you can select the case-related activity that includes the solution for this case if the **Case Solution Provided** check box is selected for this activity on its data entry form.

**Tip:** The **Case Solution Provided** check box appears on the [Activity](CR_30_60_10.md) \(CR306010\), [Task](CR_30_60_20.md) \(CR306020\), [Event](CR_30_60_30.md) \(CR306030\), and [Email Activity](CR_30_60_15.md) \(CR306015\) forms if the **Track Solutions in Activities** check box is selected on the [Case Classes](CR_20_60_00.md) form for the class of the case that is associated with the activity.

On the **General** tab of the [Customer Management Preferences](CR_10_10_00.md) \(CR101000\) form \(**Data Entry Settings** section\), you can specify the default case class that the system will insert for each case that you create in the system. Specifying this default class may be useful if a particular case class is used far more than the others. If you select a default case class, when a user creates a case by using the [Cases](CR_30_60_00.md) form, the system inserts this class into the **Case Class** box of the Summary area, and inserts the default settings associated with the case class. If the user changes the default case class, the system inserts the default settings specified for the newly selected class.

If your company no longer needs a particular case class, you can remove it from the system only if no existing cases have this case class specified.

## Example of Case Classes and Attributes in Case Classes { .section}

For each case class, you can define a set of attributes that give users the ability to specify additional information about cases within the class. An attribute is a characteristic or quality—such as industry, number of employees, or interest—that is important to your company but is not already tracked on the [Cases](CR_30_60_00.md) form. When a user selects a case class for a new case, the attributes of this class appear on the **Attributes** tab of the [Cases](CR_30_60_00.md) form as additional elements for which the user specifies the appropriate values; for the required attributes, the user must specify values.

If you define an attribute as required in a case class and plan to create cases through the Self-Service Portal, you should define a default value for the required attribute in the case class; otherwise, you will not be able to save the case in the Self-Service Portal.

For each attribute, you can define the type of control that represents it in the UI \(check box, text box, or combo box\) and specify the possible values, if applicable. For more information about the use of attributes in Acumatica ERP, see [Attributes](CS__con_Attributes.md).

Consider the following example of the use of case classes and attributes.

**Tip:** Attributes and classes are used similarly for leads, contacts, business accounts, marketing campaigns, opportunities, and cases.

Suppose that you sell juicers and provide training services to customers on how to clean and maintain the juicers. You handle many cases and would like to divide them into groups based on whether they are related to the maintenance of the juicers by the company or to providing training to customers about the maintenance of the juicers. You can create two classes for these cases:

-   The *Training* class, for cases associated with requests from customers for providing training about the juicers' maintenance: This class might contain an attribute called **Size** with the values *Small*, *Midsize*, and *Big*, corresponding to the expected audience for training.
-   The *Maintenance* class, for cases associated with customer requests for the maintenance of juicers: The class might contain the attribute **Model**, which might have such values as *Juicer05*, *Juicer10*, *Juicer15*, and *Juicer20*.

With these classes and their attributes configured in the system, when a user creates a new case on the [Cases](CR_30_60_00.md) \(CR306000\) form and selects a case class in the **Case Class** box of the Summary area, the attributes of the class appear on the **Attributes** tab. The user can enter the needed attribute values for this case.

**Parent topic:**[Defining Case Classes](../UserGuide/CRM_Case_Classes_Mapref.md)

