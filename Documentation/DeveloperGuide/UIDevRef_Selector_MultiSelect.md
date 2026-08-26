# Selector Control: Multiple-Selection Mode {#_26770da1-fd6f-484f-ac0a-7ec284bf7e11 .concept}

You can configure a selector control so that a user can select multiple values in it. To configure the multiple-selection mode, in the controlConfig decorator of the field that corresponds to the selector control, you specify `multiSelect = true` and an optional template in the valueTemplate parameter.

For example, if you want a user to select multiple emails in a selector control, you can use the following code. In the value template below, *\{0\}* is the value \(that is, a email address\) and *\{1\}* is the description text.

```language-javascript
@controlConfig({ multiSelect: true, valueTemplate: '{1} <{0}>' })
  MailTo: PXFieldState<PXFieldOptions.CommitChanges>; 
```

**Parent topic:**[Selector](../DeveloperGuide/UIDevRef_Selector_Mapref.md)

