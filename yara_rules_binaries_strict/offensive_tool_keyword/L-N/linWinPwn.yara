rule linWinPwn
{
    meta:
        description = "Detection patterns for the tool 'linWinPwn' taken from the ThreatHunting-Keywords github project" 
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "linWinPwn"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string1 = " aad3b435b51404eeaad3b435b51404ee" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string2 = " --asreproast " nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string3 = /\scoerce\s.{0,100}\s\-\-dc\-ip\s/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string4 = /\s\-\-dc\s.{0,100}\s\-m\scustom\s\-\-filter\s.{0,100}objectCategory/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string5 = /\s\-dc\-ip\s.{0,100}\s\-dump\s/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string6 = /\s\-\-dc\-ip\s.{0,100}\s\-\-vuln\s\-\-enabled/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string7 = /\s\-dc\-ip\s.{0,100}SAMDump/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string8 = " --force-kerb " nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string9 = /\s\-\-format\=krb5asrep.{0,100}\s\-\-wordlist\=/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string10 = " -g -n --kerberoast" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string11 = " --impersonate Administrator -shell " nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string12 = /\s\-ip\s.{0,100}\s\-smb2support\s.{0,100}lwpshare.{0,100}\s/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string13 = /\sldap\s.{0,100}\s\-\-gmsa\s.{0,100}dump/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string14 = " linWinPwn" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string15 = " -M dfscoerce " nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string16 = " -M handlekatz " nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string17 = " -M keepass_discover " nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string18 = " -M laps --kdcHost " nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string19 = " -M ldap-checker " nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string20 = " -M lsassy " nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string21 = " -M MAQ --kdcHost " nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string22 = /\s\-M\smasky\s.{0,100}CA\=/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string23 = " -M ms17-010 " nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string24 = " -M mssql_priv " nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string25 = " -M nanodump " nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string26 = " -M petitpotam " nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string27 = " -M printnightmare " nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string28 = " -m privileged-users --full " nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string29 = " -M procdump " nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string30 = " -M runasppl " nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string31 = " -M shadowcoerce " nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string32 = " -M spider_plus " nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string33 = " -M teams_localdb " nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string34 = " -M zerologon " nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string35 = " -no-pass -just-dc-user " nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string36 = /\s\-no\-preauth\s.{0,100}\s\-dc\-ip\s/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string37 = " --only-abuse --dc-host " nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string38 = /\s\-\-password\-not\-required\s\-\-kdcHost\s.{0,100}cme/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string39 = /\s\-pfx\s.{0,100}\.pfx\s\-dc\-ip\s/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string40 = " -request -dc-ip " nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string41 = /\s\-\-rid\-brute\s2\>\&1\s.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string42 = " -save-old -dc-ip " nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string43 = /\sscan\s.{0,100}\s\-\-dc\-ip\s/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string44 = /\ssmb\s.{0,100}\s\-\-dpapi\s.{0,100}password/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string45 = /\ssmb\s.{0,100}\s\-\-gen\-relay\-list\s.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string46 = /\ssmb\s.{0,100}\s\-\-lsa\s\-\-log\s/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string47 = /\ssmb\s.{0,100}\s\-M\smsol\s/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string48 = /\ssmb\s.{0,100}\s\-M\sntlmv1\s/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string49 = /\ssmb\s.{0,100}\s\-\-ntds\s\-\-log\s/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string50 = /\ssmb\s.{0,100}\s\-\-sam\s\-\-log\s/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string51 = /\suserenum\s.{0,100}\s\-\-dc\s/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string52 = " -vulnerable -stdout -hide-admins" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string53 = /\$attacker_IPlist/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string54 = /\/asreproast_hashes_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string55 = /\/cme_adcs_output_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string56 = "/cme_shares_output_" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string57 = "/cme_spooler_output_" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string58 = /\/coercer_output_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string59 = /\/Credentials\/.{0,100}\.ccache/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string60 = /\/Credentials\/firefox_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string61 = /\/Credentials\/msol_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string62 = /\/dcsync_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string63 = /\/DomainRecon\/.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string64 = /\/gMSA_dump_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string65 = /\/keepass_discover_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string66 = /\/kerberoast_hashes_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string67 = /\/laps_dump_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string68 = "/ldeepDump" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string69 = "/linWinPwn" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string70 = /\/lsa_dump_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string71 = /\/manspider_output.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string72 = "/manspiderDump" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string73 = /\/nmap_smb_scan_all_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string74 = /\/ntds_dump_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string75 = "/opt/lwp-scripts" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string76 = "/opt/lwp-wordlists" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string77 = /\/rockyou\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string78 = /\/sam_dump_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string79 = /\/Scans\/servers_all_smb.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string80 = /\/secretsdump_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string81 = "/smbmapDump" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string82 = /\/windapsearch_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string83 = "asrep_attack" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string84 = "asreprc4_attack" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string85 = "asreproast_john_results_" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string86 = /asreproast_output_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string87 = "bhd_enum_dconly" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string88 = /bloodhound_output.{0,100}\/dev\/null/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string89 = /bloodhound_output_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string90 = "bloodhound_output_dconly_" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string91 = /certi\.py_vulntemplates_output/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string92 = "certi_py_enum" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string93 = "certipy_enum" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string94 = "certsync_ntds_dump" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string95 = /cirt\-default\-usernames\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string96 = /cme_bloodhound_output_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string97 = /cme_dfscoerce_output_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string98 = "cme_get-desc-users_pass_output_" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string99 = "cme_get-desc-users_pass_results" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string100 = /cme_gpp_output_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string101 = "cme_ldap-checker_output_" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string102 = "cme_MachineAccountQuota_output_" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string103 = "cme_ms17-010_output_" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string104 = /cme_mssql_priv_output_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string105 = "cme_ntlmv1_output_" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string106 = /cme_passpol_output_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string107 = /cme_petitpotam_output_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string108 = /cme_printnightmare_output_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string109 = /cme_runasppl_output_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string110 = /cme_shadowcoerce_output_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string111 = "cme_smb_enum" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string112 = /cme_smbsigning_output_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string113 = /cme_subnets_output_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string114 = "cme_trusted-for-delegation_output_" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string115 = /cme_users_auth_ldap_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string116 = /cme_users_auth_smb_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string117 = /cme_users_nullsess_smb_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string118 = /cme_webdav_output_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string119 = /cme_zerologon_output_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string120 = "coercer_check" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string121 = /Credentials.{0,100}hekatomb_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string122 = "Credentials/certsync_" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string123 = "Credentials/SAMDump" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string124 = "deleg_enum_imp" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string125 = "dfscoerce_check" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string126 = /DomainRecon.{0,100}ridbrute/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string127 = "DomainRecon/ADCS" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string128 = "DomainRecon/BloodHound" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string129 = "DomainRecon/SilentHound" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string130 = "donpapi_dump" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string131 = "dpapi_dump" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string132 = /dpapi_dump_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string133 = /enum4linux_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string134 = "finduncshar_scan" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string135 = "gmsa_dump" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string136 = "handlekatz_dump" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string137 = "hekatomb_dump" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string138 = "impacket_findDelegation" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string139 = "impacket_rpcdump_output_" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string140 = "john_crack_asrep" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string141 = "john_crack_kerberoast" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string142 = "juicycreds_dump" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string143 = "-k -no-pass -p '' --auth-method kerberos" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string144 = "kerberoast_attack" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string145 = "kerberoast_blind_output_" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string146 = "kerberoast_john_results_" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string147 = "kerbrute_enum" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string148 = "kerbrute_pass_output_" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string149 = "kerbrute_user_output_" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string150 = "kerbrute_userpass_wordlist_" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string151 = "laps_dump" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string152 = "LDAPDomainDump" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string153 = "ldeep_enum" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string154 = "linWinPwn-" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string155 = /linWinPwn\./ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string156 = "lsass_dump_" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string157 = "lsass_dump_lsassy_" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string158 = "lsassy_dump" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string159 = "manspider_scan" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string160 = "masky_dump" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string161 = "ms14-068_check" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string162 = "ms17-010_check" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string163 = "msol_dump" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string164 = "nanodump_dump" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string165 = /nmap_smb_scan_custom_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string166 = "ntlmv1_check" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string167 = /Passwords\/Leaked\-Databases.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string168 = "petitpotam_check" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string169 = "printnightmare_check" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string170 = "procdump_dump" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string171 = "pwd_dump " nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string172 = "ridbrute_attack" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string173 = /rpc\:\/\/.{0,100}\s\-rpc\-mode\sICPR\s\-icpr\-ca\-name\s/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string174 = "rpcdump_check" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string175 = "runasppl_check" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string176 = "secrets_dump" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string177 = "secrets_dump_dcsync" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string178 = "shadowcoerce_check" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string179 = "Shares/cme_spider_plus" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string180 = /Shares\/finduncshar_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string181 = "silenthound_enum" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string182 = /silenthound_output_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string183 = "smbmapDump" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string184 = "smbsigning_check" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string185 = "spooler_check" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string186 = "targetedkerberoast_attack" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string187 = /targetedkerberoast_hashes_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string188 = /targetedkerberoast_output_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string189 = "--trusted-for-delegation --kdcHost " nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string190 = /user_eq_pass_valid_cme_.{0,100}\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string191 = "userpass_cme_check" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string192 = "userpass_kerbrute_check" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string193 = "users_list_cme_ldap_nullsess_" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string194 = "users_list_kerbrute_" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string195 = "users_list_ridbrute_" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string196 = "veeam_dump" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string197 = "Vulnerabilities/RPCDump" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string198 = "windapsearch_enum" nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string199 = /xato\-net\-10\-million\-usernames\.txt/ nocase ascii wide
        // Description: linWinPwn is a bash script that automates a number of Active Directory Enumeration and Vulnerability checks
        // Reference: https://github.com/lefayjey/linWinPwn
        $string200 = "zerologon_check" nocase ascii wide
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