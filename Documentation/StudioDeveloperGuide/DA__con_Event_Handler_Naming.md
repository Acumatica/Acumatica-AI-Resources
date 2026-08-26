# Naming Conventions for Event Handlers Defined in Graphs {#_b6ff1ff7-5bf6-4ce2-a164-7d1cc7baecd5 .concept}

In Acumatica Framework, you must adhere to the naming conventions for an event handler to be implemented in a graph or graph extension. The name of the event handler must include the event type and the object to be processed by the handler.

The name of a data record event handler must have the following segments, which are separated by the *\_* symbol:

1.  The name of the DAC declared in the server
2.  The name of the record event supported by the server

Therefore, the name of a data record event handler must be in the following format: *DACName\_EventName* \(such as SOOrder\_RowSelected\).

The name of a data field event handler must have the following segments, which are separated by the *\_* symbol:

1.  The name of the DAC declared in the server
2.  The name of the data field declared within the DAC whose name is specified in the first segment
3.  The name of the field event supported by the server

Therefore, for a field event handler, the name must be in the following format: *DACName\_FieldName\_EventName* \(such as SOOrder\_CustomerID\_FieldUpdated\).

**Parent topic:**[Naming the Graphs and Event Handlers](../StudioDeveloperGuide/DA__mng_Code_Guidelines.md)

