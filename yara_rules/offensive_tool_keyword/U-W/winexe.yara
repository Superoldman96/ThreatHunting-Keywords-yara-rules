rule winexe
{
    meta:
        description = "Detection patterns for the tool 'winexe' taken from the ThreatHunting-Keywords github project" 
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "winexe"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: Winexe remotely executes commands on Windows systems from GNU/Linux
        // Reference: https://www.kali.org/tools/winexe/
        $string1 = /\/kalilinux\/packages\/winexe/ nocase ascii wide
        // Description: Winexe remotely executes commands on Windows systems from GNU/Linux
        // Reference: https://www.kali.org/tools/winexe/
        $string2 = /\/winexe\s.{0,1000}\-\-runas/ nocase ascii wide
        // Description: Winexe remotely executes commands on Windows systems from GNU/Linux
        // Reference: https://www.kali.org/tools/winexe/
        $string3 = /\/winexe\s\-U\s/ nocase ascii wide
        // Description: Winexe remotely executes commands on Windows systems from GNU/Linux
        // Reference: https://www.kali.org/tools/winexe/
        $string4 = /\/winexe\.git/ nocase ascii wide
        // Description: Winexe remotely executes commands on Windows systems from GNU/Linux
        // Reference: https://www.kali.org/tools/winexe/
        $string5 = /\/winexe\-0\.91\.tar\.gz/ nocase ascii wide
        // Description: Winexe remotely executes commands on Windows systems from GNU/Linux
        // Reference: https://www.kali.org/tools/winexe/
        $string6 = /\/winexe\-1\.00\.tar\.gz/ nocase ascii wide
        // Description: Winexe remotely executes commands on Windows systems from GNU/Linux
        // Reference: https://www.kali.org/tools/winexe/
        $string7 = /\\winexesvc\.exe/ nocase ascii wide
        // Description: Winexe remotely executes commands on Windows systems from GNU/Linux
        // Reference: https://www.kali.org/tools/winexe/
        $string8 = /\>winexesvc\</ nocase ascii wide
        // Description: Winexe remotely executes commands on Windows systems from GNU/Linux
        // Reference: https://www.kali.org/tools/winexe/
        $string9 = /2077c0c96383793ffa5b0843740f9b095688df5f5accd1a74c65f634bbc42358/ nocase ascii wide
        // Description: Winexe remotely executes commands on Windows systems from GNU/Linux
        // Reference: https://www.kali.org/tools/winexe/
        $string10 = /60f25c8a290ba6185b07da48663cfc4662e2853e324bef2a272aede4c15260d2/ nocase ascii wide
        // Description: Winexe remotely executes commands on Windows systems from GNU/Linux
        // Reference: https://www.kali.org/tools/winexe/
        $string11 = /99238bd3e1c0637041c737c86a05bd73a9375abc9794dca71d2765e22d87537e/ nocase ascii wide
        // Description: Winexe remotely executes commands on Windows systems from GNU/Linux
        // Reference: https://www.kali.org/tools/winexe/
        $string12 = /apt\sinstall\swinexe/ nocase ascii wide
        // Description: Winexe remotely executes commands on Windows systems from GNU/Linux
        // Reference: https://www.kali.org/tools/winexe/
        $string13 = /https\:\/\/sourceforge\.net\/projects\/winexe/ nocase ascii wide
        // Description: Winexe remotely executes commands on Windows systems from GNU/Linux
        // Reference: https://www.kali.org/tools/winexe/
        $string14 = /skalkoto\/winexe/ nocase ascii wide
        // Description: Winexe remotely executes commands on Windows systems from GNU/Linux
        // Reference: https://www.kali.org/tools/winexe/
        $string15 = /winexesvc32\.exe/ nocase ascii wide
        // Description: Winexe remotely executes commands on Windows systems from GNU/Linux
        // Reference: https://www.kali.org/tools/winexe/
        $string16 = /winexesvc64\.exe/ nocase ascii wide

    condition:
        any of them
}