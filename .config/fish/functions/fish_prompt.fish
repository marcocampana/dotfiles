function fish_prompt --description 'Write out the prompt'
	switch $USER
	case root toor
		set suffix '#'
	case '*'
		set suffix '→'
	end

	~/dotfiles/powerline-shell.py $status --shell bare ^/dev/null
	printf "\n"
	printf $suffix
	printf " "
end
