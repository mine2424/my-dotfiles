if status is-interactive
    # Commands to run in interactive sessions can go here
    eval (/opt/homebrew/bin/brew shellenv)
    eval (nodenv init - | source)
end

set -g theme_date_format "+%Y-%m-%d %H:%M:%S"
set -g fish_prompt_pwd_dir_length 0

function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \c] peco_select_ghq_repository
end

set -x YVM_DIR /Users/mine/.yvm
[ -r $YVM_DIR/yvm.fish ]; and source $YVM_DIR/yvm.fish

set -U fish_user_paths ~/.pub-cache/bin $fish_user_paths

# alias

# # git
alias g "git"
alias ga "git add"
alias gaa "git add ."
alias gb "git branch --all"
alias gbd "git branch -d "
alias gc "git commit"
alias gca "git commit -a"
alias gcz "git cz"
alias gco "git checkout"
alias gcom "git checkout master"
alias gcod "git checkout develop"
alias gcob "git checkout -b"
alias gre "git rebase -i"
alias gd "git diff"
alias gl "git log --graph --all --pretty=format:'%Cred%h%Creset %Cgreen(%cI) -%C(yellow)%d%Creset %s %C(bold blue)<%an>%Creset' --abbrev-commit --date=rfc2822"
alias gp "git push"
alias gpl "git pull"
alias gs "git status"
alias gst "git stash"
alias gf "git fetch"

# command line
alias c "cd"
alias .. "cd .."
alias nv "nvim"
alias v "vim"

# dart flutter
alias f "flutter"
alias ff "fvm flutter"
alias ffc "fvm flutter clean"
