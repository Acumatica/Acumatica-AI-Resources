# Approvals: Parallel and Multistage Approvals {#_626576bc-02e9-4516-bc53-f6841aa94c9e .concept}

Acumatica ERP provides flexible and efficient tools to configure and manage various approval workflows, including parallel, multistage, and combined approval processes, enabling organizations to tailor workflows to their specific requirements.

Parallel approvals are suited for scenarios where multiple approvers must approve a record either simultaneously or in any order. Multistage approvals are used in workflows where approvals must follow a fixed, sequential order. Additionally, combined approvals can be configured to blend parallel and multistage approaches, allowing for complex workflows where some stages require simultaneous approvals while others follow a specific sequence.

## Configuring a Workflow for Parallel Approvals { .section}

Parallel approvals are applicable to the cases when the order in which multiple approvers approve a record does not matter. For instance, in smaller companies, a purchase may require approval from both the accountant and the CFO. To configure this in Acumatica ERP, you need to create an approval map for purchase orders, defining both the accountant and the CFO as approvers. You can also specify conditions for submitting purchase orders for approval based on document properties, such as the document amount, vendor, or branch. If no conditions are specified, all purchase orders will be independently assigned to the defined approvers.

When setting up an approval map for parallel approvals, ensure the following:

-   The approval map includes only a single step with a single rule.
-   On the **Rule Actions** tab, all required approvers are defined for this rule, and the *Collect All Approvals from This Step* option is selected in the **On Approval** box.

**Note:** The number of approvers that you can add to a parallel approval workflow is not limited and depends on the specific requirements and approval policies within your organization.

For an example of how to configure an approval map for parallel approvals, see [To Create an Approval Map for the Parallel Approval](Approvals__How_Configure_Parallel_Approvals.md).

## Configuring a Workflow for Multistage Approvals { .section}

Multistage approvals are applicable to the cases when it is critical that approvers review and approve a record in a specific sequential order. For example, if all cash transactions in your organization require initial approval by at least one accountant and subsequent approval by at least one top manager for transactions exceeding a specified threshold, you can set up a multistage approval workflow. In this scenario, if at least one accountant approves the transaction at the first stage, the approval progresses to the next stage for review by at least one top manager, provided the transaction meets the conditions specified for that stage.

When setting up an approval map for multistage approvals, ensure the following:

-   The approval map includes multiple steps, so that after an approver approves the record at one step, the system moves to the next step.
-   For each step, the *Always* option is selected in the **Execute Step** box on the **Conditions** tab.
-   The *Complete Step* option is selected in the **On Approval** box on the **Rule Actions** tab for each rule within each step.

**Note:** For multistage workflows, you can define unique conditions for each stage, and the number of stages or conditions is not limited. These configurations depend entirely on the specific requirements and approval policies of your organization.

For an example of how to configure an approval map for multistage approvals, see [To Create an Approval Map for the Multistage Approval](Approvals__How_Configure_Multistage_Approvals.md).

## Configuring a Workflow for Combined Approvals { .section}

Combined approval workflows, which merge parallel and multistage approaches, are applicable when approval processes involve multiple stages, some requiring simultaneous approvals from multiple approvers and others necessitating sequential execution in a specific order. For instance, suppose that in a retail company, discount promotions for products require a combined approval process. At the first stage, the marketing team and the sales team must both approve the proposed promotion in parallel to ensure alignment with marketing strategy and sales goals. Once both teams approve, the process moves to the second stage, where the inventory team reviews and approves the request to confirm that sufficient stock is available to support the promotion.

When setting up an approval map for multistage approvals, ensure the following:

-   The approval map includes multiple steps.
-   At least one step includes only one rule. On the **Rule Actions** tab, multiple required approvers are defined for this rule, and the *Collect All Approvals from This Step* option is selected in the **On Approval** box.
-   For each step, the *Always* option is selected in the **Execute Step** box on the **Conditions** tab.
-   The *Complete Step* option is selected in the **On Approval** box on the **Rule Actions** tab for each rule within each step.

-   **[To Create an Approval Map for Parallel Approvals](../ImplementationGuide/Approvals__How_Configure_Parallel_Approvals.md)**  

-   **[To Create an Approval Map for Multistage Approvals](../ImplementationGuide/Approvals__How_Configure_Multistage_Approvals.md)**  


**Parent topic:**[Configuring Approvals](../ImplementationGuide/config_Approvals_Functionality.md)

