rule WPScan
{
    meta:
        description = "Detection patterns for the tool 'WPScan' taken from the ThreatHunting-Keywords github project" 
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "WPScan"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: WPScan is a black box WordPress vulnerability scanner.
        // Reference: https://github.com/wpscanteam/wpscan
        $string1 = /\/\.wpscan\// nocase ascii wide
        // Description: WPScan is a black box WordPress vulnerability scanner.
        // Reference: https://github.com/wpscanteam/wpscan
        $string2 = "wpscan --url " nocase ascii wide
        // Description: WPScan is a black box WordPress vulnerability scanner.
        // Reference: https://github.com/wpscanteam/wpscan
        $string3 = "wpscanteam/tap/wpscan" nocase ascii wide
        // Description: WPScan is a black box WordPress vulnerability scanner.
        // Reference: https://github.com/wpscanteam/wpscan
        $string4 = "wpscanteam/wpscan" nocase ascii wide

    condition:
        any of them
}
