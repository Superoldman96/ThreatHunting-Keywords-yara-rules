rule findstr
{
    meta:
        description = "Detection patterns for the tool 'findstr' taken from the ThreatHunting-Keywords github project"
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "findstr"
        rule_category = "greyware_tool_keyword"

    strings:
        // Description: commands from wmiexec2.0 -  is the same wmiexec that everyone knows and loves (debatable). This 2.0 version is obfuscated to avoid well known signatures from various AV engines.
        // Reference: https://github.com/ice-wzl/wmiexec2
        $string1 = /dir\s\/a\sC\:\\pagefile\.sys\s\|\sfindstr\s\/R\s/ nocase ascii wide
        // Description: linux commands abused by attackers - gpp finder
        // Reference: N/A
        $string2 = /findstr\s.{0,100}cpassword\s.{0,100}\\sysvol\\.{0,100}\.xml/ nocase ascii wide
        // Description: linux commands abused by attackers
        // Reference: N/A
        $string3 = /findstr\s.{0,100}vnc\.ini/ nocase ascii wide
        // Description: Find GPP Passwords in SYSVOL - search for occurrences of the term "cpassword" in all XML files within the SYSVOL directory of the domain controller - The "cpassword" string refers to a weakly encrypted password stored in some Group Policy Preferences (GPP) files
        // Reference: N/A
        $string4 = /findstr\s\/S\scpassword\s\$env\:.{0,100}\\sysvol\\.{0,100}\.xml/ nocase ascii wide
        // Description: Find GPP Passwords in SYSVOL - search for occurrences of the term "cpassword" in all XML files within the SYSVOL directory of the domain controller - The "cpassword" string refers to a weakly encrypted password stored in some Group Policy Preferences (GPP) files
        // Reference: N/A
        $string5 = /findstr\s\/S\scpassword\s\%.{0,100}\%\\sysvol\\.{0,100}\.xml/ nocase ascii wide
        // Description: linux commands abused by attackers
        // Reference: N/A
        $string6 = /findstr\s\/si\ssecret\s.{0,100}\.docx/ nocase ascii wide
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
