rule nysm
{
    meta:
        description = "Detection patterns for the tool 'nysm' taken from the ThreatHunting-Keywords github project"
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "nysm"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: nysm is a stealth post-exploitation container
        // Reference: https://github.com/eeriedusk/nysm
        $string1 = /\.\/nysm\/src\//
        // Description: nysm is a stealth post-exploitation container
        // Reference: https://github.com/eeriedusk/nysm
        $string2 = "/nysm bash"
        // Description: nysm is a stealth post-exploitation container
        // Reference: https://github.com/eeriedusk/nysm
        $string3 = "/nysm -dr socat TCP4-LISTEN"
        // Description: nysm is a stealth post-exploitation container
        // Reference: https://github.com/eeriedusk/nysm
        $string4 = /\/nysm\s\-r\sssh\s.{0,1000}\@/
        // Description: nysm is a stealth post-exploitation container
        // Reference: https://github.com/eeriedusk/nysm
        $string5 = /\/nysm\.bpf\.c/
        // Description: nysm is a stealth post-exploitation container
        // Reference: https://github.com/eeriedusk/nysm
        $string6 = /\/nysm\.git/ nocase ascii wide
        // Description: nysm is a stealth post-exploitation container
        // Reference: https://github.com/eeriedusk/nysm
        $string7 = /\/src\/nysm\.c/
        // Description: nysm is a stealth post-exploitation container
        // Reference: https://github.com/eeriedusk/nysm
        $string8 = "eeriedusk/nysm" nocase ascii wide
        // Description: nysm is a stealth post-exploitation container
        // Reference: https://github.com/eeriedusk/nysm
        $string9 = /nysm\.skel\.h/ nocase ascii wide
        // Description: nysm is a stealth post-exploitation container
        // Reference: https://github.com/eeriedusk/nysm
        $string10 = /nysm\-master\.zip/ nocase ascii wide

    condition:
        any of them
}
