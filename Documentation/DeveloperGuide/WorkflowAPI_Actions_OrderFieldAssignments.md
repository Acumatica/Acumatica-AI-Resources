# Workflow Actions: Order of Field Assignments {#_8df4a7d2-386d-4140-abed-149fe2137978 .concept}

The order in which field assignments are declared in code is important because the system processes the field assignments in that order. You can define the order in which a field assignment is processed by specifying whether a field assignment should be placed before or after another field assignment. You do this by calling the PlaceBefore or PlaceAfter method.

To illustrate why this order is important, suppose that you plan to have two dependent fields on a form: One of the fields \(`City`\) represents a list of cities, and the other \(`Country`\) represents a list of countries. Both fields are declared to be of the PXSelector type. The values available in the `City` field depend on the value of the `Country` field. Suppose that the default values for the `City` and `Country` fields are *London* and *United Kingdom*, respectively.

Further suppose that you have a workflow action defined for the form and that you initially had the `City` field and the workflow action added to your form. You are using the WithFieldAssignments method to assign a new value to the `City` field, and this value is *New York*. The following code shows an example of the definition of this workflow action.

```
actions.Add(g => g.assignAddress, c => c                            
                            .WithCategory(addressCategory)
                            .WithFieldAssignments(fass =>   
                           {
                                fass.Add<firstName>(firstName);
                                fass.Add<lastName>(lastName);
                                fass.Add<phone>(phoneNumber);
                                **fass.Add&lt;city&gt;\(cityName\);**
                            }
                            ));
```

Now suppose that you later realize that you need to add the `Country` field to your form in addition to the workflow action defined in the preceding code example. This means that you need to update your existing workflow action and add the `Country` field by using the WithFieldAssignments method. Because the `City` field is dependent on the `Country` field, the order in which you declare these field assignments is important. If you declare the `City` field first, as shown in the code above, then the field assignment will most likely fail. This is because the value, *New York*, that you want to set for the `City` field would be available only if the value in the `Country` field is already set to *USA*.

However, in this case, the `Country` field has not being added to the form and the workflow action yet. Even if it had been added, it would have to be declared before the `City` field in the preceding code example because the `City` field depends on its value. To resolve this issue, you can either declare the `Country` field assignment first when you initially define the action in the code above or you can add this field assignment elsewhere in the code and use the PlaceBefore or PlaceAfter method to update the order of the field assignments.

The following code shows how to update the workflow action defined in the preceding code example. This code adds the field assignment for the `Country` field and changes the order of field assignments by calling the PlaceBefore method to place the `Country` field assignment before the `City` field assignment.

```
actions.Update(g => g.assignAddress, c => c                            
                            .WithFieldAssignments(fass =>                           
                           {
                                **fass.Add&lt;country&gt;\(f =&gt; 
                                f.SetFromValue\(countryName\).PlaceBefore&lt;city&gt;\(\)\);**
                            }
                             ));
```

The code above would result in the `Country` field being added and placed before the `City` field in the order of field assignments. Thus, the `Country` field will be assigned its value before the `City` field, which is the correct order because the `City` field depends on the value of the `Country` field in order for its value to be assigned correctly.

**Parent topic:**[Implementing Workflow Actions](../DeveloperGuide/WorkflowAPI_Actions_Mapref.md)

