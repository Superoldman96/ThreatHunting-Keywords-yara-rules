rule LinikatzV2
{
    meta:
        description = "Detection patterns for the tool 'LinikatzV2' taken from the ThreatHunting-Keywords github project"
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "LinikatzV2"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: linikatz is a tool to attack AD on UNIX
        // Reference: https://github.com/Orange-Cyberdefense/LinikatzV2
        $string1 = "/LinikatzV2/"
        // Description: linikatz is a tool to attack AD on UNIX
        // Reference: https://github.com/Orange-Cyberdefense/LinikatzV2
        $string2 = /\\LinikatzV2\\/
        // Description: linikatz is a tool to attack AD on UNIX
        // Reference: https://github.com/Orange-Cyberdefense/LinikatzV2
        $string3 = "kerberos_steal"
        // Description: linikatz is a tool to attack AD on UNIX
        // Reference: https://github.com/Orange-Cyberdefense/LinikatzV2
        $string4 = /linikatzV2\.sh/
        // Description: linikatz is a tool to attack AD on UNIX
        // Reference: https://github.com/Orange-Cyberdefense/LinikatzV2
        $string5 = "Orange-Cyberdefense/LinikatzV2"
        // Description: linikatz is a tool to attack AD on UNIX
        // Reference: https://github.com/Orange-Cyberdefense/LinikatzV2
        $string6 = /SSSDKCMExtractor\.py/

    condition:
        any of them
}
