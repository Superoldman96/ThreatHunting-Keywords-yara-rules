rule advanced_ip_scanner
{
    meta:
        description = "Detection patterns for the tool 'advanced-ip-scanner' taken from the ThreatHunting-Keywords github project" 
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "advanced-ip-scanner"
        rule_category = "greyware_tool_keyword"

    strings:
        // Description: The program shows all network devices. gives you access to shared folders. provides remote control of computers (via RDP and Radmin) and can even remotely switch computers off. It is easy to use and runs as a portable edition (abused by TA)
        // Reference: https://www.huntandhackett.com/blog/advanced-ip-scanner-the-preferred-scanner-in-the-apt-toolbox
        $string1 = /\.exe\s\/s\:ip_ranges\.txt\s\/f\:scan_results\.txt/ nocase ascii wide
        // Description: The program shows all network devices. gives you access to shared folders. provides remote control of computers (via RDP and Radmin) and can even remotely switch computers off. It is easy to use and runs as a portable edition (abused by TA)
        // Reference: https://www.huntandhackett.com/blog/advanced-ip-scanner-the-preferred-scanner-in-the-apt-toolbox
        $string2 = /\\advanced_ip_scanner/ nocase ascii wide
        // Description: The program shows all network devices. gives you access to shared folders. provides remote control of computers (via RDP and Radmin) and can even remotely switch computers off. It is easy to use and runs as a portable edition (abused by TA)
        // Reference: https://www.huntandhackett.com/blog/advanced-ip-scanner-the-preferred-scanner-in-the-apt-toolbox
        $string3 = /\\Local\\Temp\\Advanced\sIP\sScanner\s2\\/ nocase ascii wide
        // Description: The program shows all network devices. gives you access to shared folders. provides remote control of computers (via RDP and Radmin) and can even remotely switch computers off. It is easy to use and runs as a portable edition (abused by TA)
        // Reference: https://www.huntandhackett.com/blog/advanced-ip-scanner-the-preferred-scanner-in-the-apt-toolbox
        $string4 = /\\Program\sFiles\s\(x86\)\\Advanced\sIP\sScanner\\/ nocase ascii wide
        // Description: The program shows all network devices. gives you access to shared folders. provides remote control of computers (via RDP and Radmin) and can even remotely switch computers off. It is easy to use and runs as a portable edition (abused by TA)
        // Reference: https://www.huntandhackett.com/blog/advanced-ip-scanner-the-preferred-scanner-in-the-apt-toolbox
        $string5 = /\\Programs\\Advanced\sIP\sScanner\sPortable\\/ nocase ascii wide
        // Description: The program shows all network devices. gives you access to shared folders. provides remote control of computers (via RDP and Radmin) and can even remotely switch computers off. It is easy to use and runs as a portable edition (abused by TA)
        // Reference: https://www.huntandhackett.com/blog/advanced-ip-scanner-the-preferred-scanner-in-the-apt-toolbox
        $string6 = /\>Advanced\sIP\sScanner\sSetup\</ nocase ascii wide
        // Description: The program shows all network devices. gives you access to shared folders. provides remote control of computers (via RDP and Radmin) and can even remotely switch computers off. It is easy to use and runs as a portable edition (abused by TA)
        // Reference: https://www.huntandhackett.com/blog/advanced-ip-scanner-the-preferred-scanner-in-the-apt-toolbox
        $string7 = /26d5748ffe6bd95e3fee6ce184d388a1a681006dc23a0f08d53c083c593c193b/ nocase ascii wide
        // Description: The program shows all network devices. gives you access to shared folders. provides remote control of computers (via RDP and Radmin) and can even remotely switch computers off. It is easy to use and runs as a portable edition (abused by TA)
        // Reference: https://www.huntandhackett.com/blog/advanced-ip-scanner-the-preferred-scanner-in-the-apt-toolbox
        $string8 = /Advanced\sIP\sScanner/ nocase ascii wide
        // Description: The program shows all network devices. gives you access to shared folders. provides remote control of computers (via RDP and Radmin) and can even remotely switch computers off. It is easy to use and runs as a portable edition (abused by TA)
        // Reference: https://www.huntandhackett.com/blog/advanced-ip-scanner-the-preferred-scanner-in-the-apt-toolbox
        $string9 = /Advanced_IP_Scanner.{0,1000}\.exe/ nocase ascii wide
        // Description: The program shows all network devices. gives you access to shared folders. provides remote control of computers (via RDP and Radmin) and can even remotely switch computers off. It is easy to use and runs as a portable edition (abused by TA)
        // Reference: https://www.huntandhackett.com/blog/advanced-ip-scanner-the-preferred-scanner-in-the-apt-toolbox
        $string10 = /advanced_ip_scanner_console\.exe/ nocase ascii wide
        // Description: The program shows all network devices. gives you access to shared folders. provides remote control of computers (via RDP and Radmin) and can even remotely switch computers off. It is easy to use and runs as a portable edition (abused by TA)
        // Reference: https://www.huntandhackett.com/blog/advanced-ip-scanner-the-preferred-scanner-in-the-apt-toolbox
        $string11 = /https\:\/\/download\.advanced\-ip\-scanner\.com\/download\/files\/.{0,1000}\.exe/ nocase ascii wide

    condition:
        any of them
}
