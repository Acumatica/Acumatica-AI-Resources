# Route Executions: Generation of Appointments for Route Executions {#_04b827fe-af0d-4ab2-9f40-d284e2968b64 .concept}

In Acumatica ERP, the final step of processing a route service contract is generating the appointments for route executions. If a route execution for a specific day does not yet exist in the system, the system generates a route execution along with the appointments. If a route execution for a specific day exists in the system, the system generates appointments, and they are included in the existing route execution.

In this topic, you will read about how the appointments of route executions are generated for a route service contract and how the generation process can be canceled in the system.

## Generating Appointments { .section}

You generate the route appointments in the system according to the route service contract schedules you have created. You can generate appointments manually or create an automation schedule to generate the appointments. For more information on scheduling automated processing, see [Automated Processing: General Information](SA_Scheduling_Automated_Processing_GeneralInfo.md).

To generate schedules manually, you use the [Generate Route Appointments](FS_50_02_00.md) \(FS500200\) form. You can navigate directly to this form, or you can navigate to this form from the [Route Service Contract Schedules](FS_30_56_00.md) \(FS305100\) form by clicking the **Generate Route Appointments** button on the form toolbar. \(This button becomes available after you have specified the schedule recurrence settings and saved the route service contract schedule.\)

On the [Generate Route Appointments](FS_50_02_00.md) form, you can filter the list of schedules by route, and you should select the date range for which you want to generate schedules in the system. You can then generate route executions for all listed route service contract schedules or only those you select.

You can process the route executions with the generated appointments.

## Viewing Generation Processes { .section}

On the **Run History** tab of the [Generate Route Appointments](FS_50_02_00.md) \(FS500200\) form, you can view information about the generation process, such as the date until which the appointments have been generated and the date when the appointments have been generated.

**Parent topic:**[Route Executions](../UserGuide/RouteMgmt_Managing_Route_Executions_Mapref.md)

