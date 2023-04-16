function uconf
	switch $argv[1]
		case 'uconf'
			vim ~/.config/fish/functions/uconf.fish
		case 'alacritty'
			vim ~/.config/alacritty/alacritty.yml
		case 'fish'
			vim ~/.config/fish/config.fish
		case 'yabai'
			vim ~/.config/yabai/yabairc
		case 'skhd'
			vim ~/.config/skhd/skhdrc
		case '*'
			echo Unknown user config file: $argv[1]
	end
end
