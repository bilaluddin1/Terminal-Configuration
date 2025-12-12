export PATH=$PATH:~/Library/Python/3.9/bin
export PATH=$PATH:~/go/bin
export PATH=$PATH:/Users/bilaluddin/.local/bin
export PATH=$PATH:$(go env GOPATH)/bin
export GOPATH=$HOME/go
export PATH=$PATH:$HOME/go/bin
alias gf=gf
alias scanz='sudo masscan -p1-65535,U:1-65535 $1 --rate=1000 -e tun0 --wait 5 > mscan.txt'
alias gobusterz='gobuster -dir -w Downloads/directory-list-2.3-medium.txt -u $1'
export PATH=$PATH://Users/bilaluddin/Downloads/directory-list-2.3-medium.txt
export PATH=$PATH://Users/bilaluddin/Downloads/subdomains-top1million-110000.txt

function ffuf_vhost_scan {
    local target_url=$1
    local host=$2
    sudo ffuf -w /Users/bilaluddin/Downloads/subdomains-top1million-110000.txt -u "$target_url" -H "Host: FUZZ.$host" -mc 200,301,307,401,403,405,500
}

export ANDROID_HOME=/opt/homebrew/share/android-commandlinetools
export PATH=$ANDROID_HOME/cmdline-tools/latest/bin:$PATH


export GOOGLE_APPLICATION_CREDENTIALS="/path/to/service-account.json"
export GOOGLE_APPLICATION_CREDENTIALS="$HOME/.config/gcloud/application_default_credentials.json"
export PATH=$ANDROID_HOME/build-tools/35.0.0:$PATH
export PATH=$PATH:~/Library/Android/sdk/build-tools/35.0.0


export PATH=$PATH:/Users/bilaluddin/Library/Android/sdk/platform-tools
alias platform-tools='cd /Users/bilaluddin/Library/Android/sdk/platform-tools'
alias HTB='cd Downloads/HTB'
export PATH=$PATH:Downloads/HTB	


extract () {
    if [ -f "$1" ] ; then
        case "$1" in
            *.tar.bz2) tar xjf "$1" ;;
            *.tar.gz)  tar xzf "$1" ;;
            *.bz2)     bunzip2 "$1" ;;
            *.rar)     unrar x "$1" ;;
            *.gz)      gunzip "$1" ;;
            *.tar)     tar xf "$1" ;;
            *.tbz2)    tar xjf "$1" ;;
            *.tgz)     tar xzf "$1" ;;
            *.zip)     unzip "$1" ;;
            *.Z)       uncompress "$1" ;;
            *.7z)      7z x "$1" ;;
            *)         echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}
alias webup='python3 -m  http.server 80'
export PATH=$PATH:/Users/bilaluddin/webup
plzshell() {
    nc -l 1337
}

alias ssm="searchsploit -p php/webapps/50924.py && cp /opt/homebrew/opt/exploitdb/share/exploitdb/exploits/php/webapps/50924.py ~/"


# Created by `pipx` on 2024-10-21 06:34:29
export PATH="$PATH:/Users/bilaluddin/.local/bin"
export PATH="/opt/homebrew/opt/mysql@8.4/bin:$PATH"
export PATH="/opt/homebrew/opt/mysql/bin:$PATH"
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
export PATH="/Users/bilaluddin/Downloads/sonar-scanner-6.2.1.4610-macosx-aarch64/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
export PATH="$PATH:/path/to/cursor-cli"

export PATH="$HOME/.local/bin:$PATH"

# ===== History Settings =====
# HISTFILE=~/.zsh_history
# HISTSIZE=50000
# SAVEHIST=50000
# setopt HIST_IGNORE_DUPS        # Don't store duplicate commands
# setopt HIST_IGNORE_SPACE       # Ignore commands that start with a space
# setopt HIST_FIND_NO_DUPS       # Don't display duplicates when searching history
# setopt HIST_REDUCE_BLANKS      # Remove superfluous blanks before saving
# setopt SHARE_HISTORY           # Share history between all zsh sessions

# ===== Plugins =====
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# ===== Autosuggestion Settings =====
ZSH_AUTOSUGGEST_STRATEGY=(history completion)  # Suggest from history + completions
# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'         # Dim gray suggestion color
# ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20             # Suggest only for reasonable input length


# ===== Source Oh My Zsh =====
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin


# Added by Antigravity
export PATH="/Users/bilaluddin/.antigravity/antigravity/bin:$PATH"
