rule exegol
{
    meta:
        description = "Detection patterns for the tool 'exegol' taken from the ThreatHunting-Keywords github project"
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "exegol"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string1 = /\s\/\.exegol\// nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string2 = /\sASREProastables\.txt/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string3 = /\sASREProastables\.txt/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string4 = " --attack partial_d --key " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string5 = " --attack partial_q --key " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string6 = " --basic \"FUZZ:FUZ2Z\"" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string7 = /\s\-\-convert_idrsa_pub\s\-\-publickey\s\$HOME\/\.ssh\/id_rsa\.pub/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string8 = /\s\-\-createpub\s\-n\s7828374823761928712873129873981723\.\.\.12837182\s\-e\s65537/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string9 = /\s\-d\s.{0,100}\s\-dc\s.{0,100}\s\-nu\s\'neo4j\'\s\-np\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string10 = /\s\-d\s.{0,100}\s\-u\s.{0,100}\s\-p\s.{0,100}\s\-\-listener\s.{0,100}\s\-\-target\s.{0,100}\$DC_HOST/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string11 = /\s\-\-deauth\s.{0,100}\s\-a\sTR\:GT\:AP\:BS\:SS\:ID\swlan/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string12 = /\sdeepce\.sh\s.{0,100}\-\-install/
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string13 = /\s\-enabled\s\-u\s.{0,100}\s\-p\s.{0,100}\s\-old\-bloodhound/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string14 = /\sexegol\.apk/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string15 = /\sexegol\.py/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string16 = /\s\-\-file\sownedusers\.txt/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string17 = /\s\-\-hash\-type\s.{0,100}\s\-\-attack\-mode\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string18 = /\s\-\-host\s.{0,100}\s\-\-port\s.{0,100}\s\-\-executable\s.{0,100}\.exe\s\-\-command\s.{0,100}cmd\.exe/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string19 = " install evil-winrm" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string20 = /\s\-\-interface\s.{0,100}\s\-\-analyze\s\-\-disable\-ess/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string21 = /\s\-\-interface\s.{0,100}\s\-\-analyze\s\-\-lm\s\-\-disable\-ess/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string22 = " --isroca --publickey " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string23 = /\s\-just\-dc\-user\s\'krbtgt\'\s\-dc\-ip\s\s.{0,100}\s\-k\s\-no\-pass\s\@/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string24 = /\sKerberoastables\.txt/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string25 = /\skerberos\stgt\s.{0,100}kerberos\+rc4\:\/\/.{0,100}\:.{0,100}\@/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string26 = /\s\-\-key\sexamples\/conspicuous\.priv\s\-\-isconspicuous/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string27 = /\s\-\-krbpass\s.{0,100}\s\-\-krbsalt\s.{0,100}\s\-t\s.{0,100}\s\-\-escalate\-user\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string28 = /\slinpeas\.sh/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string29 = " --lport 1337 " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string30 = /\slsa\sminidump\s.{0,100}\.dmp/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string31 = /\slsass_creds\.txt/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string32 = " lsassy -k -d " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string33 = " moodlescan -r -u " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string34 = /\s\-ntds\sntds\.dit\.save\s\-system\ssystem\.save\sLOCAL/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string35 = /\s\-nthash\s.{0,100}\s\-spn\s.{0,100}\s\-domain\-sid\s.{0,100}\s\-domain\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string36 = /\s\-nthash\s.{0,100}\-domain\-sid\sS\-1\-5\-11\-39129514\-1145628974\-103568174\s\-domain/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string37 = /\sntlmv1\.py/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string38 = " --outdir ldapdomaindump " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string39 = /\s\-\-plugin\sKeeFarceRebornPlugin\.dll/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string40 = /\s\-\-publickey\s.{0,100}\s\-\-ecmdigits\s25\s\-\-verbose\s\-\-private/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string41 = /\s\-\-publickey\s.{0,100}\s\-\-uncipherfile\s\.\/ciphered\\_file/
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string42 = /\spywsus\.py\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string43 = /\sreq\s\-username\s.{0,100}\s\-p\s.{0,100}\s\-ca\s.{0,100}\s\-target\s.{0,100}\s\-template\s.{0,100}\s\-upn\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string44 = " -request -format hashcat -outputfile " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string45 = /\s\-\-requirement\s.{0,100}Exegol\/requirements\.txt/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string46 = /\s\-s\s.{0,100}\s\-\-method\s1\s\-\-function\sshell_exec\s\-\-parameters\scmd\:id/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string47 = " --script dns-srv-enum " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string48 = " --script http-ntlm-info " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string49 = " --script smb-enum-shares " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string50 = " --script=ldap-search -p " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string51 = " --script=realvnc-auth-bypass " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string52 = /\s\-\-script\-args\sdns\-srv\-enum\.domain\=/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string53 = /\s\-\-set\-as\-owned\ssmart\s\-bp\s.{0,100}\skerberos\s.{0,100}\s\-\-kdc\-ip\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string54 = " --shell tcsh exegol" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string55 = " -smb2support --interactive " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string56 = /\s\-t\sdcsync\:\/\/.{0,100}\s\-/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string57 = /\stargetedKerberoast\.py\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string58 = /\stheHarvester\.py\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string59 = /\suberfile\.py\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string60 = " --wpad --lm --ProxyAuth --disable-ess" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string61 = /\.py\s\-aesKey\s\\"9ff86898afa70f5f7b9f2bf16320cb38edb2639409e1bc441ac417fac1fed5ab\\"/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string62 = /\.py\s\-\-zip\s\-c\sAll\s\-d\s.{0,100}\s\-u\s.{0,100}\s\-\-hashes\s\'ffffffffffffffffffffffffffffffff\'\:.{0,100}\s\-dc\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string63 = /\/\.cme\/cme\.conf/
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string64 = /\/\.exegol\//
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string65 = /\/ASREProastables\.txt/
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string66 = /\/AzureHound\.ps1/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string67 = /\/bash_completion\.d\/exegol/
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string68 = /\/completions\/exegol\.fish/
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string69 = /\/CrackMapExec\.git/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string70 = /\/crackmapexec\/cme\.conf/
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string71 = /\/darkweb2017\-top100\.txt/
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string72 = /\/deepce\.sh\s.{0,100}\-\-install/
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string73 = /\/exegol\.py/
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string74 = /\/exegol_user_sources\.list/
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string75 = "/exegol-docker-build/"
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string76 = "/Exegol-history/"
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string77 = /\/Exegol\-images\-.{0,100}\.zip/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string78 = /\/Exegol\-images\.git/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string79 = /\/linpeas\.sh/
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string80 = "/metasploit-framework/embedded/framework" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string81 = /\/ntlmv1\.py/
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string82 = /\/opt\/\.exegol_aliases/
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string83 = "/opt/seclists/Discovery/"
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string84 = "/Plazmaz/LNKUp" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string85 = /\/pywsus\.py/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string86 = /\/Responder\/Responder\.conf/
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string87 = /\/root\/\.mozilla\/firefox\/.{0,100}\.Exegol/
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string88 = /\/shadowcoerce\.py/
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string89 = /\/targetedKerberoast\.py/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string90 = /\/theHarvester\.py/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string91 = "/tmp/metasploit_install"
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string92 = /\/top\-usernames\-shortlist\.txt/
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string93 = /\/uberfile\.py/
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string94 = "/usr/local/bin/exegol"
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string95 = /\/var\/log\/exegol\/.{0,100}\.log/
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string96 = ":'123pentest'" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string97 = /\\AzureHound\.ps1/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string98 = /\\Exegol\-.{0,100}\.zip/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string99 = /\\exegol\.py/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string100 = /\\Exegol\-images\-.{0,100}\.zip/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string101 = /\\Exegol\-images\-.{0,100}\\.{0,100}docker/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string102 = /\\pywsus\.py/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string103 = /\\shadowcoerce\.py/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string104 = /\\uberfile\.py/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string105 = /aclpwn\s\-f\s.{0,100}\s\-ft\scomputer\s\-t\s.{0,100}\s\-tt\sdomain\s\-d\s.{0,100}\s\-dry/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string106 = /addcomputer\.py\s\-computer\-name\s.{0,100}\s\-computer\-pass\s.{0,100}\s\-dc\-host\s.{0,100}\s\-domain\-netbios\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string107 = /addcomputer\.py\s\-delete\s\-computer\-name\s.{0,100}\s\-dc\-host\s.{0,100}\s\-domain\-netbios\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string108 = /addspn\.py\s\-u\s.{0,100}\s\-p\s.{0,100}\s\-t\s.{0,100}\s\-s\s.{0,100}\s\-\-additional\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string109 = "adidnsdump -u " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string110 = "aireplay-ng " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string111 = "aireplay-ng " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string112 = "airodump-ng " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string113 = "amass enum -d " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string114 = /avrdude\s\-c\susbasp\s\-p\sm328p\s\-U\sflash\:w\:avr\.hex/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string115 = "aws configure --profile exegol" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string116 = "bettercap -iface eth0" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string117 = /binwalk\s\-e\simage\.png/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string118 = "bloodhound &> /dev/null &" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string119 = /bloodhound\-import\s\-du\sneo4j\s\-dp\s.{0,100}\.json/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string120 = /bloodhound\-quickwin\s\-u\s.{0,100}\s\-p\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string121 = "bruteforce-luks -" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string122 = "bruteforce-luks -t 4 -l 5 -m 5 /dev/sdb1" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string123 = /bully\swlan1mon\s\-b\s.{0,100}\s\-c\s9\s\-S\s\-F\s\-B\s\-v\s3/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string124 = /buster\s\-e\s.{0,100}\s\-f\sjohn\s\-l\sdoe\s\-b\s\'.{0,100}.{0,100}.{0,100}.{0,100}1989\'/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string125 = "byt3bl33d3r/pth-toolkit" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string126 = "calebstewart/pwncat" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string127 = /cat\sdomains\.txt\s\|\sdnsx\s\-silent\s\-w\sjira.{0,100}grafana.{0,100}jenkins\s\-d\s\-/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string128 = "certipy find " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string129 = "certipy relay -ca " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string130 = "certipy req -username " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string131 = /certsync\s\-u\s.{0,100}\s\-p\s.{0,100}\-d\s.{0,100}\s\-ca\-ip\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string132 = /cewl\s\-\-depth\s.{0,100}\s\-\-with\-numbers\s\-/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string133 = /client\s\$ATTACKER\-IP\:\$ATTACKER\-PORT\sR\:\$PORT\:socks/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string134 = /cloudfail\.py\s\-\-target\sseo\.com\s\-\-tor/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string135 = "cloudmapper collect --account parent --profile parent" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string136 = /cloudmapper\sconfigure\sadd\-account\s\-\-config\-file\sconfig\.json\s\-\-name\sparent\s\-\-id\sXXX\s\-\-default\strue/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string137 = "cloudmapper configure discover-organization-accounts" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string138 = /cloudsplaining\screate\-multi\-account\-config\-file\s\-o\saccounts\.yml/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string139 = "cloudsplaining download --profile someprofile" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string140 = /cloudsplaining\sscan\s\-\-input\-file\sdefault\.json/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string141 = /cloudsplaining\sscan\-multi\-account\s\-c\saccounts\.yml\s\-r\sTargetRole\s\-\-output\-directory\s\.\//
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string142 = /cloudsplaining\sscan\-policy\-file\s\-\-input\-file\sexamples\/policies\/wildcards\.json/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string143 = /coercer\s\-d\s.{0,100}\s\-u\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string144 = /corscanner\s\-i\surls\.txt\s\-t\s100/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string145 = /cowpatty\s\-f\s.{0,100}\.txt\s\-r\s.{0,100}\.cap\s\-s\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string146 = /cp\ssliver\-.{0,100}\s\/opt\/tools\/bin/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string147 = /crackhound\.py\s\-\-verbose\s\-\-password\s.{0,100}\s\-\-plain\-text\s.{0,100}\s\-\-domain\s.{0,100}\s\-\-file\s.{0,100}\s\-\-add\-password\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string148 = /crunch\s4\s7\sabcdefghijklmnopqrstuvwxyz1234567890\s\-o\swordlist\.txt/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string149 = /curl\s.{0,100}\s\-\-upload\-file\sbackdoor\.php\s\-v/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string150 = "cypheroth -u neo4j -p " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string151 = /dacledit\.py\s\-action\swrite\s\-rights\sDCSync\s\-principal\s.{0,100}\s\-target\-dn\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string152 = "danielmiessler/SecLists" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string153 = /danielmiessler\/SecLists\.git/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string154 = /darkarmour\s\-f\s.{0,100}\.exe\s\-\-encrypt\sxor\s\-\-jmp\s\-\-loop\s7\s\-o\s.{0,100}\.exe/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string155 = "das add -db dbname masscan " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string156 = "das add -db dbname rustscan " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string157 = /das\sreport\s\-hosts\s192\.168\.1\.0\/24\s\-oA\sreport2/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string158 = "das scan -db dbname -hosts all -oA report1 -nmap '-Pn -sVC -O' -parallel" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string159 = /das\sscan\s\-db\sdbname\s\-ports\s22.{0,100}80.{0,100}443.{0,100}445\s\-show/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string160 = /dfscoerce\.py\s\-d\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string161 = /dirb\s.{0,100}http.{0,100}\s\/usr\/share\/seclists\/Discovery\/Web\-Content\/big\.txt/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string162 = "dirkjanm/ldapdomaindump" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string163 = "dirkjanm/PKINITtools" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string164 = /dirsearch\s\-r\s\-w\s\/usr\/share\/wordlists\/seclists\/Discovery\/Web\-Content\/quickhits\.txt/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string165 = /dnschef\s\-\-fakeip\s127\.0\.0\.1\s\-q/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string166 = /dnsx\s\-silent\s\-d\s.{0,100}\s\-w\sdns_worldlist\.txt/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string167 = /dnsx\s\-silent\s\-d\sdomains\.txt\s\-w\sjira.{0,100}grafana.{0,100}jenkins/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string168 = /DonPAPI\s\\"\$DOMAIN\\"\// nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string169 = /droopescan\sscan\sdrupal\s\-u\s.{0,100}\s\-t\s32/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string170 = "drupwn --mode exploit --target " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string171 = /dump_WPA\-PBKDF2\-PMKID_EAPOL\.hashcat/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string172 = /dump_WPA\-PMKID\-PBKDF2\.hashcat/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string173 = /eaphammer\s\-i\seth0\s\-\-channel\s4\s\-\-auth\swpa\-eap\s\-\-essid\s.{0,100}\s\-\-creds/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string174 = /echo\s.{0,100}\/24\s\|\sdnsx\s\-silent\s\-resp\-only\s\-ptr/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string175 = /echo\s\'8\.8\.8\.8\'\s\|\shakrevdns/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string176 = "EgeBalci/amber@latest" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string177 = "enum4linux-ng -A -u "
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string178 = "evilmog/ntlmv1-multi" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string179 = "evil-winrm -" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string180 = "exegol4thewin" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string181 = /ExegolController\.py/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string182 = "exegol-docker-build" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string183 = /ExegolExceptions\.py/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string184 = "Exegol-images-main" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string185 = /ExegolManager\.py/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string186 = /ExegolProgress\.py/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string187 = /ExegolPrompt\.py/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string188 = /eyewitness\s\-f\surls\.txt\s\-\-web/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string189 = /faketime\s\'202.{0,100}\szsh/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string190 = /fcrackzip\s\-u\s\-v\s\-D\s\-p\s.{0,100}\.zip/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string191 = /feroxbuster\s\-w\s.{0,100}fzf\-wordlists.{0,100}\s\-u\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string192 = "ffuf -fs 185 -c -w " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string193 = /fierce\s\-\-domain.{0,100}\s\-\-dns\-servers\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string194 = /finalrecon\.py\s\-\-/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string195 = /findDelegation\.py\s\-dc\-ip\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string196 = /FindUncommonShares\.p/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string197 = /frida\s\-l\sdisableRoot\.js\s\-f\sowasp\.mstg\.uncrackable1/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string198 = "frida-ps -U" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string199 = /fuxploider\s\-\-url\s.{0,100}\s\-\-not\-regex\s\\"wrong\sfile\stype\\"/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string200 = /geowordlists\s\-\-postal\-code\s75001\s\-\-kilometers\s25\s\-\-output\-file\s\/tmp\/around_paris\.txt/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string201 = "Get-GPPPassword -" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string202 = /GetNPUsers\.py\s\-request/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string203 = /getnthash\.py\s\-key\s\'8eb7a6388780dd52eb358769dc53ff685fd135f89c4ef55abb277d7d98995f72\'/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string204 = /getST\.py\s.{0,100}\s\-spn\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string205 = /getST\.py\s\-k\s\-no\-pass\s\-spn/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string206 = /getTGT\.py\s\-dc\-ip\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string207 = /gettgtpkinit\.py\s\-cert\-pfx/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string208 = /gettgtpkinit\.py\s\-pfx\-base64\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string209 = /gMSADumper\.py/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string210 = "gobuster dir -w " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string211 = /goldencopy\s.{0,100}\s\-\-password\s.{0,100}\s\-\-stealth\s\-\-krbtgt\s060ee2d06c5648e60a9ed916c9221ad19d90e5fb7b1cccf9d51f540fe991ada1\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string212 = "gopherus --exploit mysql" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string213 = /gosecretsdump\s\-ntds\s.{0,100}\-system\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string214 = /goshs\s\-b\s.{0,100}\s\-\-ssl\s\-\-self\-signed\s\-p\s.{0,100}\s\-d\s\/workspace/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string215 = /gpp\-decrypt\.py\s\-f\sgroups\.xml/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string216 = "h2csmuggler --scan-list " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string217 = /h2csmuggler\s\-x\s.{0,100}\s\-\-test/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string218 = /h8mail\s\-t\s.{0,100}\@.{0,100}\./ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string219 = "Hackndo/sprayhound" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string220 = "Hackplayers/evil-winrm" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string221 = "hackrf_sweep -f " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string222 = /hashonymize\s\-\-ntds\s.{0,100}\s\-\-kerberoast\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string223 = "HashPals/Name-That-Hash" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string224 = /\-\-hash\-type\s1000\s\-\-potfile\-path.{0,100}\.ntds\.cracked/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string225 = /hcxdumptool\s\-i\swlan1\s\-o\s.{0,100}\s\-\-active_beacon\s\-\-enable_status\=1/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string226 = /hcxhashtool\s\-i\s.{0,100}\.hashcat\s\-\-info\sstdout/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string227 = /hcxpcapngtool\s\-\-all\s\-o\s.{0,100}\.hashcat/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string228 = /hcxpcapngtool\s\-o\s.{0,100}\.hashcat\s.{0,100}\.pcapng/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string229 = /HOST\/EXEGOL\-01\./ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string230 = /Host\:\sFUZZ\.machine\.org/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string231 = /http.{0,100}\s\|\shakrawler\s\-d\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string232 = /HTTP\/EXEGOL\-01\./ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string233 = /infoga\.py\s\-/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string234 = "install_aclpwn" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string235 = "install_ad_apt_tools" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string236 = "install_adidnsdump" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string237 = "install_amber" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string238 = "install_bloodhound" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string239 = "install_bloodhound-import" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string240 = "install_bloodhound-py" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string241 = "install_bloodhound-quickwin" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string242 = "install_certipy" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string243 = "install_certsync" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string244 = "install_coercer" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string245 = "install_crackhound" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string246 = "install_cracking_apt_tools" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string247 = "install_crackmapexec" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string248 = "install_cypheroth" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string249 = "install_darkarmour" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string250 = "install_dfscoerce" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string251 = "install_donpapi" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string252 = "install_enum4linux-ng"
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string253 = "install_enyx" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string254 = "install_evilwinrm" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string255 = "install_finduncommonshares" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string256 = "install_gmsadumper" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string257 = "install_goldencopy" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string258 = "install_gosecretsdump" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string259 = "install_gpp-decrypt" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string260 = "install_hashonymize" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string261 = "install_impacket" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string262 = "install_keepwn" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string263 = "install_kerbrute" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string264 = "install_krbrelayx" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string265 = "install_ldapdomaindump" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string266 = "install_ldaprelayscan" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string267 = "install_ldapsearch-ad" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string268 = "install_lnkup" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string269 = "install_lsassy" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string270 = "install_manspider" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string271 = "install_mitm6_pip" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string272 = "install_noPac" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string273 = "install_ntlmv1-multi" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string274 = "install_oaburl" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string275 = "install_PassTheCert" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string276 = "install_pcredz" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string277 = "install_petitpotam" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string278 = "install_pkinittools" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string279 = "install_polenum" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string280 = "install_privexchange" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string281 = "install_pth-tools" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string282 = "install_pygpoabuse" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string283 = "install_pykek" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string284 = "install_pylaps" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string285 = "install_pypykatz" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string286 = "install_pywhisker" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string287 = "install_pywsus" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string288 = "install_responder" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string289 = "install_roastinthemiddle" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string290 = "install_ruler" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string291 = "install_rusthound" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string292 = "install_shadowcoerce" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string293 = "install_smartbrute" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string294 = "install_smbmap" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string295 = "install_smtp-user-enum" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string296 = "install_sprayhound" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string297 = "install_targetedKerberoast" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string298 = "install_webclientservicescanner" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string299 = "install_windapsearch-go" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string300 = "install_zerologon" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string301 = /\-\-interface\s.{0,100}\s\-\-wpad\s\-\-lm\s\-\-disable\-ess/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string302 = "ip link set ligolo up"
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string303 = /ip\sroute\sadd\s.{0,100}\sdev\sligolo/
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string304 = "ip tuntap add user root mode tun ligolo"
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string305 = "irkjanm/krbrelayx" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string306 = "jackit --reset --debug" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string307 = /jdwp\-shellifier\.py\s\-t\s.{0,100}\s\-p\s.{0,100}\s\-\-cmd\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string308 = "john --format=" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string309 = "john --wordlist=" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string310 = "joomscan -u " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string311 = /JuicyPotato\.exe/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string312 = "-K lsass_loot" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string313 = /KeePwn\splugin\sadd\s\-u\s.{0,100}\s\-p\s.{0,100}\s\-d\s.{0,100}\s\-t\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string314 = "KeePwn plugin check -u " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string315 = "kerbrute bruteuser " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string316 = "kerbrute passwordspray " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string317 = "kerbrute userenum " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string318 = /kraken\.py\s\-\-connect\s\-\-mode\s.{0,100}\s\-\-profile\s.{0,100}\s\-\-compiler\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string319 = /KRB5CCNAME\=.{0,100}\.ccache.{0,100}\sgetST\.py\s\-self\s\-impersonate\s.{0,100}\s\-k\s\-no\-pass\s\-dc\-ip\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string320 = /krbrelayx\.py\s\-/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string321 = /LdapRelayScan\.py/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string322 = "libnfc_crypto1_crack a0a1a2a3a4a5 0 A 4 B" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string323 = "ligolo-ng -selfcert" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string324 = /linkedin2username\.py\s\-u/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string325 = "linpeas_darwin_amd64"
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string326 = "linpeas_darwin_arm64"
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string327 = "linpeas_linux_386"
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string328 = "linpeas_linux_amd64"
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string329 = "linpeas_linux_arm"
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string330 = /linux\-exploit\-suggester\.sh/
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string331 = /linux\-smart\-enumeration\.sh/
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string332 = /lnk\-generate\.py\s\-\-host\s.{0,100}\s\-\-type\sntlm\s\-\-output\s.{0,100}\.lnk/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string333 = /lookupsid\.py\s\-hashes\s\:.{0,100}\s.{0,100}\@.{0,100}\s0/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string334 = "lsassy -v -" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string335 = /manspider\s\-\-threads\s.{0,100}\s\-d\s.{0,100}\s\-u\s.{0,100}\s\-H\s.{0,100}\s\-\-content\sadmin/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string336 = "mitm6 --" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string337 = /ms14\-068\.py\s\-u\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string338 = /ms14\-068\.py\s\-u/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string339 = /noPac\s.{0,100}\s\-dc\-ip\s.{0,100}\s\-\-impersonate\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string340 = /nrf24\-scanner\.py\s\-l\s\-v/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string341 = "nth --text 5f4dcc3b5aa765d61d8327deb882cf99" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string342 = "ntlmrelayx -" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string343 = "ntlmv1-multi --ntlmv1 " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string344 = "nuclei -u " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string345 = /oaburl\.py\s.{0,100}\/.{0,100}\:.{0,100}\@.{0,100}\s\-e\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string346 = /onesixtyone\s\-c\s.{0,100}snmp_default_pass\.txt/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string347 = /onesixtyone\s\-c\s.{0,100}wordlists\// nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string348 = "pass-station search tomcat" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string349 = /passthecert\.py\s\-action\sadd_computer\s\-crt\suser\.crt\s\-key\suser\.key\s\-domain\s.{0,100}\s\-dc\-ip\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string350 = /patator\sftp_login\shost\=.{0,100}\suser\=FILE0\s0\=.{0,100}\.txt\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string351 = /PCredz\s\-f\s.{0,100}\.pcap/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string352 = /pdfcrack\s\-f\s.{0,100}\.pdf/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string353 = /petitpotam\.py/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string354 = "phoneinfoga scan -n " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string355 = /photon\.py\s\-u\s.{0,100}\s\-l\s3\s\-t\s100\s\-\-wayback/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string356 = /php_filter_chain_generator\s\-\-chain\s.{0,100}php\ssystem.{0,100}\'cmd\'\]/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string357 = "phpggc -l" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string358 = /phpggc\smonolog\/rce1\sassert\s\'phpinfo\(\)\'/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string359 = "phpggc symfony/rce1 id" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string360 = "pip install exegol" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string361 = "pm3 -p /dev/ttyACM0" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string362 = /pre2k\sauth\s.{0,100}\s\-\-dc\-ip\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string363 = /printerbug\.py\s.{0,100}\:.{0,100}\@.{0,100}\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string364 = /privexchange\.py/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string365 = "prowler gcp --credentials-file path" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string366 = "proxmark3 -p /dev/ttyACM0" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string367 = /proxychains\satexec\.py/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string368 = /proxychains\sdcomexec\.py/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string369 = /proxychains\spsexec\.py/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string370 = "proxychains secretsdump" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string371 = /proxychains\ssmbexec\.py/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string372 = /proxychains\swmiexec\.py/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string373 = /pth\-net\srpc\sgroup\smembers\s.{0,100}Domain\sadmins/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string374 = /pth\-net\srpc\sgroup\smembers\s.{0,100}Exchange\sServers/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string375 = /pth\-net\srpc\spassword\s.{0,100}\s\-U\s.{0,100}\s\-S\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string376 = /pth\-net\srpc\suser\sadd\s.{0,100}\s\-U\s.{0,100}\-S\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string377 = /pwncat\-cs\s.{0,100}\:/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string378 = "pwncat-cs -lp " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string379 = "pwncat-cs ssh://" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string380 = /pwndb\s\-\-target\s\@.{0,100}\s\-\-output\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string381 = /pygpoabuse\s.{0,100}\s\-hashes\slm\:.{0,100}\s\-gpo\-id\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string382 = /pyLAPS\.py\s\-\-action\sget\s\-d\s.{0,100}\s\-u\s.{0,100}\s\-p\s.{0,100}\s\-\-dc\-ip\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string383 = /pyrit\s\-e\s.{0,100}\screate_essid/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string384 = /pyrit\s\-i\s.{0,100}\.txt\simport_passwords/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string385 = /pyrit\s\-r\s.{0,100}\.pcap\sattack_db/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string386 = /pyrit\s\-r\s.{0,100}\.pcap\s\-b\s.{0,100}\s\-i\s.{0,100}\.txt\sattack_passthrough/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string387 = /python\srsf\.py/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string388 = /python3\srsf\.py/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string389 = /pywhisker\.py\s\-/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string390 = /rbcd\.py\s\-delegate\-from\s.{0,100}\s\-delegate\-to\s.{0,100}\s\-dc\-ip\s.{0,100}\s\-action\swrite\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string391 = "rebootuser/LinEnum" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string392 = /reg\.py\s.{0,100}\@.{0,100}\ssave\s\-keyName\s\'HKLM\\SAM/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string393 = /reg\.py\s.{0,100}\@.{0,100}\ssave\s\-keyName\s\'HKLM\\SECURITY/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string394 = /reg\.py\s.{0,100}\@.{0,100}\ssave\s\-keyName\s\'HKLM\\SYSTEM/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string395 = "register-python-argcomplete --no-defaults exegol" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string396 = /renameMachine\.py\s\-current\-name\s.{0,100}\s\-new\-name\s.{0,100}\s\-dc\-ip\s.{0,100}\s.{0,100}\:/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string397 = "responder --interface" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string398 = /Responder\/tools\/MultiRelay\/bin\/Runas\.exe/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string399 = /Responder\/tools\/MultiRelay\/bin\/Syssvc\.exe/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string400 = "responder-http-off" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string401 = "responder-http-on" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string402 = "responder-smb-off" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string403 = "responder-smb-on" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string404 = "rlwrap nc -lvnp " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string405 = /roastinthemiddle\s\-i\s.{0,100}\s\-t\s.{0,100}\s\-u\s.{0,100}\.txt\s\-g\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string406 = "ropnop/go-windapsearch" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string407 = "rsactftool --" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string408 = /rsactftool.{0,100}\s\-\-dumpkey\s\-\-key\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string409 = /ruler\s.{0,100}\sabk\sdump\s\-o\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string410 = /ruler\s\-k\s\-d\s.{0,100}\sbrute\s\-\-users\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string411 = /rusthound\s.{0,100}\s\-\-zip\s\-\-ldaps\s\-\-adcs\s\-\-old\-bloodhound/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string412 = "samdump2 SYSTEM SAM > " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string413 = "--script broadcast-dhcp-discover" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string414 = "searchsploit -m " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string415 = "searchsploit -x " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string416 = /secret_fragment_exploit\.py\s.{0,100}\/_fragment/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string417 = "secretsdump -sam " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string418 = /shadowcoerce\.py\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string419 = "ShawnDEvans/smbmap" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string420 = /shellerator\s\-\-reverse\-shell\s\-\-lhost\s.{0,100}\s\-\-lport\s.{0,100}\s\-\-type\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string421 = "ShutdownRepo/smartbrute" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string422 = /sipvicious_svcrack.{0,100}\s\-u100/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string423 = /smartbrute\s.{0,100}kerberos/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string424 = "-smb2support --remove-mic --shadow-credentials --shadow-target " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string425 = /smbexec\.py\s\-hashes\s\:/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string426 = /smbexec\.py\s\-share/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string427 = "smbmap -u guest -H " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string428 = /smbpasswd\.py\s\-newpass\s/
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string429 = /smbserver\.py\s\-smb2support\sEXEGOL/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string430 = /smtp\-user\-enum\s.{0,100}\s\-M\sEXPN\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string431 = /smtp\-user\-enum\s.{0,100}\s\-M\sRCPT\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string432 = /smtp\-user\-enum\s.{0,100}\s\-M\sVRFY\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string433 = /spiderfoot\s\-l\s127\.0\.0\.1\:/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string434 = "spiderfoot-cli -s http" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string435 = /SpoolSample_v4\.5_x64\.exe/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string436 = "sprayhound -d " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string437 = "sqlmap --forms --batch -u " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string438 = /sshuttle\s\-r\s.{0,100}0\.0\.0\.0\/24/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string439 = /ssrfmap\s\-r\s.{0,100}\.txt\s\-p\sid\s\-m\sreadfiles.{0,100}portscan/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string440 = "subfinder -d " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string441 = "subfinder -silent -d " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string442 = "sublist3r -v -d " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string443 = /swaks\s\-\-to\s.{0,100}\s\-\-from\s.{0,100}\s\-\-header\s.{0,100}Subject\:\s.{0,100}\s\-\-body\s.{0,100}\s\-\-server\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string444 = "swisskyrepo/SSRFmap" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string445 = "tarunkant/Gopherus" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string446 = "ThePorgs/Exegol-images" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string447 = /ticketer\.py\s\-nthash/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string448 = /timing_attack\s.{0,100}\s\-\-brute\-force/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string449 = /tls\-scanner\s\-connect\s.{0,100}\:/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string450 = /tomcatWarDeployer\s\-v\s\-x\s\-p\s.{0,100}\s\-H\s.{0,100}\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string451 = /trevorspray\s.{0,100}\-\-recon\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string452 = "trevorspray -u " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string453 = "trickster0/Enyx" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string454 = /twint\s\-g\=.{0,100}km.{0,100}\s\-o\s.{0,100}\s\-\-csv/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string455 = /twint\s\-u\s.{0,100}\s\-\-since\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string456 = /uberfile\s\-\-lhost.{0,100}\s\-\-lport\s.{0,100}\s\-\-target\-os\s.{0,100}\s\-\-downloader\s/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string457 = "wafw00f https://" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string458 = "webclientservicescanner -dc-ip " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string459 = /webshell\-exegol\.php/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string460 = /weevely\sgenerate\s.{0,100}\.php/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string461 = /weevely\shttps\:\/\/.{0,100}\.php\s.{0,100}\sid/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string462 = /wfuzz\s\-\-.{0,100}\.txt/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string463 = "Wh1t3Fox/polenum" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string464 = /wifite\s\-\-dict\s.{0,100}\.txt/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string465 = "wifite --kill" nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string466 = "windapsearch --dc " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string467 = /winPEAS\.bat/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string468 = /winPEASany\.exe/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string469 = /winPEASany_ofs\.exe/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string470 = /winPEASx64\.exe/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string471 = /winPEASx86\.exe/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string472 = /winPEASx86_ofs\.exe/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string473 = /wmiexec\.py\s\-/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string474 = "wpscan --api-token " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string475 = "XSpear -u " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string476 = "xsrfprobe -u " nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string477 = /xsser\s\-u\s.{0,100}\s\-g\s.{0,100}\/login\?password\=.{0,100}\s\-\-Coo/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string478 = /zerologon\sclone\s.{0,100}https/ nocase ascii wide
        // Description: Fully featured and community-driven hacking environment with hundreds of offensive tools
        // Reference: https://github.com/ThePorgs/Exegol
        $string479 = /zerologon\-restore\s.{0,100}\s\-target\-ip\s/ nocase ascii wide
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
