rule EHORUS_RMM
{
    meta:
        description = "Detection patterns for the tool 'EHORUS RMM' taken from the ThreatHunting-Keywords github project" 
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "EHORUS RMM"
        rule_category = "greyware_tool_keyword"

    strings:
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string1 = "\"appName\":\"eHorus Agent\"" nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string2 = /\$EHORUS_HOME\/\.vnc\/passwd/ nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string3 = "/ehorus_agent_installer-" nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string4 = "/etc/ehorus/ehorus_agent" nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string5 = /\/etc\/init\.d\/ehorus_agent_daemon/ nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string6 = "/usr/bin/ehorus_agent" nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string7 = "/usr/sbin/userdel -r ehorus" nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string8 = "/usr/share/ehorus" nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string9 = /\/var\/log\/ehorus_agent\.log/ nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string10 = /\\eHorus\sAgent\sMenu\.lnk/ nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string11 = /\\eHorus\sAgent\.lnk/ nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string12 = /\\ehorus\sstandalone\.exe/ nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string13 = /\\ehorus_agent\.conf/ nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string14 = /\\ehorus_agent\.exe/ nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string15 = /\\ehorus_agent\.log/ nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string16 = /\\ehorus_agent_disconn\.log/ nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string17 = /\\ehorus_cmd\.exe/ nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string18 = /\\ehorus_display\.exe/ nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string19 = /\\ehorus_installer_windows\-/ nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string20 = /\\ehorus_launcher\.exe/ nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string21 = /\\ehorus_uit\.exe/ nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string22 = /\\eHorusMsiCustomActions\.dll/ nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string23 = /\\Microsoft\\Windows\\Start\sMenu\\Programs\\eHorus\sAgent\\/ nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string24 = /\\Program\sFiles\\ehorus_agent\\/ nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string25 = /\\SOFTWARE\\eHorusDispl\\/ nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string26 = /\\System\\CurrentControlSet\\Services\\ehorus/ nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string27 = /\\System\\CurrentControlSet\\Services\\EHORUSAGENT/ nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string28 = ">eHorus Agent Setup<" nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string29 = ">EHORUSAGENT<" nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string30 = "chsh -s /bin/false ehorus" nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string31 = "ehorus_agent -f /etc/ehorus/" nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string32 = /https\:\/\/portal\.ehorus\.com\/\#\/agents\// nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string33 = /hub\.ehorus\.com/ nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string34 = "sc delete ehorus" nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string35 = "sc stop ehorus" nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string36 = "su ehorus -s /bin/bash -c \"kill -9 -1\"" nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string37 = /switch\.ehorus\.com/ nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string38 = /taskkill\s\/F\s\/IM\s\\"ehorus_agent\.exe\\"/ nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string39 = /taskkill\s\/F\s\/IM\s\\"ehorus_cmd\.exe\\"/ nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string40 = /taskkill\s\/F\s\/IM\s\\"ehorus_display\.exe\\"/ nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string41 = /umount\s\/usr\/share\/ehorus\/\.gvfs\s\-r\s\>\/dev\/null\s2\>\&1/ nocase ascii wide
        // Description: Pandora RC (formerly called eHorus) is a computer management system for MS Windows - Linux and MacOS that allows access to registered computers wherever they are from a browser without direct connectivity to their devices from the outside. (server based on VNC)
        // Reference: https://pandorafms.com/en/remote-control/
        $string42 = /useradd\s\-d\s\/usr\/share\/ehorus\s\-p\s.{0,100}\sehorus/ nocase ascii wide
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