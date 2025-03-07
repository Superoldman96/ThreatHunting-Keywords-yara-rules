rule Rust_Localtunnels
{
    meta:
        description = "Detection patterns for the tool 'Rust Localtunnels' taken from the ThreatHunting-Keywords github project"
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "Rust Localtunnels"
        rule_category = "greyware_tool_keyword"

    strings:
        // Description: Localtunnel implementation in Rust - exposes your localhost endpoint to the world
        // Reference: https://github.com/kaichaosun/rlt
        $string1 = /\/etc\/systemd\/system\/localtunnel\.service/
        // Description: Localtunnel implementation in Rust - exposes your localhost endpoint to the world
        // Reference: https://github.com/kaichaosun/rlt
        $string2 = /\/localtunnel\-linux\-.{0,1000}\.tar/
        // Description: Localtunnel implementation in Rust - exposes your localhost endpoint to the world
        // Reference: https://github.com/kaichaosun/rlt
        $string3 = "027e4741b0ffea0c4a7b7d89fe584de5655ac140bc60994df35e0d19565f0817" nocase ascii wide
        // Description: Localtunnel implementation in Rust - exposes your localhost endpoint to the world
        // Reference: https://github.com/kaichaosun/rlt
        $string4 = "083d05fd31ebe56b9a6808a1013858db66e784140ab82e0c9c410bb337a7a12d" nocase ascii wide
        // Description: Localtunnel implementation in Rust - exposes your localhost endpoint to the world
        // Reference: https://github.com/kaichaosun/rlt
        $string5 = "415737ed99f26da6de88354af631091e63510fe1ad26cf6572878a27f160e10d" nocase ascii wide
        // Description: Localtunnel implementation in Rust - exposes your localhost endpoint to the world
        // Reference: https://github.com/kaichaosun/rlt
        $string6 = "4688b505beadf010c8c571386ded7ff67a07fcbc261108b74b6d24b8372f609e" nocase ascii wide
        // Description: Localtunnel implementation in Rust - exposes your localhost endpoint to the world
        // Reference: https://github.com/kaichaosun/rlt
        $string7 = "52be14d6204dd665dc3ccf2eb50179111a28cc0d8d473c7eef3b218f94e36b6d" nocase ascii wide
        // Description: Localtunnel implementation in Rust - exposes your localhost endpoint to the world
        // Reference: https://github.com/kaichaosun/rlt
        $string8 = "643433c960c261ea697d35970cbeac38e8a66889cff754a613eeb790368e6f37" nocase ascii wide
        // Description: Localtunnel implementation in Rust - exposes your localhost endpoint to the world
        // Reference: https://github.com/kaichaosun/rlt
        $string9 = "6571057d649cfccb2d84577c32a83ad5d4f5fac298e72f08a6974cf4a620c7ec" nocase ascii wide
        // Description: Localtunnel implementation in Rust - exposes your localhost endpoint to the world
        // Reference: https://github.com/kaichaosun/rlt
        $string10 = "db5dd550a11b68ef48f084413db4cfe87f677cda58c7168f777abfcdc63d6479" nocase ascii wide
        // Description: Localtunnel implementation in Rust - exposes your localhost endpoint to the world
        // Reference: https://github.com/kaichaosun/rlt
        $string11 = "e9672eb5f7ced453ef15ebd7a395be9c56c7ce750453883c7bc9e39005035a94" nocase ascii wide
        // Description: Localtunnel implementation in Rust - exposes your localhost endpoint to the world
        // Reference: https://github.com/kaichaosun/rlt
        $string12 = "fd4b050e4400d57c5f222ce3647debb140ef6fd3176c576fbbe63f856926aa2e" nocase ascii wide
        // Description: Localtunnel implementation in Rust - exposes your localhost endpoint to the world
        // Reference: https://github.com/kaichaosun/rlt
        $string13 = /https\:\/\/crates\.io\/crates\/localtunnel\-client/ nocase ascii wide
        // Description: Localtunnel implementation in Rust - exposes your localhost endpoint to the world
        // Reference: https://github.com/kaichaosun/rlt
        $string14 = /https\:\/\/crates\.io\/crates\/localtunnel\-server/ nocase ascii wide
        // Description: Localtunnel implementation in Rust - exposes your localhost endpoint to the world
        // Reference: https://github.com/kaichaosun/rlt
        $string15 = "kaichaosun/rlt" nocase ascii wide
        // Description: Localtunnel implementation in Rust - exposes your localhost endpoint to the world
        // Reference: https://github.com/kaichaosun/rlt
        $string16 = "localtunnel client --host " nocase ascii wide
        // Description: Localtunnel implementation in Rust - exposes your localhost endpoint to the world
        // Reference: https://github.com/kaichaosun/rlt
        $string17 = "localtunnel server --domain " nocase ascii wide
        // Description: Localtunnel implementation in Rust - exposes your localhost endpoint to the world
        // Reference: https://github.com/kaichaosun/rlt
        $string18 = "Server running at http://localhost:" nocase ascii wide
        // Description: Localtunnel implementation in Rust - exposes your localhost endpoint to the world
        // Reference: https://github.com/kaichaosun/rlt
        $string19 = "use localtunnel_client::" nocase ascii wide
        // Description: Localtunnel implementation in Rust - exposes your localhost endpoint to the world
        // Reference: https://github.com/kaichaosun/rlt
        $string20 = "use localtunnel_server::" nocase ascii wide

    condition:
        any of them
}
