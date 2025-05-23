rule ShellSync
{
    meta:
        description = "Detection patterns for the tool 'ShellSync' taken from the ThreatHunting-Keywords github project"
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "ShellSync"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: exposing a server with suspicious scripts and executable from I-Am-Jakoby
        // Reference: https://github.com/I-Am-Jakoby/ShellSync
        $string1 = /\sb64\.ps1\s/ nocase ascii wide
        // Description: exposing a server with suspicious scripts and executable from I-Am-Jakoby
        // Reference: https://github.com/I-Am-Jakoby/ShellSync
        $string2 = /\scheckRoot\.ps1/ nocase ascii wide
        // Description: exposing a server with suspicious scripts and executable from I-Am-Jakoby
        // Reference: https://github.com/I-Am-Jakoby/ShellSync
        $string3 = /\spngZIP\.ps1/ nocase ascii wide
        // Description: exposing a server with suspicious scripts and executable from I-Am-Jakoby
        // Reference: https://github.com/I-Am-Jakoby/ShellSync
        $string4 = /\/checkRoot\.ps1/
        // Description: exposing a server with suspicious scripts and executable from I-Am-Jakoby
        // Reference: https://github.com/I-Am-Jakoby/ShellSync
        $string5 = /\/pngZIP\.ps1/
        // Description: exposing a server with suspicious scripts and executable from I-Am-Jakoby
        // Reference: https://github.com/I-Am-Jakoby/ShellSync
        $string6 = /\/ShellSync\.git/ nocase ascii wide
        // Description: exposing a server with suspicious scripts and executable from I-Am-Jakoby
        // Reference: https://github.com/I-Am-Jakoby/ShellSync
        $string7 = /\/ShellSync\-main\.zip/ nocase ascii wide
        // Description: exposing a server with suspicious scripts and executable from I-Am-Jakoby
        // Reference: https://github.com/I-Am-Jakoby/ShellSync
        $string8 = /\\b64\.ps1/ nocase ascii wide
        // Description: exposing a server with suspicious scripts and executable from I-Am-Jakoby
        // Reference: https://github.com/I-Am-Jakoby/ShellSync
        $string9 = /\\checkRoot\.ps1/ nocase ascii wide
        // Description: exposing a server with suspicious scripts and executable from I-Am-Jakoby
        // Reference: https://github.com/I-Am-Jakoby/ShellSync
        $string10 = /\\fileUpload\.ps1/ nocase ascii wide
        // Description: exposing a server with suspicious scripts and executable from I-Am-Jakoby
        // Reference: https://github.com/I-Am-Jakoby/ShellSync
        $string11 = /\\pngZIP\.ps1/ nocase ascii wide
        // Description: exposing a server with suspicious scripts and executable from I-Am-Jakoby
        // Reference: https://github.com/I-Am-Jakoby/ShellSync
        $string12 = /\\ShellSync\-main\.zip/ nocase ascii wide
        // Description: exposing a server with suspicious scripts and executable from I-Am-Jakoby
        // Reference: https://github.com/I-Am-Jakoby/ShellSync
        $string13 = "0699ec05b54bc85473e88e53a615a630ca97c68bc8a96e126c1168245b0a74b6" nocase ascii wide
        // Description: exposing a server with suspicious scripts and executable from I-Am-Jakoby
        // Reference: https://github.com/I-Am-Jakoby/ShellSync
        $string14 = "171b5c5e7631493dd1959913d21a9f94d75079507fa321f5fa61d37df07866b9" nocase ascii wide
        // Description: exposing a server with suspicious scripts and executable from I-Am-Jakoby
        // Reference: https://github.com/I-Am-Jakoby/ShellSync
        $string15 = "5c3a2b52076490d4dbcff0a880931e52fe492e253e003961bae52c99e23d25b0" nocase ascii wide
        // Description: exposing a server with suspicious scripts and executable from I-Am-Jakoby
        // Reference: https://github.com/I-Am-Jakoby/ShellSync
        $string16 = "75e1281a581e12bdec70ffa44dbe469847590eab3deddedfe2e6be0b91cf88c2" nocase ascii wide
        // Description: exposing a server with suspicious scripts and executable from I-Am-Jakoby
        // Reference: https://github.com/I-Am-Jakoby/ShellSync
        $string17 = "784adbcf1820556ae22793a98e8bc802017598d4ee00a63c2c5a735b744009f6" nocase ascii wide
        // Description: exposing a server with suspicious scripts and executable from I-Am-Jakoby
        // Reference: https://github.com/I-Am-Jakoby/ShellSync
        $string18 = "7a9171a7fe5be4b0676faad4c3f65124e0e2a73b79ec5b219da2204a64a3f3c7" nocase ascii wide
        // Description: exposing a server with suspicious scripts and executable from I-Am-Jakoby
        // Reference: https://github.com/I-Am-Jakoby/ShellSync
        $string19 = "85a64d925bmsh374c814867fca19p1c3880jsn5cff8c77bdb3" nocase ascii wide
        // Description: exposing a server with suspicious scripts and executable from I-Am-Jakoby
        // Reference: https://github.com/I-Am-Jakoby/ShellSync
        $string20 = "86b62609337b5c5c46a2f007f4b5126679728016c0095938646365d495c80a39" nocase ascii wide
        // Description: exposing a server with suspicious scripts and executable from I-Am-Jakoby
        // Reference: https://github.com/I-Am-Jakoby/ShellSync
        $string21 = "8f78ba859a0d8f7a131310f48406af6faf0496871588ffb071bd186cdc8e8e65" nocase ascii wide
        // Description: exposing a server with suspicious scripts and executable from I-Am-Jakoby
        // Reference: https://github.com/I-Am-Jakoby/ShellSync
        $string22 = "9f1af0a9b870f562131c2dbb25a3fe416512b0d74b7e57a0f2dcc4b7039383bd" nocase ascii wide
        // Description: exposing a server with suspicious scripts and executable from I-Am-Jakoby
        // Reference: https://github.com/I-Am-Jakoby/ShellSync
        $string23 = "Add-PodeEndpoint -Address localhost -Port " nocase ascii wide
        // Description: exposing a server with suspicious scripts and executable from I-Am-Jakoby
        // Reference: https://github.com/I-Am-Jakoby/ShellSync
        $string24 = "d5f0032f2d09939afd7f054530076eefe4cdaca9a625197d12f3f13a92e884d0" nocase ascii wide
        // Description: exposing a server with suspicious scripts and executable from I-Am-Jakoby
        // Reference: https://github.com/I-Am-Jakoby/ShellSync
        $string25 = "eae10507ae68eb619503bf0ea16b0d7fd4a1eb5d817bde2746413fb27c1e5aa5" nocase ascii wide
        // Description: exposing a server with suspicious scripts and executable from I-Am-Jakoby
        // Reference: https://github.com/I-Am-Jakoby/ShellSync
        $string26 = /https\:\/\/api\.fbi\.gov\/wanted\/v1\/list/ nocase ascii wide
        // Description: using the API of a disposable email address to use anytime - could be abused by malicious actors
        // Reference: https://github.com/I-Am-Jakoby/ShellSync
        $string27 = /https\:\/\/privatix\-temp\-mail\-v1\.p\.rapidapi\.com\/request\/domains\// nocase ascii wide
        // Description: using the API of a disposable email address to use anytime - could be abused by malicious actors
        // Reference: https://github.com/I-Am-Jakoby/ShellSync
        $string28 = /https\:\/\/privatix\-temp\-mail\-v1\.p\.rapidapi\.com\/request\/mail\/id\/null\// nocase ascii wide
        // Description: exposing a server with suspicious scripts and executable from I-Am-Jakoby
        // Reference: https://github.com/I-Am-Jakoby/ShellSync
        $string29 = "I-Am-Jakoby/ShellSync" nocase ascii wide
        // Description: exposing a server with suspicious scripts and executable from I-Am-Jakoby
        // Reference: https://github.com/I-Am-Jakoby/ShellSync
        $string30 = /jakoby\.lol\/fbi/ nocase ascii wide
        // Description: exposing a server with suspicious scripts and executable from I-Am-Jakoby
        // Reference: https://github.com/I-Am-Jakoby/ShellSync
        $string31 = "Monitor-FBIWantedList -searchName " nocase ascii wide
        // Description: exposing a server with suspicious scripts and executable from I-Am-Jakoby
        // Reference: https://github.com/I-Am-Jakoby/ShellSync
        $string32 = "New-PodeWebNavDropdown -Name " nocase ascii wide
        // Description: exposing a server with suspicious scripts and executable from I-Am-Jakoby
        // Reference: https://github.com/I-Am-Jakoby/ShellSync
        $string33 = "Set-PodeWebSocial -Type " nocase ascii wide
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
