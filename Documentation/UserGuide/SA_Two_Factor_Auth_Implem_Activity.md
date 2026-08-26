# Two-Factor Authentication: Implementation Activity {#_f498de6a-fb14-485c-a05d-06e4492397a7 .task}

In the following implementation activity, you will learn how to activate two-factor authentication for an individual user of the system.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the SweetLife Fruits &amp; Jams company has decided to use two-factor authentication to prevent unauthorized system access. The users of the system should be able to authenticate themselves by using an access code received from the system administrator, a one-time code received by email, or the Acumatica app.

You, as a system administrator, have decided to first test the activation for yourself and then activate it for all users.

## Process Overview { .section}

In this activity, on the [Users](SM_20_10_10.md) \(SM201010\) form, you will turn on two-factor authentication for the *gibbs* user and generate the list of access codes there. Then you will turn on the delivery of access codes by email by using the [Security Preferences](SM_20_10_60.md) \(SM201060\) form.

You will sign out and try to sign in with an access code. Finally, you will use the [All Emails](CO_40_90_70.md) \(CO409070\) inquiry form to make sure that the system prepared an email with a one-time access code.

## System Preparation { .section}

Before you start activating two-factor authentication, sign in to a company with the *U100* dataset preloaded. You should sign in as a system administrator with the *gibbs* username and *123* password.

## Step 1: Turning On Two-Factor Authentication for a User { .section}

To turn on two-factor authentication for a user, do the following:

1.  Open the [Users](SM_20_10_10.md) \(SM201010\) form.
2.  In the **Login** box of the Summary area, select *gibbs*.
3.  In the **Two-Factor Authentication** section, select the **Override Security Preferences** check box.
4.  In the **Two-Factor Authentication** box, select *Required*.
5.  On the form toolbar, click **Save**.
6.  On the form toolbar, click **Generate Access Codes**. The system opens the Codes \(SM651011\) report in a pop-up window.
7.  On the report toolbar, click **Export** &gt; **PDF**. The list of the codes is saved to your computer.

## Step 2: Turning On the Delivery of Access Codes by Email { .section}

To turn on the delivery of access codes by email, do the following:

1.  Open the [Security Preferences](SM_20_10_60.md) \(SM201060\) form.
2.  In the **Two-Factor Authentication Policy** section, select the **Allow Email** check box.
3.  On the form toolbar, click **Save**.

## Step 3: Signing In with an Access Code { .section}

To sign in with an access code, do the following:

1.  In the top right corner of the screen, click the *Kimberly Gibbs* username and then select **Sign Out**.
2.  On the Sign-In page, enter `gibbs` as the username and `123` as the password, and click **Sign In**. The system provides instructions for two-factor authentication.
3.  Click *Use Another Authentication Method*. The system offers the list of other authentication methods available.
4.  Click *Receive code by email* to make the system send you the one-time code, which you will later review by using the [All Emails](CO_40_90_70.md) \(CO409070\) inquiry form.
5.  Click *Use Another Authentication Method*, and click *Enter code generated in mobile app or from the list*.
6.  Copy the first access code from the saved list of codes and paste it in the empty box.
7.  Click **Sign In**.
8.  Open the [All Emails](CO_40_90_70.md) \(CO409070\) inquiry form.
9.  In the list of emails, find the one with the *Sign-in Code* summary and open it. Make sure it is addressed to gibbs@sweetlife.com \(which is the email address of Kimberly Gibbs\) and has an access code inside.

In this activity, you turned on two-factor authentication for a user, generated the list of access codes, and saved it. Then you turned on sending of access codes by email. You verified the configuration by making the system send an access code by email, and then you signed in with a generated access code. You made sure that the system generated an email with an access code upon your request.

Optionally, as a self-guided exercise, if you have the Acumatica mobile app and can connect it to the instance you are using for completing the exercise, you can try to authenticate yourself by using the app.

**Parent topic:**[Managing Two-Factor Authentication](../UserGuide/SA_Two_Factor_Auth_Mapref.md)

