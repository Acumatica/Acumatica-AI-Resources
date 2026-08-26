# Report Optimization {#_72931747-da3b-4fc2-a766-a60c72b12f8d .concept}

The value of an unbound data access class \(DAC\) field can be calculated in the property getter. The calculation can involve other fields of the same DAC. However, when the value of the DAC field is requested, other fields are not guaranteed to be calculated or assigned their values. These situations are normal when the integration services are used, copy-paste functionality is used, or the field is used in reports.

To ensure that the fields referenced in the property getter have values when it is executed, you should use the [PXDependsOnFields](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=d89d1d7c-1dd4-c7e5-36c0-524ea3f80117) attribute.

**Parent topic:**[Working with Attributes](../StudioDeveloperGuide/BL__mng_Working_With_Attributes.md)

