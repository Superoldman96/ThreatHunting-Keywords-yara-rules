rule EvilLsassTwin
{
    meta:
        description = "Detection patterns for the tool 'EvilLsassTwin' taken from the ThreatHunting-Keywords github project" 
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "EvilLsassTwin"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: attempt to duplicate open handles to LSASS. If this fails it will obtain a handle to LSASS through the NtGetNextProcess function instead of OpenProcess/NtOpenProcess.
        // Reference: https://github.com/RePRGM/Nimperiments/tree/main/EvilLsassTwin
        $string1 = " EvilTwinServer " nocase ascii wide
        // Description: Dumping lsass
        // Reference: https://github.com/RePRGM/Nimperiments/tree/main/EvilLsassTwin
        $string2 = "/EvilLsassTwin" nocase ascii wide
        // Description: attempt to duplicate open handles to LSASS. If this fails it will obtain a handle to LSASS through the NtGetNextProcess function instead of OpenProcess/NtOpenProcess.
        // Reference: https://github.com/RePRGM/Nimperiments/tree/main/EvilLsassTwin
        $string3 = "/EvilLsassTwin/" nocase ascii wide
        // Description: attempt to duplicate open handles to LSASS. If this fails it will obtain a handle to LSASS through the NtGetNextProcess function instead of OpenProcess/NtOpenProcess.
        // Reference: https://github.com/RePRGM/Nimperiments/tree/main/EvilLsassTwin
        $string4 = "/EvilTwinServer" nocase ascii wide
        // Description: Dumping lsass
        // Reference: https://github.com/RePRGM/Nimperiments/tree/main/EvilLsassTwin
        $string5 = /\/malDll\.dll/ nocase ascii wide
        // Description: Dumping lsass
        // Reference: https://github.com/RePRGM/Nimperiments/tree/main/EvilLsassTwin
        $string6 = /\/Nimperiments\.git/ nocase ascii wide
        // Description: Dumping lsass
        // Reference: https://github.com/RePRGM/Nimperiments/tree/main/EvilLsassTwin
        $string7 = /\[\!\]\sInvalid\sExfil\sMethod\sChosen\!\sData\sWill\sNot\sBe\sSent\!/ nocase ascii wide
        // Description: Dumping lsass
        // Reference: https://github.com/RePRGM/Nimperiments/tree/main/EvilLsassTwin
        $string8 = /\[\+\]\sSucessfully\sDumped\sProcess\!/ nocase ascii wide
        // Description: Dumping lsass
        // Reference: https://github.com/RePRGM/Nimperiments/tree/main/EvilLsassTwin
        $string9 = /\[\+\]\sSuitable\sHandle\sto\sLSASS\sFound\sfrom\sPID\:\s/ nocase ascii wide
        // Description: Dumping lsass
        // Reference: https://github.com/RePRGM/Nimperiments/tree/main/EvilLsassTwin
        $string10 = /\\EvilLsassTwin\\/ nocase ascii wide
        // Description: Dumping lsass
        // Reference: https://github.com/RePRGM/Nimperiments/tree/main/EvilLsassTwin
        $string11 = /\\malDll\.dll/ nocase ascii wide
        // Description: Dumping lsass
        // Reference: https://github.com/RePRGM/Nimperiments/tree/main/EvilLsassTwin
        $string12 = /\\Nimperiments\-main/ nocase ascii wide
        // Description: Dumping lsass
        // Reference: https://github.com/RePRGM/Nimperiments/tree/main/EvilLsassTwin
        $string13 = "40408670ce1d814a3283a625566334fa191580622adbd23effa6e3cdaaafc5d5" nocase ascii wide
        // Description: Dumping lsass
        // Reference: https://github.com/RePRGM/Nimperiments/tree/main/EvilLsassTwin
        $string14 = "5c177feedd58a6ccc8287dee8c767dd486f2b5c55c234360be17f85fcbaa4501" nocase ascii wide
        // Description: Dumping lsass
        // Reference: https://github.com/RePRGM/Nimperiments/tree/main/EvilLsassTwin
        $string15 = /All\sgood\sin\sthe\shood\.\sCheck\sTemp\sfor\stest\.txt/ nocase ascii wide
        // Description: Dumping lsass
        // Reference: https://github.com/RePRGM/Nimperiments/tree/main/EvilLsassTwin
        $string16 = "Attempting Risky Operation: Opening Handle Directly to Lsass Process" nocase ascii wide
        // Description: Dumping lsass
        // Reference: https://github.com/RePRGM/Nimperiments/tree/main/EvilLsassTwin
        $string17 = "Build Evil Lsass Twin" nocase ascii wide
        // Description: Dumping lsass
        // Reference: https://github.com/RePRGM/Nimperiments/tree/main/EvilLsassTwin
        $string18 = "Building Evil Lsass Twin" nocase ascii wide
        // Description: Dumping lsass
        // Reference: https://github.com/RePRGM/Nimperiments/tree/main/EvilLsassTwin
        $string19 = /CreateFile\(\\"twin\.txt\\"/ nocase ascii wide
        // Description: Dumping lsass
        // Reference: https://github.com/RePRGM/Nimperiments/tree/main/EvilLsassTwin
        $string20 = /EvilLsassTwin\.exe/ nocase ascii wide
        // Description: attempt to duplicate open handles to LSASS. If this fails it will obtain a handle to LSASS through the NtGetNextProcess function instead of OpenProcess/NtOpenProcess.
        // Reference: https://github.com/RePRGM/Nimperiments/tree/main/EvilLsassTwin
        $string21 = /EvilLsassTwin\.exe/ nocase ascii wide
        // Description: Dumping lsass
        // Reference: https://github.com/RePRGM/Nimperiments/tree/main/EvilLsassTwin
        $string22 = /EvilLsassTwin\.nim/ nocase ascii wide
        // Description: attempt to duplicate open handles to LSASS. If this fails it will obtain a handle to LSASS through the NtGetNextProcess function instead of OpenProcess/NtOpenProcess.
        // Reference: https://github.com/RePRGM/Nimperiments/tree/main/EvilLsassTwin
        $string23 = /EvilLsassTwin\.nim/ nocase ascii wide
        // Description: Dumping lsass
        // Reference: https://github.com/RePRGM/Nimperiments/tree/main/EvilLsassTwin
        $string24 = /EvilTwin\.bin/ nocase ascii wide
        // Description: Dumping lsass
        // Reference: https://github.com/RePRGM/Nimperiments/tree/main/EvilLsassTwin
        $string25 = /EvilTwin\.dmp/ nocase ascii wide
        // Description: Dumping lsass
        // Reference: https://github.com/RePRGM/Nimperiments/tree/main/EvilLsassTwin
        $string26 = /EvilTwin\.dmp/ nocase ascii wide
        // Description: attempt to duplicate open handles to LSASS. If this fails it will obtain a handle to LSASS through the NtGetNextProcess function instead of OpenProcess/NtOpenProcess.
        // Reference: https://github.com/RePRGM/Nimperiments/tree/main/EvilLsassTwin
        $string27 = /EvilTwin\.dmp/ nocase ascii wide
        // Description: Dumping lsass
        // Reference: https://github.com/RePRGM/Nimperiments/tree/main/EvilLsassTwin
        $string28 = /EvilTwinServer\.nim/ nocase ascii wide
        // Description: attempt to duplicate open handles to LSASS. If this fails it will obtain a handle to LSASS through the NtGetNextProcess function instead of OpenProcess/NtOpenProcess.
        // Reference: https://github.com/RePRGM/Nimperiments/tree/main/EvilLsassTwin
        $string29 = /EvilTwinServer\.nim/ nocase ascii wide
        // Description: Dumping lsass
        // Reference: https://github.com/RePRGM/Nimperiments/tree/main/EvilLsassTwin
        $string30 = "f6e16eee3494ad168fa124552fba957ba8ddf8e7d96eedeef33f9e2afe1e9257" nocase ascii wide
        // Description: Dumping lsass
        // Reference: https://github.com/RePRGM/Nimperiments/tree/main/EvilLsassTwin
        $string31 = /from\shttps\:\/\/github\.com\/S3cur3Th1sSh1t\/Nim_Dinvoke/ nocase ascii wide
        // Description: Dumping lsass
        // Reference: https://github.com/RePRGM/Nimperiments/tree/main/EvilLsassTwin
        $string32 = /from\shttps\:\/\/www\.stevencampbell\.info\/Nim\-Convert\-Shellcode\-to\-UUID/ nocase ascii wide
        // Description: Dumping lsass
        // Reference: https://github.com/RePRGM/Nimperiments/tree/main/EvilLsassTwin
        $string33 = /http\:\/\/0hRIb4t1fWNPYBVA\.net\/index\.php/ nocase ascii wide
        // Description: attempt to duplicate open handles to LSASS. If this fails it will obtain a handle to LSASS through the NtGetNextProcess function instead of OpenProcess/NtOpenProcess.
        // Reference: https://github.com/RePRGM/Nimperiments/tree/main/EvilLsassTwin
        $string34 = "Lsass Dump File Created" nocase ascii wide
        // Description: Dumping lsass
        // Reference: https://github.com/RePRGM/Nimperiments/tree/main/EvilLsassTwin
        $string35 = /msfcallback\.bin/ nocase ascii wide
        // Description: Dumping lsass
        // Reference: https://github.com/RePRGM/Nimperiments/tree/main/EvilLsassTwin
        $string36 = /rastamouse\.me\/dumping\-lsass\-with\-duplicated\-handles/ nocase ascii wide
        // Description: Dumping lsass
        // Reference: https://github.com/RePRGM/Nimperiments/tree/main/EvilLsassTwin
        $string37 = "RePRGM/Nimperiments" nocase ascii wide
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