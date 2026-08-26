# Project Budget Forecasts: Example of Rounding {#_9516601a-3aa4-4cce-ccb7-9b136be2b013 .concept}

When the system automatically distributes the quantities and amounts of a project budget line among period lines, the `DistibuteRound` distribution function rounds equally distributed values using the built-in logarithmic rounding algorithm.

The `DistibuteRound(value, rowCount)` function has the following values as the input parameters:

-   `value`: The quantity or amount of the project budget line to be distributed divided by the `rowCount`
-   `rowCount`: The number of period lines to distribute the quantity or amount of the project budget line among

Rounding on a logarithmic scale is accomplished by taking the log of the amount and doing normal rounding to the nearest value on the log scale. Using the rounded value, which has been calculated, the system calculates the leftover for the last period line.

The following example shows the way the system rounds a distributed amount.

Suppose that the original budgeted amount to distribute is *1,176.00*. The number of period lines to distribute the amount among is five. Thus, `rowCount = 5` and `value = 1,176.00 / rowCount = 235.2`

The `DistributeRound` function rounds the `value` and returns `240`, which is the nearest number on the log scale. The leftover for the last period line is `1,176.00 - ((rowCount - 1) * 240) = 216`.

Thus, the distribution function splits the original budgeted amount among five period lines as follows:

-   *240.00*: Period lines from the first one to the fourth
-   *216.00*: The last period line

**Parent topic:**[Forecasting Budgets by Periods](../UserGuide/Projects_Budget_Forecasts_Mapref.md)

