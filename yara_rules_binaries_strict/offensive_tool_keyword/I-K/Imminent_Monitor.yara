rule Imminent_Monitor
{
    meta:
        description = "Detection patterns for the tool 'Imminent-Monitor' taken from the ThreatHunting-Keywords github project" 
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "Imminent-Monitor"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: used for malicious activities such as keylogging - screen capture and remote control of infected systems.
        // Reference: https://github.com/Indestructible7/Imminent-Monitor-v3.9
        $string1 = /\/Imminent\sMonitor\s3\.9\.exe/ nocase ascii wide
        // Description: used for malicious activities such as keylogging - screen capture and remote control of infected systems.
        // Reference: https://github.com/Indestructible7/Imminent-Monitor-v3.9
        $string2 = /\/ImminentMonitor\.exe/ nocase ascii wide
        // Description: used for malicious activities such as keylogging - screen capture and remote control of infected systems.
        // Reference: https://github.com/Indestructible7/Imminent-Monitor-v3.9
        $string3 = /\\Imminent\sMonitor\s3\.9\.exe/ nocase ascii wide
        // Description: used for malicious activities such as keylogging - screen capture and remote control of infected systems.
        // Reference: https://github.com/Indestructible7/Imminent-Monitor-v3.9
        $string4 = /\\ImminentMonitor\.exe/ nocase ascii wide
        // Description: used for malicious activities such as keylogging - screen capture and remote control of infected systems.
        // Reference: https://github.com/Indestructible7/Imminent-Monitor-v3.9
        $string5 = ">Imminent Monitor<" nocase ascii wide
        // Description: used for malicious activities such as keylogging - screen capture and remote control of infected systems.
        // Reference: https://github.com/Indestructible7/Imminent-Monitor-v3.9
        $string6 = "6c7b6faf5a493f036e6b69a0f4c9c7f1b86c068a56ce4d8d9a92c8ebde0eae99" nocase ascii wide
        // Description: used for malicious activities such as keylogging - screen capture and remote control of infected systems.
        // Reference: https://github.com/Indestructible7/Imminent-Monitor-v3.9
        $string7 = "9078149dc6ee62aea91749ba2db9aba15c9518f92bfe709b3bba8523f92cd2e8" nocase ascii wide
        // Description: used for malicious activities such as keylogging - screen capture and remote control of infected systems.
        // Reference: https://github.com/Indestructible7/Imminent-Monitor-v3.9
        $string8 = "Indestructible7/Imminent-Monitor" nocase ascii wide
        $metadata_regex_import = /\bimport\s+[a-zA-Z0-9_.]+\b/ nocase
        $metadata_regex_function = /function\s+[a-zA-Z_][a-zA-Z0-9_]*\(/ nocase ascii
        $metadata_regex_php = /<\?php/ nocase ascii
        $metadata_regex_createobject = /(CreateObject|WScript\.)/ nocase ascii
        $metadata_regex_script = /<script\b/ nocase ascii
        $metadata_regex_javascript = /(let\s|const\s|function\s|document\.|console\.)/ nocase ascii
        $metadata_regex_powershell = /(Write-Host|Get-[a-zA-Z]+|Invoke-|param\(|\.SYNOPSIS)/ nocase ascii
        $metadata_regex_batch = /@(echo\s|call\s|set\s|goto\s|if\s|for\s|rem\s)/ nocase ascii
        $metadata_regex_shebang = /^#!\// nocase ascii

    condition:
        ((filesize < 20MB and (
            uint16(0) == 0x5a4d or // Windows binary
            uint16(0) == 0x457f or // Linux ELF
            uint32be(0) == 0x7f454c46 or uint16(0) == 0xfeca or uint16(0) == 0xfacf or uint32(0) == 0xbebafeca or // macOS binary
            uint32(0) == 0x504B0304 or // Android APK, JAR
            uint32(0) == 0xCAFEBABE or // Java Class, Mach-O Universal Binary
            uint32(0) == 0x4D534346 or // Windows Cabinet File
            uint32(0) == 0xD0CF11E0 or // MSI Installer Package
            uint16(0) == 0x2321 or // Shebang (#!)
            uint16(0) == 0x3c3f // PHP and other script
        )) and any of ($string*)) or
        (filesize < 2MB and
        (
            any of ($string*) and
            for any of ($metadata_regex_*) : ( @ <= 20000 )
        ))
}