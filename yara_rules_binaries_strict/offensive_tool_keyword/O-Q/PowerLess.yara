rule PowerLess
{
    meta:
        description = "Detection patterns for the tool 'PowerLess' taken from the ThreatHunting-Keywords github project" 
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "PowerLess"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: PowerShell-based modular backdoor that has been used by Magic Hound group
        // Reference: https://gist.github.com/farzinenddo/bb1f1ecb56aa9326abc7b47fc99e588e
        $string1 = /\/Powerless\.dll/ nocase ascii wide
        // Description: PowerShell-based modular backdoor that has been used by Magic Hound group
        // Reference: https://gist.github.com/farzinenddo/bb1f1ecb56aa9326abc7b47fc99e588e
        $string2 = /\\Powerless\.cpp/ nocase ascii wide
        // Description: PowerShell-based modular backdoor that has been used by Magic Hound group
        // Reference: https://gist.github.com/farzinenddo/bb1f1ecb56aa9326abc7b47fc99e588e
        $string3 = /\\Powerless\.dll/ nocase ascii wide
        // Description: PowerShell-based modular backdoor that has been used by Magic Hound group
        // Reference: https://gist.github.com/farzinenddo/bb1f1ecb56aa9326abc7b47fc99e588e
        $string4 = /\\Powerless\.exe/ nocase ascii wide
        // Description: PowerShell-based modular backdoor that has been used by Magic Hound group
        // Reference: https://gist.github.com/farzinenddo/bb1f1ecb56aa9326abc7b47fc99e588e
        $string5 = /\\PowerLessCLR\.pdb/ nocase ascii wide
        // Description: PowerShell-based modular backdoor that has been used by Magic Hound group
        // Reference: https://gist.github.com/farzinenddo/bb1f1ecb56aa9326abc7b47fc99e588e
        $string6 = "026db4159e7e36e00fdcef1e29f73b40030a3572" nocase ascii wide
        // Description: PowerShell-based modular backdoor that has been used by Magic Hound group
        // Reference: https://gist.github.com/farzinenddo/bb1f1ecb56aa9326abc7b47fc99e588e
        $string7 = "0492b9ad7ae35ee1e0b6f53a6b7c2c75e9b5d427" nocase ascii wide
        // Description: PowerShell-based modular backdoor that has been used by Magic Hound group
        // Reference: https://gist.github.com/farzinenddo/bb1f1ecb56aa9326abc7b47fc99e588e
        $string8 = "32224892b670467e23874d7e8abd2ef92987a7e6" nocase ascii wide
        // Description: PowerShell-based modular backdoor that has been used by Magic Hound group
        // Reference: https://gist.github.com/farzinenddo/bb1f1ecb56aa9326abc7b47fc99e588e
        $string9 = "3a6431169073d61748829c31a9da29123dd61da8" nocase ascii wide
        // Description: PowerShell-based modular backdoor that has been used by Magic Hound group
        // Reference: https://gist.github.com/farzinenddo/bb1f1ecb56aa9326abc7b47fc99e588e
        $string10 = "3bfec62c094366844c3e4c0e257e01678f55ef5b" nocase ascii wide
        // Description: PowerShell-based modular backdoor that has been used by Magic Hound group
        // Reference: https://gist.github.com/farzinenddo/bb1f1ecb56aa9326abc7b47fc99e588e
        $string11 = "3fcec932530557ea3d1f38f06f477db4b0be5acb" nocase ascii wide
        // Description: PowerShell-based modular backdoor that has been used by Magic Hound group
        // Reference: https://gist.github.com/farzinenddo/bb1f1ecb56aa9326abc7b47fc99e588e
        $string12 = "416291332a70407df5ff5d79072f5ad68cd802b9" nocase ascii wide
        // Description: PowerShell-based modular backdoor that has been used by Magic Hound group
        // Reference: https://gist.github.com/farzinenddo/bb1f1ecb56aa9326abc7b47fc99e588e
        $string13 = "4810c782a8fe964512f08db91e8107e9af29edab" nocase ascii wide
        // Description: PowerShell-based modular backdoor that has been used by Magic Hound group
        // Reference: https://gist.github.com/farzinenddo/bb1f1ecb56aa9326abc7b47fc99e588e
        $string14 = "679703e9859c20ab39d6be992aa7d979710d9ace" nocase ascii wide
        // Description: PowerShell-based modular backdoor that has been used by Magic Hound group
        // Reference: https://gist.github.com/farzinenddo/bb1f1ecb56aa9326abc7b47fc99e588e
        $string15 = "92ae97557e18ca810999fc05c18e3c6c75476444" nocase ascii wide
        // Description: PowerShell-based modular backdoor that has been used by Magic Hound group
        // Reference: https://gist.github.com/farzinenddo/bb1f1ecb56aa9326abc7b47fc99e588e
        $string16 = "97c0e103700b9f2464000cb63e10b68a4305dd33" nocase ascii wide
        // Description: PowerShell-based modular backdoor that has been used by Magic Hound group
        // Reference: https://gist.github.com/farzinenddo/bb1f1ecb56aa9326abc7b47fc99e588e
        $string17 = "dcf01d7641ec3fec213ab8335625a3554b943ac8" nocase ascii wide
        // Description: PowerShell-based modular backdoor that has been used by Magic Hound group
        // Reference: https://gist.github.com/farzinenddo/bb1f1ecb56aa9326abc7b47fc99e588e
        $string18 = "dd94382acb55e694ee38e1be7f5c0902be0e0d89" nocase ascii wide
        // Description: PowerShell-based modular backdoor that has been used by Magic Hound group
        // Reference: https://gist.github.com/farzinenddo/bb1f1ecb56aa9326abc7b47fc99e588e
        $string19 = "eeebce1a4c3e05e21689acef000a5fcf0f17abc3" nocase ascii wide
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