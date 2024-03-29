#--[i3 configuration file]--#

# mod touch
set $mod Mod4

# default programs
set $browser firefox
set $TERMINAL rxvt-unicode

# font 
#font hack

# default layout
workspace_layout default 

# gaps 
set $default_gaps_inner 20
set $default_gaps_outer 7
gaps inner $default_gaps_inner
gaps outer $default_gaps_outer

# borders 
for_window [class="*"] border pixel 2
new_window pixel 1
new_float pixel 1

# class                 border  backgr. text    indicator
client.focused          #000000 #FFFFFF #000000 #FFFFFF
client.focused_inactive #000000 #000000 #FFFFFF #000000
client.unfocused        #000000 #000000 #FFFFFF #000000
client.urgent           #000000 #000000 #ffffff #000000
client.placeholder      #000000 #000000 #ffffff #000000

# Rofi
bindsym $mod+d exec --no-startup-id rofi -show run -width 400 -lines 5 -font "Ohsnap 9" -hide-scrollbar -glob -separator-style "dash" 

# start a terminal
bindsym $mod+Return exec urxvt

# autostart programs
exec --no-startup-id xrdb -load ~/.Xdefaults
exec --no-startup-id compton
exec --no-startup-id dropbox start
exec --no-startup-id dbus-launch i3
exec feh --bg-fill ~/Images/Feh

# start programs shortcuts
bindsym $mod+i  exec --no-startup-id firefox
bindsym $mod+p  exec --no-startup-id leafpad
bindsym $mod+l  exec --no-startup-id libreoffice
bindsym $mod+t  exec --no-startup-id pcmanfm
bindsym $mod+w  exec --no-startup-id wicd-gtk
bindsym $mod+j  exec --no-startup-id transmission-gtk
bindsym $mod+k  exec --no-startup-id lxappearance
bindsym $mod+Ctrl+f  exec --no-startup-id epdfview

# kill focused window
bindsym $mod+Shift+q kill

# change focus windows
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# move focused windows alternatively, you can use the cursor keys:
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right

# split in horizontal orientation
bindsym $mod+h split h

# split in vertical orientation
bindsym $mod+v split v

# enter fullscreen mode for the focused container
bindsym $mod+f fullscreen toggle

# change container layout (stacked, tabbed, toggle split)
bindsym $mod+s layout stacking
bindsym $mod+z layout tabbed
bindsym $mod+e layout toggle split

# toggle tiling / floating
bindsym $mod+Shift+space floating toggle

# change focus between tiling / floating windows
bindsym $mod+space focus mode_toggle

# focus the parent container
bindsym $mod+q focus parent

# switch to workspace
bindsym $mod+1 workspace 1
bindsym $mod+2 workspace 2
bindsym $mod+3 workspace 3
bindsym $mod+4 workspace 4
bindsym $mod+5 workspace 5
bindsym $mod+6 workspace 6
bindsym $mod+7 workspace 7
bindsym $mod+8 workspace 8
bindsym $mod+9 workspace 9
bindsym $mod+10 workspace 10

# move focused container to workspace
bindsym $mod+Shift+1 move container to workspace $workspace1
bindsym $mod+Shift+2 move container to workspace $workspace2
bindsym $mod+Shift+3 move container to workspace $workspace3
bindsym $mod+Shift+4 move container to workspace $workspace4
bindsym $mod+Shift+5 move container to workspace $workspace5
bindsym $mod+Shift+6 move container to workspace $workspace6
bindsym $mod+Shift+egrave move container to workspace $workspace7
bindsym $mod+Shift+8 move container to workspace $workspace8
bindsym $mod+Shift+ccedilla move container to workspace $workspace9
bindsym $mod+Shift+agrave move container to workspace$workspace10

# reload the configuration file
bindsym $mod+Shift+c reload

# restart i3 inplace 
bindsym $mod+Shift+r restart

# exit i3 
bindsym $mod+Shift+e exec "i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -b 'absolutely' 'i3-msg exit'"

# resize window (you can also use the mouse for that)
bindsym $mod+r mode "resizej

mode "resize" {
        
	bindsym j resize shrink width 10 px or 10 ppt
        bindsym k resize grow height 10 px or 10 ppt
        bindsym l resize shrink height 10 px or 10 ppt
        bindsym m resize grow width 10 px or 10 ppt

        # same bindings, but for the arrow keys
        bindsym Left resize shrink width 10 px or 10 ppt
        bindsym Down resize grow height 10 px or 10 ppt
        bindsym Up resize shrink height 10 px or 10 ppt
        bindsym Right resize grow width 10 px or 10 ppt

        # back to normal: Enter or Escape
        bindsym Return mode "default"
        bindsym Escape mode "default"
}

# Status bar
bindsym $mod+m bar mode invisible
bindsym $mod+Shift+M bar mode dock

bar {
     colors {
			 statusline #FFFFFF
    			 background #000000
					    #Border #Backgr #Font
			 focused_workspace  #000000 #FFFFFF #000000
      			 active_workspace   #000000 #000000 #FFFFFF
      			 inactive_workspace #000000 #000000 #FFFFFF
      			 urgent_workspace   #000000 #CB4F29 #FFFFFF
	     
	}
			status_command i3status --config $HOME/.i3/i3status
   			position bottom
			workspace_buttons yes    
			font pango:Hack 7
}

exec_always "setxkbmap -layout it"
