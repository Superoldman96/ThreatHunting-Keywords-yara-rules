rule tunnel
{
    meta:
        description = "Detection patterns for the tool 'tunnel' taken from the ThreatHunting-Keywords github project" 
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "tunnel"
        rule_category = "greyware_tool_keyword"

    strings:
        // Description: SSL-terminated ephemeral HTTP tunnels to your local machine
        // Reference: https://gitlab.com/pyjam.as/tunnel
        $string1 = /\sthe\sservers\sWireguard\sinterface\./ nocase ascii wide
        // Description: SSL-terminated ephemeral HTTP tunnels to your local machine
        // Reference: https://gitlab.com/pyjam.as/tunnel
        $string2 = /\.tunnel\.pyjam\.as/ nocase ascii wide
        // Description: Tunnel is a server/client package that enables to proxy public connections to your local machine over a tunnel connection from the local machine to the public server. What this means is, you can share your localhost even if it doesn't have a Public IP or if it's not reachable from outside
        // Reference: https://github.com/koding/tunnel
        $string3 = "// Package tunnel is a server/client package that enables to proxy public" nocase ascii wide
        // Description: Tunnel is a server/client package that enables to proxy public connections to your local machine over a tunnel connection from the local machine to the public server. What this means is, you can share your localhost even if it doesn't have a Public IP or if it's not reachable from outside
        // Reference: https://github.com/koding/tunnel
        $string4 = /\/etc\/wireguard\/.{0,100}\.conf/ nocase ascii wide
        // Description: SSL-terminated ephemeral HTTP tunnels to your local machine
        // Reference: https://gitlab.com/pyjam.as/tunnel
        $string5 = /\/etc\/wireguard\/.{0,100}\.conf/ nocase ascii wide
        // Description: SSL-terminated ephemeral HTTP tunnels to your local machine
        // Reference: https://gitlab.com/pyjam.as/tunnel
        $string6 = /\/pyjam\.as\/tunnel/ nocase ascii wide
        // Description: Tunnel is a server/client package that enables to proxy public connections to your local machine over a tunnel connection from the local machine to the public server. What this means is, you can share your localhost even if it doesn't have a Public IP or if it's not reachable from outside
        // Reference: https://github.com/koding/tunnel
        $string7 = /\/tunnel\/server\.go/ nocase ascii wide
        // Description: SSL-terminated ephemeral HTTP tunnels to your local machine
        // Reference: https://gitlab.com/pyjam.as/tunnel
        $string8 = /\/tunnel\/tunnel\.py/ nocase ascii wide
        // Description: SSL-terminated ephemeral HTTP tunnels to your local machine
        // Reference: https://gitlab.com/pyjam.as/tunnel
        $string9 = /\/tunnel\/tunnel\.service/ nocase ascii wide
        // Description: SSL-terminated ephemeral HTTP tunnels to your local machine
        // Reference: https://gitlab.com/pyjam.as/tunnel
        $string10 = /\/tunnel\-main\.tar\.gz/ nocase ascii wide
        // Description: Tunnel is a server/client package that enables to proxy public connections to your local machine over a tunnel connection from the local machine to the public server. What this means is, you can share your localhost even if it doesn't have a Public IP or if it's not reachable from outside
        // Reference: https://github.com/koding/tunnel
        $string11 = "3579ab708388d7be3e66c1a45deea0f6a249865ce4105310d8fe340ed28accca" nocase ascii wide
        // Description: SSL-terminated ephemeral HTTP tunnels to your local machine
        // Reference: https://gitlab.com/pyjam.as/tunnel
        $string12 = "447a5e8b424ebc3b82e909ab8c585fda579881ad26c35cba3c32b77896008c62" nocase ascii wide
        // Description: SSL-terminated ephemeral HTTP tunnels to your local machine
        // Reference: https://gitlab.com/pyjam.as/tunnel
        $string13 = "9e3c014399ad61b61a1fa5fa58de95a4ddfded6ff863c413cea089f2d92f9d70" nocase ascii wide
        // Description: Tunnel is a server/client package that enables to proxy public connections to your local machine over a tunnel connection from the local machine to the public server. What this means is, you can share your localhost even if it doesn't have a Public IP or if it's not reachable from outside
        // Reference: https://github.com/koding/tunnel
        $string14 = "c9165f1628aa7d5a75b907d71efda4fa4ab1fa8bb2ee12ef86478ef6e2c3e162" nocase ascii wide
        // Description: Tunnel is a server/client package that enables to proxy public connections to your local machine over a tunnel connection from the local machine to the public server. What this means is, you can share your localhost even if it doesn't have a Public IP or if it's not reachable from outside
        // Reference: https://github.com/koding/tunnel
        $string15 = "e82ae72bb202db9bae86dc81cf4df152b6d8d3b5062295004b8ae92088904dc7" nocase ascii wide
        // Description: Tunnel is a server/client package that enables to proxy public connections to your local machine over a tunnel connection from the local machine to the public server. What this means is, you can share your localhost even if it doesn't have a Public IP or if it's not reachable from outside
        // Reference: https://github.com/koding/tunnel
        $string16 = /github.{0,100}koding\/tunnel/ nocase ascii wide
        // Description: Tunnel is a server/client package that enables to proxy public connections to your local machine over a tunnel connection from the local machine to the public server. What this means is, you can share your localhost even if it doesn't have a Public IP or if it's not reachable from outside
        // Reference: https://github.com/koding/tunnel
        $string17 = /http\:\/\/arslan\.koding\.io\// nocase ascii wide
        // Description: SSL-terminated ephemeral HTTP tunnels to your local machine
        // Reference: https://gitlab.com/pyjam.as/tunnel
        $string18 = /https\:\/\/tunnel\.pyjam\.as\// nocase ascii wide
        // Description: SSL-terminated ephemeral HTTP tunnels to your local machine
        // Reference: https://gitlab.com/pyjam.as/tunnel
        $string19 = /https\:\/\/www\.wireguard\.com\/install/ nocase ascii wide
        // Description: Tunnel is a server/client package that enables to proxy public connections to your local machine over a tunnel connection from the local machine to the public server. What this means is, you can share your localhost even if it doesn't have a Public IP or if it's not reachable from outside
        // Reference: https://github.com/koding/tunnel
        $string20 = /tunnel\/httpproxy\.go/ nocase ascii wide
        // Description: SSL-terminated ephemeral HTTP tunnels to your local machine
        // Reference: https://gitlab.com/pyjam.as/tunnel
        $string21 = /wg\-quick\sdown\s\.\/tunnel\.conf/ nocase ascii wide
        // Description: SSL-terminated ephemeral HTTP tunnels to your local machine
        // Reference: https://gitlab.com/pyjam.as/tunnel
        $string22 = /wg\-quick\sup\s\.\/tunnel\.conf/ nocase ascii wide
        // Description: Tunnel is a server/client package that enables to proxy public connections to your local machine over a tunnel connection from the local machine to the public server. What this means is, you can share your localhost even if it doesn't have a Public IP or if it's not reachable from outside
        // Reference: https://github.com/koding/tunnel
        $string23 = /Write\sWireguard\sserver\sconfiguration\sto\sdisk\./ nocase ascii wide
        // Description: SSL-terminated ephemeral HTTP tunnels to your local machine
        // Reference: https://gitlab.com/pyjam.as/tunnel
        $string24 = /Write\sWireguard\sserver\sconfiguration\sto\sdisk\./ nocase ascii wide
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