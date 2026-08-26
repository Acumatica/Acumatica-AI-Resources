# Opportunity Management: Opportunity Stages {#_6acfe2a9-b03f-4d6f-b1ce-d45d98d72c06 .concept}

When an opportunity is processed by a salesperson, it progresses through various stages. At any particular stage, there is a certain probability that the sale can be successfully closed. The assignment of stages to opportunities gives you the ability to estimate future sales revenue at any time. The accuracy of revenue estimation depends heavily on the correct identification of the opportunity stage and on the accuracy of defining the specified probability.

An implementation consultant or system administrator uses the **Stages** table on the **Details** tab of the [Opportunity Classes](CR_20_90_00.md) \(CR209000\) form to define opportunity stages and their probabilities in your organization. The full list of opportunity stages can be available for selection to all opportunity classes, but every class may have its own set of active stages. For each opportunity class, at least one stage should be active. For details, see [Defining Opportunity Classes](CRM_Opportunity_Classes_Mapref.md).

You can specify the current opportunity stage of an opportunity in either of the following ways:

-   By selecting an option in the **Stage** box of the Summary area on the [Opportunities](CR_30_40_00.md) \(CR304000\) form.
-   By clicking commands on the More menu and selecting an option in the **Stage** box of the **Details** dialog box, which opens.

The system offers the following predefined list of opportunity stages:

-   *Prospect*: The contact or business account associated with the opportunity is known, but interest in the offered products or services hasn’t been established.
-   *Nurture*: A salesperson is negotiating with the prospect or customer or learning about their interest in products and services. This stage may be useful if your company decides not to track leads separately.
-   *Qualification*: A salesperson is determining the prospect or customer's interest in purchasing particular products or services.
-   *Development*: A salesperson is clarifying the requirements for products or services, as well as the budget, delivery schedule, and project scope \(if applicable\).
-   *Solution*: A salesperson is negotiating with the prospect or customer about the content of the solution \(proposal\) and the set of products or services to be purchased. The salesperson may be creating product demonstrations or other evaluation tools, and the prospect or customer is evaluating the products or services.
-   *Proof*: A salesperson has developed a proposal, and the prospect or customer is evaluating it. The salesperson may select a primary sales quote at this stage.
-   *Negotiation*: A salesperson and the prospect or customer are negotiating the prices, discounts, and terms of the proposed deal.
-   *Won*: The prospect or customer has accepted the proposal and is ready to sign the contract or place an order \(or has already done this\). Some companies advance the opportunity to this stage only after the invoice has been issued or a payment has been received.

Depending on your company’s sales processes, any of these stages may be skipped as needed, or new stages can be created. To make a stage inactive, you clear the **Active** check box for the stage in the **Stages** table of the [Opportunity Classes](CR_20_90_00.md) form.

**Parent topic:**[Managing Opportunities](../UserGuide/CRM_Sales_Managing_Opportunities_Mapref.md)

