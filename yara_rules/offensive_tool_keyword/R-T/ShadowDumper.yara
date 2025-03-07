rule ShadowDumper
{
    meta:
        description = "Detection patterns for the tool 'ShadowDumper' taken from the ThreatHunting-Keywords github project"
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "ShadowDumper"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: dump LSASS memory
        // Reference: https://github.com/Offensive-Panda/ShadowDumper
        $string1 = /\(SHADOW\sDUMPER\sv1\.0\)/ nocase ascii wide
        // Description: dump LSASS memory
        // Reference: https://github.com/Offensive-Panda/ShadowDumper
        $string2 = "/download/LsassDumping/" nocase ascii wide
        // Description: dump LSASS memory
        // Reference: https://github.com/Offensive-Panda/ShadowDumper
        $string3 = /\/ShadowDumper\.git/ nocase ascii wide
        // Description: dump LSASS memory
        // Reference: https://github.com/Offensive-Panda/ShadowDumper
        $string4 = "/ShadowDumper/releases/download/" nocase ascii wide
        // Description: dump LSASS memory
        // Reference: https://github.com/Offensive-Panda/ShadowDumper
        $string5 = /\\\\Public\\\\panda\.raw/ nocase ascii wide
        // Description: dump LSASS memory
        // Reference: https://github.com/Offensive-Panda/ShadowDumper
        $string6 = /\\\\Public\\\\simpleMDWD\.raw/ nocase ascii wide
        // Description: dump LSASS memory
        // Reference: https://github.com/Offensive-Panda/ShadowDumper
        $string7 = /\\\\Public\\\\sysMDWD\.file/ nocase ascii wide
        // Description: dump LSASS memory
        // Reference: https://github.com/Offensive-Panda/ShadowDumper
        $string8 = /\\Public\\panda\.raw/ nocase ascii wide
        // Description: dump LSASS memory
        // Reference: https://github.com/Offensive-Panda/ShadowDumper
        $string9 = /\\Public\\simpleMDWD\.raw/ nocase ascii wide
        // Description: dump LSASS memory
        // Reference: https://github.com/Offensive-Panda/ShadowDumper
        $string10 = /\\Public\\sysMDWD\.file/ nocase ascii wide
        // Description: dump LSASS memory
        // Reference: https://github.com/Offensive-Panda/ShadowDumper
        $string11 = /\\ShadowDumper\./ nocase ascii wide
        // Description: dump LSASS memory
        // Reference: https://github.com/Offensive-Panda/ShadowDumper
        $string12 = "34a3dda90725d2179dbb2bbead3e076cf7f2f6f5d7f93ec81c371f7640b034c4" nocase ascii wide
        // Description: dump LSASS memory
        // Reference: https://github.com/Offensive-Panda/ShadowDumper
        $string13 = "46D3E566-0EBA-4BD9-925E-84F4CB9EE7BC" nocase ascii wide
        // Description: dump LSASS memory
        // Reference: https://github.com/Offensive-Panda/ShadowDumper
        $string14 = "96920d601c95d13be934e071544eda074e9b36329e0b53735214519434aa41a0" nocase ascii wide
        // Description: dump LSASS memory
        // Reference: https://github.com/Offensive-Panda/ShadowDumper
        $string15 = /All\sDump\sfiles\swill\sbe\sstored\sin\sC\:\\\\Users\\\\Public/ nocase ascii wide
        // Description: dump LSASS memory
        // Reference: https://github.com/Offensive-Panda/ShadowDumper
        $string16 = /C\:\\\\Users\\\\DARKN3T\\\\Downloads/ nocase ascii wide
        // Description: dump LSASS memory
        // Reference: https://github.com/Offensive-Panda/ShadowDumper
        $string17 = /C\:\\\\Users\\\\Public\\\\callback\.el/ nocase ascii wide
        // Description: dump LSASS memory
        // Reference: https://github.com/Offensive-Panda/ShadowDumper
        $string18 = /Created\sby\sUsman\sSikander\s\(a\.k\.a\soffensive\-panda\)/ nocase ascii wide
        // Description: dump LSASS memory
        // Reference: https://github.com/Offensive-Panda/ShadowDumper
        $string19 = /Dump\slsass\.exe\susing\sMiniDumpWriteDump/ nocase ascii wide
        // Description: dump LSASS memory
        // Reference: https://github.com/Offensive-Panda/ShadowDumper
        $string20 = "Failed to create a dump of the forked process" nocase ascii wide
        // Description: dump LSASS memory
        // Reference: https://github.com/Offensive-Panda/ShadowDumper
        $string21 = "Failed to dump lsass" nocase ascii wide
        // Description: dump LSASS memory
        // Reference: https://github.com/Offensive-Panda/ShadowDumper
        $string22 = /Happy\sHacking.{0,1000}Enjoy\sDump\!/ nocase ascii wide
        // Description: dump LSASS memory
        // Reference: https://github.com/Offensive-Panda/ShadowDumper
        $string23 = /MiniDumpWriteDump\(hLsass/ nocase ascii wide
        // Description: dump LSASS memory
        // Reference: https://github.com/Offensive-Panda/ShadowDumper
        $string24 = /MiniDumpWriteDump\(lsass/ nocase ascii wide
        // Description: dump LSASS memory
        // Reference: https://github.com/Offensive-Panda/ShadowDumper
        $string25 = "Offensive-Panda/ShadowDumper/" nocase ascii wide
        // Description: dump LSASS memory
        // Reference: https://github.com/Offensive-Panda/ShadowDumper
        $string26 = /ShadowDumper\.exe/ nocase ascii wide
        // Description: dump LSASS memory
        // Reference: https://github.com/Offensive-Panda/ShadowDumper
        $string27 = "To dump lsass memory using " nocase ascii wide
        // Description: dump LSASS memory
        // Reference: https://github.com/Offensive-Panda/ShadowDumper
        $string28 = /Users\\\\Public\\\\panda\.sense/ nocase ascii wide
        // Description: dump LSASS memory
        // Reference: https://github.com/Offensive-Panda/ShadowDumper
        $string29 = /Users\\Public\\callback\.el/ nocase ascii wide
        // Description: dump LSASS memory
        // Reference: https://github.com/Offensive-Panda/ShadowDumper
        $string30 = /Users\\Public\\panda\.sense/ nocase ascii wide
        // Description: dump LSASS memory
        // Reference: https://github.com/Offensive-Panda/ShadowDumper
        $string31 = "WELCOME TO MULTI-METHOD LSASS DUMPING TOOL" nocase ascii wide

    condition:
        any of them
}
