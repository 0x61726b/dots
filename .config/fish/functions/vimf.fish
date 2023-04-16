function vimf
	vim (fzf --query=$argv --preview='bat --color=always --theme=gruvbox-dark --style=numbers' --bind shift-up:preview-page-up,shift-down:preview-page-down)
end
