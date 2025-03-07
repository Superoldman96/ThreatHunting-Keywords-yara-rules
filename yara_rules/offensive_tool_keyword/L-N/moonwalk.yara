rule moonwalk
{
    meta:
        description = "Detection patterns for the tool 'moonwalk' taken from the ThreatHunting-Keywords github project"
        author = "@mthcht"
        reference = "https://github.com/mthcht/ThreatHunting-Keywords"
        tool = "moonwalk"
        rule_category = "offensive_tool_keyword"

    strings:
        // Description: Cover your tracks during Linux Exploitation by leaving zero traces on system logs and filesystem timestamps.
        // Reference: https://github.com/mufeedvh/moonwalk
        $string1 = " -o moonwalk"
        // Description: Cover your tracks during Linux Exploitation by leaving zero traces on system logs and filesystem timestamps.
        // Reference: https://github.com/mufeedvh/moonwalk
        $string2 = /\/\.MOONWALK/
        // Description: Cover your tracks during Linux Exploitation by leaving zero traces on system logs and filesystem timestamps.
        // Reference: https://github.com/mufeedvh/moonwalk
        $string3 = /\/log_file_timestamps\.json/
        // Description: Cover your tracks during Linux Exploitation by leaving zero traces on system logs and filesystem timestamps.
        // Reference: https://github.com/mufeedvh/moonwalk
        $string4 = /\/moonwalk\.git/
        // Description: Cover your tracks during Linux Exploitation by leaving zero traces on system logs and filesystem timestamps.
        // Reference: https://github.com/mufeedvh/moonwalk
        $string5 = "/moonwalk_darwin"
        // Description: Cover your tracks during Linux Exploitation by leaving zero traces on system logs and filesystem timestamps.
        // Reference: https://github.com/mufeedvh/moonwalk
        $string6 = /\/v1\.0\.0\/moonwalk_linux/
        // Description: Cover your tracks during Linux Exploitation by leaving zero traces on system logs and filesystem timestamps.
        // Reference: https://github.com/mufeedvh/moonwalk
        $string7 = "4c368fe58781e363b1176be2a6efcfaaa74432309d1cfc251174a5650debfbe8"
        // Description: Cover your tracks during Linux Exploitation by leaving zero traces on system logs and filesystem timestamps.
        // Reference: https://github.com/mufeedvh/moonwalk
        $string8 = "62a69abb559cbca8163cb933445bce62a2e73f5dffcf2a77e28f8f64fc1889fd"
        // Description: Cover your tracks during Linux Exploitation by leaving zero traces on system logs and filesystem timestamps.
        // Reference: https://github.com/mufeedvh/moonwalk
        $string9 = "90873c2ac02c860b3b6ec7cf262ab58504ff187dd9e638bbabef94e985607836"
        // Description: Cover your tracks during Linux Exploitation by leaving zero traces on system logs and filesystem timestamps.
        // Reference: https://github.com/mufeedvh/moonwalk
        $string10 = /clear_me_from_history\(\)\?/
        // Description: Cover your tracks during Linux Exploitation by leaving zero traces on system logs and filesystem timestamps.
        // Reference: https://github.com/mufeedvh/moonwalk
        $string11 = "Finish moonwalk and clear your traces"
        // Description: Cover your tracks during Linux Exploitation by leaving zero traces on system logs and filesystem timestamps.
        // Reference: https://github.com/mufeedvh/moonwalk
        $string12 = "moonwalk finish"
        // Description: Cover your tracks during Linux Exploitation by leaving zero traces on system logs and filesystem timestamps.
        // Reference: https://github.com/mufeedvh/moonwalk
        $string13 = /moonwalk\sget\s.{0,1000}history/
        // Description: Cover your tracks during Linux Exploitation by leaving zero traces on system logs and filesystem timestamps.
        // Reference: https://github.com/mufeedvh/moonwalk
        $string14 = "moonwalk start"
        // Description: Cover your tracks during Linux Exploitation by leaving zero traces on system logs and filesystem timestamps.
        // Reference: https://github.com/mufeedvh/moonwalk
        $string15 = "mufeedvh/moonwalk"

    condition:
        any of them
}
