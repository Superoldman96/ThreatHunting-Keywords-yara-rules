rule EvilnoVNC
{
    meta:
        description = "Detection patterns for the tool 'EvilnoVNC' taken from the ThreatHunting-Keywords github project"
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "EvilnoVNC"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: EvilnoVNC is a Ready to go Phishing Platform
        // Reference: https://github.com/ms101/EvilKnievelnoVNC
        $string1 = " EvilnoVNC by @JoelGMSec"
        // Description: EvilnoVNC is a Ready to go Phishing Platform
        // Reference: https://github.com/JoelGMSec/EvilnoVNC
        $string2 = " EvilnoVNC" nocase ascii wide
        // Description: EvilnoVNC is a Ready to go Phishing Platform
        // Reference: https://github.com/ms101/EvilKnievelnoVNC
        $string3 = " --vnc localhost:5900 --listen 5980"
        // Description: EvilnoVNC is a Ready to go Phishing Platform
        // Reference: https://github.com/JoelGMSec/EvilnoVNC
        $string4 = /\/bin\/bash\s\-c\s\\"php\s\-q\s\-S\s0\.0\.0\.0\:80\s\&\\"\s\>\s\/dev\/null\s2\>\&1/
        // Description: EvilnoVNC is a Ready to go Phishing Platform
        // Reference: https://github.com/JoelGMSec/EvilnoVNC
        $string5 = /\/Downloads\/Keylogger\.txt/
        // Description: EvilnoVNC is a Ready to go Phishing Platform
        // Reference: https://github.com/JoelGMSec/EvilnoVNC
        $string6 = /\/Downloads\/keypress\.log/
        // Description: EvilnoVNC is a Ready to go Phishing Platform
        // Reference: https://github.com/JoelGMSec/EvilnoVNC
        $string7 = /\/EvilnoVNC\.git/ nocase ascii wide
        // Description: EvilnoVNC is a Ready to go Phishing Platform
        // Reference: https://github.com/ms101/EvilKnievelnoVNC
        $string8 = /\/noVNC\/index\.html/
        // Description: EvilnoVNC is a Ready to go Phishing Platform
        // Reference: https://github.com/JoelGMSec/EvilnoVNC
        $string9 = "/noVNC/utils/novnc_proxy"
        // Description: EvilnoVNC is a Ready to go Phishing Platform
        // Reference: https://github.com/ms101/EvilKnievelnoVNC
        $string10 = /\/noVNC\/vnc_lite\.html/
        // Description: EvilnoVNC is a Ready to go Phishing Platform
        // Reference: https://github.com/JoelGMSec/EvilnoVNC
        $string11 = /\/start\.sh\sdynamic\s/
        // Description: EvilnoVNC is a Ready to go Phishing Platform
        // Reference: https://github.com/JoelGMSec/EvilnoVNC
        $string12 = /\/startVNC\.sh/
        // Description: EvilnoVNC is a Ready to go Phishing Platform
        // Reference: https://github.com/JoelGMSec/EvilnoVNC
        $string13 = /\/tmp\/resolution\.txt.{0,100}server\.sh/
        // Description: EvilnoVNC is a Ready to go Phishing Platform
        // Reference: https://github.com/ms101/EvilKnievelnoVNC
        $string14 = "/utils/novnc_proxy"
        // Description: EvilnoVNC is a Ready to go Phishing Platform
        // Reference: https://github.com/JoelGMSec/EvilnoVNC
        $string15 = /\\EvilnoVNC/ nocase ascii wide
        // Description: EvilnoVNC is a Ready to go Phishing Platform
        // Reference: https://github.com/JoelGMSec/EvilnoVNC
        $string16 = /\\Keylogger\.txt/ nocase ascii wide
        // Description: EvilnoVNC is a Ready to go Phishing Platform
        // Reference: https://github.com/JoelGMSec/EvilnoVNC
        $string17 = "1a571ac5b806ffce2605b57753f74653ddb392e5afdb0e49c3e9e8d76e561568" nocase ascii wide
        // Description: EvilnoVNC is a Ready to go Phishing Platform
        // Reference: https://github.com/ms101/EvilKnievelnoVNC
        $string18 = "D0:B6:9D:86:6D:AE:B4:E1:CA:F0:C1:F5:4D:82:45:7E:13:06:CD:1A:DE:49:A3:80:DC:21:6A:5C:A8:F4:84:1B"
        // Description: EvilnoVNC is a Ready to go Phishing Platform
        // Reference: https://github.com/JoelGMSec/EvilnoVNC
        $string19 = "docker rmi evilnginx" nocase ascii wide
        // Description: EvilnoVNC is a Ready to go Phishing Platform
        // Reference: https://github.com/JoelGMSec/EvilnoVNC
        $string20 = "docker rmi evilnovnc" nocase ascii wide
        // Description: EvilnoVNC is a Ready to go Phishing Platform
        // Reference: https://github.com/JoelGMSec/EvilnoVNC
        $string21 = /echo\s\'user\sALL\=\(ALL\)\sNOPASSWD\:ALL\'\s\>\>\s\/etc\/sudoers/
        // Description: EvilnoVNC is a Ready to go Phishing Platform
        // Reference: https://github.com/ms101/EvilKnievelnoVNC
        $string22 = /EvilnoVNC\s\(\)\s/
        // Description: EvilnoVNC is a Ready to go Phishing Platform
        // Reference: https://github.com/JoelGMSec/EvilnoVNC
        $string23 = "EvilnoVNC by @JoelGMSec" nocase ascii wide
        // Description: EvilnoVNC is a Ready to go Phishing Platform
        // Reference: https://github.com/JoelGMSec/EvilnoVNC
        $string24 = "EvilnoVNC Server" nocase ascii wide
        // Description: EvilnoVNC is a Ready to go Phishing Platform
        // Reference: https://github.com/JoelGMSec/EvilnoVNC
        $string25 = /evilnovnc\.Dockerfile/ nocase ascii wide
        // Description: EvilnoVNC is a Ready to go Phishing Platform
        // Reference: https://github.com/ms101/EvilKnievelnoVNC
        $string26 = /EvilnoVNC\/run\.sh/
        // Description: EvilnoVNC is a Ready to go Phishing Platform
        // Reference: https://github.com/ms101/EvilKnievelnoVNC
        $string27 = "EvilnoVNC/tmp/"
        // Description: EvilnoVNC is a Ready to go Phishing Platform
        // Reference: https://github.com/JoelGMSec/EvilnoVNC
        $string28 = "EvilnoVNC-main" nocase ascii wide
        // Description: EvilnoVNC is a Ready to go Phishing Platform
        // Reference: https://github.com/JoelGMSec/EvilnoVNC
        $string29 = /Import\sstealed\ssession\sto\sChromium\.\./ nocase ascii wide
        // Description: EvilnoVNC is a Ready to go Phishing Platform
        // Reference: https://github.com/JoelGMSec/EvilnoVNC
        $string30 = /JoelGMSec\s\-\shttps\:\/\/darkbyte\.net/
        // Description: EvilnoVNC is a Ready to go Phishing Platform
        // Reference: https://github.com/JoelGMSec/EvilnoVNC
        $string31 = "JoelGMSec/EvilnoVNC" nocase ascii wide
        // Description: EvilnoVNC is a Ready to go Phishing Platform
        // Reference: https://github.com/JoelGMSec/EvilnoVNC
        $string32 = /keylogger\.py/ nocase ascii wide
        // Description: EvilnoVNC is a Ready to go Phishing Platform
        // Reference: https://github.com/JoelGMSec/EvilnoVNC
        $string33 = /kiosk\.sh.{0,100}startVNC\.sh/
        // Description: EvilnoVNC is a Ready to go Phishing Platform
        // Reference: https://github.com/JoelGMSec/EvilnoVNC
        $string34 = "nandydark/Linux-keylogger"
        // Description: EvilnoVNC is a Ready to go Phishing Platform
        // Reference: https://github.com/JoelGMSec/EvilnoVNC
        $string35 = "novnc_proxy --vnc localhost:"
        // Description: EvilnoVNC is a Ready to go Phishing Platform
        // Reference: https://github.com/ms101/EvilKnievelnoVNC
        $string36 = /php\s\-q\s\-S\s0\.0\.0\.0\:8111/
        // Description: EvilnoVNC is a Ready to go Phishing Platform
        // Reference: https://github.com/JoelGMSec/EvilnoVNC
        $string37 = "Wanetty inspired by @JoelGMSec"
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
