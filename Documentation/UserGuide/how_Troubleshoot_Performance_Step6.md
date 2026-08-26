# Step 6: Submit a Case to Acumatica Support {#_ea0f4c50-55f4-4c36-b81b-372a30fc3546 .task}

If you have not found a solution for your issue, create a case for the Acumatica support team and provide as much information in it as you can, which may include the following information:

-   Basic points to reproduce the issue
-   Version and build of Acumatica ERP
-   Troubleshooting steps taken so far \(provide screenshots where applicable\):
    -   Have you checked whether the site is licensed?
    -   Have you checked the speed from other browsers?
        -   If the issue is reproduced in only one browser, specify the browser and its version.
    -   Have you checked the speed from other locations?
    -   Have you checked automation schedules?
    -   Have you checked the list of running processes in Acumatica ERP and in the operating system?
    -   Have you checked whether antivirus software is blocking the site?
    -   Have you checked the configuration of the application server?
        -   Specify whether dynamic content compression is enabled in the system.
        -   Specify whether the application uses its own application pool.
        -   Specify the mode in which IIS is running.
        -   Specify the parameters of the application server \(total physical memory, number of CPU cores, operating system, and number of concurrent users in the system\).
    -   Have you checked the configuration of the database server?
        -   Specify whether the application server and database server are on separate hosts.
        -   Specify the maximum server memory specified in SQL Server settings.
        -   Specify whether weekly maintenance plans are scheduled.
        -   Specify the parameters of the database server \(total physical memory, number of CPU cores, and operating system\).
        -   Provide the performance reports of SQL Server.
        -   Specify whether you have found any locks in the SQL Activity Monitor.
    -   Have you used the Acumatica ERP Request Profiler?
        -   Provide the logs of the Request Profiler in a ZIP archive with JSON files.
        -   Specify whether you have found any long-running requests.
    -   Have you obtained any additional information?
        -   Include memory dump file.
        -   Include update history and errors.
        -   Include `maintlog.txt`.
        -   Include first-chance exception log.
        -   Include dotTrace snapshot.
-   Access credentials
-   Convenient times to reset the system without contacting the client \(if any\)

**Parent topic:**[Troubleshooting Performance](../UserGuide/how_Troubleshoot_Performance.md)

