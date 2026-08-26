# To Check the State of Application Instances and Databases {#_12aa69ab-7b0f-4262-88e2-5c33124275d2 .task}

You can check the state of your application instances and databases and see which instances and databases you need to update.

## To Check the State of Application Instances and Databases { .section}

1.  Run the Acumatica ERP Configuration wizard on the server where Acumatica ERP is installed. For example, select **Start &gt; Acumatica &gt; Acumatica ERP Configuration**.
2.  On the Welcome page, click **Perform Application Maintenance**.

On the Application Maintenance page of the Acumatica ERP Configuration wizard, the system flags each instance in the list of installed sites with one of the following icons:

-   *Green check mark*: Indicates that the instance and the associated database are up to date \(the versions of the application instance, the database, and the Acumatica ERP Configuration wizard are the same\).
-   *Yellow triangle with exclamation point*: Indicates that the instance and the instance database are outdated \(the version of the application instance is same as the version of the database and is older than that of the installed Acumatica ERP Configuration wizard\). You may need to update the application instance and the database.

    **Note:** After you update the Acumatica ERP Tools, all your instances installed before the update are marked in this way.

-   *Red circle with a white X*: Indicates that the instance or the database \(depending on which has an older version\) requires update; that is, the versions of the instance and the instance's database are different. You must update the one whose version is older.

    Also, this marking may indicate that the instance and the database versions are newer than the version of the installed Acumatica ERP Configuration wizard. You won't be able to downgrade the instance or the database.


**Parent topic:**[Maintaining Acumatica ERP Locally](../UserGuide/Maintaining_Acumatica.md)

