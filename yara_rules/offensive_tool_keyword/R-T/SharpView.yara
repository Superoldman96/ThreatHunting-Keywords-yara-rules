rule SharpView
{
    meta:
        description = "Detection patterns for the tool 'SharpView' taken from the ThreatHunting-Keywords github project"
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "SharpView"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: C# implementation of harmj0y's PowerView
        // Reference: https://github.com/tevora-threat/SharpView/
        $string1 = /\.exe\sGet\-DomainController\s\-Domain\s.{0,1000}\s\-Server\s.{0,1000}\s\-Credential\s/ nocase ascii wide
        // Description: C# implementation of harmj0y's PowerView
        // Reference: https://github.com/tevora-threat/SharpView/
        $string2 = /\/PowerView\.ps1/ nocase ascii wide
        // Description: executables for penetration testing Windows Active Directory environments
        // Reference: https://github.com/jakobfriedl/precompiled-binaries
        $string3 = /\/SharpView\.exe/ nocase ascii wide
        // Description: C# implementation of harmj0y's PowerView
        // Reference: https://github.com/tevora-threat/SharpView/
        $string4 = /\/SharpView\.git/ nocase ascii wide
        // Description: executables for penetration testing Windows Active Directory environments
        // Reference: https://github.com/jakobfriedl/precompiled-binaries
        $string5 = /\\SharpView\.exe/ nocase ascii wide
        // Description: executables for penetration testing Windows Active Directory environments
        // Reference: https://github.com/jakobfriedl/precompiled-binaries
        $string6 = /\\SharpView\.pdb/ nocase ascii wide
        // Description: C# implementation of harmj0y's PowerView
        // Reference: https://github.com/tevora-threat/SharpView/
        $string7 = ">SharpView<" nocase ascii wide
        // Description: executables for penetration testing Windows Active Directory environments
        // Reference: https://github.com/jakobfriedl/precompiled-binaries
        $string8 = ">SharpView<" nocase ascii wide
        // Description: C# implementation of harmj0y's PowerView
        // Reference: https://github.com/tevora-threat/SharpView/
        $string9 = "22A156EA-2623-45C7-8E50-E864D9FC44D3" nocase ascii wide
        // Description: C# implementation of harmj0y's PowerView
        // Reference: https://github.com/tevora-threat/SharpView/
        $string10 = "Args_Invoke_Kerberoast" nocase ascii wide
        // Description: C# implementation of harmj0y's PowerView
        // Reference: https://github.com/tevora-threat/SharpView/
        $string11 = "c0621954bd329b5cabe45e92b31053627c27fa40853beb2cce2734fa677ffd93" nocase ascii wide
        // Description: C# implementation of harmj0y's PowerView
        // Reference: https://github.com/tevora-threat/SharpView/
        $string12 = "e42e5cf9-be25-4011-9623-8565b193a506" nocase ascii wide
        // Description: C# implementation of harmj0y's PowerView
        // Reference: https://github.com/tevora-threat/SharpView/
        $string13 = "hackbuildrepeat/SharpView" nocase ascii wide
        // Description: C# implementation of harmj0y's PowerView
        // Reference: https://github.com/tevora-threat/SharpView/
        $string14 = /SharpView\.exe/ nocase ascii wide
        // Description: C# implementation of harmj0y's PowerView
        // Reference: https://github.com/tevora-threat/SharpView/
        $string15 = /SharpView\\SharpView/ nocase ascii wide
        // Description: C# implementation of harmj0y's PowerView
        // Reference: https://github.com/tevora-threat/SharpView/
        $string16 = "SharpView-master" nocase ascii wide
        // Description: C# implementation of harmj0y's PowerView
        // Reference: https://github.com/tevora-threat/SharpView/
        $string17 = "tevora-threat/SharpView/" nocase ascii wide
        // Description: C# implementation of harmj0y's PowerView
        // Reference: https://github.com/tevora-threat/SharpView/
        $string18 = /using\sSharpView\.Enums/ nocase ascii wide

    condition:
        any of them
}
