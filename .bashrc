## INBUILT CONFIGS
# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh

# MY CONFIGS
export PATH=$PATH:$HOME/.atuin/bin
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/bin/bin
export PATH=$PATH:$HOME/go/bin
export GTK_THEME=Adwaita-dark
export GTK2_RC_FILES=/usr/share/themes/Adwaita-dark/gtk-2.0/gtkrc
export QT_STYLE_OVERRIDE=Adwaita-Dark
eval "$(atuin init bash)"

