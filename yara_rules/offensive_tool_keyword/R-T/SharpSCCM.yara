rule SharpSCCM
{
    meta:
        description = "Detection patterns for the tool 'SharpSCCM' taken from the ThreatHunting-Keywords github project"
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "SharpSCCM"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: SharpSCCM is a post-exploitation tool designed to leverage Microsoft Endpoint Configuration Manager (a.k.a. ConfigMgr. formerly SCCM) for Lateral Movement and credential gathering without requiring access to the SCCM administration console GUI
        // Reference: https://github.com/Mayyhem/SharpSCCM/
        $string1 = " get class-instances SMS_R_System " nocase ascii wide
        // Description: SharpSCCM is a post-exploitation tool designed to leverage Microsoft Endpoint Configuration Manager (a.k.a. ConfigMgr. formerly SCCM) for Lateral Movement and credential gathering without requiring access to the SCCM administration console GUI
        // Reference: https://github.com/Mayyhem/SharpSCCM/
        $string2 = " get class-properties SMS_Admin" nocase ascii wide
        // Description: SharpSCCM is a post-exploitation tool designed to leverage Microsoft Endpoint Configuration Manager (a.k.a. ConfigMgr. formerly SCCM) for Lateral Movement and credential gathering without requiring access to the SCCM administration console GUI
        // Reference: https://github.com/Mayyhem/SharpSCCM/
        $string3 = " get collection-members -n USERS" nocase ascii wide
        // Description: SharpSCCM is a post-exploitation tool designed to leverage Microsoft Endpoint Configuration Manager (a.k.a. ConfigMgr. formerly SCCM) for Lateral Movement and credential gathering without requiring access to the SCCM administration console GUI
        // Reference: https://github.com/Mayyhem/SharpSCCM/
        $string4 = " get primary-users -u " nocase ascii wide
        // Description: SharpSCCM is a post-exploitation tool designed to leverage Microsoft Endpoint Configuration Manager (a.k.a. ConfigMgr. formerly SCCM) for Lateral Movement and credential gathering without requiring access to the SCCM administration console GUI
        // Reference: https://github.com/Mayyhem/SharpSCCM/
        $string5 = " get site-push-settings" nocase ascii wide
        // Description: SharpSCCM is a post-exploitation tool designed to leverage Microsoft Endpoint Configuration Manager (a.k.a. ConfigMgr. formerly SCCM) for Lateral Movement and credential gathering without requiring access to the SCCM administration console GUI
        // Reference: https://github.com/Mayyhem/SharpSCCM/
        $string6 = " invoke admin-service -q " nocase ascii wide
        // Description: SharpSCCM is a post-exploitation tool designed to leverage Microsoft Endpoint Configuration Manager (a.k.a. ConfigMgr. formerly SCCM) for Lateral Movement and credential gathering without requiring access to the SCCM administration console GUI
        // Reference: https://github.com/Mayyhem/SharpSCCM/
        $string7 = " invoke admin-service -q " nocase ascii wide
        // Description: SharpSCCM is a post-exploitation tool designed to leverage Microsoft Endpoint Configuration Manager (a.k.a. ConfigMgr. formerly SCCM) for Lateral Movement and credential gathering without requiring access to the SCCM administration console GUI
        // Reference: https://github.com/Mayyhem/SharpSCCM/
        $string8 = /\sinvoke\squery\s.{0,1000}FROM\sSMS_Admin/ nocase ascii wide
        // Description: SharpSCCM is a post-exploitation tool designed to leverage Microsoft Endpoint Configuration Manager (a.k.a. ConfigMgr. formerly SCCM) for Lateral Movement and credential gathering without requiring access to the SCCM administration console GUI
        // Reference: https://github.com/Mayyhem/SharpSCCM/
        $string9 = " local class-instances SMS_Authority" nocase ascii wide
        // Description: SharpSCCM is a post-exploitation tool designed to leverage Microsoft Endpoint Configuration Manager (a.k.a. ConfigMgr. formerly SCCM) for Lateral Movement and credential gathering without requiring access to the SCCM administration console GUI
        // Reference: https://github.com/Mayyhem/SharpSCCM/
        $string10 = " local class-properties SMS_Authority" nocase ascii wide
        // Description: SharpSCCM is a post-exploitation tool designed to leverage Microsoft Endpoint Configuration Manager (a.k.a. ConfigMgr. formerly SCCM) for Lateral Movement and credential gathering without requiring access to the SCCM administration console GUI
        // Reference: https://github.com/Mayyhem/SharpSCCM/
        $string11 = /\slocal\sgrep\s.{0,1000}ccmsetup\sstarted\s.{0,1000}ccmsetup\.log/ nocase ascii wide
        // Description: SharpSCCM is a post-exploitation tool designed to leverage Microsoft Endpoint Configuration Manager (a.k.a. ConfigMgr. formerly SCCM) for Lateral Movement and credential gathering without requiring access to the SCCM administration console GUI
        // Reference: https://github.com/Mayyhem/SharpSCCM/
        $string12 = /\slocal\squery\s.{0,1000}\sFROM\sSMS_Authority/ nocase ascii wide
        // Description: SharpSCCM is a post-exploitation tool designed to leverage Microsoft Endpoint Configuration Manager (a.k.a. ConfigMgr. formerly SCCM) for Lateral Movement and credential gathering without requiring access to the SCCM administration console GUI
        // Reference: https://github.com/Mayyhem/SharpSCCM/
        $string13 = " local secrets -m disk" nocase ascii wide
        // Description: SharpSCCM is a post-exploitation tool designed to leverage Microsoft Endpoint Configuration Manager (a.k.a. ConfigMgr. formerly SCCM) for Lateral Movement and credential gathering without requiring access to the SCCM administration console GUI
        // Reference: https://github.com/Mayyhem/SharpSCCM/
        $string14 = " local secrets -m wmi" nocase ascii wide
        // Description: SharpSCCM is a post-exploitation tool designed to leverage Microsoft Endpoint Configuration Manager (a.k.a. ConfigMgr. formerly SCCM) for Lateral Movement and credential gathering without requiring access to the SCCM administration console GUI
        // Reference: https://github.com/Mayyhem/SharpSCCM/
        $string15 = " -p LastLogonTimestamp -p LastLogonUserName " nocase ascii wide
        // Description: SharpSCCM is a post-exploitation tool designed to leverage Microsoft Endpoint Configuration Manager (a.k.a. ConfigMgr. formerly SCCM) for Lateral Movement and credential gathering without requiring access to the SCCM administration console GUI
        // Reference: https://github.com/Mayyhem/SharpSCCM/
        $string16 = " remove device GUID:001B2EE1-AE95-4146-AE7B-5928F1E4F396" nocase ascii wide
        // Description: executables for penetration testing Windows Active Directory environments
        // Reference: https://github.com/jakobfriedl/precompiled-binaries
        $string17 = " to retrieve secrets from machines that were previously SCCM clients" nocase ascii wide
        // Description: executables for penetration testing Windows Active Directory environments
        // Reference: https://github.com/jakobfriedl/precompiled-binaries
        $string18 = /\/SharpSCCM\.exe/ nocase ascii wide
        // Description: SharpSCCM is a post-exploitation tool designed to leverage Microsoft Endpoint Configuration Manager (a.k.a. ConfigMgr. formerly SCCM) for Lateral Movement and credential gathering without requiring access to the SCCM administration console GUI
        // Reference: https://github.com/Mayyhem/SharpSCCM/
        $string19 = /\/SharpSCCM\.git/ nocase ascii wide
        // Description: SharpSCCM is a post-exploitation tool designed to leverage Microsoft Endpoint Configuration Manager (a.k.a. ConfigMgr. formerly SCCM) for Lateral Movement and credential gathering without requiring access to the SCCM administration console GUI
        // Reference: https://github.com/Mayyhem/SharpSCCM/
        $string20 = "/SharpSCCM/releases/download/" nocase ascii wide
        // Description: executables for penetration testing Windows Active Directory environments
        // Reference: https://github.com/jakobfriedl/precompiled-binaries
        $string21 = /\[\!\]\sSharpSCCM\smust\sbe\srun\swith\slocal\sadministrator\sprivileges\sto\sretrieve\spolicy\ssecret\sblobs/ nocase ascii wide
        // Description: executables for penetration testing Windows Active Directory environments
        // Reference: https://github.com/jakobfriedl/precompiled-binaries
        $string22 = /\\SharpSCCM\.exe/ nocase ascii wide
        // Description: SharpSCCM is a post-exploitation tool designed to leverage Microsoft Endpoint Configuration Manager (a.k.a. ConfigMgr. formerly SCCM) for Lateral Movement and credential gathering without requiring access to the SCCM administration console GUI
        // Reference: https://github.com/Mayyhem/SharpSCCM/
        $string23 = /\\SharpSCCM\-main/ nocase ascii wide
        // Description: executables for penetration testing Windows Active Directory environments
        // Reference: https://github.com/jakobfriedl/precompiled-binaries
        $string24 = ">SharpSCCM<" nocase ascii wide
        // Description: SharpSCCM is a post-exploitation tool designed to leverage Microsoft Endpoint Configuration Manager (a.k.a. ConfigMgr. formerly SCCM) for Lateral Movement and credential gathering without requiring access to the SCCM administration console GUI
        // Reference: https://github.com/Mayyhem/SharpSCCM/
        $string25 = "03652836-898E-4A9F-B781-B7D86E750F60" nocase ascii wide
        // Description: SharpSCCM is a post-exploitation tool designed to leverage Microsoft Endpoint Configuration Manager (a.k.a. ConfigMgr. formerly SCCM) for Lateral Movement and credential gathering without requiring access to the SCCM administration console GUI
        // Reference: https://github.com/Mayyhem/SharpSCCM/
        $string26 = "2170a03a337a89bb3b6a02035ae85946815f8643897ded40fc0a2c29e2e5a960" nocase ascii wide
        // Description: SharpSCCM is a post-exploitation tool designed to leverage Microsoft Endpoint Configuration Manager (a.k.a. ConfigMgr. formerly SCCM) for Lateral Movement and credential gathering without requiring access to the SCCM administration console GUI
        // Reference: https://github.com/Mayyhem/SharpSCCM/
        $string27 = "3b765fc9d51180b7ff8c93aa1ab9369fdff33f5ec4ebc4c2e913f8355ca12903" nocase ascii wide
        // Description: SharpSCCM is a post-exploitation tool designed to leverage Microsoft Endpoint Configuration Manager (a.k.a. ConfigMgr. formerly SCCM) for Lateral Movement and credential gathering without requiring access to the SCCM administration console GUI
        // Reference: https://github.com/Mayyhem/SharpSCCM/
        $string28 = "54fe99f13b593d3acfc583e17d0bfd2e315d0ee20e737610bede18eb173ae864" nocase ascii wide
        // Description: executables for penetration testing Windows Active Directory environments
        // Reference: https://github.com/jakobfriedl/precompiled-binaries
        $string29 = /A\sC\#\sutility\sfor\sinteracting\swith\sSCCM\s\(now\sMicrosoft\sEndpoint\sConfiguration\sManager\)\sby\sChris\sThompson\s\(\@_Mayyhem\)/ nocase ascii wide
        // Description: SharpSCCM is a post-exploitation tool designed to leverage Microsoft Endpoint Configuration Manager (a.k.a. ConfigMgr. formerly SCCM) for Lateral Movement and credential gathering without requiring access to the SCCM administration console GUI
        // Reference: https://github.com/Mayyhem/SharpSCCM/
        $string30 = "E4D9EF39-0FCE-4573-978B-ABF8DF6AEC23" nocase ascii wide
        // Description: SharpSCCM is a post-exploitation tool designed to leverage Microsoft Endpoint Configuration Manager (a.k.a. ConfigMgr. formerly SCCM) for Lateral Movement and credential gathering without requiring access to the SCCM administration console GUI
        // Reference: https://github.com/Mayyhem/SharpSCCM/
        $string31 = "f945696926267701f5b3327ecb4af54169fd24f780db0f4caecf1fe447848007" nocase ascii wide
        // Description: SharpSCCM is a post-exploitation tool designed to leverage Microsoft Endpoint Configuration Manager (a.k.a. ConfigMgr. formerly SCCM) for Lateral Movement and credential gathering without requiring access to the SCCM administration console GUI
        // Reference: https://github.com/Mayyhem/SharpSCCM/
        $string32 = "Mayyhem/SharpSCCM" nocase ascii wide
        // Description: SharpSCCM is a post-exploitation tool designed to leverage Microsoft Endpoint Configuration Manager (a.k.a. ConfigMgr. formerly SCCM) for Lateral Movement and credential gathering without requiring access to the SCCM administration console GUI
        // Reference: https://github.com/Mayyhem/SharpSCCM/
        $string33 = "SharpSCCM" nocase ascii wide
        // Description: SharpSCCM is a post-exploitation tool designed to leverage Microsoft Endpoint Configuration Manager (a.k.a. ConfigMgr. formerly SCCM) for Lateral Movement and credential gathering without requiring access to the SCCM administration console GUI
        // Reference: https://github.com/Mayyhem/SharpSCCM/
        $string34 = /SharpSCCM\.csproj/ nocase ascii wide
        // Description: SharpSCCM is a post-exploitation tool designed to leverage Microsoft Endpoint Configuration Manager (a.k.a. ConfigMgr. formerly SCCM) for Lateral Movement and credential gathering without requiring access to the SCCM administration console GUI
        // Reference: https://github.com/Mayyhem/SharpSCCM/
        $string35 = /SharpSCCM\.exe/ nocase ascii wide
        // Description: SharpSCCM is a post-exploitation tool designed to leverage Microsoft Endpoint Configuration Manager (a.k.a. ConfigMgr. formerly SCCM) for Lateral Movement and credential gathering without requiring access to the SCCM administration console GUI
        // Reference: https://github.com/Mayyhem/SharpSCCM/
        $string36 = /SharpSCCM_merged\.exe/ nocase ascii wide

    condition:
        any of them
}
