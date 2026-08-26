# Product Configurator: Rule Processing {#_1bc9c196-8b71-48cc-8ee2-909e941fa371 .concept}

This topic describes rules that can be used with configurations.

## Types of Rules { .section}

You can create rules of the following types: *Exclude*, *Include*, and *Require*. When rules are processed, you can only see the available remaining options. Selection of attributes, features, and options can go in any order. For example, one user might choose color as their first choice. Another user might select the fabric as their first choice.

Rules are triggered by the source feature, any option or a specific option being selected, or the conditional value of an attribute. Then the rule type determines what action to take against the target feature and its options as follows:

-   *Exclude:* All of the options or specific options of a feature cannot be selected. The options are not displayed unless the user chooses to see them.
-   *Include:* All of the options or specific options of a feature are automatically selected.
-   *Require:* An option selection must be made for the target feature.
-   *Validate:* The attribute value must meet a condition. This type is available only for attributes.

## Rule Examples { .section}

**Example 1: Excluding an Option Based on Another Option**

-   Feature A has Options A1, A2, and A3
-   Feature B has Options B1 and B2. Option B2 must be unavailable for selection when Option A1 is selected.

The rule for Feature A to exclude Option B2 for Feature B is displayed in the following table.

|**Rule**|**Source**|**Target Feature**|**Target Option**|
|--------|----------|------------------|-----------------|
|Exclude|A1|Feature B|B2|

Because you can select features in any order, you need to have a rule for Feature B also to exclude Option A1 if Option B2 is selected, as shown in the following table.

**Tip:** You can use this rule with the same feature, for example, to make Option A2 unavailable when Option A1 is selected.

|**Rule**|**Source**|**Target Feature**|**Target Option**|
|--------|----------|------------------|-----------------|
|Exclude|B2|Feature A|A1|

**Tip:** You can use *Include* instead of *Exclude* when an option is to be automatically selected based on the selection of another option.

**Using ANY and ALL**

`<ANY>` is used for the *Source* feature when any option selection will trigger the rule. `<ALL>` is used to include or exclude all *Target* feature options.

For example, suppose that any option selected for Feature A must exclude Feature B Option B2, as shown in the following table.

|**Rule**|**Source**|**Target Feature**|**Target Option**|
|--------|----------|------------------|-----------------|
|Exclude|`<ANY>`|Feature B|B2|

Further suppose that if Option A1 of Feature A is selected, then all options for Feature B must be excluded and Feature B must be unavailable for selection. The following table displays this rule.

|**Rule**|**Source**|**Target Feature**|**Target Option**|
|--------|----------|------------------|-----------------|
|Exclude|A1|Feature B|`<ALL>`|

In the example above, if the source were `<ANY>`, then Feature A and Feature B would be mutually exclusive. If the rule was of the *Include* type, then all options of Feature B would be added when Option A1 of Feature A was selected.

## Including an Option Based on an Attribute Value { .section}

When you define attributes on the [Attributes](CS_20_50_00.md) \(CS205000\) form, you can enter a list of valid values for attributes with the *Combo* and *Multi Select Combo* control types. You can also use attribute values specified in the **Value ID** column in rules.

For example, suppose that you have an attribute with the list of colors \(see the following table\).

|**Value ID**|**Description**|
|------------|---------------|
|R|Rudy Red|
|B|Baby Blue|
|G|Lime Green|

Based on the color selection, you want to include Option B2 of Feature B when the red color \(Value ID = R\) is selected. The rule will be the following.

|**Rule**|**Condition**|**Value 1**|**Target Feature**|**Target Option**|
|--------|-------------|-----------|------------------|-----------------|
|Include|Equals|='R'|Feature B|B2|

Attribute values are text fields so they need to be in single quotes to validate by using the `Equal` operation or converted to decimals to validate by using the `Between`, `Greater`, or `Less` operations.

**Validating an Attribute Value**

You may need to validate an attribute value. Since attributes are text fields, you need to convert them to decimals in the **Value** boxes by using the `CDec(x)` conversion function. The **Target Feature** and **Target Option** boxes are unavailable for rules of the *Validate* type.

For example, suppose that a user must enter a value between 1 and 5; such as 1, 1.5, 4.33, 5. The rule is the following.

|**Rule**|**Condition**|**Value 1**|**Value 2**|**Target Feature**|**Target Option**|
|--------|-------------|-----------|-----------|------------------|-----------------|
|Validate|Is Between|`CDec(1)`|`CDec(5`\)|N/A|N/A|

## Rule Concepts { .section}

-   Rules are triggered by option selection or attribute value changing:
    -   Rules for features can be triggered by a single option or any option being selected.
    -   *Source* and *Target Feature* can be the same.
    -   Rules for attributes can be triggered by the conditional value of the attribute.
    -   Rules for features and attributes can target a single option or all options.
-   Features and their options can be selected in any order. When defining a configuration you need to account for the dependency of options; that is, if B2 is excluded when A1 is selected, then A1 is excluded when B2 is selected.
-   Deleting options will revert all rules previously applied during that deleted options selection.
    -   If the option was included from another rules, the parent rule or rules will also need to be reverted.
    -   These are most likely include options. The parent and child rules of the include option being deleted will all be reverted as this implementation considers the *Include* rule type to be treated like an include required rule.
-   When rules are triggered, the processing of each should be included in a recordable action to allow undo of parent and child processed rules. For example:
    -   User selects Option 1 of Feature 1 which has a rule that includes Option 3 of Feature 2.
    -   User selects Option 5 of Feature 6 which also has a rule that includes Option 3 of Feature 2.
    -   If the user removes Option 3 of Feature 2 from being selected Option 1 of Feature 1 and Option 5 of Feature 6 are also reversed.
    -   If Option 3 of Feature 2 had child rules, they would also be removed.
-   The rule trigger for features or options is the change in option selections. *Selected* or *Included* to apply rules and *Unselected* or *Excluded* to reverse any previously applied rules.
-   The trigger for attribute rules are the change in attribute values.
-   Attribute rules are applied before option rules when configuration entry orders are started.
-   Options with the **Fixed** check box selected cannot be excluded by any rule. A user could write rules that would attempt to include, exclude, or require this type of option but all rules processing would ignore application to the options with the **Fixed** check box selected.

## Order of Rules { .section}

Rules are validated in the following order:

1.  Selected or cleared option
2.  Rule type: Exclude, Include, Require \(in that order\)
3.  Source option with `<ANY>` being last
4.  Sort order of applied feature
5.  Applied option with `<ALL>` being last
6.  Repeat step 1 for each sub rule that needs to be processed as a result of any include or exclude rule previously executed.
7.  Exclude rules will override include rules when multiple rules are executed against an option.
8.  Include rules cannot override exclude rules when multiple rules are executed against an option.
9.  Rules that exclude/include entire features also run each rule against each option if one exists:
    -   Example: Feature 1 was excluded by a rule on Option 2 in Feature 4. Option 1 within Feature 1 has a rule to exclude an option from Feature 2 which needs to be executed when Feature 1 was excluded the same was as if Feature 1 was specifically excluded.
10. Required rules that have an empty applied option \(`<ALL>`\) do not get applied to all options like Include or Exclude rules do. Instead, the Required flag is set on the feature forcing a selection of any option while the selection still fits within the selection/quantity requirements.
11. Attribute rules run as they are sorted in the rules grid.
12. Attribute rules only execute if the condition is true. If the condition was previously true and the user changes a value or the overall condition from the result of a formula value is no longer true, all rules are reversed that were previously applied from that rule.
13. Rules processing is chained to each feature/option rule executed from a previous rules execution:
    -   Example: Option 1 of Feature 1 has a rule that includes Option 3 of Feature 2. Option 3 also has an exclude on Feature 4. When the rule for including Option 3 execute it also needs to run any rules attached to it such as excluding all of Feature 4.
14. Options within a feature can only be selected once. If a user needs more than 1 of a specific option, the qty required field is used to indicate the number of units required.
15. The Option selection panel is used to include the set of selections.
16. The status of attributes, features, and options are updated at the end of each rules processing.
17. Defaults are applied when the configuration entry order is started for the first time. The execution order is as follows:

    1.  Attribute defaults and any related rules
    2.  The options listed on the page with entry defaults, in the order they appear
    Each default processes its rules the same way as if the user had manually selected the options in that sequence.

18. If an option was auto-included from the processing of a rule, the system should prevent a user from removing it and should give a proper message indicating the source selected option.
19. If an option was added by a user, and a user selects an option which makes the previously selected option now excluded, the user should see a message indicating if the selection should continue with the exclusion or cancel the selection.

**Parent topic:**[Product Configurator](../UserGuide/MFG_Product_Configurator_Mapref.md)

