# Query Cache {#_3350b228-6aa9-4ee8-89d1-4449cd0daacc .concept}

It can be time consuming to retrieve data from the database over a network or from storage on a hard disk drive and to load this data to the RAM. Therefore, to avoid requesting data every time, the system gives you opportunity to save data in RAM for further use by using the *query cache*.

The query cache is a mechanism that places in a cache data retrieved from the database by views or BQL queries. To save time and not request data from the database too often, the system caches almost every request from the database. After a select has been performed and the selected data has been saved in the cache, if the table has not been updated in the database and the parameters of the query are the same, the system retrieves data not from the database but from the server cache.

The query cache is invalidated if a table has been updated. If the query has been changed or it has been used with different parameter values, the data from the cache is not used.

## Clearing the Query Cache Manually { .section}

Normally, the query cache mechanism is completely transparent. You should create select queries and process the selected data without considering how the caching is performed. But sometimes the query cache is not invalidated when the data has been updated, so the cache returns the wrong data. In this case, if you realize that the cache may not be invalidated at the proper time automatically, you can invalidate the cache manually. Doing this impairs performance but returns the proper data.

For instance, if during debugging, you see that the wrong data is selected, you can assume that it is a problem with the query cache. In this case, you should clear the query cache.

You can use one of the following approaches to clear the cache:

-   Clear the cache stored in the PXCache&lt;DAC&gt; object: This operation clears the cache for all views that have the DAC specified in the PXCache&lt;DAC&gt; object as a primary DAC. To do this, call the ClearQueryCache\(\) method of the PXCache&lt;DAC&gt; object. An example is shown in the following code.

    ```
    View.Cache.ClearQueryCache();
    ```

-   Clear the cache of a single view: To do this, you call the Clear\(\) method of the view. An example is shown in the following code.

    ```
    View.Clear();
    ```


## Query Cache and PXCache { .section}

It is important to remember that the query cache and instances of PXCache are completely different things. The query cache stores data retrieved from the database, while PXCache stores data that has not yet been saved to the database. In documentation, the graph cache or just the cache always refers to PXCache, while the query cache is always named explicitly.

**Parent topic:**[Querying Data in Acumatica Framework](../StudioDeveloperGuide/AD__mng_Querying_Data.md)

