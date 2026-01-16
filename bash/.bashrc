#
# ~/.bashrc
# Author: maodun
# Modifydate: 2026.1.12



# If not running interactively, don't do anything
        [[ $- != *i* ]] && return



# Promot Configuration 
	PS1='[\u@\h \W]\$ '



# Alias Configuration
	# Display Color 
		alias ls='ls --color=auto'
		alias grep='grep --color=auto'

	# Manager Application
		alias install='sudo pacman -S'
		alias uninstall='sudo pacman -Rs'
		alias update='sudo pacman -Syu'

	# Control Disk 
		alias mount='sudo mount -t exfat -o uid=$(id -u),gid=$(id -g),umask=022 /dev/sda1 /mnt'
		alias umount='sudo umount -l /mnt'

	# Display Computer Condition
		alias time='timedatectl | grep Local'
		alias bat='cat /sys/class/power_supply/BAT0/capacity'
		alias bt='bluetoothctl info | awk 'NR==10''
		alias sound='wpctl get-volume @DEFAULT_AUDIO_SINK@ && pactl get-sink-mute @DEFAULT_SINK@'
	
	# Lanuch Application Independently
		alias firefox='firefox &disown'	
		alias steam='steam & disown'
		alias gimp='gimp & disown'
		alias kdenlive='kdenlive & disown'

	# Git Command
		alias g='git'

	# SSH Command
		alias rsa='eval "$(ssh-agent -s)"'
		alias asa='ssh-add -t 1h ~/.ssh/key'
		alias dsa='ssh-add -D'



# Functions Configuration
	# Display Computer Condition
		mem() {
			free | awk 'NR==2 {printf "%.1f%\n", ($2-$7)/$2*100}'	
		}



# Application Configuration
	# Vim
		export EDITOR=vim
		export VISUAL=vim

	# Yazi
		function y() {
			local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
			command yazi "$@" --cwd-file="$tmp"
			IFS= read -r -d '' cwd < "$tmp"
			[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
			rm -f -- "$tmp"
		}


