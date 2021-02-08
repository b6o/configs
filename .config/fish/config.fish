abbr -a o xdg-open
abbr -a e vim
abbr -a ls 'ls --color'

if status --is-interactive
	and not set -q TMUX
  	tmux new-session -A -s main
end

function fish_prompt
	set_color green
	echo -n (hostname)
	if [ $PWD != $HOME ]
		set_color brblack
		echo -n ':'
		set_color yellow
		echo -n (basename $PWD)
	end
	set_color green
	printf '%s ' (__fish_git_prompt)
	set_color red
	echo -n '» '
	set_color normal
end

function fish_greeting
end
