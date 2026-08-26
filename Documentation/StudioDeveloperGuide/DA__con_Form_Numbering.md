# Form and Report Numbering {#_4a5e6db8-cbba-4cbe-b0f1-1d774381c1b4 .concept}

In this topic, you can find the guidelines for form and report numbering in Acumatica ERP.

## Form Numbering {#section_k2p_vlx_2t .section}

When you are numbering forms in Acumatica ERP, use the following conventions.

```
  XX999999
   | | | |_ Subscreen sequential number
   | | |___ Screen sequential number
   | |_____ Screen type: 
   |                    10: Setup
   |                    20: Maintenance
   |                    30: Data Entry
   |                    40: Inquiry 
   |                    50: Processing
   |                    60: Reports
   |_______ Two-letter module code (representing the functional area of the system)
```

**Important:** For a custom functional area, customizers can introduce their own prefix, which is referred to as the two-letter module code in the example above. However, this prefix must not be a *system prefix*: a prefix whose use is reserved for the corresponding functional area of Acumatica ERP. For a detailed list of these prefixes, see the table in [Graph Naming](DA__con_Graph_Naming.md).

## Report Numbering {#section_dp5_vlx_2t .section}

When you are numbering reports in Acumatica ERP, use the following conventions in addition to those outlined above

```
  XX6X9999
     |  
     |____ Report type: 
             61: Review reports (reports for document review prior to release) 
             62: Register reports (reports used to print audit information 
                                        on processed documents or entities)
             63: Balance reports (reports reflecting current or historical
                                                       balance information)
             64: Forms (printed webpages)
             65: Inquiry Reports (reports that provide status information
                                       required for operational management)
             66: Statistical reports (reports that provide statistical or 
                                                    historical information)
```

**Parent topic:**[Designing the User Interface](../StudioDeveloperGuide/DA__mng_Designing_UI.md)

