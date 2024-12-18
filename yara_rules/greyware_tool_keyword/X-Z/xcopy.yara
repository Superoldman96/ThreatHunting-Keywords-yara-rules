rule xcopy
{
    meta:
        description = "Detection patterns for the tool 'xcopy' taken from the ThreatHunting-Keywords github project" 
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "xcopy"
        rule_category = "greyware_tool_keyword"

    strings:
        // Description: command used by Doina trojan
        // Reference: N/A
        $string1 = "cmd /c xcopy /s /i /h /e /q /y /d" nocase ascii wide
        // Description: command abused by attackers - exfiltraiton to remote host with xcopy
        // Reference: N/A
        $string2 = /xcopy\sc\:\\.{0,1000}\s\\\\.{0,1000}\\c\$/ nocase ascii wide

    condition:
        any of them
}
