var deviceInfo = "Device Information:\n";
    deviceInfo += "User Agent: " + navigator.userAgent + "\n";
    deviceInfo += "Platform: " + navigator.platform + "\n";
    deviceInfo += "Language: " + navigator.language + "\n";
    deviceInfo += "Cookies Enabled: " + navigator.cookieEnabled + "\n";
    deviceInfo += "Cookies: " + document.cookie + "\n";

    // Alert the collected information
    alert(deviceInfo);
