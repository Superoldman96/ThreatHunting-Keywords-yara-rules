rule BloodHound
{
    meta:
        description = "Detection patterns for the tool 'BloodHound' taken from the ThreatHunting-Keywords github project"
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "BloodHound"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string1 = /\sAzureHound\.ps1/ nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string2 = /\s\-CollectionMethod\sAll.{0,100}loggedon/ nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string3 = " -CollectionMethod LoggedOn -Verbose" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string4 = /\sInvoke\-DCOM\.ps1/ nocase ascii wide
        // Description: A Python based ingestor for BloodHound
        // Reference: https://github.com/fox-it/BloodHound.py
        $string5 = " -it bloodhound" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string6 = /\sSharpHound\.ps1/ nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string7 = /\/AzureHound\.ps1/ nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string8 = /\/BloodHound\.exe/ nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string9 = /\/BloodHound\.git/ nocase ascii wide
        // Description: A Python based ingestor for BloodHound
        // Reference: https://github.com/fox-it/BloodHound.py
        $string10 = "/bloodhound/enumeration" nocase ascii wide
        // Description: A Python based ingestor for BloodHound
        // Reference: https://github.com/fox-it/BloodHound.py
        $string11 = "/bloodhound-data" nocase ascii wide
        // Description: BloodHound is a single page Javascript web application. built on top of Linkurious. compiled with Electron. with a Neo4j database fed by a C# data collector. BloodHound uses graph theory to reveal the hidden and often unintended relationships within an Active Directory environment. Attackers can use BloodHound to easily identify highly complex attack paths that would otherwise be impossible to quickly identify. Defenders can use BloodHound to identify and eliminate those same attack paths. Both blue and red teams can use BloodHound to easily gain a deeper understanding of privilege relationships in an Active Directory environment
        // Reference: https://github.com/fox-it/BloodHound.py
        $string12 = /\/createforestcache\.py/ nocase ascii wide
        // Description: BloodHound is a single page Javascript web application. built on top of Linkurious. compiled with Electron. with a Neo4j database fed by a C# data collector. BloodHound uses graph theory to reveal the hidden and often unintended relationships within an Active Directory environment. Attackers can use BloodHound to easily identify highly complex attack paths that would otherwise be impossible to quickly identify. Defenders can use BloodHound to identify and eliminate those same attack paths. Both blue and red teams can use BloodHound to easily gain a deeper understanding of privilege relationships in an Active Directory environment
        // Reference: https://github.com/fox-it/BloodHound.py
        $string13 = "/fox-it/BloodHound" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string14 = /\/GMSAPasswordReader\.exe/ nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string15 = /\/Invoke\-DCOM\.ps1/ nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string16 = /\/SharpHound\.ps1/ nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string17 = /\[\-\]\sRemoved\sPSRemote\sCollection/ nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string18 = /\\AzureHound\.ps1/ nocase ascii wide
        // Description: BloodHound is a single page Javascript web application. built on top of Linkurious. compiled with Electron. with a Neo4j database fed by a C# data collector. BloodHound uses graph theory to reveal the hidden and often unintended relationships within an Active Directory environment. Attackers can use BloodHound to easily identify highly complex attack paths that would otherwise be impossible to quickly identify. Defenders can use BloodHound to identify and eliminate those same attack paths. Both blue and red teams can use BloodHound to easily gain a deeper understanding of privilege relationships in an Active Directory environment
        // Reference: https://github.com/BloodHoundAD/BloodHound
        $string19 = /\\BloodHound\.exe/ nocase ascii wide
        // Description: BloodHound is a single page Javascript web application. built on top of Linkurious. compiled with Electron. with a Neo4j database fed by a C# data collector. BloodHound uses graph theory to reveal the hidden and often unintended relationships within an Active Directory environment. Attackers can use BloodHound to easily identify highly complex attack paths that would otherwise be impossible to quickly identify. Defenders can use BloodHound to identify and eliminate those same attack paths. Both blue and red teams can use BloodHound to easily gain a deeper understanding of privilege relationships in an Active Directory environment
        // Reference: https://github.com/BloodHoundAD/BloodHound
        $string20 = /\\BloodHoundGui\\.{0,100}\.exe/ nocase ascii wide
        // Description: BloodHound is a single page Javascript web application. built on top of Linkurious. compiled with Electron. with a Neo4j database fed by a C# data collector. BloodHound uses graph theory to reveal the hidden and often unintended relationships within an Active Directory environment. Attackers can use BloodHound to easily identify highly complex attack paths that would otherwise be impossible to quickly identify. Defenders can use BloodHound to identify and eliminate those same attack paths. Both blue and red teams can use BloodHound to easily gain a deeper understanding of privilege relationships in an Active Directory environment
        // Reference: https://github.com/BloodHoundAD/BloodHound
        $string21 = /\\BloodHound\-win32\-X64/ nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string22 = /\\GMSAPasswordReader\.exe/ nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string23 = /\\Invoke\-DCOM\.ps1/ nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string24 = /\\SharpHound\.pdb/ nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string25 = /\\SharpHound\.ps1/ nocase ascii wide
        // Description: BloodHound is a single page Javascript web application. built on top of Linkurious. compiled with Electron. with a Neo4j database fed by a C# data collector. BloodHound uses graph theory to reveal the hidden and often unintended relationships within an Active Directory environment. Attackers can use BloodHound to easily identify highly complex attack paths that would otherwise be impossible to quickly identify. Defenders can use BloodHound to identify and eliminate those same attack paths. Both blue and red teams can use BloodHound to easily gain a deeper understanding of privilege relationships in an Active Directory environment
        // Reference: https://github.com/BloodHoundAD/BloodHound
        $string26 = /_BloodHound\.zip/ nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string27 = /\>Welcome\sto\sBloodHound\?s\sdocumentation\!\</ nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string28 = "018bdc303d4d1d7ef36e50f7967e3adfc9e613dd51cda3865af30893bfcf5ea5" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string29 = "019b542ddfc430bd0657e148450bec8b108b0d00686f961b5a6aab5db554fa82" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string30 = "024c613cc354982252fc7e6e16cf1b0077bd005dd7eca9ec6ad489fadac1ac28" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string31 = "02e559998bedab5437014f159a3c71a86fd94dc5388cfcddf5375ebc75a6f588" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string32 = "0446fc8138dc27bc571d777f43ba7a98d204df0abccef47f527bf58e86101880" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string33 = "044a89d16d46ab63e3995828135ff95fc8553a99938874213e59000e1c1e2283" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string34 = "046f321f30d2f6bedac62cdb099784f631bab5c68621e9e94fb81fea532da3a7" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string35 = "052083681fa05830137dd07aa3778d52a98dca541c725a0cffccde43a14fed89" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string36 = "05bce540784886cd80d5eb0da569bc6668dfbc910fb07c2e2742b7d009f6c61f" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string37 = "05d4a816e74b958db190f12fea1d3eed7abfd964261d08c1d4fc4c8a07025519" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string38 = "07878d4fc3ba5f9be83d693dceb90a590099ff908221e2935488d50aa70cffb4" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string39 = "07e5db0b397c217cb4d5bcee82d68065beecf390f30f223aeb857f231ca1e5fd" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string40 = "0888fa2d4be29e8820db387ceacaf7fb7a43e10d4e897ea0e7308674727584de" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string41 = "0904cc6e027548759b2b2f917e20202a02b86bab3ec33cf01c5d4d8064eec584" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string42 = "0cc0c88006e85595ae428127d119a86d78c6c61631478d23fdd533a547222f05" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string43 = "0db6b9e5973f2dd2d84c417208e3fcd2d03dad3fd981028a2ded5ff9969ca325" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string44 = "0dd54eef6deb3608d8e9b119c526cd6b1311c3256006f331f6646022cabf4fae" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string45 = "0e6425e589ee42d3d26e329534717ccab8113b6015841d3ab90cf23f56e37b0f" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string46 = "0f6e64bbfb810dd70627c534503ac49e468d77c31c033ff9de1640c3add5a99a" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string47 = "11eebffcb6a3eb53339bb8e36b8962e7998c596338be5ff8ebf73e46753ca393" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string48 = "121b6cc756d066cd5581f54215db3faf5edb5ff02697421cd38b6f93d6d5d65b" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string49 = "13694645a7643abaa67d282782fdb6f7e246ab06436ff22f6a4dae55c65af5df" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string50 = "13bc46a72770c8f6d5f8305a625a8be7aae244ca60c3ff781193f755ab525e8f" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string51 = "13d5d618565fd62c73768b9eb470d680972d27d6cfe85fa17692aeaca340d73e" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string52 = "1527fd3f217431af5c9c015db53aa229bb015d01babfd5fc83976ceb1f84a186" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string53 = "154108656a02f90337dab0afac5056524caaf8bb08534f7c64c55f1fb2dbbc7a" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string54 = "15bcc98e54e18078130e5d5e21e2d76a31cf3b06fc9e1d0113878d7645cfcd23" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string55 = "1710e817fd36ff421632d2b1ad6335065d4323413965cb281a9fe9f363dd5258" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string56 = "193b8c35b6f71c1a9c53befb0d950d7734743da958cd6d1a47975b3c4af6cdd2" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string57 = "1a187b6f85a5db0e62f10fcc40e5a212bb19cf6b3713b1def3ad90670315093c" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string58 = "1b191ef3f920d48b1f4b8e9db4df2cb518d3c067eeb29b7bbe4ea48c4392de65" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string59 = "1b1e2f33f8c7e670cc340e679cc6deb60a81143659e5383a747c72da84822fce" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string60 = "1c00f46dec53547c1aa2faace16e027cd276d5c6ab53abe79e4379d81b09826b" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string61 = "1d86c9e3eb7fe0980381f071b0416ba1f53f665c18b418b66c0ce2344d98a135" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string62 = "1fd102be57f9c6c0b3a6fee86877d6eff1744782a71661f57afea9a895b5db38" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string63 = "204d4653cfb248966be343b46d2ed6c063a3717edb3fb3eca68269654437e65d" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string64 = "21c6b8cc941e0aa80e42c28dbaacec63f8ae187b1d689a9fd40616ea612dd931" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string65 = "2204d8a72a2aeabf19965bb8590d8ea9f959b07375672745a52eaa81814fe531" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string66 = "2260d4489a10ffc6b950e15a2a30ce95e644c891393b8ad1378f71e1cb2e52b5" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string67 = "226665adcfee00d7db13e8e27e1ab21560a8f9dbe581adb42ea2474d84171349" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string68 = "2321bcf59fc695ef50c4c540af7c4f76343e9ea8d1989ed0d30f33b705147d25" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string69 = "24e84edaff898e6eacc5143afd258731fd8a8f31146ebb829b36b35a44cb1d94" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string70 = "26aa83adf9a90a1a5438f2b64a5dba4d0a776dc55c634f0e913c6a28f31b036b" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string71 = "270261e8d576273808fa6084a665ca4251dc3bdd2cc849cfcdae2a042b21d8d3" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string72 = "278934b8bf08d452d343a4da60e7453aba6bee5b20a7d91eaaac571131a4b623" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string73 = "28ab7dedd22722c58a73927d50ce8100630d002c591e4c96cb492dd1fb5f649a" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string74 = "29870f133ff5c55180d76548434106644092b56c1de103b909035c1ebbd3ab83" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string75 = "29aeb20a52144263d17c63c96b707a2d859aaae811acebd65d3ce605b26984a1" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string76 = "2c45a08d77284fedd8074a5664e7c2424a94c6d131540010da2e73d8f520ebe7" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string77 = "2d270f4d110fbbc9d8806632a588073376e4c5657485e484c863fc10aa0515dc" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string78 = "2e18f54ffc6007a57706d500ea0159baed76eeec31c1a0a2ee2e5ce24b79acc6" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string79 = "2edec08af53d0c00c6c82c90529c6cd22065f668e7daca796c8e783e5c22ed53" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string80 = "2f29ef1160800ac8190ccf6ab09e546fc35a2aaa66b70393a9256a765d46fb46" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string81 = "2f5d68c11ab2e44b398b3ca6820c5ecf91bc6e490418f4e2c6ce20bef7f8ff80" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string82 = "304a4ce184f84b3d8e138e8c070cc82854c637559bc2c4a0e6d59fa94fdfa10d" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string83 = "305f49e1b101e3a479f9da65f7852ad4aa2870198d9491b0166abfe07ae2a95c" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string84 = "30be4c2b3d3ce434211fc4f788fff62849baecdb847b41b554da47f7c2c7b284" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string85 = "30d8c28dd9f77268fd3fac0b3cb666886623e99bb681c6484d8cd1dd995cd606" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string86 = "313a44aa4708001af16cf83b3bcd98fdc20c0ac0f5d9062a1541a498b085b978" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string87 = "3142704750b73f299cc6a726fdf3c7ae1e7c75ea8f62769a36072488b23651c4" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string88 = "3176f76d36507132d3356898ae0823d34e9deeb1af3187ac7645922a0509cda9" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string89 = "319d36ae7ed7260c42b1ce5a90c73bfbcaf35ad9e63326547ec6b20e3cecb9cb" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string90 = "323791a9dcce15b9b410a9cbbc91296cbccdaeb6198926fbf54c7b159ecd9e03" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string91 = "329a409b807991c382c0ca408581264c8e092defd38336e599a2a1411d4b4383" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string92 = "3383dfa09bf9497b70b13bfc0baa3dfdef51d6689a04e25a3adc769f76b775ef" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string93 = "33ca24f0ff7df10eec6dc4e226f8ad5410cd475e1c24976cff824d6a09fe98e5" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string94 = "349e1cbedb140c5fee7c464c53b2f038082db6079e79101717197cbb51d55cda" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string95 = "34b72dde693565c3427c8863bb527220a6793ecca920cfd663c900a9f0418dfe" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string96 = "356d85b11449179fcb887ad4ce0356a23b8ef5a80318c4318c37d31f53affee8" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string97 = "36fc768852cf4e524b223b8cfc3d237b7cada43ad40f23ceb022f232a955616e" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string98 = "37fb5ca215c18dea99181660add5055805856ab73254c899860350b0d67cdd8f" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string99 = "384218806db2a3031a7582b461084ce83d1646241574f325b0454bffd6c5ae9a" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string100 = "386ca395c1fb8ca41e5371807ffc70f06bf161ddd8a24afb34f0d9132271243e" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string101 = "393bbcf5be1871ceb753e35e87e904349d6a55fef87d0f1ace01b859967365dc" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string102 = "3ad40dadb3c6030e56a037a58baf9111cc7d6a3a2bd02785f3d2fb1a0e38681d" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string103 = "3be291169fca84dbccbddc5a5884152cc1c8eed62d4d0ad70bb66be6a10e7456" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string104 = "3d6819160cb77ce2d0446449a6b7584dd02ef694762b3ef0cd57563a10c111f6" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string105 = "4201d17c29662716ec98a94352ad59fbc96984e2ba7ee4878363642760da7bd3" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string106 = "42f2144abf71b5273d1d0164a4ac254089b29a374f198cb5e0c15bcb7fd717ac" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string107 = "45d8e1aafeb7361581def6751c201b11cd2a9761f1c19d17925f72fda78328bc" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string108 = "467bdf16e6c642b993a999efdfe9beaa4d4eb7eb9d94670703dd75bfc6f48f65" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string109 = "471f844b5ea9583d0f2f4ad2adf9dfd91b407d54f8e984bd901c19a39d1dd1d7" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string110 = "475e1063cd3404621f051db1a5f3c9aaf939433f5996bf97388c90f3bc5f9fd2" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string111 = "47849ce5bce4642bcd3811063e45984219ce4b6b006847acfdc88b1186313420" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string112 = "4a0a4a3bf506b1e511eb78eddd1fef6c7d29a76668fda6286914b13c78cbdb19" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string113 = "4a32296896ca13b64f5bc86c8213c0755510c352c44663054947f9ed2c5c0983" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string114 = "4a51b007c344a876a579fd81cbd8b10835afde379f145f823794d763707c63c9" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string115 = "4aac42059bf3bbd0742633ba002b4f20de0881ee15397b79cb7aec0244904065" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string116 = "4b1965fb28c50aff632bae51e2bfee153009797f2b576932076d3472f984ae66" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string117 = "4b2554d8616a20ca49097ec116c63dee9f400d532318b62d05d91590ce34ee49" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string118 = "4c0064dbf7ebbd9b8c67a355929d715cd814436d0857625a5b92468558f6393e" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string119 = "4ffaf4c7ad9c606cdbce082d3b428e7666ef0ea73dcb36816a9ecfdb12d0ec34" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string120 = "501d518404e4d32996557998d3941a72b8a09e405f07b9a2b3f320a60a7ea711" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string121 = "503a03cf035644aae49c197df60a93374f8cf837d0078206e278194c79b6a42b" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string122 = "51200fbd06de3460053924b51d118c57db486f2579ebd402a961f7539dddf37d" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string123 = "53f520d2ad626e798afef1865d9e91aaaa6f98e6062423819f9222357d1bf676" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string124 = "54819445d5ceb3c582f48b574190d1b357dad08a1708595fafe3db30323c890c" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string125 = "555e208fdc7f01d35922ceb80bd2a1088f6cef78e8f2e49f115b628a15984001" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string126 = "5585684234d4f65469f743db35a100a4aaa2c7d89fe8005dba4698885e0c53b6" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string127 = "55f149f758ed7b39a0277fb798f84b9f213efe29a6966e3805ba445ce405e4d8" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string128 = "5612ea4ef90043eb2d52ecff3ed05608f0ca76412f5466d37b9b8e0dabc51a05" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string129 = "598021ca986287a82e8baa6e77bdc089d91fdfbe75da3c8dc7e105a112477eec" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string130 = "59ffa43ceae2aa7212a08e03110b3081b7d19b7e0eff508291b2a56be2f67a35" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string131 = "5ada70505b8a57566ca4cd20445cb38967d9884316537c26ef81e9ae125b29a6" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string132 = "5b00508d81b77ecbd0d6c8defc6fc291dd60efa895a1161fdfa168fbb46096df" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string133 = "5c560a9be9b74ebc5a006a808c82813eeb5c7d7dcff5d1c34be4fb1fba562535" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string134 = "611ae2bc8e19ad9ab424348376850b3f257767965939579767e9ba15e9135ead" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string135 = "67c7d31360028ba45e62e75295a20464fcb99cf1c6469618e8f8b97614cfe950" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string136 = "67e0def5a9c36e5ecef1fb735955c76efe3133ad7d64a35bd5228c856edc9a94" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string137 = "6bf16a634af95469401406492913ac1b8e1cc2b9e0e2008be1cf71e81a1e87be" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string138 = "6ca3271cea48f57c98eb500056d4164215198af09175d1f88b79189523ae56af" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string139 = "6dd3dfa923bbabf3c493ef9fc309f3dba682eb2a7d0c2f5e7bbd069a36204d04" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string140 = "6dfbe4a35f1c89c0be4f6c10d9e9ada69d75095c66dda39445f38e1522b5f1c1" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string141 = "743772d28582dd1c9e4015074bac13a00232b41d9de7fb8358858825024da9cc" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string142 = "74dca5fb9ded47dcf5fb0d1a40dc68081e04c3f1fb66653abd671b39f3adb940" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string143 = "74fd341390aaee0b7dac4f892df392eadb934932bf7e6d6047ffcc8532df1f3d" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string144 = "7634e6e941bfe0dc600529f03df81785c3f7af96e0b2bdf3f00042318970c538" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string145 = "795845daafefd3f3b79a5cd599e45605aed74244de4a6d17eb1ccfb3568f938e" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string146 = "7a5234a69f2e2f43bf8f67c2b738e50db29a18014be4e131234a19c98e0302b4" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string147 = "7d3a5a08c0a08593371527c2e26ebb05907adf47883de46e21bb8118214d9399" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string148 = "7d682fa901e31cc0a7196c4588f434ab88e0dc26c37dfde27f6b31849abc3283" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string149 = "7dc0339f87f1d3e213a24cecd058ca8abbf7dd271eccf5b168529d30b9d708ba" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string150 = "7ef63c297547732a817bb5372198a567ad572fe7b0093d69c68c443af4c055b4" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string151 = "7efd3d96188347367d021982adb458d1ab44d27dc5d3a3ac44e984481af2ad32" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string152 = "7f0ed3a7c9e2ece2c8cb6a9e889774e7616dba199a4bb2e1cfb9d425d41ae199" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string153 = "8099c768d5898dccca1f09370e5b171c1a9b40d8558cbe08c8bbcc23763db00e" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string154 = "8160fe6c7c5d98cfa69d14135b925866cf7b28689017d1883ef0b060f0777e5c" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string155 = "830df06f247546d342e1eb6cf13d214ea05a7bc89806c844cfe46efcb1227420" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string156 = "83839ceecfba791129d3abd17623fa92d1aafac6d2e9078f5a2e842e5f599434" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string157 = "86454256f4e6edb85bf0688e39d1b7acbf8c4f053d77b1e8261610352e8dfdf0" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string158 = "86e37a3b78826bd1c9ebd6b6c65eab9e81261af8f18abe8fda8311ce500e4316" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string159 = "879a204ae929df09dacb239b3a1224069c6a48de328adab89c91c02b2937c74c" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string160 = "884e9a4943a42933a5e1413349872ed3f48140a58f442a43615e8778d8656d89" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string161 = "888e7d4c8b99cb78ebd6a9a93d74b768c0f66ca210dbb9a3705d7636b609788b" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string162 = "88e13a123b49e19188a4d51b83b060fd5fe0d6b4cdd96e6557792d229d339f64" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string163 = "88e73ed9922003522ffe4b79167dc818716adc62dc6c739f6c7422ae209bd233" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string164 = "8932afe71961b1dc93c851471a11f50329aab1715cfb60875c087c94a29a1910" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string165 = "8b02fcc3d2b456afebba8cf41d7540794f0af7a9a1ff2a080b89400b75b3c407" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string166 = "8cb53c48c37fe2974dc0b8240610e8b85e0802c6b1cf075a4af4e29d80546e5f" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string167 = "8d134034c936cf5b4015e47577954294a97e4440eac5d32271ff7355f517475e" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string168 = "8d2a5cc827299d47424631882399067acf41d040c5b2aacf95092aec22d90c97" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string169 = "8d7c4034043a81ba951f25cc46e7de09e10e29465a8891d9b98b25770cc48624" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string170 = "900d1ae66a883c047dbe402f9d11c14962173279c8e617ced5508da39037ffa5" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string171 = "90e0539704cfca45027b3bd74e1cb28cbe8a65367320ce0d58f2ef1b82d50c2a" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string172 = "9227a1bc1584c36ff815fdc09dbec1c23aa11f6adc5b009c305dbb941f9f339a" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string173 = "92f93bcce51a5c4362dc6304cf01838f47bb274737bfd81e64e4aeb9c4eda895" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string174 = "98aa35c31f41c95a5516b0cbb52bf6d429f96919d665c6a45a89a5559550639c" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string175 = "9a2e880adf7092cd9322b2dfaf502caa8e6a98afc0fecaa210a1d9f85c2bc017" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string176 = "9be3e067a95db163c7789d87310be1ba8f55d0077768c5fd1c26fbc47c8808ad" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string177 = "9f93b709333b6a86108d0df9a408356389f6f619bc4ef5562c7478d203c9d956" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string178 = "9fc6a05224549777e8c241bb0cc5b3bab16974b977ed8d97b515698cb560d34c" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string179 = "9fe02af5b7e2f22489b42a2c0888731f8be61f296d83ef8d0706c54b30d7c409" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string180 = "a0383a13e4d392d598a445ef8bb82397cf6a86697f435a07d1d2019dd7feb78b" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string181 = "a0411b1b8ea64d342813eefa92371a40ea46ae27bcfca61b72a66950322ecd3f" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string182 = "a19a1c24514a2b09c592a42fd5e813cdea511507f809a57e31067ab6f1296bf3" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string183 = "a1fd85d3ba3ffa17a7a3b7b484563f528746ef482ca052d0499072c5e0327308" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string184 = "a2090197c5cf82c6799cf7f8f7f1d0d42436882c67814b70d458c4ae8e9c7e32" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string185 = "a3e3b811f35d32e87feb85a1a1d0eddc727d712702c584dce1ef0a0878cd1cf2" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string186 = "a53e6802930fdf33441a3cf595c9b22e6800be07d72ace8b38a2f63f3fc806c1" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string187 = "a5819c67d51cee328e38c7822c9a4a9fe76e715f4863bcac8fa0ed5bdf046c21" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string188 = "a70756f3fce0b8fbc9bfbdb422b9ef10f83e4e9020b7dca8e691eb51ff89949c" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string189 = "a74c869d811226c39ec9a3889bf9f017068baa0f69cf855ffdcc34b601777e04" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string190 = "a74de3599c61edef0e96fa489513449bfeb2fd46dc4cb7d1af3c22c15ae0554b" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string191 = "a759d0c0f5f52fe8512a7cc81191c309f7bed4f65b8ff739d51dabf6ba5b896f" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string192 = "a7c21a6267ae3fe1b9293c3c2d0080de4a994b8ddc7aca048d906a109a17dfea" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string193 = "a94219205d14a633058fcd7ea39d33525e07d8aea5411a21d79d4f8c01993b47" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string194 = "aa1b9c1ff92922f5a3d2119505c808c21e0cd2f6b6c5639eaafc84b875d8bbb6" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string195 = "aa4897e704cab54711515805dc9c40dccae5f3b913c120f643a6f7954396fae9" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string196 = "aa5ffd867153cca61f22d22f94fbe6e81416b0475f140ed6b546dcaba57d462d" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string197 = "abccbb442f89dc0aeab5300964f546e81f4a1fbcb91f08b9e873da51bfd24b7f" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string198 = "ae2f9496b86befa082d8d2c4b714c1ace7399401356e1d9502b3a498d92f2bbc" nocase ascii wide
        // Description: BloodHound is a single page Javascript web application. built on top of Linkurious. compiled with Electron. with a Neo4j database fed by a C# data collector. BloodHound uses graph theory to reveal the hidden and often unintended relationships within an Active Directory environment. Attackers can use BloodHound to easily identify highly complex attack paths that would otherwise be impossible to quickly identify. Defenders can use BloodHound to identify and eliminate those same attack paths. Both blue and red teams can use BloodHound to easily gain a deeper understanding of privilege relationships in an Active Directory environment
        // Reference: https://github.com/BloodHoundAD/BloodHound
        $string199 = /AzureHound\.ps1/ nocase ascii wide
        // Description: BloodHound is a single page Javascript web application. built on top of Linkurious. compiled with Electron. with a Neo4j database fed by a C# data collector. BloodHound uses graph theory to reveal the hidden and often unintended relationships within an Active Directory environment. Attackers can use BloodHound to easily identify highly complex attack paths that would otherwise be impossible to quickly identify. Defenders can use BloodHound to identify and eliminate those same attack paths. Both blue and red teams can use BloodHound to easily gain a deeper understanding of privilege relationships in an Active Directory environment
        // Reference: https://github.com/BloodHoundAD/BloodHound
        $string200 = "azurehound/v2" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string201 = "b11b6028e75a3bcbe194770f9613181009aaf40bdd23892e12e0ce32bbe90cfb" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string202 = "b16e8bce64a834cf8b7844989a67ea4a7da36227034b54a864be9dfe1ce076e5" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string203 = "b1e0d02889530da4663fd9e0b3e324fb1325fe944dcdbc8d0fbf63d0f3d0c3e5" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string204 = "b549aa579ebc29e5813a950f8ecd0af5cd17752da9fb2129824ef490b82c31d3" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string205 = "b609c48dcb79bf60c039a05c4f048a001e00c1ce52c8b2e1b1d674234f9282cc" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string206 = "b63d587e4567a0f07910cf0314611a8f12f1cab4f119f40a0718782a76e413b3" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string207 = "b91e1b481db19677207c0175a5296fbd769bf9f18bd24837f04d48e417c5e8a4" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string208 = "b9d5e62f9504669d9f3f68ff4b0e0fbce20d9b48c5a2560cb0d71b37666bb013" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string209 = "bb57ff50e43b27f0f38affe2192c1969dfedff65ea38664b48d1ed7722a0fdee" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string210 = "bd8e4d5f1c7c01c16d145b0d203c84529fcce1bc51a7e52d8c7e2041b5ab8b0e" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string211 = "be515aac4a4c52e55708baa77fab03d9f6ab2e7045d7147f83aa07cafb448180" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string212 = "bf582077bbb7f317facb3705803f51a76fe47e740ff78c8dc0e393b32b6bbb10" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string213 = "bfc94b31d4035a538e8ac59560846fbca0b0ad43a2e000e569b6d73ca2991341" nocase ascii wide
        // Description: A Python based ingestor for BloodHound
        // Reference: https://github.com/fox-it/BloodHound.py
        $string214 = "bloodhound --no-sandbox" nocase ascii wide
        // Description: BloodHound is a single page Javascript web application. built on top of Linkurious. compiled with Electron. with a Neo4j database fed by a C# data collector. BloodHound uses graph theory to reveal the hidden and often unintended relationships within an Active Directory environment. Attackers can use BloodHound to easily identify highly complex attack paths that would otherwise be impossible to quickly identify. Defenders can use BloodHound to identify and eliminate those same attack paths. Both blue and red teams can use BloodHound to easily gain a deeper understanding of privilege relationships in an Active Directory environment
        // Reference: https://github.com/BloodHoundAD/BloodHound
        $string215 = /BloodHound\-.{0,100}\.zip/ nocase ascii wide
        // Description: A Python based ingestor for BloodHound
        // Reference: https://github.com/fox-it/BloodHound.py
        $string216 = /bloodhound\.ad\./ nocase ascii wide
        // Description: BloodHound is a single page Javascript web application. built on top of Linkurious. compiled with Electron. with a Neo4j database fed by a C# data collector. BloodHound uses graph theory to reveal the hidden and often unintended relationships within an Active Directory environment. Attackers can use BloodHound to easily identify highly complex attack paths that would otherwise be impossible to quickly identify. Defenders can use BloodHound to identify and eliminate those same attack paths. Both blue and red teams can use BloodHound to easily gain a deeper understanding of privilege relationships in an Active Directory environment
        // Reference: https://github.com/BloodHoundAD/BloodHound
        $string217 = /bloodhound\.bin/ nocase ascii wide
        // Description: A Python based ingestor for BloodHound
        // Reference: https://github.com/fox-it/BloodHound.py
        $string218 = /bloodhound\.enumeration/ nocase ascii wide
        // Description: A Python based ingestor for BloodHound
        // Reference: https://github.com/fox-it/BloodHound.py
        $string219 = /bloodhound\.py/ nocase ascii wide
        // Description: BloodHound is a single page Javascript web application. built on top of Linkurious. compiled with Electron. with a Neo4j database fed by a C# data collector. BloodHound uses graph theory to reveal the hidden and often unintended relationships within an Active Directory environment. Attackers can use BloodHound to easily identify highly complex attack paths that would otherwise be impossible to quickly identify. Defenders can use BloodHound to identify and eliminate those same attack paths. Both blue and red teams can use BloodHound to easily gain a deeper understanding of privilege relationships in an Active Directory environment
        // Reference: https://github.com/BloodHoundAD/BloodHound
        $string220 = "BloodHoundAD" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string221 = "BloodHoundAD/BloodHound" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string222 = /BloodHound\-darwin\-x64\.zip/
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string223 = /BloodHound\-linux\-arm64\.zip/
        // Description: A Python based ingestor for BloodHound
        // Reference: https://github.com/fox-it/BloodHound.py
        $string224 = "BloodHound-master" nocase ascii wide
        // Description: BloodHound is a single page Javascript web application. built on top of Linkurious. compiled with Electron. with a Neo4j database fed by a C# data collector. BloodHound uses graph theory to reveal the hidden and often unintended relationships within an Active Directory environment. Attackers can use BloodHound to easily identify highly complex attack paths that would otherwise be impossible to quickly identify. Defenders can use BloodHound to identify and eliminate those same attack paths. Both blue and red teams can use BloodHound to easily gain a deeper understanding of privilege relationships in an Active Directory environment
        // Reference: https://github.com/fox-it/BloodHound.py
        $string225 = "bloodhound-python" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string226 = /BloodHound\-win32\-ia32\.zip/ nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string227 = /BloodHound\-win32\-x64\.zip/ nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string228 = /c\:\\\\windows\\\\temp\\\\test1\.txt/ nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string229 = /c\:\\\\windows\\\\temp\\\\test2\.txt/ nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string230 = /c\:\\\\windows\\\\temp\\\\test3\.txt/ nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string231 = /c\:\\windows\\temp\\test1\.txt/ nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string232 = /c\:\\windows\\temp\\test2\.txt/ nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string233 = /c\:\\windows\\temp\\test3\.txt/ nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string234 = "c08c8daee59d11347beda11ee23bfe120dc0503718bad492a5c09f17267848de" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string235 = "c0da41824e720bb18073595598f9ee4f3b15f7cffe800f44fe0f8799b8acbe3f" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string236 = "c106a84af24143cbac3f066419316fbf2b0b748420381d304157c0a645788338" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string237 = "c3b46bc3370bed3629df3e71ec1e85102b3920bff11c59ecb14bb45c80748d79" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string238 = "c3f5c77284e7440792843e51ec944d85bf0b3edf600b622832682a00e3c002d9" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string239 = "c4e3e811811d927b64d5f66596be79f4110c7bcaa77621fbb73b7c7d8f69189c" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string240 = "c5733dd416b4bfaed6f24b3a8755fd49f441c5675749a087e018ec7de628be90" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string241 = "c768f3bc74ea36d42f2420d6cd47a8d997dddde569e774c9232ca68ff10c9a63" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string242 = "c9fd001fed0cdce98f15a48956fc6ab60f3770a7e9d0e1368247dad940691048" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string243 = "cba965f520de118009142c8dc4076be542d53e4985fe55f69acf8651a3a4067a" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string244 = "cc19c785702eea660a1dd7cbf9e4fef80b41384e8bd6ce26b7229e0251f24272" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string245 = "ccc0e2dc580a30ad79f49871b99eedb891d9044e801bd633ba0af0505b8462b6" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string246 = "cd988660fb5f3e0e19236f091fde0b5a154c48070c46bbe7e8cd28bb5a94017a" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string247 = "ce2047b5a3ce8608ac3203f14284542cd895fbf67a0a400a9353ba7b3a9f188b" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string248 = "cfcbf020d9a94c9ae6f255c3888bff4159e6521803ed993d64430ffc3c62e9be" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string249 = "d0aa252c1cf8232ad1fe5c59ac94962ba6d0790c333a960d3c757fb9a18f98d8" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string250 = "d291d7237d10448e6c9941e8815757525eb03fb55a2a9afd5a48a1905e6429df" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string251 = "d4aa407ad94b69ed29090fe836f7c9c9d758cef377fe4d9df209135f98165341" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string252 = "d52d17134711fdf76b9ce6da73e8be0616ae49ff3c07516accb3ef2693572240" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string253 = "d6b6a59d5127bab7f135eb30f63484589a812fa16eac15068ba4e74a51c92f6b" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string254 = "d857b8d24455c5c63414bdb7a7e6ccdc3a198421400f2b659591902e3babc93f" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string255 = "da34a400c7a113947f339714605130170e40ddc09a5663657e2370a0de3b0c4c" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string256 = "db2959484aa1ca726c7147977736455908ae0c912bd96278a3c40723fe8b6e38" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string257 = "dce6f896d4a7b3eeee722bc55b1ea573daa03f81d55714bbfd6c2ebb5a67bf3b" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string258 = "dd9f10b0e8c87705938e6f32325901f6ce20d2c05cb0220e33d040e06378bfa4" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string259 = "dec494b5bf9db4a84423b921a2137eafc02f4a9839db0e7b0e6900826766ed92" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string260 = "dfd462f0bce767096991d29d5f12e4e3230d63020da7dd0a56592ad96d1ddd58" nocase ascii wide
        // Description: A Python based ingestor for BloodHound
        // Reference: https://github.com/fox-it/BloodHound.py
        $string261 = "DomainEnumerator" nocase ascii wide
        // Description: A Python based ingestor for BloodHound
        // Reference: https://github.com/fox-it/BloodHound.py
        $string262 = "dump_domain" nocase ascii wide
        // Description: A Python based ingestor for BloodHound
        // Reference: https://github.com/fox-it/BloodHound.py
        $string263 = /dumpntlm\.py/ nocase ascii wide
        // Description: an adversary with local admin access to an AD-joined computer can dump the cleartext password from LSA secrets of any sMSAs installed on this computer
        // Reference: https://github.com/BloodHoundAD/BloodHound
        $string264 = "DumpSMSAPassword" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string265 = "e0525b4fd45c8a2c37b577f0609c43d626b2d9837befa03096ebc60f6c52ff25" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string266 = "e0bd65efa57344f0651829271be0eb5187290fcd27004c5ed95081009db434eb" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string267 = "e209287748c60d712f78c33501841c2148db4cddc98ec6c543262c203300bfd9" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string268 = "e224ba9728a4a03d2f06da625241c25b61b2b15b5124c1384eeee8dcba2ce208" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string269 = "e363fb56b36aa94fa6f631c5a85401e3415fe23f5595f61d32f4828c84571882" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string270 = "e3a6a5d97a13040f50b38542586dbe4cf664c10b6b4264f2f7d4d1c8caf2aeec" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string271 = "e58f01df3692d793fb3441fb2264b60767ae47a9a029b6c22a71ddb0f2f8393f" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string272 = "e6542f9cae2a9555feab0aef1287bc9a1ececc56f6e144a731546c68fe5843c5" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string273 = "e6e64c0ea43db6a4e271642f3feeb0ad058c99947f14c4b05a556e4c703ac4c1" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string274 = "e8be0cc95ad642e83a961dc485a62aa6938b5974bbb205d1fdaec72fef860e58" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string275 = "e9f9a1009bda251364507673531fb1187d34198ade2c48f7c4e6fe6b76a7d088" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string276 = "ea9fbd902ce3f9a49045a213f6f18d922e6460869f908a9798466fbccaa60484" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string277 = "eb9da00ffbeda04154547d05a2c6ffb7131b75762b8239a8095b0915bf810e60" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string278 = "ebd36ece57ad0fefe730705480742620c4d189aa6a3d3a00d46504d1bd9741c9" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string279 = "ec1c4cf05df4d398a2808a094ceabc9c75ec5c59e51d5bc0c5814dd140a45df7" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string280 = "ed12460f0823550d20f0ecef4c0fd8007b0ac864aa005c996b62ead068c6952d" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string281 = "ed37fced451d290d9c5fa54fcf535408a01172a50ac8ad6a560e576b1f232802" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string282 = "edce2d6ebcdab01ffa6ab278bab2c628fe405c82452de36a531a6cbac98541b0" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string283 = "f48f922e798e359c11c2692385b842a17bac0ace63e818732afc8efec71502de" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string284 = "f490212b9f643dee26d7d2f54b4f20d0816fe6a8ee4ac59020ec46ed09e7ea4a" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string285 = "f57919481704f8a153d95054f5479c713c23246f633ea2ad2f52dde19ee51bc5" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string286 = "f691703db162bafdc2682f60af4484a7413f6c0d39916fd7ae0469a132aec34d" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string287 = "f72e7336b7159fd38671d4150fb30894422fca78b0a8f214a15bb53a36b82cf4" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string288 = "f7acfd4b4ec7466d926ca0fff2d3172b73bf64247a8d7a560eabafefc03c2d2b" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string289 = "f80352d7f6c1eaac75ea3d252605a5b5e193683fbf743b40694a2d65e4a80537" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string290 = "f84ba2c3ac92224b589b71f529440c6ad641b76418f90059753857b9261580b1" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string291 = "f8de181750ece6bfa74bdc2511b695b540a68d3640c245d0839e3a54ceb10347" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string292 = "f92067d31fb234d9df105d85b053aff4a590270e0f25c6d8e563eda88bc8ba21" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string293 = "fa2061026851e6e86d3fec6347eebf2e4fb11284c6e36c3a2b018dcf5e762447" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string294 = "fa37922b4ab1d0daa46c4beebfe591c916dbd55756da4e4f361a8c311bd2aee0" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string295 = "fc5011d77f51cfb7b2fc68ad652b1857670eccdf7327ae31ed1dd6d7c59b3ebb" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string296 = "fd46836c80290243763470fd731ff29e0190fe91c23284aebafc31bbdca041b6" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string297 = "fd75b0dd9d0f11263480daccf04b635ddf74eae974794a80def9f6d2d511eb86" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string298 = "fdfbc173fa9fe1094f92f5141b4f257cf071baf69eb62f86b3ba547196eb5a60" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string299 = "ff0e32bd9f03a7cb0e37c6bc14e5478c301e85072a21e4bacb65959c7c2c394d" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string300 = "ff8a3f50642a1284dd9596164e43e097ec4689e90a0f1ec65743ace87a2eba31" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string301 = "fffaec6a59c6d0b368fd980414500ffeb17f3155ec3353f679dfc6caf392ce84" nocase ascii wide
        // Description: A Python based ingestor for BloodHound
        // Reference: https://github.com/fox-it/BloodHound.py
        $string302 = "fox-it/BloodHound" nocase ascii wide
        // Description: Kerberoasting With PowerView
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string303 = "Get-DomainSPNTicket" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string304 = /GMSAPasswordReader\.exe\s\-\-/ nocase ascii wide
        // Description: A Python based ingestor for BloodHound
        // Reference: https://github.com/fox-it/BloodHound.py
        $string305 = /http\:\/\/127\.0\.0\.1\:7474\/browser\// nocase ascii wide
        // Description: A Python based ingestor for BloodHound
        // Reference: https://github.com/fox-it/BloodHound.py
        $string306 = "http://localhost:7474/browser/" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string307 = /https\:\/\/bloodhound\.readthedocs\.io\/en\/latest\/index\.html/ nocase ascii wide
        // Description: A Python based ingestor for BloodHound
        // Reference: https://github.com/fox-it/BloodHound.py
        $string308 = "install bloodhound" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string309 = "Invoke-BloodHound" nocase ascii wide
        // Description: Use Invoke-BloodHound from SharpHound.ps1 or use SharpHound.exe. Both can be run reflectively. Examples below use the PowerShell variant but arguments are identical.
        // Reference: https://github.com/BloodHoundAD/BloodHound/tree/master/Collectors
        $string310 = "Invoke-SQLOSCmdAgentJob -Verbose -SubSystem " nocase ascii wide
        // Description: BloodHound is a single page Javascript web application. built on top of Linkurious. compiled with Electron. with a Neo4j database fed by a C# data collector. BloodHound uses graph theory to reveal the hidden and often unintended relationships within an Active Directory environment. Attackers can use BloodHound to easily identify highly complex attack paths that would otherwise be impossible to quickly identify. Defenders can use BloodHound to identify and eliminate those same attack paths. Both blue and red teams can use BloodHound to easily gain a deeper understanding of privilege relationships in an Active Directory environment
        // Reference: https://github.com/BloodHoundAD/BloodHound
        $string311 = /SharpHound\.exe/ nocase ascii wide
        // Description: BloodHound is a single page Javascript web application. built on top of Linkurious. compiled with Electron. with a Neo4j database fed by a C# data collector. BloodHound uses graph theory to reveal the hidden and often unintended relationships within an Active Directory environment. Attackers can use BloodHound to easily identify highly complex attack paths that would otherwise be impossible to quickly identify. Defenders can use BloodHound to identify and eliminate those same attack paths. Both blue and red teams can use BloodHound to easily gain a deeper understanding of privilege relationships in an Active Directory environment
        // Reference: https://github.com/fox-it/BloodHound.py
        $string312 = "sudo bloodhound"
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
