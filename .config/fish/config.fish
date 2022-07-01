if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_prompt -d "Write out the prompt"
	printf 'The last command exited with code : [%s]\n[%s%s%s at %s%s%s in %s%s%s]%s\n-> ' $status \
	(set_color c397d8) $USER (set_color normal) \
	(set_color blue) $hostname (set_color normal) \
	(set_color e7c547) (basename (pwd)) (set_color normal) \
	(__get_git_status)
end

function fish_greeting
end

function __get_git_status
	set -l is_git_repository (git rev-parse --is-inside-work-tree 2> /dev/null)
	if test -n "$is_git_repository"
		printf " - [%s%s%s:%s%s%s]" \
		(set_color d7ff00) (basename $(git rev-parse --show-toplevel)) (set_color normal) \
		(set_color red) (git branch --show-current) (set_color normal)
	end
end
