# To Display and Hide a Wiki in the UI {#_e05f4aad-c2db-4bb4-b801-0d59ca110d90 .task}

If you want to make a wiki available for other users, you can add a card for it to the Help dashboard; you can also hide a card for a wiki from the Help dashboard if it is already displayed there. You might want to display a wiki card on the Help dashboard if any users in your system may use the Acumatica ERP UI.

To display or hide a wiki, you use the [Wiki](SM_20_20_05.md) \(SM202005\) form.

## To Display a Wiki in the UI { .section}

1.  Open the [Wiki](../Shared/../UserGuide/SM_20_20_05.md) \(SM202005\) form.
2.  In the Summary area of the form, in the **ID** box of the **General** section, select the identifier of the wiki that you want to make visible on the Help dashboard.
3.  In the **Modern UI** section, select the **Show on Help Dashboard** check box to display a card for the selected wiki on the Help dashboard.
4.  In the **Sequence** box, specify the whole or decimal number that defines the sequential position of the wiki on the Help dashboard.

    **Note:** Acumatica ERP doesn't verify the sequence number that you specify for each wiki. We recommend that you use different sequence numbers for different wikis to avoid unexpected results.

5.  Optional: In the **Default Article** box, select the article to be displayed by default when a user clicks **Explore** on the wiki card on the Help dashboard. If no article is selected here, the first article of the selected wiki is displayed by default.
6.  On the **Wiki Settings** tab, in the **Dashboard Description** box, type an explanation of the content of the wiki, which will be used on the wiki card on the Help dashboard. In the description box, you can enter 255 characters, but we recommend that you enter no more than 160 characters so that your description fits the wiki card displayed on the Help dashboard.
7.  In the **Classic UI** section, do the following:
    1.  In the **Site Map Location** box, select the node of the site map in which the wiki will be located.

        **Note:** You specify the site map location of the selected wiki to make it available for use in the system. This step is necessary.

    2.  In the **Site Map Title** box, type the title of wiki on the site map.
8.  On the form toolbar, click **Save**.

## To Hide a Wiki in the UI { .section}

1.  Open the [Wiki](../Shared/../UserGuide/SM_20_20_05.md) \(SM202005\) form.
2.  In the Summary area of the form, in the **ID** box of the **General** section, select the identifier of the wiki that you want to hide from the Help dashboard.
3.  In the **Modern UI** section, clear the **Show on Help Dashboard** check box to hide the card for the selected wiki on the Help dashboard.
4.  In the **Classic UI** section, clear the **Site Map Location** box to delete the selected wiki from the node of the site map.
5.  On the form toolbar, click **Save**.

**Parent topic:**[Managing Wikis](../UserGuide/DM__mng_Wikis.md)

