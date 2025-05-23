rule BobTheSmuggler
{
    meta:
        description = "Detection patterns for the tool 'BobTheSmuggler' taken from the ThreatHunting-Keywords github project"
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "BobTheSmuggler"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: HTML SMUGGLING TOOL 6 allows you to create HTML files with embedded 7z/zip archives. The tool would compress your binary (EXE/DLL) into 7z/zip file format then XOR encrypt the archive and then hides inside PNG/GIF image file format (Image Polyglots)
        // Reference: https://github.com/TheCyb3rAlpha/BobTheSmuggler
        $string1 = /\sSharpHound\.html/ nocase ascii wide
        // Description: HTML SMUGGLING TOOL 6 allows you to create HTML files with embedded 7z/zip archives. The tool would compress your binary (EXE/DLL) into 7z/zip file format then XOR encrypt the archive and then hides inside PNG/GIF image file format (Image Polyglots)
        // Reference: https://github.com/TheCyb3rAlpha/BobTheSmuggler
        $string2 = /\/BobTheSmuggler\.git/ nocase ascii wide
        // Description: HTML SMUGGLING TOOL 6 allows you to create HTML files with embedded 7z/zip archives. The tool would compress your binary (EXE/DLL) into 7z/zip file format then XOR encrypt the archive and then hides inside PNG/GIF image file format (Image Polyglots)
        // Reference: https://github.com/TheCyb3rAlpha/BobTheSmuggler
        $string3 = /\\SharpHound\.html/ nocase ascii wide
        // Description: HTML SMUGGLING TOOL 6 allows you to create HTML files with embedded 7z/zip archives. The tool would compress your binary (EXE/DLL) into 7z/zip file format then XOR encrypt the archive and then hides inside PNG/GIF image file format (Image Polyglots)
        // Reference: https://github.com/TheCyb3rAlpha/BobTheSmuggler
        $string4 = /BobTheSmuggler\.py/ nocase ascii wide
        // Description: HTML SMUGGLING TOOL 6 allows you to create HTML files with embedded 7z/zip archives. The tool would compress your binary (EXE/DLL) into 7z/zip file format then XOR encrypt the archive and then hides inside PNG/GIF image file format (Image Polyglots)
        // Reference: https://github.com/TheCyb3rAlpha/BobTheSmuggler
        $string5 = "BobTheSmuggler-main" nocase ascii wide
        // Description: HTML SMUGGLING TOOL 6 allows you to create HTML files with embedded 7z/zip archives. The tool would compress your binary (EXE/DLL) into 7z/zip file format then XOR encrypt the archive and then hides inside PNG/GIF image file format (Image Polyglots)
        // Reference: https://github.com/TheCyb3rAlpha/BobTheSmuggler
        $string6 = "Getting the Obfuscated JS Code" nocase ascii wide
        // Description: HTML SMUGGLING TOOL 6 allows you to create HTML files with embedded 7z/zip archives. The tool would compress your binary (EXE/DLL) into 7z/zip file format then XOR encrypt the archive and then hides inside PNG/GIF image file format (Image Polyglots)
        // Reference: https://github.com/TheCyb3rAlpha/BobTheSmuggler
        $string7 = "Successfully embedded EXE into GIF" nocase ascii wide
        // Description: HTML SMUGGLING TOOL 6 allows you to create HTML files with embedded 7z/zip archives. The tool would compress your binary (EXE/DLL) into 7z/zip file format then XOR encrypt the archive and then hides inside PNG/GIF image file format (Image Polyglots)
        // Reference: https://github.com/TheCyb3rAlpha/BobTheSmuggler
        $string8 = "Successfully embedded EXE into PNG" nocase ascii wide
        // Description: HTML SMUGGLING TOOL 6 allows you to create HTML files with embedded 7z/zip archives. The tool would compress your binary (EXE/DLL) into 7z/zip file format then XOR encrypt the archive and then hides inside PNG/GIF image file format (Image Polyglots)
        // Reference: https://github.com/TheCyb3rAlpha/BobTheSmuggler
        $string9 = "TheCyb3rAlpha/BobTheSmuggler" nocase ascii wide
        // Description: HTML SMUGGLING TOOL 6 allows you to create HTML files with embedded 7z/zip archives. The tool would compress your binary (EXE/DLL) into 7z/zip file format then XOR encrypt the archive and then hides inside PNG/GIF image file format (Image Polyglots)
        // Reference: https://github.com/TheCyb3rAlpha/BobTheSmuggler
        $string10 = "URL must be provided for GIF embedding!" nocase ascii wide
        // Description: HTML SMUGGLING TOOL 6 allows you to create HTML files with embedded 7z/zip archives. The tool would compress your binary (EXE/DLL) into 7z/zip file format then XOR encrypt the archive and then hides inside PNG/GIF image file format (Image Polyglots)
        // Reference: https://github.com/TheCyb3rAlpha/BobTheSmuggler
        $string11 = "URL must be provided for PNG embedding!" nocase ascii wide

    condition:
        any of them
}
