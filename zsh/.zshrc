# --- Historial y Autocompletado ---
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
autoload -Uz compinit && compinit

# --- Plugins (Instalados via Pacman) ---
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# --- Alias ---
alias n='nvim'
alias storage='cd /mnt/storage'
alias ls='ls -lah --color=auto'

# Alias para el control de IP
alias sip='~/.config/waybar/scripts/show-ip'
alias hip='~/.config/waybar/scripts/hide-ip'
alias st='~/.config/waybar/scripts/set-target'

# --- Inicializar Starship ---
eval "$(starship init zsh)"

export PATH="$HOME/.config/waybar/scripts:$PATH"

# Mapeo de teclas Inicio y Fin
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
# Opcional: Mapeo de la tecla Suprimir (Delete) si también te falla
bindkey '^[[3~' delete-char
