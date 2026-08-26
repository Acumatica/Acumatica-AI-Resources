# GetProcessStatus\(\) Method {#_4a4ca180-c33e-433a-8181-af91378e5554 .reference}

You use the GetProcessStatus\(\) method to monitor the status of a long-running operation \(such as the release or confirmation operation\).

## Syntax { .section}

```
public ProcessResult GetProcessStatus()
```

## Return Value { .section}

The method returns a ProcessResult object. You should use the Status property of this object to get the status of the processing operation. When the status of the operation is Completed, you can get the result of processing.

**Parent topic:**[Screen-Based SOAP API Reference](../IntegrationDevelopmentGuide/IS__IS_SB_API_Reference.md)

