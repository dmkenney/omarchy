echo "Clear the tmux status line under prompts on tmux 3.8"

tmux_config="$HOME/.config/tmux/tmux.conf"

if [[ -f $tmux_config ]] && grep -qxF 'set -g message-style "bg=default,fg=blue"' "$tmux_config"; then
  sed -i --follow-symlinks 's/^set -g message-style "bg=default,fg=blue"$/set -g message-style "bg=default,fg=blue,fill=terminal"/' "$tmux_config"
  omarchy-restart-tmux
fi
