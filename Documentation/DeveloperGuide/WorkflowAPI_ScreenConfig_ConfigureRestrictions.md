# Screen Configuration: Restrictions of the Configure Method {#_a938fce2-cb74-4690-806c-dbd686d86af4 .concept}

You should be aware of the limitations of the Configure method when you are working with it. These limitations are described in the following sections.

## Creation of Graph Instances and Base Graph Access { .section}

Inside the Configure method, you should not create a graph instance or access the `Base` graph because either of these actions can lead to deadlocks. If you need to read data from the database, you can use database slots by doing the following:

1.  In the graph extension where you need to define the Configure method, you also define a database slot that is based on the DAC from which you need to read data. In the slot, you cache the data that you need to access.
2.  You attach the PXWorkflowDependsOnType attribute to the Configure method and specify the DAC from which you want to read data.
3.  In the Configure method, you access the data from the slot.

For example, suppose that you need to enable the extension in the Configure method only if the `InspectionEnabled` property of `SOSetup` DAC is *true*. The following code shows how you can access the `InspectionEnabled` property by using a database slot.

```
private class SOSetupInspection : IPrefetchable
{
    public static bool InspectionEnabled =>
        PXDatabase.GetSlot<SOSetupInspection>("SOSetupInspection", typeof(SOSetup))._inspectionEnabled;
    private bool _inspectionEnabled;
    void IPrefetchable.Prefetch()
    {
        using (PXDataRecord soSetup =
            PXDatabase.SelectSingle<SOSetup>(new PXDataField<SOSetup.inspectionEnabled>()))
            if (soSetup != null) _inspectionEnabled = (bool)soSetup.GetBoolean(0);
    }
}

[PXWorkflowDependsOnType(typeof(SOSetup))]
public sealed override void Configure(PXScreenConfiguration config){
     //if (!Base.sosetup.Current.InspectionEnabled) return;
     if (!SOSetupInspection.InspectionEnabled) return;
     ...
}
```

The code above has done the following:

1.  In the extension, defined the `SOSetupInspection` database slot, which depends on the `SOSetup` table. In the slot, the `SOSetup.InspectionEnabled` value has been cached.
2.  Attached the PXWorkflowDependsOnType attribute to the Configure method and specified that the workflows of the form depend on data from the `SOSetup` DAC.
3.  In the Configure method, instead of accessing the `Base` graph, checked the `SOSetupInspection.InspecionEnabled` property, which holds the cached value of the `SOSetup.InspectionEnabled` property.

For more information on database slots, see [Use of Slots to Cache Data Objects](../StudioDeveloperGuide/AD__con_Using_Slots_to_Cache_Data.md).

## Customization with the PXOverride Mechanism { .section}

The Configure method cannot be customized with the PXOverride mechanism, despite being a public virtual extension method. The place in the platform where the Configure method is called does not support PXOverride extensions of the method. Thus, we recommend that you explicitly use the `sealed` modifier in C\# when you are overriding the Configure method. The following code shows the recommended way of overriding the Configure method.

```
//Use sealed modifier explicitly to specify that this method cannot be overridden
                    
public sealed override void Configure(PXScreenConfiguration config) =>
Configure(config.GetScreenConfigurationContext<TGraph, TPrimaryEntity>());

//Replace the TGraph and TPrimaryEntity above with your actual graph and DAC classes, respectively

```

## Access to an Instance State { .section}

The Configure method is executed on uninitialized graphs and graph extensions. You cannot access an instance state of a graph or a graph extension within the Configure method or within any methods called from it. This also means that you cannot access any instance fields or properties, including views and actions, of a graph or a graph extension, within the Configure method. You should thus configure a workflow in a static context, which means configuring it in a static method. This technique is illustrated in the following sample code, which expands on the code example in the preceding section of this topic.

```
public sealed override void Configure(PXScreenConfiguration config) =>
 Configure(config.GetScreenConfigurationContext<TGraph, TPrimaryEntity>());
  
 //Apply workflow changes in a static method
 
 //Replace the TGraph and TPrimaryEntity below with your actual graph and DAC classes, respectively
 
 protected static void Configure(WorkflowContext<TGraph, TPrimaryEntity> context)
     {
     ...
     context.AddScreenConfigurationFor(screen => screen
                                        ...
                                      );
     }
```

**Important:** In addition to the restrictions regarding access to an instance state, current best practices forbid calling any instance methods from the Configure method. However, it should be noted that calling instance methods from the Configure method will not cause an error by itself, whereas accessing the instance state will lead to a runtime error.

## Graph Class Hierarchy { .section}

The Configure method is present both in graphs and graph extensions. The methods have the same signature. However, there are notable differences in how they behave at runtime. The Configure method in a graph is treated more like a static method than an instance virtual method by the Acumatica Framework. You can notice this phenomenon when working with a graph class hierarchy. Suppose that you have a `Base` graph and a `Derived` graph that is derived from the `Base` graph. The `Base` graph declares a workflow as shown in the following code.

```
public class Base : PXGraph<Base>
{
    public override void Configure(PXScreenConfiguration screenConfig)
    {
         //Some workflow logic here
    }    
}
```

The code above has defined the screen configuration for the base graph. However, this Configure method will not be called for the `Derived` graph, and its screen configuration will remain empty because the system ignores all derived graphs while processing screens. Notice that the Configure method is not sealed in the `Base` graph. To make sure that the Configure method in the `Base` graph gets called for the `Derived` graph, you might attempt to declare a trivial override of the Configure method in the `Derived` graph. An example is shown in the following code.

```
 public class Derived : Base
{
    public override void Configure(PXScreenConfiguration screenConfig)
           => base.Configure(screenConfig);
}
```

It is important to note that overriding a graph's Configure method in a derived graph, as shown in the preceding code example, is not allowed. We recommend that you explicitly seal the `Base` graph's Configure method to prevent such override attempts. When the Configure method is used in graph extensions, the Acumatica Framework treats it like a normal virtual method. The caveats discussed above with regard to the Configure method in a graph do not apply in this instance, but you still should avoid relying on the Configure method's virtuality in a graph extension. You should instead explicitly seal the Configure method in graph extensions as well.

## Order of Execution { .section}

The Configure method override in a graph is always executed first. The order of execution for multiple Configure methods declared in several graph extensions is defined by the way the graph extensions are chained and their explicit sort order. For more details, see [To Sort Multiple Generic Graph Extensions](../StudioDeveloperGuide/BL__how_Sort_Generic_Graph_Extensions.md)

**Parent topic:**[Preparing a Screen Configuration](../DeveloperGuide/WorkflowAPI_ScreenConfig_Mapref.md)

