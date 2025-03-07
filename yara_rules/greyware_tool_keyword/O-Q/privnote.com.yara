rule privnote_com
{
    meta:
        description = "Detection patterns for the tool 'privnote.com' taken from the ThreatHunting-Keywords github project"
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "privnote.com"
        rule_category = "greyware_tool_keyword"

    strings:
        // Description: temporary notes service - abused by attackers to share informations with their victims
        // Reference: https://github.com/Casualtek/Ransomchats/blob/4a25ac6ad165a4e600aeb72718c3ad41e8f6ce3a/Akira/20240620.json#L31C27-L31C48
        $string1 = /https\:\/\/privnote\.com\// nocase ascii wide

    condition:
        any of them
}
