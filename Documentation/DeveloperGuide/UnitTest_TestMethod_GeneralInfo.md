# Test Method: General Information {#_2c830385-d5fe-4138-9cf0-69b95e249bb3 .concept}

In a test class, which is intended for testing a graph or graph extension, you will create test methods, each of which will test a particular functionality. Through the xUnit.net library, which you will use for creating unit tests in the activities of this guide, you can create test methods without parameters and test methods with parameters. In addition to the presence or absence of parameters, these kinds of methods differ in the attributes they have and the number of unit tests they produce.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create test methods without parameters
-   Create an instance of the tested graph
-   Create and update objects in the graph cache
-   Verify that the desired conditions are met for the values present in the method
-   Run and debug test methods
-   Create test methods with parameters
-   Set values for the test parameters
-   Create unit tests for graph extensions

## Applicable Scenarios { .section}

You create a test method if you want to test some business logic of a graph or graph extension.

## Development of a Test { .section}

A unit test is an automated test written by a software developer that tests some independent unit of code. A unit test usually launches some functionality of a software component and then compares the resulting values with the expected values. As you develop unit tests, the best practice is to create them according to the standard *AAA* pattern:

1.  *Arrange*: You prepare the test's context and assign some values.
2.  *Act*: You launch the functionality of a graph or graph extension.
3.  *Assert*: You check the result.

With the Acumatica Unit Test Framework, you can easily create unit tests according to this process.

In the arrange part, you initialize the context until actions can be correctly executed. To use the Acumatica Unit Test Framework for this part, you may need to first enable some application features \(by using the Common.UnitTestAccessProvider.EnableFeature&lt;FeatureType&gt; generic method\) or initialize the required setup DACs \(by using the Setup&lt;PXGraph&gt; generic method\). After that, you create an instance of a graph \(by using the PXGraph.CreateInstance&lt;PXGraph&gt; generic method\) and fill its caches.

Some automated tests, typically referred to as *integration tests*, validate the interaction of multiple independent components. With Acumatica Unit Test Framework, you can implement these tests and check the interaction of multiple components within a graph.

## Creation of Test Methods Without Parameters { .section}

You create a test method without parameters as follows:

-   You declare a method as `public void`.
-   You assign the `[Fact]` attribute to the test method. This produces one test for the test method.

## Creation of Test Methods with Parameters { .section}

When you create a test method with parameters, you declare it as `public void` and assign it the needed parameters. You assign the `[Theory]` attribute to the test method and add as many `[InlineData]` attributes as the method has parameters. This produces one test for each set of parameters provided in the `[InlineData]` attribute.

In each `[InlineData]` attribute, you specify constants separated by commas as the values for the method parameters. The number of the constants and their types must match the number and the types of the test method parameters.

You can provide values for the method parameters in the `[ClassData]` or `[MemberData]` attributes instead of the `[InlineData]` attributes.

## Testing of the Business Logic of a Graph { .section}

In the test method, you create an instance of the tested graph by calling the `PXGraph.CreateInstance<>` generic method. In this generic method, you use the graph class as the type parameter.

You create data access class \(DAC\) records in the graph cache \(PXCache objects\). You can address a specific cache of a graph either by the DAC name \(`<graph>.Caches[typeof(<DAC_name>)]`\) or by the graph view that contains the DAC objects \(`<graph>.<DACView>.Cache`\).

## Creation of a Test Method for a Graph Extension { .section}

In a test method for a graph extension that contains logic for a DAC extension, you get the DAC extension object with the `GetExtension<>` generic method. You alter the DAC extension object as you wish, and then you update the whole DAC object along with its extension in the cache by using the `PXCache.Update` method. This executes the logic implemented in the graph extension so that you can verify its correctness.

## Assertions { .section}

You can use the methods of the `Xunit.Assert` class to make assertions in unit tests. For example, the Assert.True static method verifies that its argument is equal to *True*, and the Assert.False static method verifies that its argument is equal to *False*. The following table lists additional methods of the Xunit.Assert class that may be useful.

|Method|Description|
|------|-----------|
|`False(bool condition)`|Verifies that `condition` is *false*. The method also throws a FalseException if `condition` is not *false*.|
|`True(bool condition)`|Verifies that `condition` is *true* and throws a TrueException if `condition` is not *true*.|
|`Contains<T>(T expected, IEnumerable<T> collection)`|Verifies that a collection contains a given object. The method also throws a ContainsException if the collection does not contain the object.|
|`DoesNotContain<T>(T expected, IEnumerable<T> collection)`|Verifies that a collection does not contain a given object. The method also throws a DoesNotContainException if the collection contains the object.|
|`Empty(IEnumerable collection)`|Verifies that `collection` is empty and throws an EmptyException if `collection` is not empty.|
|`NotEmpty(IEnumerable collection)`|Verifies that `collection` is not empty and throws a NotEmptyException if `collection` is empty.|
|`Single(IEnumerable collection)`|Verifies that `collection` contains a single element. The method also throws a SingleException if `collection` does not contain exactly one element.|
|`Null(object? obj)`|Verifies that the object reference is *null* and throws a NullException if the object reference is not *null*.|
|`NotNull(object? obj)`|Verifies that an object reference is not *null*, and throws a NotNullException if the object reference is *null*.|
|`Contains(string expectedSubstring, string? actualString)`|Verifies that `actualString` contains `expectedSubstring` by using the current culture. The method also throws a ContainsException if `actualString` does not contain `expectedSubstring`.|
|`DoesNotContain(string expectedSubstring, string? actualString)`|Verifies that `actualString` does not contain `expectedSubstring` by using the current culture. The method also throws a DoesNotContainException if `actualString` contains `expectedSubstring`.|
|`StartsWith(string? expectedStartString, string? actualString)`|Verifies that `actualString` starts with `expectedStartString` by using the current culture. The method also throws a StartsWithException if `actualString` does not start with `expectedStartString`.|
|`EndsWith(string? expectedEndString, string? actualString)`|Verifies that `actualString` ends with `expectedEndString` by using the current culture, and throws an EndsWithException if `actualString` does not end with `expectedEndString`.|
|`Equal(string? expected, string? actual)`|Verifies that the `actual` and `expected` strings are equivalent. The method also throws an EqualException if the `actual` and `expected` strings are not equivalent.|
|`Equal<T>(T expected, T actual)`|Verifies that two objects are equal by using a default comparer, and throws an EqualException if the objects are not equal.|
|`Equal<T>(IEnumerable<T> expected, IEnumerable<T> actual)`|Verifies that two sequences of the unmanaged type `T` are equal. The method also throws an EqualException if the sequences are not equal.|

You can use another assertion library instead of the Xunit.Assert class.

## Running and Debugging of Test Methods { .section}

Visual Studio includes the Test Explorer tool, which you can use to run a test, a test method, a group of test methods, or all available test methods. You can also debug a single test or multiple tests.

**Parent topic:**[Creating a Test Method](../DeveloperGuide/UnitTest_TestMethod_Mapref.md)

