rule openbullet
{
    meta:
        description = "Detection patterns for the tool 'openbullet' taken from the ThreatHunting-Keywords github project"
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "openbullet"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: The OpenBullet web testing application.
        // Reference: https://github.com/openbullet/openbullet
        $string1 = /\/openbullet\.git/ nocase ascii wide
        // Description: The OpenBullet web testing application.
        // Reference: https://github.com/openbullet/OpenBullet2
        $string2 = /\/OpenBullet2\.git/ nocase ascii wide
        // Description: The OpenBullet web testing application.
        // Reference: https://github.com/openbullet/openbullet
        $string3 = "0B6D8B01-861E-4CAF-B1C9-6670884381DB" nocase ascii wide
        // Description: The OpenBullet web testing application.
        // Reference: https://github.com/openbullet/openbullet
        $string4 = "99E40E7F-00A4-4FB1-9441-B05A56C47C08" nocase ascii wide
        // Description: The OpenBullet web testing application.
        // Reference: https://github.com/openbullet/OpenBullet2
        $string5 = "C8482002-F594-4C28-9C46-960B036540A8" nocase ascii wide
        // Description: The OpenBullet web testing application.
        // Reference: https://github.com/openbullet/openbullet
        $string6 = /OpenBullet\.csproj/ nocase ascii wide
        // Description: The OpenBullet web testing application.
        // Reference: https://github.com/openbullet/openbullet
        $string7 = /OpenBullet\.exe/ nocase ascii wide
        // Description: The OpenBullet web testing application.
        // Reference: https://github.com/openbullet/openbullet
        $string8 = /OpenBullet\.pdb/ nocase ascii wide
        // Description: The OpenBullet web testing application.
        // Reference: https://github.com/openbullet/openbullet
        $string9 = /OpenBullet\.sln/ nocase ascii wide
        // Description: The OpenBullet web testing application.
        // Reference: https://github.com/openbullet/openbullet
        $string10 = /OpenBullet\.zip/ nocase ascii wide
        // Description: The OpenBullet web testing application.
        // Reference: https://github.com/openbullet/openbullet
        $string11 = "openbullet/openbullet" nocase ascii wide
        // Description: The OpenBullet web testing application.
        // Reference: https://github.com/openbullet/OpenBullet2
        $string12 = /OpenBullet2\.Console\.zip/ nocase ascii wide
        // Description: The OpenBullet web testing application.
        // Reference: https://github.com/openbullet/OpenBullet2
        $string13 = /OpenBullet2\.Native\.exe/ nocase ascii wide
        // Description: The OpenBullet web testing application.
        // Reference: https://github.com/openbullet/OpenBullet2
        $string14 = /OpenBullet2\.Native\.zip/ nocase ascii wide
        // Description: The OpenBullet web testing application.
        // Reference: https://github.com/openbullet/OpenBullet2
        $string15 = /OpenBullet2\.zip/ nocase ascii wide
        // Description: The OpenBullet web testing application.
        // Reference: https://github.com/openbullet/OpenBullet2
        $string16 = "openbullet2:latest" nocase ascii wide
        // Description: The OpenBullet web testing application.
        // Reference: https://github.com/openbullet/OpenBullet2
        $string17 = "OpenBullet2-master" nocase ascii wide
        // Description: The OpenBullet web testing application.
        // Reference: https://github.com/openbullet/openbullet
        $string18 = /OpenBulletApp\.cs/ nocase ascii wide
        // Description: The OpenBullet web testing application.
        // Reference: https://github.com/openbullet/openbullet
        $string19 = /OpenBulletCLI\.csproj/ nocase ascii wide
        // Description: The OpenBullet web testing application.
        // Reference: https://github.com/openbullet/openbullet
        $string20 = /OpenBulletCLI\.exe/ nocase ascii wide
        // Description: The OpenBullet web testing application.
        // Reference: https://github.com/openbullet/openbullet
        $string21 = "openbullet-master" nocase ascii wide
        // Description: The OpenBullet web testing application.
        // Reference: https://github.com/openbullet/OpenBullet2
        $string22 = "Welcome to OpenBullet 2" nocase ascii wide
        // Description: The OpenBullet web testing application.
        // Reference: https://github.com/openbullet/OpenBullet2
        $string23 = /Write\-Output\s127\.0\.0\.1\:1111/ nocase ascii wide
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
        )) and 2 of ($string*)) or
        (filesize < 2MB and
        (
            2 of ($string*) and
            for any of ($metadata_regex_*) : ( @ <= 20000 )
        ))
}
