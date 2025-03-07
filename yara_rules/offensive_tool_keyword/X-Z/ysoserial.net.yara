rule ysoserial_net
{
    meta:
        description = "Detection patterns for the tool 'ysoserial.net' taken from the ThreatHunting-Keywords github project"
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "ysoserial.net"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: Deserialization payload generator for a variety of .NET formatters
        // Reference: https://github.com/pwntester/ysoserial.net
        $string1 = /\s\-c\s.{0,1000}ExploitClass\.cs.{0,1000}System\.dll/ nocase ascii wide
        // Description: Deserialization payload generator for a variety of .NET formatters
        // Reference: https://github.com/pwntester/ysoserial.net
        $string2 = /\s\-\-cve\=.{0,1000}\s\-\-command/ nocase ascii wide
        // Description: Deserialization payload generator for a variety of .NET formatters
        // Reference: https://github.com/pwntester/ysoserial.net
        $string3 = " -g ActivitySurrogateSelector" nocase ascii wide
        // Description: Deserialization payload generator for a variety of .NET formatters
        // Reference: https://github.com/pwntester/ysoserial.net
        $string4 = " -g ClaimsPrincipal " nocase ascii wide
        // Description: Deserialization payload generator for a variety of .NET formatters
        // Reference: https://github.com/pwntester/ysoserial.net
        $string5 = " -g PSObject " nocase ascii wide
        // Description: Deserialization payload generator for a variety of .NET formatters
        // Reference: https://github.com/pwntester/ysoserial.net
        $string6 = " -g TextFormattingRunProperties " nocase ascii wide
        // Description: Deserialization payload generator for a variety of .NET formatters
        // Reference: https://github.com/pwntester/ysoserial.net
        $string7 = " --gadget ActivitySurrogateSelector" nocase ascii wide
        // Description: Deserialization payload generator for a variety of .NET formatters
        // Reference: https://github.com/pwntester/ysoserial.net
        $string8 = " --gadget ClaimsPrincipal " nocase ascii wide
        // Description: Deserialization payload generator for a variety of .NET formatters
        // Reference: https://github.com/pwntester/ysoserial.net
        $string9 = " --gadget PSObject " nocase ascii wide
        // Description: Deserialization payload generator for a variety of .NET formatters
        // Reference: https://github.com/pwntester/ysoserial.net
        $string10 = /\s\-m\srun_command\s\-c\s.{0,1000}\.exe/ nocase ascii wide
        // Description: Deserialization payload generator for a variety of .NET formatters
        // Reference: https://github.com/pwntester/ysoserial.net
        $string11 = " -p ActivatorUrl" nocase ascii wide
        // Description: Deserialization payload generator for a variety of .NET formatters
        // Reference: https://github.com/pwntester/ysoserial.net
        $string12 = " -p Altserialization" nocase ascii wide
        // Description: Deserialization payload generator for a variety of .NET formatters
        // Reference: https://github.com/pwntester/ysoserial.net
        $string13 = " -p DotNetNuke" nocase ascii wide
        // Description: Deserialization payload generator for a variety of .NET formatters
        // Reference: https://github.com/pwntester/ysoserial.net
        $string14 = " -p SessionSecurityTokenHandler" nocase ascii wide
        // Description: Deserialization payload generator for a variety of .NET formatters
        // Reference: https://github.com/pwntester/ysoserial.net
        $string15 = " -p TransactionManagerReenlist" nocase ascii wide
        // Description: Deserialization payload generator for a variety of .NET formatters
        // Reference: https://github.com/pwntester/ysoserial.net
        $string16 = /\/ghostfile\.aspx/ nocase ascii wide
        // Description: Deserialization payload generator for a variety of .NET formatters
        // Reference: https://github.com/pwntester/ysoserial.net
        $string17 = "/ysoserial/" nocase ascii wide
        // Description: Deserialization payload generator for a variety of .NET formatters
        // Reference: https://github.com/pwntester/ysoserial.net
        $string18 = /\\windows\\temp\\ncat\.exe\s\-nv\s/ nocase ascii wide
        // Description: Deserialization payload generator for a variety of .NET formatters
        // Reference: https://github.com/pwntester/ysoserial.net
        $string19 = /\\ysoserial\\/ nocase ascii wide
        // Description: Deserialization payload generator for a variety of .NET formatters
        // Reference: https://github.com/pwntester/ysoserial.net
        $string20 = /echo\s123\s\>\sc\:\\windows\\temp\\test\.txt/ nocase ascii wide
        // Description: Deserialization payload generator for a variety of .NET formatters
        // Reference: https://github.com/pwntester/ysoserial.net
        $string21 = "-f BinaryFormatter -g PSObject -o base64 -c " nocase ascii wide
        // Description: Deserialization payload generator for a variety of .NET formatters
        // Reference: https://github.com/pwntester/ysoserial.net
        $string22 = /\-f\sJson\.Net\s\-g\sObjectDataProvider\s\-o\sraw\s\-c\s/ nocase ascii wide
        // Description: Deserialization payload generator for a variety of .NET formatters
        // Reference: https://github.com/pwntester/ysoserial.net
        $string23 = "fakepath31337" nocase ascii wide
        // Description: Deserialization payload generator for a variety of .NET formatters
        // Reference: https://github.com/pwntester/ysoserial.net
        $string24 = /GhostWebShell\.cs/ nocase ascii wide
        // Description: Deserialization payload generator for a variety of .NET formatters
        // Reference: https://github.com/pwntester/ysoserial.net
        $string25 = /MessageBox\.Show.{0,1000}Pwned/ nocase ascii wide
        // Description: Deserialization payload generator for a variety of .NET formatters
        // Reference: https://github.com/pwntester/ysoserial.net
        $string26 = /ModifiedVulnerableBinaryFormatters\\info\.txt/ nocase ascii wide
        // Description: Deserialization payload generator for a variety of .NET formatters
        // Reference: https://github.com/pwntester/ysoserial.net
        $string27 = "PCVAIExhbmd1YWdlPSJDIyIlPgpUaGlzIGlzIHRoZSBhdHRhY2tlcidzIGZpbGUgPGJyLz4KUnVubmluZyBvbiB0aGUgc2VydmVyIGlmIGA8JT0xMzM4LTElPmAgaXMgMTMzNy4" nocase ascii wide
        // Description: Deserialization payload generator for a variety of .NET formatters
        // Reference: https://github.com/pwntester/ysoserial.net
        $string28 = "TestConsoleApp_YSONET" nocase ascii wide
        // Description: Deserialization payload generator for a variety of .NET formatters
        // Reference: https://github.com/pwntester/ysoserial.net
        $string29 = "X-YSOSERIAL-NET" nocase ascii wide
        // Description: Deserialization payload generator for a variety of .NET formatters
        // Reference: https://github.com/pwntester/ysoserial.net
        $string30 = "ysoserial -" nocase ascii wide
        // Description: Deserialization payload generator for a variety of .NET formatters
        // Reference: https://github.com/pwntester/ysoserial.net
        $string31 = /ysoserial\-.{0,1000}\.zip/ nocase ascii wide
        // Description: Deserialization payload generator for a variety of .NET formatters
        // Reference: https://github.com/pwntester/ysoserial.net
        $string32 = /ysoserial\.exe/ nocase ascii wide
        // Description: Deserialization payload generator for a variety of .NET formatters
        // Reference: https://github.com/pwntester/ysoserial.net
        $string33 = /ysoserial\.net/ nocase ascii wide
        // Description: Deserialization payload generator for a variety of .NET formatters
        // Reference: https://github.com/pwntester/ysoserial.net
        $string34 = /ysoserial\.sln/ nocase ascii wide

    condition:
        any of them
}
