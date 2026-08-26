# Error Messages {#_051f3624-94e0-436f-b5b5-d0231855294b .concept}

The MSDL interpreter can work in the following modes:

-   Production mode, in which the interpreter ignores most errors while processing the MSDL code, for greater stability
-   Debugging mode, in which the interpreter logs every error and stops executing the MSDL code if an error occurs

Production mode is used by default; here the MSDL interpreter does not log errors that occur. The interpreter ignores any MSDL file that contains a syntax error. It also ignores any instruction that contains a semantic error; if such an instruction contains nested instructions and assignment commands, the interpreter also ignores them.

To turn on debugging mode, you should turn on the mobileSitemapDebug key by including the following string in the &lt;appSettings&gt; section of the `web.config` file, which is located in the website folder:`<add key="mobileSitemapDebug" value="True" />`.

If the key is turned on, the MSDL interpreter logs errors and sends the error messages to the mobile app, which displays these messages on the mobile device.

The error messages are logged in the following format.

```
path\\fileName:lineNumber errorMessage
```

The interpreter logs the following types of errors.

|Example of Error Message|Description|
|------------------------|-----------|
|*Invalid command 'ad'.*|The instruction name is invalid.|
|*Can't use entity type 'scren' in current context.*|The interpreter detects an unknown object or an attempt to use the object in the wrong context. The interpreter ignores the instruction and all the nested commands and instructions.|
|*Invalid argument '1'*|The instruction contains an invalid type of a parameter.|
|*Invalid argument count*|The instruction contains the wrong number of parameters. The interpreter ignores the instruction and all the nested commands and instructions.|
|*Can't find entity with key 'ExpenseReceipts' in current context.*|The object specified in the instruction \(for example, update or remove\) is not found in the mobile site map.|
|*Only one instance of entity type 'sitemap'.*|The instruction is trying to add an object that exists in the mobile site map, and the site map can contain only one such object.|
|*Entity with key 'EP301010' already exists.*|The instruction is trying to add an object that exists in the parent object.|
|*Can't use attribute 'someAttr' in current context.*|The assignment command is trying to set an attribute that does not rely on the specified object.|
|*Can't assign value to attribute 'forceRequired'*|The assignment command is trying to assign to the attribute a value of an inappropriate type.|
|*Syntax error: extraneous input '\}'*|The interpreter has detected a syntax error in the specified line of the MSDL code.|

**Parent topic:**[MSDL](../StudioDeveloperGuide/MOBILE_Ref_MSDL.md)

