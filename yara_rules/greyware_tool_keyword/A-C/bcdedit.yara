rule bcdedit
{
    meta:
        description = "Detection patterns for the tool 'bcdedit' taken from the ThreatHunting-Keywords github project"
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "bcdedit"
        rule_category = "greyware_tool_keyword"

    strings:
        // Description: changes the boot status policy to ignore all failures
        // Reference: https://thedfirreport.com/2024/08/12/threat-actors-toolkit-leveraging-sliver-poshc2-batch-scripts/#c01
        $string1 = /bcdedit\s\/set\s\{default\}\sbootstatuspolicy\signoreallfailures/ nocase ascii wide
        // Description: disables Windows automatic recovery
        // Reference: https://thedfirreport.com/2024/08/12/threat-actors-toolkit-leveraging-sliver-poshc2-batch-scripts/#c01
        $string2 = /bcdedit\s\/set\s\{default\}\srecoveryenabled\sNo/ nocase ascii wide
        // Description: used by a hacktool to help remove Windows Defender
        // Reference: https://github.com/ionuttbara/windows-defender-remover
        $string3 = "bcdedit /set hypervisorlaunchtype off" nocase ascii wide
        // Description: Bcdedit is a command-line tool that enables users to view and make changes to boot configuration data (BCD) settings in Windows systems. Adversaries may leverage bcdedit to modify boot settings. such as enabling debug mode or disabling code integrity checks. as a means to bypass security mechanisms and gain persistence on the compromised system. By modifying the boot configuration. adversaries can evade detection and potentially maintain access to the system even after reboots.
        // Reference: N/A
        $string4 = /bcdedit.{0,1000}\s\/set\s\{default\}\sbootstatuspolicy\signoreallfailures/ nocase ascii wide
        // Description: Bcdedit is a command-line tool that enables users to view and make changes to boot configuration data (BCD) settings in Windows systems. Adversaries may leverage bcdedit to modify boot settings. such as enabling debug mode or disabling code integrity checks. as a means to bypass security mechanisms and gain persistence on the compromised system. By modifying the boot configuration. adversaries can evade detection and potentially maintain access to the system even after reboots.
        // Reference: N/A
        $string5 = /bcdedit.{0,1000}\s\/set\s\{default\}\srecoveryenabled\sNo/ nocase ascii wide

    condition:
        any of them
}
