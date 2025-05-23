rule jackdaw
{
    meta:
        description = "Detection patterns for the tool 'jackdaw' taken from the ThreatHunting-Keywords github project"
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "jackdaw"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: Jackdaw is here to collect all information in your domain. store it in a SQL database and show you nice graphs on how your domain objects interact with each-other an how a potential attacker may exploit these interactions. It also comes with a handy feature to help you in a password-cracking project by storing/looking up/reporting hashes/passowrds/users.
        // Reference: https://github.com/skelsec/jackdaw
        $string1 = /\/jackdaw\.exe/ nocase ascii wide
        // Description: Jackdaw is here to collect all information in your domain. store it in a SQL database and show you nice graphs on how your domain objects interact with each-other an how a potential attacker may exploit these interactions. It also comes with a handy feature to help you in a password-cracking project by storing/looking up/reporting hashes/passowrds/users.
        // Reference: https://github.com/skelsec/jackdaw
        $string2 = /\/jackdaw\.git/ nocase ascii wide
        // Description: Jackdaw is here to collect all information in your domain. store it in a SQL database and show you nice graphs on how your domain objects interact with each-other an how a potential attacker may exploit these interactions. It also comes with a handy feature to help you in a password-cracking project by storing/looking up/reporting hashes/passowrds/users.
        // Reference: https://github.com/skelsec/jackdaw
        $string3 = /\/jackdaw\.zip/ nocase ascii wide
        // Description: Jackdaw is here to collect all information in your domain. store it in a SQL database and show you nice graphs on how your domain objects interact with each-other an how a potential attacker may exploit these interactions. It also comes with a handy feature to help you in a password-cracking project by storing/looking up/reporting hashes/passowrds/users.
        // Reference: https://github.com/skelsec/jackdaw
        $string4 = /\/well_known_sids\.py/ nocase ascii wide
        // Description: Jackdaw is here to collect all information in your domain. store it in a SQL database and show you nice graphs on how your domain objects interact with each-other an how a potential attacker may exploit these interactions. It also comes with a handy feature to help you in a password-cracking project by storing/looking up/reporting hashes/passowrds/users.
        // Reference: https://github.com/skelsec/jackdaw
        $string5 = /\\jackdaw\.exe/ nocase ascii wide
        // Description: Jackdaw is here to collect all information in your domain. store it in a SQL database and show you nice graphs on how your domain objects interact with each-other an how a potential attacker may exploit these interactions. It also comes with a handy feature to help you in a password-cracking project by storing/looking up/reporting hashes/passowrds/users.
        // Reference: https://github.com/skelsec/jackdaw
        $string6 = /\\jackdaw\.zip/ nocase ascii wide
        // Description: Jackdaw is here to collect all information in your domain. store it in a SQL database and show you nice graphs on how your domain objects interact with each-other an how a potential attacker may exploit these interactions. It also comes with a handy feature to help you in a password-cracking project by storing/looking up/reporting hashes/passowrds/users.
        // Reference: https://github.com/skelsec/jackdaw
        $string7 = "01c79370958be0cd2c8c9dddd793556e37d0edf80f9ffd1f368c5440e5ef9666" nocase ascii wide
        // Description: Jackdaw is here to collect all information in your domain. store it in a SQL database and show you nice graphs on how your domain objects interact with each-other an how a potential attacker may exploit these interactions. It also comes with a handy feature to help you in a password-cracking project by storing/looking up/reporting hashes/passowrds/users.
        // Reference: https://github.com/skelsec/jackdaw
        $string8 = "06c92c9a18667e8d0d624f3de3dac6d3db96f3ce5f3e738a0c49ffa92d32c068" nocase ascii wide
        // Description: Jackdaw is here to collect all information in your domain. store it in a SQL database and show you nice graphs on how your domain objects interact with each-other an how a potential attacker may exploit these interactions. It also comes with a handy feature to help you in a password-cracking project by storing/looking up/reporting hashes/passowrds/users.
        // Reference: https://github.com/skelsec/jackdaw
        $string9 = "29b4ba00c47acb9059e19dd1acd4c6e83dfbd0af2e4cf0447892de04c6d1e8e4" nocase ascii wide
        // Description: Jackdaw is here to collect all information in your domain. store it in a SQL database and show you nice graphs on how your domain objects interact with each-other an how a potential attacker may exploit these interactions. It also comes with a handy feature to help you in a password-cracking project by storing/looking up/reporting hashes/passowrds/users.
        // Reference: https://github.com/skelsec/jackdaw
        $string10 = "3bf103c2c2f275c75c34f519c26b72143b038f4b31ae7c2d99e9ffd30bb07761" nocase ascii wide
        // Description: Jackdaw is here to collect all information in your domain. store it in a SQL database and show you nice graphs on how your domain objects interact with each-other an how a potential attacker may exploit these interactions. It also comes with a handy feature to help you in a password-cracking project by storing/looking up/reporting hashes/passowrds/users.
        // Reference: https://github.com/skelsec/jackdaw
        $string11 = "4d6d37ca48cd2999f2362975d0ede5f28dec0780d6815db75ff450aef1aabf12" nocase ascii wide
        // Description: Jackdaw is here to collect all information in your domain. store it in a SQL database and show you nice graphs on how your domain objects interact with each-other an how a potential attacker may exploit these interactions. It also comes with a handy feature to help you in a password-cracking project by storing/looking up/reporting hashes/passowrds/users.
        // Reference: https://github.com/skelsec/jackdaw
        $string12 = "4f2a713d98aedd080e4cda63a75f4057997d1aa87903649a921cadeed54463aa" nocase ascii wide
        // Description: Jackdaw is here to collect all information in your domain. store it in a SQL database and show you nice graphs on how your domain objects interact with each-other an how a potential attacker may exploit these interactions. It also comes with a handy feature to help you in a password-cracking project by storing/looking up/reporting hashes/passowrds/users.
        // Reference: https://github.com/skelsec/jackdaw
        $string13 = "59ce9c0deee4a9514bca45b542d680baa7d7b927fef94c54ac5a0433db480629" nocase ascii wide
        // Description: Jackdaw is here to collect all information in your domain. store it in a SQL database and show you nice graphs on how your domain objects interact with each-other an how a potential attacker may exploit these interactions. It also comes with a handy feature to help you in a password-cracking project by storing/looking up/reporting hashes/passowrds/users.
        // Reference: https://github.com/skelsec/jackdaw
        $string14 = "5f54bd1d5ca340f7276bce27fe649e8465aaec2482a8db998de5b069d17633b3" nocase ascii wide
        // Description: Jackdaw is here to collect all information in your domain. store it in a SQL database and show you nice graphs on how your domain objects interact with each-other an how a potential attacker may exploit these interactions. It also comes with a handy feature to help you in a password-cracking project by storing/looking up/reporting hashes/passowrds/users.
        // Reference: https://github.com/skelsec/jackdaw
        $string15 = "6185f2b2dfd6000213f93bbea91b80af670ced8825626656a61e23a8d5780dcb" nocase ascii wide
        // Description: Jackdaw is here to collect all information in your domain. store it in a SQL database and show you nice graphs on how your domain objects interact with each-other an how a potential attacker may exploit these interactions. It also comes with a handy feature to help you in a password-cracking project by storing/looking up/reporting hashes/passowrds/users.
        // Reference: https://github.com/skelsec/jackdaw
        $string16 = "8d792ce2918767066d9de241a7479094ff84a7234957840fda5381298be9af21" nocase ascii wide
        // Description: Jackdaw is here to collect all information in your domain. store it in a SQL database and show you nice graphs on how your domain objects interact with each-other an how a potential attacker may exploit these interactions. It also comes with a handy feature to help you in a password-cracking project by storing/looking up/reporting hashes/passowrds/users.
        // Reference: https://github.com/skelsec/jackdaw
        $string17 = "92ecee084ef8dd59561826895fd8aef0e5db918ad05940aabba3999be223ba4f" nocase ascii wide
        // Description: Jackdaw is here to collect all information in your domain. store it in a SQL database and show you nice graphs on how your domain objects interact with each-other an how a potential attacker may exploit these interactions. It also comes with a handy feature to help you in a password-cracking project by storing/looking up/reporting hashes/passowrds/users.
        // Reference: https://github.com/skelsec/jackdaw
        $string18 = "94c1e9fde90bb271016a5a6bc05f6cfc8caa1acc18336aa864de5431ac52c7a4" nocase ascii wide
        // Description: Jackdaw is here to collect all information in your domain. store it in a SQL database and show you nice graphs on how your domain objects interact with each-other an how a potential attacker may exploit these interactions. It also comes with a handy feature to help you in a password-cracking project by storing/looking up/reporting hashes/passowrds/users.
        // Reference: https://github.com/skelsec/jackdaw
        $string19 = "9b7e4c777b2fed27f94d05d195c52bdc036482820274dfa345eb9bbd557d4ac7" nocase ascii wide
        // Description: Jackdaw is here to collect all information in your domain. store it in a SQL database and show you nice graphs on how your domain objects interact with each-other an how a potential attacker may exploit these interactions. It also comes with a handy feature to help you in a password-cracking project by storing/looking up/reporting hashes/passowrds/users.
        // Reference: https://github.com/skelsec/jackdaw
        $string20 = "9c887d5a9f4522a35749c9c91863c12d3e69b22f24ebfac41b3d6290c503a460" nocase ascii wide
        // Description: Jackdaw is here to collect all information in your domain. store it in a SQL database and show you nice graphs on how your domain objects interact with each-other an how a potential attacker may exploit these interactions. It also comes with a handy feature to help you in a password-cracking project by storing/looking up/reporting hashes/passowrds/users.
        // Reference: https://github.com/skelsec/jackdaw
        $string21 = "a20a99c4f1693911d793608704b7b50c69fea98c091ff2cfd936227374d3d83d" nocase ascii wide
        // Description: Jackdaw is here to collect all information in your domain. store it in a SQL database and show you nice graphs on how your domain objects interact with each-other an how a potential attacker may exploit these interactions. It also comes with a handy feature to help you in a password-cracking project by storing/looking up/reporting hashes/passowrds/users.
        // Reference: https://github.com/skelsec/jackdaw
        $string22 = "b950b16b3e207f829f926b62cd1e75e774d57f9e676dcf01191d054fac7dd2f5" nocase ascii wide
        // Description: Jackdaw is here to collect all information in your domain. store it in a SQL database and show you nice graphs on how your domain objects interact with each-other an how a potential attacker may exploit these interactions. It also comes with a handy feature to help you in a password-cracking project by storing/looking up/reporting hashes/passowrds/users.
        // Reference: https://github.com/skelsec/jackdaw
        $string23 = "e3b8202dd0e456299e6c11495357e0e540ad0c73ff73723783b968d3d28c02ac" nocase ascii wide
        // Description: Jackdaw is here to collect all information in your domain. store it in a SQL database and show you nice graphs on how your domain objects interact with each-other an how a potential attacker may exploit these interactions. It also comes with a handy feature to help you in a password-cracking project by storing/looking up/reporting hashes/passowrds/users.
        // Reference: https://github.com/skelsec/jackdaw
        $string24 = "e65ca194ca5dd3606ca5c0b67b2cf3df4cc38283e4aa11933002b430fc5be17b" nocase ascii wide
        // Description: Jackdaw is here to collect all information in your domain. store it in a SQL database and show you nice graphs on how your domain objects interact with each-other an how a potential attacker may exploit these interactions. It also comes with a handy feature to help you in a password-cracking project by storing/looking up/reporting hashes/passowrds/users.
        // Reference: https://github.com/skelsec/jackdaw
        $string25 = "ecebdd54145e9987d9ae0f389369e33571bbbad53970f990423902bdb2cc59d2" nocase ascii wide
        // Description: Jackdaw is here to collect all information in your domain. store it in a SQL database and show you nice graphs on how your domain objects interact with each-other an how a potential attacker may exploit these interactions. It also comes with a handy feature to help you in a password-cracking project by storing/looking up/reporting hashes/passowrds/users.
        // Reference: https://github.com/skelsec/jackdaw
        $string26 = /gatherer\/gatherer\.py/ nocase ascii wide
        // Description: Jackdaw is here to collect all information in your domain. store it in a SQL database and show you nice graphs on how your domain objects interact with each-other an how a potential attacker may exploit these interactions. It also comes with a handy feature to help you in a password-cracking project by storing/looking up/reporting hashes/passowrds/users.
        // Reference: https://github.com/skelsec/jackdaw
        $string27 = "jackdaw --" nocase ascii wide
        // Description: Jackdaw is here to collect all information in your domain. store it in a SQL database and show you nice graphs on how your domain objects interact with each-other an how a potential attacker may exploit these interactions. It also comes with a handy feature to help you in a password-cracking project by storing/looking up/reporting hashes/passowrds/users.
        // Reference: https://github.com/skelsec/jackdaw
        $string28 = /jackdaw\.py/ nocase ascii wide
        // Description: Jackdaw is here to collect all information in your domain. store it in a SQL database and show you nice graphs on how your domain objects interact with each-other an how a potential attacker may exploit these interactions. It also comes with a handy feature to help you in a password-cracking project by storing/looking up/reporting hashes/passowrds/users.
        // Reference: https://github.com/skelsec/jackdaw
        $string29 = "skelsec/jackdaw" nocase ascii wide
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
