rule gobuster
{
    meta:
        description = "Detection patterns for the tool 'gobuster' taken from the ThreatHunting-Keywords github project" 
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "gobuster"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: Directory/File DNS and VHost busting tool written in Go
        // Reference: https://github.com/OJ/gobuster
        $string1 = /\/gobuster\.git/ nocase ascii wide
        // Description: Directory/File DNS and VHost busting tool written in Go
        // Reference: https://github.com/OJ/gobuster
        $string2 = "/gobuster/" nocase ascii wide
        // Description: Directory/File DNS and VHost busting tool written in Go
        // Reference: https://github.com/OJ/gobuster
        $string3 = "/gobusterdir/" nocase ascii wide
        // Description: Directory/File DNS and VHost busting tool written in Go
        // Reference: https://github.com/OJ/gobuster
        $string4 = "/gobusterdns/" nocase ascii wide
        // Description: Directory/File DNS and VHost busting tool written in Go
        // Reference: https://github.com/OJ/gobuster
        $string5 = "/gobustergcs/" nocase ascii wide
        // Description: Directory/File DNS and VHost busting tool written in Go
        // Reference: https://github.com/OJ/gobuster
        $string6 = "/libgobuster" nocase ascii wide
        // Description: Directory/File DNS and VHost busting tool written in Go
        // Reference: https://github.com/OJ/gobuster
        $string7 = "/OJ/gobuster" nocase ascii wide
        // Description: Directory/File DNS and VHost busting tool written in Go
        // Reference: https://github.com/OJ/gobuster
        $string8 = "gobuster dir " nocase ascii wide
        // Description: Directory/File DNS and VHost busting tool written in Go
        // Reference: https://github.com/OJ/gobuster
        $string9 = "gobuster dns" nocase ascii wide
        // Description: Directory/File DNS and VHost busting tool written in Go
        // Reference: https://github.com/OJ/gobuster
        $string10 = "gobuster fuzz -" nocase ascii wide
        // Description: Directory/File DNS and VHost busting tool written in Go
        // Reference: https://github.com/OJ/gobuster
        $string11 = "gobuster gcs " nocase ascii wide
        // Description: Directory/File DNS and VHost busting tool written in Go
        // Reference: https://github.com/OJ/gobuster
        $string12 = "gobuster s3 " nocase ascii wide
        // Description: Directory/File DNS and VHost busting tool written in Go
        // Reference: https://github.com/OJ/gobuster
        $string13 = "gobuster tftp " nocase ascii wide
        // Description: Directory/File DNS and VHost busting tool written in Go
        // Reference: https://github.com/OJ/gobuster
        $string14 = "gobuster vhost -u " nocase ascii wide
        // Description: Directory/File DNS and VHost busting tool written in Go
        // Reference: https://github.com/OJ/gobuster
        $string15 = "gobuster vhost" nocase ascii wide
        // Description: Gobuster is a tool used to brute-force
        // Reference: https://github.com/OJ/gobuster
        $string16 = "gobuster" nocase ascii wide
        // Description: Directory/File DNS and VHost busting tool written in Go
        // Reference: https://github.com/OJ/gobuster
        $string17 = /gobuster_.{0,100}\.tar\.gz/ nocase ascii wide
        // Description: Directory/File DNS and VHost busting tool written in Go
        // Reference: https://github.com/OJ/gobuster
        $string18 = /gobuster_.{0,100}\.zip/ nocase ascii wide
        // Description: Directory/File DNS and VHost busting tool written in Go
        // Reference: https://github.com/OJ/gobuster
        $string19 = "gobusterfuzz" nocase ascii wide
        // Description: Directory/File DNS and VHost busting tool written in Go
        // Reference: https://github.com/OJ/gobuster
        $string20 = "gobustertftp" nocase ascii wide
        // Description: Directory/File DNS and VHost busting tool written in Go
        // Reference: https://github.com/OJ/gobuster
        $string21 = "install gobuster" nocase ascii wide
        // Description: Directory/File DNS and VHost busting tool written in Go
        // Reference: https://github.com/OJ/gobuster
        $string22 = /\-w\s.{0,100}wordlists.{0,100}\.txt/ nocase ascii wide
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