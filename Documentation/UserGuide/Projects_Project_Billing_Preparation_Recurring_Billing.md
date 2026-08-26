# Project Billing Preparation: Recurring Billing {#_72e9b43b-3244-4d87-8fbe-6adeb4224e34 .concept}

This topic explains how you can configure the addition of recurring billing lines during project billing.

Your company may provide services to customers regularly for a flat price—for instance, easing construction machines to customers for an agreed-upon number of hours per month at a fixed price. If you decide to manage this activity as a project, you do not have to manually create a new invoice every month—instead, each time you run project billing, recurring transactions can be added to the invoice \(or to the invoice listed first in the rule if multiple invoices must be generated for the applicable billing rule\).

You can set up recurring billing at the project task level by adding lines on the **Recurring Billing** tab of the [Project Tasks](PM_30_20_00.md) \(PM302000\) form. Each recurring billing line defines the rules the system uses to create the corresponding invoice line during the project billing. For each line, you specify the following settings:

-   A non-stock item that represents a service or labor of recurring billing to track employee and equipment work time.
-   The flat price that is charged once each billing period.
-   Optional: The number of units included in the item fee. For instance, you may have an agreement with the customer to provide 40 hours of service at a flat price, while any extra hours are charged on a per-hour basis. These 40 hours would be included in the recurring billing line and the extra hours would be billed separately.
-   The option that determines the frequency of recurring billing usage. You can select one of the following options: the recurring billing is performed only once during the project lifecycle for the next project billing or it is used each time the project billing is performed.

The recurring billing is invoked on project billing and does not depend on any of the billing rule settings. However, a billing rule with at least one step, for example, a progress billing step, is required for the project task to make the system produce an invoice even with a single recurring billing line.

You can also set up recurring billing for project template tasks and common tasks on the **Recurring Billing** tab of the [Project Template Tasks](PM_20_80_10.md) \(PM208010\) form and [Common Tasks](PM_20_80_30.md) \(PM208010\) form, respectively.

**Parent topic:**[Preparing Projects to Billing](../UserGuide/Projects_Project_Billing_Preparation_Mapref.md)

