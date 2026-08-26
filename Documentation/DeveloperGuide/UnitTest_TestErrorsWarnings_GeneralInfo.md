# Testing of Errors and Warnings: General Information {#_33c19565-d13a-413f-a232-5b5abc600660 .concept}

The logic of a graph can include the displaying of errors and warnings on the UI. In a test method, you can verify that certain actions cause an error or warning to be displayed.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Test the logic of a graph that has a setup DAC
-   Test whether a proper error is attached to a field
-   Test whether a proper warning is attached to a field
-   Clear the cache of errors
-   Find the proper DAC object in the cache

## Applicable Scenarios { .section}

In unit tests, you can check whether an appropriate warning or error is attached to a box when the entered value does not fit the logic of the form.

## Creation of an Instance of a Graph That Has a Setup DAC { .section}

If a tested graph has setup DACs, you must call the `Setup<Graph>(params IBqlTable[] items)` generic method to initialize and bind the setup DACs. In this case, you specify the tested graph as a type parameter and the objects of the setup DACs as the parameters. After that, you create an instance of the tested graph. If you do not initialize and bind the setup DACs for the test, they will not be used by the graph.

The `Setup<Graph>(params IBqlTable[] items)` method mocks the Acumatica ERP setup preferences. The `Setup` method should not be used to initialize non-setup DACs.

## Testing of the Displayed Errors and Warnings { .section}

The tested graph may contain the logic that attaches an error or warning to a DAC field in some circumstances. The use of the `PXCache.GetStateExt<>` generic method is the recommended way to get the state of a field to test whether an error or warning is attached to the field. You can also use the `PXCache.GetError`, `PXCache.GetErrors`, and `PXCache.GetWarning` method for it.

You pass the class that corresponds to the tested field as the type parameter of the `PXCache.GetStateExt<>` generic method, and you pass the tested DAC object as the parameter of this method. The method returns a `PXFieldState` object for which the following are true:

-   The object's `Error` property contains the error message.
-   The `Warning` property of the object contains the warning message.
-   The object's `ErrorLevel` property contains the level of the warning or error attached. \(The value of this property is `PXErrorLevel.Error` if there is an error attached, and `PXErrorLevel.Warning` if there is a warning attached.\)

In your code, after you have tested the displaying of an error or warning, you clear the cache of errors and warnings with the `PXCache.Clear` method.

The attaching of an error or warning to a field may be the result of an action that generates an exception or cancels the assignment of a value. In this case, the cache may contain different DAC objects before and after performing such an action. To pick the proper DAC object for testing, you call the `PXCache.Locate` method and pass an object of that DAC type having the correct values of the key fields.

**Parent topic:**[Testing the Display of Errors and Warnings](../DeveloperGuide/UnitTest_TestErrorsWarnings_Mapref.md)

