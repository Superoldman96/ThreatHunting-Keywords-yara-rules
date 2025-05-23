rule CMLoot
{
    meta:
        description = "Detection patterns for the tool 'CMLoot' taken from the ThreatHunting-Keywords github project"
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "CMLoot"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: Find interesting files stored on (System Center) Configuration Manager (SCCM/CM) SMB shares
        // Reference: https://github.com/1njected/CMLoot
        $string1 = /\sCMLoot\.ps1/ nocase ascii wide
        // Description: Find interesting files stored on (System Center) Configuration Manager (SCCM/CM) SMB shares
        // Reference: https://github.com/1njected/CMLoot
        $string2 = /\s\-SCCMHost\s.{0,100}\s\-Outfile\s/ nocase ascii wide
        // Description: Find interesting files stored on (System Center) Configuration Manager (SCCM/CM) SMB shares
        // Reference: https://github.com/1njected/CMLoot
        $string3 = /\/CMLoot\.git/ nocase ascii wide
        // Description: Find interesting files stored on (System Center) Configuration Manager (SCCM/CM) SMB shares
        // Reference: https://github.com/1njected/CMLoot
        $string4 = /\/CMLoot\.ps1/ nocase ascii wide
        // Description: Find interesting files stored on (System Center) Configuration Manager (SCCM/CM) SMB shares
        // Reference: https://github.com/1njected/CMLoot
        $string5 = /\\CMLoot\.ps1/ nocase ascii wide
        // Description: Find interesting files stored on (System Center) Configuration Manager (SCCM/CM) SMB shares
        // Reference: https://github.com/1njected/CMLoot
        $string6 = "1njected/CMLoot" nocase ascii wide
        // Description: Find interesting files stored on (System Center) Configuration Manager (SCCM/CM) SMB shares
        // Reference: https://github.com/1njected/CMLoot
        $string7 = /CMLoot\.psm1/ nocase ascii wide
        // Description: Find interesting files stored on (System Center) Configuration Manager (SCCM/CM) SMB shares
        // Reference: https://github.com/1njected/CMLoot
        $string8 = "CMLoot-main" nocase ascii wide
        // Description: Find interesting files stored on (System Center) Configuration Manager (SCCM/CM) SMB shares
        // Reference: https://github.com/1njected/CMLoot
        $string9 = "Invoke-CMLootDownload" nocase ascii wide
        // Description: Find interesting files stored on (System Center) Configuration Manager (SCCM/CM) SMB shares
        // Reference: https://github.com/1njected/CMLoot
        $string10 = "Invoke-CMLootExtract" nocase ascii wide
        // Description: Find interesting files stored on (System Center) Configuration Manager (SCCM/CM) SMB shares
        // Reference: https://github.com/1njected/CMLoot
        $string11 = "Invoke-CMLootHunt " nocase ascii wide
        // Description: Find interesting files stored on (System Center) Configuration Manager (SCCM/CM) SMB shares
        // Reference: https://github.com/1njected/CMLoot
        $string12 = "Invoke-CMLootInventory" nocase ascii wide
        // Description: Find interesting files stored on (System Center) Configuration Manager (SCCM/CM) SMB shares
        // Reference: https://github.com/1njected/CMLoot
        $string13 = /src\\CMLootOut\\/ nocase ascii wide
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
