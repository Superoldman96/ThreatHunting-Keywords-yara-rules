rule Procdump
{
    meta:
        description = "Detection patterns for the tool 'Procdump' taken from the ThreatHunting-Keywords github project" 
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "Procdump"
        rule_category = "greyware_tool_keyword"

    strings:
        // Description: dump lsass process with procdump
        // Reference: https://learn.microsoft.com/en-us/sysinternals/downloads/procdump
        $string1 = /\s\-ma\slssas\.exe/ nocase ascii wide
        // Description: dump lsass process with procdump
        // Reference: https://learn.microsoft.com/en-us/sysinternals/downloads/procdump
        $string2 = /\/Procdump\.zip/ nocase ascii wide
        // Description: dump lsass process with procdump
        // Reference: https://learn.microsoft.com/en-us/sysinternals/downloads/procdump
        $string3 = /\\lsass\.dmp/ nocase ascii wide
        // Description: dump lsass process with procdump
        // Reference: https://learn.microsoft.com/en-us/sysinternals/downloads/procdump
        $string4 = /\\Procdump\.zip/ nocase ascii wide
        // Description: dump lsass process with procdump
        // Reference: https://learn.microsoft.com/en-us/sysinternals/downloads/procdump
        $string5 = /\\SOFTWARE\\Sysinternals\\ProcDump\\/ nocase ascii wide
        // Description: Dump files might contain sensitive data and are often created as part of debugging processes or by attackers exfiltrating data. Users\Public should not be used
        // Reference: https://media.defense.gov/2023/May/24/2003229517/-1/-1/0/CSA_Living_off_the_Land.PDF
        $string6 = /\\Users\\Public\\.{0,100}\.dmp/ nocase ascii wide
        // Description: dump lsass process with procdump
        // Reference: https://learn.microsoft.com/en-us/sysinternals/downloads/procdump
        $string7 = /\<Data\sName\=\'PipeName\'\>\\lsass\<\/Data\>\<Data\sName\=\'Image\'\>.{0,100}procdump.{0,100}\<\/Data\>/ nocase ascii wide
        // Description: dump lsass process with procdump
        // Reference: https://learn.microsoft.com/en-us/sysinternals/downloads/procdump
        $string8 = ">ProcDump<" nocase ascii wide
        // Description: dump lsass process with procdump
        // Reference: https://learn.microsoft.com/en-us/sysinternals/downloads/procdump
        $string9 = /procdump.{0,100}lsass/ nocase ascii wide
        // Description: dump lsass process with procdump
        // Reference: https://learn.microsoft.com/en-us/sysinternals/downloads/procdump
        $string10 = /procdump.{0,100}lsass/ nocase ascii wide
        // Description: full dump with procdump (often used to dump lsass)
        // Reference: https://learn.microsoft.com/en-us/sysinternals/downloads/procdump
        $string11 = /procdump\.exe.{0,100}\s\-ma/ nocase ascii wide
        // Description: dump lsass process with procdump
        // Reference: https://learn.microsoft.com/en-us/sysinternals/downloads/procdump
        $string12 = /procdump64.{0,100}lsass/ nocase ascii wide
        // Description: usage of procdump (often used to dump lsass)
        // Reference: https://learn.microsoft.com/en-us/sysinternals/downloads/procdump
        $string13 = /procdump64\.exe/ nocase ascii wide
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