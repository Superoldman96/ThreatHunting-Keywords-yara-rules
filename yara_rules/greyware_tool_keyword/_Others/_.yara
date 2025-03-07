rule _
{
    meta:
        description = "Detection patterns for the tool '_' taken from the ThreatHunting-Keywords github project"
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "_"
        rule_category = "greyware_tool_keyword"

    strings:
        // Description: reversed string for obfuscation
        // Reference: N/A
        $string1 = " ecivreS-potS" nocase ascii wide
        // Description: reversed string for obfuscation
        // Reference: N/A
        $string2 = " gifnoc cs" nocase ascii wide
        // Description: reversed string for obfuscation
        // Reference: N/A
        $string3 = " noitcetorPAUP" nocase ascii wide
        // Description: reversed string for obfuscation
        // Reference: N/A
        $string4 = "%tooRmetsyS%" nocase ascii wide
        // Description: attempt to bypass security controls or execute commands from an unexpected location
        // Reference: https://twitter.com/malwrhunterteam/status/1737220172220620854/photo/1
        $string5 = /\.\.\\\.\.\\\.\.\\\.\.\\\.\.\\\.\.\\Windows\\System32\\cmd\.exe/ nocase ascii wide
        // Description: generic suspicious keyword keygen.exe observed in multiple cracked software often packed with malwares
        // Reference: N/A
        $string6 = /\/keygen\.exe/ nocase ascii wide
        // Description: suspicious file name - has been used by threat actors
        // Reference: N/A
        $string7 = /\/PAYMENTS\.exe/ nocase ascii wide
        // Description: Suspicious file names - One caracter executables often used by threat actors (warning false positives)
        // Reference: N/A
        $string8 = /\\1\.bat/ nocase ascii wide
        // Description: Suspicious file names - One caracter executables often used by threat actors (warning false positives)
        // Reference: N/A
        $string9 = /\\1\.dll/ nocase ascii wide
        // Description: Suspicious file names - One caracter executables often used by threat actors (warning false positives)
        // Reference: N/A
        $string10 = /\\1\.exe/ nocase ascii wide
        // Description: Suspicious file names - One caracter executables often used by threat actors (warning false positives)
        // Reference: N/A
        $string11 = /\\2\.bat/ nocase ascii wide
        // Description: Suspicious file names - One caracter executables often used by threat actors (warning false positives)
        // Reference: N/A
        $string12 = /\\2\.dll/ nocase ascii wide
        // Description: Suspicious file names - One caracter executables often used by threat actors (warning false positives)
        // Reference: N/A
        $string13 = /\\2\.exe/ nocase ascii wide
        // Description: Suspicious file names - One caracter executables often used by threat actors (warning false positives)
        // Reference: N/A
        $string14 = /\\3\.bat/ nocase ascii wide
        // Description: Suspicious file names - One caracter executables often used by threat actors (warning false positives)
        // Reference: N/A
        $string15 = /\\3\.dll/ nocase ascii wide
        // Description: Suspicious file names - One caracter executables often used by threat actors (warning false positives)
        // Reference: N/A
        $string16 = /\\3\.exe/ nocase ascii wide
        // Description: Suspicious file names - One caracter executables often used by threat actors (warning false positives)
        // Reference: N/A
        $string17 = /\\4\.bat/ nocase ascii wide
        // Description: Suspicious file names - One caracter executables often used by threat actors (warning false positives)
        // Reference: N/A
        $string18 = /\\4\.dll/ nocase ascii wide
        // Description: Suspicious file names - One caracter executables often used by threat actors (warning false positives)
        // Reference: N/A
        $string19 = /\\4\.exe/ nocase ascii wide
        // Description: Suspicious file names - One caracter executables often used by threat actors (warning false positives)
        // Reference: N/A
        $string20 = /\\5\.bat/ nocase ascii wide
        // Description: Suspicious file names - One caracter executables often used by threat actors (warning false positives)
        // Reference: N/A
        $string21 = /\\5\.dll/ nocase ascii wide
        // Description: Suspicious file names - One caracter executables often used by threat actors (warning false positives)
        // Reference: N/A
        $string22 = /\\5\.exe/ nocase ascii wide
        // Description: Suspicious file names - One caracter executables often used by threat actors (warning false positives)
        // Reference: N/A
        $string23 = /\\6\.bat/ nocase ascii wide
        // Description: Suspicious file names - One caracter executables often used by threat actors (warning false positives)
        // Reference: N/A
        $string24 = /\\6\.dll/ nocase ascii wide
        // Description: Suspicious file names - One caracter executables often used by threat actors (warning false positives)
        // Reference: N/A
        $string25 = /\\6\.exe/ nocase ascii wide
        // Description: Suspicious file names - One caracter executables often used by threat actors (warning false positives)
        // Reference: N/A
        $string26 = /\\7\.bat/ nocase ascii wide
        // Description: Suspicious file names - One caracter executables often used by threat actors (warning false positives)
        // Reference: N/A
        $string27 = /\\7\.dll/ nocase ascii wide
        // Description: Suspicious file names - One caracter executables often used by threat actors (warning false positives)
        // Reference: N/A
        $string28 = /\\7\.exe/ nocase ascii wide
        // Description: Suspicious file names - One caracter executables often used by threat actors (warning false positives)
        // Reference: N/A
        $string29 = /\\8\.bat/ nocase ascii wide
        // Description: Suspicious file names - One caracter executables often used by threat actors (warning false positives)
        // Reference: N/A
        $string30 = /\\8\.dll/ nocase ascii wide
        // Description: Suspicious file names - One caracter executables often used by threat actors (warning false positives)
        // Reference: N/A
        $string31 = /\\8\.exe/ nocase ascii wide
        // Description: Suspicious file names - One caracter executables often used by threat actors (warning false positives)
        // Reference: N/A
        $string32 = /\\9\.bat/ nocase ascii wide
        // Description: Suspicious file names - One caracter executables often used by threat actors (warning false positives)
        // Reference: N/A
        $string33 = /\\9\.dll/ nocase ascii wide
        // Description: Suspicious file names - One caracter executables often used by threat actors (warning false positives)
        // Reference: N/A
        $string34 = /\\9\.exe/ nocase ascii wide
        // Description: script in startup location
        // Reference: N/A
        $string35 = /\\AppData\\Roaming\\Microsoft\\Windows\\Start\sMenu\\Programs\\Startup\\.{0,1000}\.bat/ nocase ascii wide
        // Description: script in startup location
        // Reference: N/A
        $string36 = /\\AppData\\Roaming\\Microsoft\\Windows\\Start\sMenu\\Programs\\Startup\\.{0,1000}\.cmd/ nocase ascii wide
        // Description: script in startup location
        // Reference: N/A
        $string37 = /\\AppData\\Roaming\\Microsoft\\Windows\\Start\sMenu\\Programs\\Startup\\.{0,1000}\.hta/ nocase ascii wide
        // Description: script in startup location
        // Reference: N/A
        $string38 = /\\AppData\\Roaming\\Microsoft\\Windows\\Start\sMenu\\Programs\\Startup\\.{0,1000}\.ps1/ nocase ascii wide
        // Description: script in startup location
        // Reference: N/A
        $string39 = /\\AppData\\Roaming\\Microsoft\\Windows\\Start\sMenu\\Programs\\Startup\\.{0,1000}\.vbs/ nocase ascii wide
        // Description: generic suspicious keyword keygen.exe observed in multiple cracked software often packed with malwares
        // Reference: N/A
        $string40 = /\\keygen\.exe/ nocase ascii wide
        // Description: suspicious file name - has been used by threat actors
        // Reference: N/A
        $string41 = /\\PAYMENT\.hta/ nocase ascii wide
        // Description: suspicious file name - has been used by threat actors
        // Reference: N/A
        $string42 = /\\PAYMENT\.hta/ nocase ascii wide
        // Description: suspicious file name - has been used by threat actors
        // Reference: N/A
        $string43 = /\\PAYMENTS\.exe/ nocase ascii wide
        // Description: reversed string cmd.exe /c obfuscation
        // Reference: N/A
        $string44 = /c\/\sexe\.dmc/ nocase ascii wide
        // Description: file path containing mixed Unicode-escaped and ASCII characters to evade detection
        // Reference: https://cloud.google.com/blog/topics/threat-intelligence/melting-unc2198-icedid-to-ransomware-operations
        $string45 = /c\:\\.{0,1000}\\\\u0.{0,1000}\\\\u0.{0,1000}\\\\u0.{0,1000}\\\\u0/ nocase ascii wide
        // Description: reversed string for obfuscation
        // Reference: N/A
        $string46 = "delbasiD epyTputratS- " nocase ascii wide
        // Description: reversed string for obfuscation
        // Reference: N/A
        $string47 = "ecnereferPpM-teS" nocase ascii wide
        // Description: reversed string for obfuscation
        // Reference: N/A
        $string48 = "eliforPllaweriFteN-teS" nocase ascii wide
        // Description: reversed string rundll32.exe obfuscation
        // Reference: N/A
        $string49 = /exe\.23lldnur/ nocase ascii wide
        // Description: reversed string for obfuscation
        // Reference: N/A
        $string50 = /exe\.erolpxei/ nocase ascii wide
        // Description: reversed string for obfuscation
        // Reference: N/A
        $string51 = /exe\.rerolpxe/ nocase ascii wide
        // Description: reversed string for obfuscation
        // Reference: N/A
        $string52 = /exe\.ssasl/ nocase ascii wide
        // Description: reversed string for obfuscation
        // Reference: N/A
        $string53 = /exe\.tsohcvs/ nocase ascii wide
        // Description: reversed string for obfuscation
        // Reference: N/A
        $string54 = "gnirotinoMemitlaeRelbasiD" nocase ascii wide
        // Description: allows users to create a unique URL to collect and inspect HTTP requests. It is commonly used for debugging webhooks - it can also be abused by attackers for verifying the reachability and effectiveness of their payloads
        // Reference: http://requestbin.net
        $string55 = /https\:\/\/requestbin\.net\/r\// nocase ascii wide
        // Description: reversed string for obfuscation
        // Reference: N/A
        $string56 = "llawerifvda hsten" nocase ascii wide
        // Description: reversed string for obfuscation
        // Reference: N/A
        $string57 = /niB\.elcyceR\$/ nocase ascii wide
        // Description: reversed string for obfuscation
        // Reference: N/A
        $string58 = "teSlortnoCtnerruC" nocase ascii wide
        // Description: Suspicious tlds with suspicious file types
        // Reference: N/A
        $string59 = /https\:\/\/.{0,1000}\.xyz\/.{0,1000}\.ps1/ nocase ascii wide

    condition:
        any of them
}
