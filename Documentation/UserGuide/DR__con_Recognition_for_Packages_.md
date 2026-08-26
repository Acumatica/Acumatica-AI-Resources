# Processing Packages {#_50279419-74be-4155-bc9e-db82e782c880 .concept}

When you sell a package, you enter an invoice on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form and include the package \(appropriate non-stock item\) to the invoice detail line. Once the invoice is released, the system will generate as many schedules for the line as there are components in the package.

You can use the [Deferral Schedule](DR_20_15_00.md) \(DR201500\) form to view the schedules and adjust them manually if needed. Because the revenue amounts are considered to be earned, they will be moved from the balance sheet liability account \(the deferral account\) to an income account \(the sales account specified in the invoice\) in multiple recognition transactions.

**Attention:** The system performs processing of the packages described later when the *Revenue Recognition by IFRS 15/ASC 606* feature is disabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. For details on processing packages with this feature enabled, see [Recognition of Revenue from Customer Contracts](DR__con_Recognition_of_Revenue_from_Customer_Contracts.md).

## Packages and Discounts {#section_qzb_3jv_vxb .section}

In Acumatica ERP, you can configure a discount that will be applied not only to the total package price but also to the value of the package components.

To configure such a discount, you need to create a discount code on the [Discount Codes](AR_20_90_00.md) \(AR209000\) form and select the **Apply to Deferred Revenue** check box for this code. With this check box selected, the discount based on this discount code will be applied to the value of the non-residual package components, so that the discount will be applied to the deferred revenue or expense amount. Otherwise \(if the **Apply to Deferred Revenue** check box is cleared\), the discount will be applied to the document total amount and will be reflected in the residual component amount that will be recognized immediately.

On the [Discount Codes](AR_20_90_00.md) form, you need also to define the entities to which the discount may be applied \(the **Applicable To** column\), so that in the documents \(such as bills or invoices\) with these entities specified \(for example, a specific customer\), this discount will be applied by the system automatically.

After creating the discount code, on the [Discounts](AR_20_95_00.md) \(AR209500\) form, you need to select this code and define all required parameters, such as the percent of discount and a particular customer or item this discount should be applied to.

**Attention:** The stock item or non-stock item that you assign to such a discount should be a package.

For details on managing discounts in the system, see [Configuring and Applying Customer Discounts](Prices_Customer_Discounts_Mapref.md).

When you have configured such a discount, the system will automatically insert this discount in the **Discount Percent** column of the document \(for example, on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form\), in which a particular customer or item is specified. The system will then use this discount while it calculates the value of a component of the package.

**Attention:** If you manually edit the discount amount in the invoice, the system will apply the new discount to the total amount of the invoice only \(so that the amount of the residual component will be affected\). However, the new discount does not affect the value of a non-residual component, which will be calculated by using the discount percent recorded in the system on the [Discounts](AR_20_95_00.md) form.

## Component Value {#section_zzb_3jv_vxb .section}

Often, a package contains two or more components, such as a product and some accompanying service \(for example, a maintenance contract\). Although these components can be sold separately and are configured in the system as separate items, in common practice, they are usually offered as a package, which has a price that is less than the sum of the individual prices of each component.

When you configure a package that consists of separate items \(components\), you need to define which portion of the package price each component has—that is, define the value of each component. You need to do this when the cost of at least one component should be recognized immediately \(for example, the cost of a product\), and the cost of at least one other component should be deferred over some period \(such as the cost of a 12-month maintenance license\).

The package price is considered to be 100 percent. For a package that contains two components, you can calculate the percentage of the total package price for each component by using the following formulas:

``` {#codeblock_d1c_3jv_vxb}
The percentage of Item1 = *Item1 Price* / (*Item1 Price* + *Item2 Price*) * 100%
```

``` {#codeblock_e1c_3jv_vxb}
The percentage of Item2 = *Item2 Price* / (*Item1 Price* + *Item2 Price*) * 100%
```

In these formulas:

-   *Item1 Price* is the price of the first component according to your price list.
-   *Item2 Price* is the price of the second component according to your price list.

Examples of these calculations are considered in the next sections of this topic.

## Calculation of the Component Value {#section_h1c_3jv_vxb .section}

Suppose that you sell a $1000 package that includes a product and a 12-month maintenance contract. The product and contract can be sold together in a package \(with two components included\) or as two separate items. When the items are sold separately, the product has a $950 price, and the contract has $100 price.

Standard accounting practices do not allow you to recognize the revenue from the sales of such a package when it is sold, even if you have already collected full payment from the customer.

To set up appropriate revenue recognition, you need to know the value of each component in the package. Thus, you can evaluate the values proportionally to component prices as follows:

-   For the product \(*Component1*\), the percentage of the package price is: $950 / \($950+$100\) \* 100% = 90.5%. Thus, the value of the *Component1* in the package is $1000 \* \(90.5% / 100%\) = $905.
-   For the contract \(*Component2*\), the percentage of the package price is: $100 / \($950+$100\) \* 100% = 9.5%. Thus, the value of the *Component2* in the package is $1000 \* \(9.5% / 100%\) = $95.

In a package, different deferral codes may be assigned to each component, in accordance with the established accounting requirements in your company. Generally, the sales amount for a product can be recognized immediately or just after the return period expires, while the contract prepayment value should be recorded to a deferral account, because you have not yet rendered that service and earned the money. The contract amount should be recognized in equal portions over its lifetime \(12 months in the example of this section\).

In this example, you should assign to the contract component a deferral code so that the system can divide the amount into 12 equal portions and generate a recognition transaction once a month for 12 consecutive months.

To recognize the sales amount of the product after the return period expires, you must determine the deferral code to be used for the product by considering the return policies you offer to customers. If such policies exist, analyze the return statistics and evaluate the amount of sales returns \(return allowance\) at the end of each reporting period. Then you can create a deferral code for the product by using the [Deferral Codes](DR_20_20_00.md) \(DR202000\) form. On this form, you should specify the percentage of the line amount to be recognized immediately on the document date \(**Recognize Now %**\). This percentage, which we will designate in its decimal form as *R*, is the share of final sales, which is calculated as follows:

*R* = \(amount of sales – returns allowance\) / \(sales amount\)

Once the return period expires, you can recognize the remainder \(1 – *R*\) portion of the product's value.

## Calculation of Component Value with the Residual Allocation Method Specified {#section_q1c_3jv_vxb .section}

Suppose that you sell a $2,000 package that includes a product and a 12-month maintenance contract. You have configured a package by creating an item and adding two components, *Component1* and *Component2*, to that item. Also, suppose that you have defined settings for these components as follows:

-   For *Component1*, you have specified the *Percentage* allocation method, and defined the component's portion as 18% of the total package cost. You have selected the *Code1* deferral code for the component.

-   For *Component2*, you have selected the *Residual* allocation method.


If a customer buys this package, the total invoice amount is equal to $2,000 because the sales price specified for this package on the [Sales Prices](AR_20_20_00.md) \(AR202000\) form is $2,000.

To set up the revenue recognition schedule correctly, the system computes the values of the components. First, the system calculates the value of *Component1*. For *Component2*, which has the residual allocation method specified, the amount will then be calculated and will be recognized immediately. Thus, the system makes the following calculations:

1.  For *Component1*, the value is $2,000 \* 18% = $360. This amount will be deferred over the periods \(covered by the maintenance contract\) according to the schedule created for the *Code1* deferral code.
2.  For *Component2*, the system computes the amount as the difference between the total package amount \($2,000\) and the value calculated for *Component1*: $2,000 – $360 = $1,640.

The *Component1* amount will be posted to the deferred account. The *Component2* amount will be posted to the sales account.

## Calculation of Component Values When a Discount Should be Applied {#section_x1c_3jv_vxb .section}

Suppose that you sell a $1,000 package \(which includes a product and a 12-month maintenance contract, as in the previous examples\) to a distributor to which you always provide a 10% discount. You now want this discount to be applied to not only the total invoice amount, but also to the value of the non-residual components of the package. To apply the discount in this way, you have to perform the following steps in the system:

-   Configure a package by creating a non-stock item and adding two components \(suppose these are called *Component1* and *Component2*\) to that item as follows:
    -   For *Component1*, specify the *Percentage* allocation method and the component portion \(suppose, for example, that we specify 18% of the total package cost\). Select the *Code1* deferral code.

    -   For *Component2*, select the *Residual* allocation method. \(The residual amount calculated for this component will be recognized immediately.\)

-   Configure a discount code with the **Apply to Deferral Revenue** check box selected.
-   Create a discount based on this code on the [Discounts](AR_20_95_00.md) form, and define a 10% discount percent for it.
-   Assign this discount to the distributor and to the package to which it should be applied.

Now you can create an invoice for this distributor. In the invoice, the system will automatically insert the discount percent \(10%\) and calculate the discount amount \($100\) in the line of the **Document Details** tab. The total amount of the invoice is equal to $900: that is, the $1,000 package price – the $100 discount.

To set up the revenue recognition schedule correctly, the system computes the value for *Component1* \(the only non-residual component in this example\). It is $1,000 \* 0.9 \* 0.18 = $162.

The system then computes the residual amount for *Component2* \(for which the *Residual* allocation method was specified\): $900 \(discounted package price\) – $162 \(the value of the *Component1*\) = $738.

The *Component1* amount will be posted to the deferred account. The *Component2* amount, which is recognized immediately, is posted to the sales account.

**Parent topic:**[Managing Recognition for Packages](../UserGuide/DR__con_Revenue_Recognition_for_Packages.md)

