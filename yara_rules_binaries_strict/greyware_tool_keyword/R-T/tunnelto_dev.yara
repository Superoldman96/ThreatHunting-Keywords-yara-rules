rule tunnelto_dev
{
    meta:
        description = "Detection patterns for the tool 'tunnelto.dev' taken from the ThreatHunting-Keywords github project" 
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "tunnelto.dev"
        rule_category = "greyware_tool_keyword"

    strings:
        // Description: Expose your local web server to the internet with a public URL
        // Reference: https://github.com/agrinman/tunnelto
        $string1 = " install tunnelto" nocase ascii wide
        // Description: Expose your local web server to the internet with a public URL
        // Reference: https://github.com/agrinman/tunnelto
        $string2 = "\"User-Agent\", \"tunnelto-client\"" nocase ascii wide
        // Description: Expose your local web server to the internet with a public URL
        // Reference: https://github.com/agrinman/tunnelto
        $string3 = /\.\.\/tunnelto_lib/ nocase ascii wide
        // Description: Expose your local web server to the internet with a public URL
        // Reference: https://github.com/agrinman/tunnelto
        $string4 = /\.tunnelto\.dev/ nocase ascii wide
        // Description: Expose your local web server to the internet with a public URL
        // Reference: https://github.com/agrinman/tunnelto
        $string5 = /\/tunnelto\.git/ nocase ascii wide
        // Description: Expose your local web server to the internet with a public URL
        // Reference: https://github.com/agrinman/tunnelto
        $string6 = "/tunnelto/releases/latest" nocase ascii wide
        // Description: Expose your local web server to the internet with a public URL
        // Reference: https://github.com/agrinman/tunnelto
        $string7 = "/tunnelto_server" nocase ascii wide
        // Description: Expose your local web server to the internet with a public URL
        // Reference: https://github.com/agrinman/tunnelto
        $string8 = "/tunnelto_server/" nocase ascii wide
        // Description: Expose your local web server to the internet with a public URL
        // Reference: https://github.com/agrinman/tunnelto
        $string9 = "/tunnelto_server:" nocase ascii wide
        // Description: Expose your local web server to the internet with a public URL
        // Reference: https://github.com/agrinman/tunnelto
        $string10 = /\@tunnelto\.dev/ nocase ascii wide
        // Description: Expose your local web server to the internet with a public URL
        // Reference: https://github.com/agrinman/tunnelto
        $string11 = /\\\.tunnelto\\key\.token/ nocase ascii wide
        // Description: Expose your local web server to the internet with a public URL
        // Reference: https://github.com/agrinman/tunnelto
        $string12 = "84a0a90cde73607684db0142f2d9cd8e636f089514eba57835ec10806d8f5f4b" nocase ascii wide
        // Description: Expose your local web server to the internet with a public URL
        // Reference: https://github.com/agrinman/tunnelto
        $string13 = "99736bcb172f9cbed127f25a80a6b91fe355c4673461878962d7b5ac94782db1" nocase ascii wide
        // Description: Expose your local web server to the internet with a public URL
        // Reference: https://github.com/agrinman/tunnelto
        $string14 = "agrinman/tap/tunnelto" nocase ascii wide
        // Description: Expose your local web server to the internet with a public URL
        // Reference: https://github.com/agrinman/tunnelto
        $string15 = "agrinman/tunnelto" nocase ascii wide
        // Description: Expose your local web server to the internet with a public URL
        // Reference: https://github.com/agrinman/tunnelto
        $string16 = "--bin tunnelto" nocase ascii wide
        // Description: Expose your local web server to the internet with a public URL
        // Reference: https://github.com/agrinman/tunnelto
        $string17 = "--bin tunnelto_server" nocase ascii wide
        // Description: Expose your local web server to the internet with a public URL
        // Reference: https://github.com/agrinman/tunnelto
        $string18 = "--bin=tunnelto" nocase ascii wide
        // Description: Expose your local web server to the internet with a public URL
        // Reference: https://github.com/agrinman/tunnelto
        $string19 = "--bin=tunnelto_server" nocase ascii wide
        // Description: Expose your local web server to the internet with a public URL
        // Reference: https://github.com/agrinman/tunnelto
        $string20 = "cb70ca2937afdb647a8716f0b0d122f71f91dd7ce777250d0d2573f0ec47c5fc" nocase ascii wide
        // Description: Expose your local web server to the internet with a public URL
        // Reference: https://github.com/agrinman/tunnelto
        $string21 = "f6e06ec835c02ff1f08cc12c77b067bce8eddd96b9015cefef250353c89e1fbd" nocase ascii wide
        // Description: Expose your local web server to the internet with a public URL
        // Reference: https://github.com/agrinman/tunnelto
        $string22 = /ghcr\.io\/agrinman\/tunnelto/ nocase ascii wide
        // Description: Expose your local web server to the internet with a public URL
        // Reference: https://github.com/agrinman/tunnelto
        $string23 = "tunnelto inspector" nocase ascii wide
        // Description: Expose your local web server to the internet with a public URL
        // Reference: https://github.com/agrinman/tunnelto
        $string24 = "tunnelto --port " nocase ascii wide
        // Description: Expose your local web server to the internet with a public URL
        // Reference: https://github.com/agrinman/tunnelto
        $string25 = "tunnelto_server/src/" nocase ascii wide
        // Description: Expose your local web server to the internet with a public URL
        // Reference: https://github.com/agrinman/tunnelto
        $string26 = /tunnelto\-linux\.tar\.gz/ nocase ascii wide
        // Description: Expose your local web server to the internet with a public URL
        // Reference: https://github.com/agrinman/tunnelto
        $string27 = /tunnelto\-windows\.exe/ nocase ascii wide
        // Description: Expose your local web server to the internet with a public URL
        // Reference: https://github.com/agrinman/tunnelto
        $string28 = /wormhole\.tunnelto\.dev/ nocase ascii wide
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