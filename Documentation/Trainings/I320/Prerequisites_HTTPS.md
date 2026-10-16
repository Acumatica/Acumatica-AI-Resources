# Configuring a Website for HTTPS

In the examples of this guide, you will use the secure connection between the API client application and Acumatica ERP.

A secure connection between the client application and the Acumatica ERP website with a Secure Socket Layer \(SSL\) certificate is required for the authorization of the client application through OAuth 2.0. Therefore, you have to set up the Acumatica ERP website for HTTPS, as described in this topic.

**Attention:** For the purposes of this training course, a self-signed certificate is sufficient. However, Acumatica ERP’s proper operation with such a certificate is not guaranteed.

## Configuring a Website for HTTPS

As the Microsoft IIS documentation states, the general steps for configuring SSL for a site include the following:

1.  You obtain the needed certificate. \(For the purposes of completing the course, you can create a self-signed server certificate.\)
2.  You create an SSL binding on a site.
3.  You test the website by making a request to the site.
4.  Optional: You configure the SSL options.

To complete the examples of this guide, you should create a self-signed certificate and configure SSL binding as follows:

1.  Create a self-signed certificate by doing the following:
    1.  Open **Internet Information Services \(IIS\) Manager**.
    2.  In the **Features View**, double-click **Server Certificates**, as shown in the following screenshot.


    3.  Click the *Create Self-Signed Certificate* link in the **Actions** pane \(see the following screenshot\).


    4.  Enter a name for the new certificate and click **OK**.
2.  Do the following to create an SSL binding:
    1.  Select a site in the tree view and click the *Bindings* link in the **Actions** pane \(see the following screenshot\).


    2.  In the **Site Bindings** dialog box, click **Add** to add your new SSL binding to the site.
    3.  In the **Type** drop-down list, select *https*.
    4.  Select the self-signed certificate you created and click **OK** to close the dialog box.
3.  In the **Actions** pane, under **Browse Website**, click the link associated with the binding you just created \(*Browse \*:443 \(https\)*\), as the following screenshot shows.


    The browser will display an error page because the self-signed certificate was issued by your computer rather than by a trusted certificate authority.

4.  Click the link to proceed with this website and disregard the error. The HTTPS website opens.

