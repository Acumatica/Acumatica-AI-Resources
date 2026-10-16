# Deduction and Benefit Codes: Garnishments

A garnishment is a legal process in which a creditor or government agency withholds money directly from a debtor’s wages or bank account to satisfy an unpaid debt.

In Acumatica ERP, a garnishment is configured as a deduction that withholds a portion of an employee’s earnings to satisfy an outstanding debt to a third party.

## Configuring a Garnishment

You create a garnishment as a deduction on the [Deduction and Benefit Codes](PR_10_10_60.md) \(PR101060\) form. For each garnishment, you specify the following settings in the Summary area:

-   **Garnishment**: Selected
-   **Contribution Type**: *Employee Deduction*
-   **Associated With**: *Employee Settings*

On the **Employee Deductions** tab, you configure how the garnishment is calculated. For example, if a garnishment order requires a fixed amount, you specify the following settings:

-   **Calculation Method**: *Fixed Amount*
-   **Amount**: The garnishment amount required by a garnishment order
-   **Limit Frequency**: The frequency of withholding the amount

## Determining the Garnishment Net Income

When a garnishment is a percentage of net income, the calculation is based on the garnishment net income—which is determined by using the additions and deductions in the following table.

|Additions \(+\)|Deductions \(–\)|
|---------------|----------------|
|All earnings|Statutory deductions, such as taxes|
|Payable benefits with the **Contributes to Gross Calculation** check box selected on the **Employer Contribution** tab of the [Deduction and Benefit Codes](PR_10_10_60.md) \(PR101060\) form|Employee workers’ compensation|
|Non-payable taxable benefits configured on the **Garnishment Net Income** tab of the [Deduction and Benefit Codes](PR_10_10_60.md) form|Deductions configured on the **Garnishment Net Income** tab of the [Deduction and Benefit Codes](PR_10_10_60.md) form|

## Configuring a Garnishment Calculated Based on Net Income

A garnishment calculated as a percentage of net income has the following settings on the **Employee Deduction** tab:

-   **Calculation Method**: *Percent of Net*
-   **Percent**: The percentage of net income required by a garnishment order

When these settings are specified for the garnishment, the **Garnishment Net Income** tab appears on the form.

In the **Deductions Reducing Disposable Net Income** table on this tab, you specify deductions whose amounts should be subtracted from garnishment net income. You can select active deductions with the following settings in the Summary area of the [Deduction and Benefit Codes](PR_10_10_60.md) form:

-   **Contribution Type**: *Employee Deduction* or *Both Deduction &amp; Contribution*
-   **Garnishment**: Cleared
-   **Payable Benefit**: Cleared
-   **Associated With**: Any but *Workers’ Compensation*

In the **Non-Payable Benefits Increasing Disposable Net Income** table, you specify non-payable taxable benefits whose amounts should be added to garnishment net income. You can select active benefits with the following settings:

-   **Contribution Type**: *Employer Contribution* or *Both Deduction &amp; Contribution*
-   **Garnishment**: Cleared
-   **Payable Benefit**: Cleared
-   **Affects Tax Calculation**: Selected

For example, if union dues must be deducted before a garnishment is calculated, you add the applicable union dues deduction code to the **Deductions Reducing Disposable Net Income** table. If an employer registered retirement savings plan \(RRSP\) contribution must be included in the garnishment basis, you add the applicable benefit to the **Non-Payable Benefits Increasing Disposable Net Income** table.

## Specifying Employee Payroll Settings

When calculating a garnishment, the system considers both the settings of the garnishment code and the employee’s deduction and benefit settings. After configuring deduction and benefit codes, including garnishments, you specify the settings for the affected employees.

On the **Deductions and Benefits** tab of the [Employee Payroll Settings](PR_20_30_00.md) \(PR203000\) form, you add the deductions and benefits applicable to the selected employee, including garnishments.

You can add only codes associated with employees—codes that have the *Employee Settings* option selected in the **Associated With** box in the Summary area of the [Deduction and Benefit Codes](PR_10_10_60.md) \(PR101060\) form. Deductions and benefits associated with workers’ compensation and unions apply regardless of the employee’s settings.

After adding the applicable deductions and benefits to the **Deductions and Benefits** tab, you do the following:

-   In the **Maximum Percent of Net Pay for All Garnishments** box, you can specify the maximum percentage of the applicable net-pay basis that can be withheld for all of the employee’s garnishments. If the calculated garnishments exceed this limit, the system reduces the garnishment amount, starting with the lowest-priority deduction determined by the sequence. It continues based on priority until the limit is met.
-   In the **Net Pay Minimum** box, you can specify the minimum net pay that must remain for the employee after deductions and garnishments are applied. If a garnishment would reduce net pay below this amount, the paycheck calculation fails with an error.
-   In the **Split Method** box, you define how the available amount is distributed among deductions with the same sequence when they can’t all be deducted in full. With *Even*, the system divides the available amount evenly. With *Pro-Rata*, it distributes the amount proportionally to the calculated deduction amounts.
-   In the **Sequence** column, you specify a whole number representing the order in which the employee’s deductions are processed and the priority when the employee has multiple garnishments. Follow these general rules:

    -   Assign a different sequence number to each deduction and benefit code, especially garnishments.
    -   Assign a lower sequence number to any code included in a garnishment calculation on the **Garnishment Net Income** tab of the [Deduction and Benefit Codes](PR_10_10_60.md) form. This ensures that the code is processed **before** the dependent garnishment.
    **Tip:** Contributions added to this table don’t require a sequence value; the non-editable value of *0* is assigned to them.


## Calculating Garnishments

The system calculates the applicable garnishments as part of the paycheck calculation. The calculated garnishments are then added to the **Deductions** tab of the [Paychecks and Adjustments](PR_30_20_00.md) \(PR302000\) form.

When calculating a garnishment as a percentage of net income, the system considers both the garnishment settings and the employee payroll settings. It determines the **garnishment net income** as shown in the following table.

|Additions \(+\)|Deductions \(-\)|
|---------------|----------------|
|All earnings|Statutory deductions, such as taxes|
|Payable benefits that contribute to gross calculation|Employee workers’ compensation|
|Non-payable taxable benefits defined for the garnishment and employee|Deductions defined for the garnishment and employee|

If the **Maximum Percent of Net Pay for All Garnishments** is specified for an employee on the [Employee Payroll Settings](PR_20_30_00.md) \(PR203000\) form, the cap is calculated based on the employee’s **regular net pay**, not the garnishment net income. This net-pay basis does not include deductions and non-payable benefits configured specifically for the garnishment.

If the total garnishment amount exceeds the cap, the system reduces individual garnishments starting with the lowest-priority garnishment, as determined by sequence. It continues toward higher-priority garnishments until the combined amount meets the limit.

**Important:** If multiple garnishments have the same sequence value, the split method is applied to all garnishments at that priority level. As a result, multiple garnishments may be reduced together instead of only the lowest-priority garnishment. We recommend assigning different sequence values to garnishment orders with different priorities.

If the **Net Pay Minimum** is defined for the employee on the [Employee Payroll Settings](PR_20_30_00.md) form, the system ensures that the employee’s net pay does not fall below this amount. If applying a garnishment would reduce net pay below the specified minimum, the garnishment isn’t reduced. Instead, the paycheck calculation fails and an error is shown.

## Example: Additional Deductions Reducing a Garnishment

Suppose that an employee has a garnishment of 15% of net income and the following amounts:

-   $5,000: Regular earnings
-   $500: A bonus
-   $1,000: Vacation pay
-   $1,000: Overtime pay
-   $2,500: Taxes

The garnishment net income is calculated as follows:

```
$5,000 + $500 + $1,000 + $1,000 − $2,500 = **$5,000**
```

The garnishment amount is 15% of the garnishment net income: `$5,000 * .15 = **$750**`.

Now suppose that the garnishment requirements specify that $500 in union dues must reduce the garnishment net income. You have added the union dues code to the **Deductions Reducing Disposable Net Income** table of the **Garnishment Net Income** tab of the [Deduction and Benefit Codes](PR_10_10_60.md) \(PR101060\) form. Because this deduction code is associated with a union, you do not need to add it to the employee’s payroll settings.

The garnishment net income is now calculated as follows:

```
$5,000 + $500 + $1,000 + $1,000 − $2,500 − $500 = **$4,500**
```

The garnishment amount becomes `$4,500 * .15 = **$675**`.

As a result, including the union dues in the garnishment configuration reduces the employee’s garnishment from $750 to $675.

## Example: Additional Benefits Increasing a Garnishment

Suppose that an employee has a garnishment of 15% of net income and the following amounts:

-   $5,000: Regular earnings
-   $500: A bonus
-   $1,000: Vacation pay
-   $1,000: Overtime pay
-   $2,520: Taxes

The garnishment net income is calculated as follows:

```
$5,000 + $500 + $1,000 + $1,000 − $2,520 = **$4,980**
```

The garnishment amount is `$4,980 * .15 = **$747**`.

Now suppose that the garnishment requirements specify that the $75 employer RRSP contribution, which is a non-payable taxable benefit, must be included in the garnishment net income. You have added the RRSP code to the **Non-Payable Benefits Increasing Disposable Net Income** table of the **Garnishment Net Income** tab of the [Deduction and Benefit Codes](PR_10_10_60.md) \(PR101060\) form. You’ve also added the RRSP code to the **Deductions and Benefits** tab of the [Employee Payroll Settings](PR_20_30_00.md) \(PR203000\) form.

The garnishment net income is now calculated as follows:

```
$5,000 + $500 + $1,000 + $1,000 + $75 − $2,520 = **$5,055**
```

The garnishment amount becomes `$5,055 * .15 = **$758.25**`.

As a result, including the employer RRSP contribution in the garnishment and employee configurations increases the employee’s garnishment from $747 to $758.25.

## Example: Multiple Garnishments with an Overall Limit

Suppose that an employee has the following amounts:

-   $5,000: Regular earnings
-   $500: A bonus
-   $1,000: Vacation pay
-   $1,000: Overtime pay
-   $50: Cellphone compensation \(a payable benefit that contributes to gross calculation\)
-   $500: Union dues
-   $75: Employer RRSP contribution \(a non-payable taxable benefit\)
-   $2,520: Taxes

The employee also has the following garnishments, listed in priority order:

1.  Garnishment A: 15% of net pay
2.  Garnishment B: $200
3.  Garnishment C: 5% of net pay

The garnishment requirements specify that the $500 union dues reduce garnishment net income and the $75 employer RRSP contribution increases it. You have added the union dues and RRSP codes to the **Garnishment Net Income** tab of the [Deduction and Benefit Codes](PR_10_10_60.md) \(PR101060\) form. You’ve also added the RRSP code to the **Deductions and Benefits** tab of the [Employee Payroll Settings](PR_20_30_00.md) \(PR203000\) form.

The garnishment net income is calculated as follows:

```
$5,000 + $500 + $1,000 + $1,000 + $50 + $75 − $2,520 − $500 = **$4,605**
```

On the [Employee Payroll Settings](PR_20_30_00.md) \(PR203000\) form, you’ve also assigned sequence values to the garnishment codes according to their priority. The following table shows the code sequences and the resulting garnishment amounts.

|Garnishment|Code Sequence|Calculation|Garnishment amount|
|-----------|-------------|-----------|------------------|
|Garnishment A|1|15% of the garnishment net income|$690.75|
|Garnishment B|2|Fixed amount|$200.00|
|Garnishment C|3|5% of the garnishment net income|$230.25|
|**Garnishment Total**| | |**$1,121.00**|

Now suppose that you set the **Maximum Percent of Net Pay for All Garnishments** to 20% on the [Employee Payroll Settings](PR_20_30_00.md) \(PR203000\) form.

To calculate this cap, the system uses the employee’s regular net pay. It doesn’t include the union dues or employer RRSP contribution configured specifically for the garnishments:

```
$5,000 + $500 + $1,000 + $1,000 + $50 − $2,520 = **$5,030**
```

Based on this net pay and the 20% cap, the maximum total amount that can be withheld for garnishments is `$5,030 * .20 = **$1,006**`.

The initially calculated garnishment total of $1,121 exceeds the $1,006 limit by $115. Because Garnishment C has the lowest priority, the system reduces it first to meet the limit.

|Garnishment|Garnishment Amount|
|-----------|------------------|
|Garnishment A|$690.75|
|Garnishment B|$200.00|
|Garnishment C|$115.25|
|**Garnishment Total**|**$1,006.00**|

This example also shows that the deductions and benefits configured for garnishments affect the individual garnishment amounts. However, they do not affect the net-pay basis used to calculate the overall garnishment limit.

**Parent topic:**[Configuring Deductions and Benefits](../UserGuide/config_Payroll_Deductions_Benefits_Mapref.md)

