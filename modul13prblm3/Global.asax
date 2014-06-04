<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        Application["userCount"] = 0;
        Application["activeUserCount"] = 0;

    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        int userCount = (int)Application["userCount"];
        userCount++;
        Application["userCount"] = userCount;
        int activeUserCount = (int)Application["activeUserCount"];
        activeUserCount++;
        Application["activeUserCount"] = activeUserCount;

    }

    void Session_End(object sender, EventArgs e) 
    {
        int activeUserCount = (int)Application["activeUserCount"];
        activeUserCount--;
        Application["activeUserCount"] = activeUserCount;

    }
       
</script>
