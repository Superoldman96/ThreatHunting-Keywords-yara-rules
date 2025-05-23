rule masscan
{
    meta:
        description = "Detection patterns for the tool 'masscan' taken from the ThreatHunting-Keywords github project"
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "masscan"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: TCP port scanner. spews SYN packets asynchronously. scanning entire Internet in under 5 minutes.
        // Reference: https://github.com/robertdavidgraham/masscan
        $string1 = /\sinstall\s.{0,1000}masscan/
        // Description: TCP port scanner. spews SYN packets asynchronously. scanning entire Internet in under 5 minutes.
        // Reference: https://github.com/robertdavidgraham/masscan
        $string2 = /\\masscan\\src\\/ nocase ascii wide
        // Description: TCP port scanner. spews SYN packets asynchronously. scanning entire Internet in under 5 minutes.
        // Reference: https://github.com/robertdavidgraham/masscan
        $string3 = "bin/masscan"
        // Description: TCP port scanner. spews SYN packets asynchronously. scanning entire Internet in under 5 minutes.
        // Reference: https://github.com/robertdavidgraham/masscan
        $string4 = "C88D7583-254F-4BE6-A9B9-89A5BB52E679"
        // Description: TCP port scanner. spews SYN packets asynchronously. scanning entire Internet in under 5 minutes.
        // Reference: https://github.com/robertdavidgraham/masscan
        $string5 = "ivre-masscan/"
        // Description: TCP port scanner. spews SYN packets asynchronously. scanning entire Internet in under 5 minutes.
        // Reference: https://github.com/robertdavidgraham/masscan
        $string6 = "masscan -c "
        // Description: TCP port scanner. spews SYN packets asynchronously. scanning entire Internet in under 5 minutes.
        // Reference: https://github.com/robertdavidgraham/masscan
        $string7 = "masscan --nmap"
        // Description: TCP port scanner. spews SYN packets asynchronously. scanning entire Internet in under 5 minutes.
        // Reference: https://github.com/robertdavidgraham/masscan
        $string8 = "masscan -p"
        // Description: TCP port scanner. spews SYN packets asynchronously. scanning entire Internet in under 5 minutes.
        // Reference: https://github.com/robertdavidgraham/masscan
        $string9 = /masscan.{0,1000}\s\-p/
        // Description: TCP port scanner. spews SYN packets asynchronously. scanning entire Internet in under 5 minutes.
        // Reference: https://github.com/robertdavidgraham/masscan
        $string10 = /masscan\.exe\s/ nocase ascii wide
        // Description: TCP port scanner. spews SYN packets asynchronously. scanning entire Internet in under 5 minutes.
        // Reference: https://github.com/robertdavidgraham/masscan
        $string11 = "robertdavidgraham/masscan" nocase ascii wide
        // Description: TCP port scanner. spews SYN packets asynchronously. scanning entire Internet in under 5 minutes.
        // Reference: https://github.com/robertdavidgraham/masscan
        $string12 = /unix\/1\.0\sUPnP\/1\.1\smasscan\// nocase ascii wide
        // Description: TCP port scanner. spews SYN packets asynchronously. scanning entire Internet in under 5 minutes.
        // Reference: https://github.com/robertdavidgraham/masscan
        $string13 = "xterm -e masscan" nocase ascii wide
        // Description: TCP port scanner. spews SYN packets asynchronously. scanning entire Internet in under 5 minutes.
        // Reference: https://github.com/robertdavidgraham/masscan
        $string14 = "masscan "

    condition:
        any of them
}
