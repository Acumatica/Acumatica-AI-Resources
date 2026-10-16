# Parent-Child Project Configuration: Parent-Child Patterns

Parent-child project relationships can support different ways of organizing project work, billing, and reporting. Before you configure parent and child projects, identify which pattern matches your project structure because this choice affects the billing project, rollup rule, and task setup.

Acumatica ERP supports parent-child project relationships for the following project management patterns:

-   **Main contract with child cost centers**: In this pattern, the parent project represents the customer-facing contract. It holds the revenue budget, billing setup, and project-wide costs. Child projects collect costs for specific scopes of work, phases, locations, or departments. The child project costs are rolled up to the parent project so that the organization can bill the customer from the main contract while still tracking execution costs separately.

    For example, a contractor has one customer contract for a commercial building project. The parent project is used for billing and consolidated reporting, while separate child projects track costs for sitework, structural work, and building systems.

-   **Parent project as a reporting container**: In this pattern, the parent project is used only for consolidated reporting. Each child project keeps its own revenue, costs, billing, and operational control. The parent project gives managers a combined view of related child projects.

    For example, a company manages several related projects for the same customer, such as a building, a parking area, and a separate amenity facility. Each project has its own budget and billing, but all projects are linked to one parent project for consolidated reporting.


**Parent topic:**[Parent-Child Projects](../ImplementationGuide/config_Mapref_Projects_Parent-Child_Projects.md)

