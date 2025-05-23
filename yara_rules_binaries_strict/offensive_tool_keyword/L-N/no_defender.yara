rule no_defender
{
    meta:
        description = "Detection patterns for the tool 'no_defender' taken from the ThreatHunting-Keywords github project"
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "no_defender"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: disable windows defender. (through the WSC api)
        // Reference: https://github.com/es3n1n/no-defender
        $string1 = /\/no_defender\.exe/ nocase ascii wide
        // Description: disable windows defender. (through the WSC api)
        // Reference: https://github.com/es3n1n/no-defender
        $string2 = /\/no\-defender\.git/ nocase ascii wide
        // Description: disable windows defender. (through the WSC api)
        // Reference: https://github.com/es3n1n/no-defender
        $string3 = /\/no\-defender\.sln/ nocase ascii wide
        // Description: disable windows defender. (through the WSC api)
        // Reference: https://github.com/es3n1n/no-defender
        $string4 = /\/no\-defender\.vcxproj/ nocase ascii wide
        // Description: disable windows defender. (through the WSC api)
        // Reference: https://github.com/es3n1n/no-defender
        $string5 = /\/no\-defender\-loader\.exe/ nocase ascii wide
        // Description: disable windows defender. (through the WSC api)
        // Reference: https://github.com/es3n1n/no-defender
        $string6 = /\/no\-defender\-loader\/main\.cpp/ nocase ascii wide
        // Description: disable windows defender. (through the WSC api)
        // Reference: https://github.com/es3n1n/no-defender
        $string7 = /\\no_defender\.exe/ nocase ascii wide
        // Description: disable windows defender. (through the WSC api)
        // Reference: https://github.com/es3n1n/no-defender
        $string8 = /\\no\-defender\.exe/ nocase ascii wide
        // Description: disable windows defender. (through the WSC api)
        // Reference: https://github.com/es3n1n/no-defender
        $string9 = /\\no\-defender\.sln/ nocase ascii wide
        // Description: disable windows defender. (through the WSC api)
        // Reference: https://github.com/es3n1n/no-defender
        $string10 = /\\no\-defender\.vcxproj/ nocase ascii wide
        // Description: disable windows defender. (through the WSC api)
        // Reference: https://github.com/es3n1n/no-defender
        $string11 = /\\no\-defender\-loader\.exe/ nocase ascii wide
        // Description: disable windows defender. (through the WSC api)
        // Reference: https://github.com/es3n1n/no-defender
        $string12 = /\\no\-defender\-loader\.pdb/ nocase ascii wide
        // Description: disable windows defender. (through the WSC api)
        // Reference: https://github.com/es3n1n/no-defender
        $string13 = /\\no\-defender\-loader\.vcxproj/ nocase ascii wide
        // Description: disable windows defender. (through the WSC api)
        // Reference: https://github.com/es3n1n/no-defender
        $string14 = /\\no\-defender\-loader\\main\.cpp/ nocase ascii wide
        // Description: disable windows defender. (through the WSC api)
        // Reference: https://github.com/es3n1n/no-defender
        $string15 = "176fdbab2521f29e514c62db9038532ab5b591bf7a337d192e7710daf1c39de2" nocase ascii wide
        // Description: disable windows defender. (through the WSC api)
        // Reference: https://github.com/es3n1n/no-defender
        $string16 = "32a53f3d4ecb4456372191071783bcaf9fd95ae442722202d7fd52b3da9b89d3" nocase ascii wide
        // Description: disable windows defender. (through the WSC api)
        // Reference: https://github.com/es3n1n/no-defender
        $string17 = "3CFB521D-40ED-4891-8B6C-ED0644A237C1" nocase ascii wide
        // Description: disable windows defender. (through the WSC api)
        // Reference: https://github.com/es3n1n/no-defender
        $string18 = "4193DE42-C103-45FF-A04D-0AD64616BC59" nocase ascii wide
        // Description: disable windows defender. (through the WSC api)
        // Reference: https://github.com/es3n1n/no-defender
        $string19 = "594199ae0a6e125642f438b9b09af03d2ba269259db213fdba7901b5589f2234" nocase ascii wide
        // Description: disable windows defender. (through the WSC api)
        // Reference: https://github.com/es3n1n/no-defender
        $string20 = "62d8159fd6c2b3dc8175e8bfab36369917530bca9ae2bb2e12bf5d18fbdf9896" nocase ascii wide
        // Description: disable windows defender. (through the WSC api)
        // Reference: https://github.com/es3n1n/no-defender
        $string21 = "8b38b963ce6d0b7eec0647eb5f65005bf981fa462825a75fa193260f0a53a1e8" nocase ascii wide
        // Description: disable windows defender. (through the WSC api)
        // Reference: https://github.com/es3n1n/no-defender
        $string22 = "99c32fc0bd5b4fecb91c3774095bf610066c43596b34a0228f7ef3cb6ff39e05" nocase ascii wide
        // Description: disable windows defender. (through the WSC api)
        // Reference: https://github.com/es3n1n/no-defender
        $string23 = "c0dca4eb22f84060319a2718d3987460ad74a50ce76dfeddee62aef685fd35c2" nocase ascii wide
        // Description: disable windows defender. (through the WSC api)
        // Reference: https://github.com/es3n1n/no-defender
        $string24 = "d0a965003f74317e82e25f5c479a66acb8048a470800be03f6cd8e413f5fd598" nocase ascii wide
        // Description: disable windows defender. (through the WSC api)
        // Reference: https://github.com/es3n1n/no-defender
        $string25 = "EE666120-EE4C-4D91-A545-66BEAA1830C1" nocase ascii wide
        // Description: disable windows defender. (through the WSC api)
        // Reference: https://github.com/es3n1n/no-defender
        $string26 = "es3n1n/no-defender" nocase ascii wide
        // Description: disable windows defender. (through the WSC api)
        // Reference: https://github.com/es3n1n/no-defender
        $string27 = /es3n1n\\no\-defender/ nocase ascii wide
        // Description: disable windows defender. (through the WSC api)
        // Reference: https://github.com/es3n1n/no-defender
        $string28 = /no\-defender\/dllmain\.cpp/ nocase ascii wide
        // Description: disable windows defender. (through the WSC api)
        // Reference: https://github.com/es3n1n/no-defender
        $string29 = /no\-defender\\dllmain\.cpp/ nocase ascii wide
        // Description: disable windows defender. (through the WSC api)
        // Reference: https://github.com/es3n1n/no-defender
        $string30 = "no-defender-loader --" nocase ascii wide
        // Description: disable windows defender. (through the WSC api)
        // Reference: https://github.com/es3n1n/no-defender
        $string31 = /no\-defender\-loader\.exe\s\-\-/ nocase ascii wide
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
