[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_COMMAND='fd --exclude={.git,.idea,.vscode,.sass-cache,node_modules,build} --type f'
export FZF_CTRL_T_COMMAND='fd --type f'
export FZF_ALT_C_COMMAND='fd --type d'
export FZF_COMPLETION_TRIGGER=''
export FZF_DEFAULT_OPTS="--height 40% --reverse --border --prompt '>>>' \
    --bind 'alt-j:preview-down,alt-k:preview-up,alt-v:execute(vi {})+abort,ctrl-y:execute-silent(cat {} | pbcopy)+abort,?:toggle-preview' \
    --header 'A-j/k: preview down/up, A-v: open in vim, C-y: copy, ?: toggle preview' \
    --preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null'"
export FZF_CTRL_T_OPTS=$FZF_DEFAULT_OPTS
export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window hidden:wrap --bind '?:toggle-preview'"
export FZF_ALT_C_OPTS="--height 40% --reverse --border --prompt '>>>' \
    --bind 'alt-j:preview-down,alt-k:preview-up,?:toggle-preview' \
    --header 'A-j/k: preview down/up, A-v: open in vim, C-y: copy, ?: toggle preview' \
    --preview 'tree -C {}'"
bindkey '^Y' fzf-completion
bindkey '^I' $fzf_default_completion