rule SharpUp
{
    meta:
        description = "Detection patterns for the tool 'SharpUp' taken from the ThreatHunting-Keywords github project" 
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "SharpUp"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string1 = /\saudit\sAlwaysInstallElevated/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string2 = /\saudit\sCachedGPPPassword/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string3 = /\saudit\sDomainGPPPassword/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string4 = /\saudit\sHijackablePaths/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string5 = /\saudit\sMcAfeeSitelistFiles/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string6 = /\saudit\sModifiableScheduledTask/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string7 = /\saudit\sModifiableServiceBinaries/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string8 = /\saudit\sModifiableServiceRegistryKeys/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string9 = /\saudit\sModifiableServices/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string10 = /\saudit\sProcessDLLHijack/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string11 = /\saudit\sRegistryAutoLogons/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string12 = /\saudit\sRegistryAutoruns/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string13 = /\saudit\sTokenPrivileges/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string14 = /\saudit\sUnattendedInstallFiles/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string15 = /\saudit\sUnquotedServicePath/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string16 = /\.exe\sAlwaysInstallElevated/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string17 = /\.exe\sCachedGPPPassword/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string18 = /\.exe\sDomainGPPPassword/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string19 = /\.exe\sHijackablePaths/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string20 = /\.exe\sMcAfeeSitelistFiles/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string21 = /\.exe\sModifiableScheduledTask/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string22 = /\.exe\sModifiableServiceBinaries/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string23 = /\.exe\sModifiableServiceRegistryKeys/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string24 = /\.exe\sModifiableServices/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string25 = /\.exe\sProcessDLLHijack/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string26 = /\.exe\sRegistryAutoLogons/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string27 = /\.exe\sRegistryAutoruns/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string28 = /\.exe\sTokenPrivileges/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string29 = /\.exe\sUnattendedInstallFiles/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string30 = /\.exe\sUnquotedServicePath/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string31 = /\/SharpUp\.git/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string32 = /\[\!\]\sModifialbe\sscheduled\stasks\swere\snot\sevaluated\sdue\sto\spermissions/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string33 = /\[\+\]\sHijackable\sDLL\:\s/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string34 = /\[\+\]\sPotenatially\sHijackable\sDLL\:\s/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string35 = /\\AlwaysInstallElevated\.cs/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string36 = /\\CachedGPPPassword\.cs/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string37 = /\\DomainGPPPassword\.cs/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string38 = /\\HijackablePaths\.cs/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string39 = /\\ProcessDLLHijack\.cs/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string40 = /\\SharpUp\.csproj/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string41 = /\\SharpUp\.sln/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string42 = /\\SharpUp\\/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string43 = /\\SharpUp\-master/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string44 = /\\UnquotedServicePath\.cs/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string45 = /\]\sCompleted\sPrivesc\sChecks\sin\s/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string46 = /\=\=\=\sSharpUp\:\sRunning\sPrivilege\sEscalation\sChecks\s\=\=\=/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string47 = /Already\sin\shigh\sintegrity\,\sno\sneed\sto\sprivesc\!/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string48 = /FDD654F5\-5C54\-4D93\-BF8E\-FAF11B00E3E9/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string49 = /GhostPack\/SharpUp/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string50 = /In\smedium\sintegrity\sbut\suser\sis\sa\slocal\sadministrator\-\sUAC\scan\sbe\sbypassed/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string51 = /ParseGPPPasswordFromXml/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string52 = /SharpUp\.exe/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string53 = /using\sSharpUp\.Classes/ nocase ascii wide
        // Description: SharpUp is a C# port of various PowerUp functionality. Currently. only the most common checks have been ported. no weaponization functions have yet been implemented.
        // Reference: https://github.com/GhostPack/SharpUp
        $string54 = /using\sstatic\sSharpUp\.Utilities/ nocase ascii wide

    condition:
        any of them
}
