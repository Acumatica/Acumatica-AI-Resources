# Company Story and Customization Description {#_9a298aed-153d-4812-a685-4d3dc7648b29 .concept}

In the activities of this guide, you will develop a customization project to support the cell phone repair shop of the Smart Fix company. Parts of this customization were developed in the *T200 Maintenance Forms*, *T210 Customized Forms and Master-Details Relationships*, and *T220 Data Entry and Setup Forms* training courses. The activities of this guide use the customization project that you can get as a result of completing these courses. You will deploy this project in [Test Instance for Workflow Customization: To Deploy a Test Instance](WorkflowAPI_PrepareInstance_Activity_DeployInstance.md).

The *T200 Maintenance Forms* training course describes the creation of the following simple maintenance forms:

-   Repair Services \(RS201000\): The Smart Fix company uses this form to manage the list of the repair services the company provides.
-   Serviced Devices \(RS202000\): On this form, the Smart Fix company manages the list of the devices serviced by the company.

The *T210 Customized Forms and Master-Details Relationships* course covers the creation of another maintenance form, Services and Prices \(RS203000\), and the customization of the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form of Acumatica ERP. The Services and Prices \(RS203000\) form provides users with the ability to define and maintain the price for each repair service the company provides. The [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form has been customized to give users the ability to mark particular stock items as repair items—that is, items that are used for repair services.

In the *T220 Data Entry and Setup Forms* course, the Repair Work Orders \(RS301000\) data entry form, which is used to create and manage work orders for repairs, is created. The course also covers the creation of the Repair Work Order Preferences \(RS101000\) setup form, on which an administrative user specifies the company’s preferences for the repair work orders.

In the activities of this guide, you will implement a workflow on the Repair Work Orders \(RS301000\) form. The workflow will change the state of a record created on the form—that is, the status of the repair work order and the related properties of the fields and actions on the form. You will also customize the workflow on the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form by doing the following:

-   Adding an action that opens the Repair Work Orders form. You will make the action available for an invoice in one status.
-   Adding the new workflow state, `Postponed`, to a composite state of the workflow, a transition from the `Postponed` workflow state, and an action that triggers the transition.

## Types of Repair Work Orders { .section}

A repair work order may be created for the following types of services, which are defined on the Repair Services \(RS201000\) form:

-   *Battery Replacement*
-   *Liquid Damage*
-   *Screen Repair*

As specified on the Repair Services \(RS201000\) form, the *Battery Replacement* service does not require a prepayment. The total cost of the order must be paid in full after the repair is completed.

The *Liquid Damage* service requires prepayment. The percent of the prepayment is specified on the Repair Work Order Preferences \(RS101000\) form.

In the activities of this guide, you will implement the changing of the status for the *Battery Replacement* and *Liquid Damage* services.

**Tip:** The activities do not cover the implementation of the changing of the status for the *Screen Repair* service. You can do this as a self-guided exercise.

-   **[Business Process Overview](../DeveloperGuide/WorkflowAPI_CustomizationStory_BusinessProcess.md)**  

-   **[Customization Description](../DeveloperGuide/WorkflowAPI_CustomizationStory_CustomizationDescription.md)**  


