###############################################################################
# ceerious i3 status config
# see "man i3status" for documentation.
#
# It is important that this file is edited as UTF-8.
# The following line should contain a sharp s:
# ß
# If the above line is not correctly displayed, fix your editor first!
###############################################################################

general {
    interval 		= 1
    colors 			= true
    color_good      = '#88b090'
    color_degraded  = '#ccdc90'
    color_bad       = '#e89393'
}

order += "volume master"
order += "disk /"
#order += "disk /home"
#order += "run_watch DHCP"
#order += "ipv6"
#order += "run_watch VPN"
order += "wireless wlp4s0"
order += "ethernet enp0s25"
order += "battery 0"
order += "cpu_temperature 0"
order += "cpu_usage 0"
order += "load"
order += "tztime local"

wireless wlp4s0 {
    format_up = "%quality  %essid %ip"
    format_down = ""
}

ethernet enp0s25 {
    #if you use %speed, i3status requires root privileges
    format_up = "%ip (%speed)"
    format_down = ""
}

battery 0 {
    format = "%status %percentage %remaining"
    format_down = ""
    last_full_capacity = true
    integer_battery_capacity = true
    low_threshold = 11
    threshold_type = percentage
    hide_seconds = true
    status_chr = "c "
    status_bat = "b "
    status_unk = "u "
    status_full = "f "
}

run_watch DHCP {
    pidfile = "/var/run/dhclient*.pid"
}

run_watch VPN {
    pidfile = "/var/run/vpnc/pid"
}

tztime local {
    format = "%V  %A %e.%B   %H:%M:%S"
}

load {
    format = " %1min"
}

cpu_usage {
    format = " %usage"
}

cpu_temperature 0 {
	format = " %degrees°C"
}

disk "/" {
	format = " %avail"
	prefix_type	= custom
	low_threshold = 20
	threshold_type = percentage_avail
}

volume master {
    format = "%volume  "
    format_muted = " "
    device = "default"
    mixer = "Master"
    mixer_idx = 0
}
