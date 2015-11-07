# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Path to your custom folder (default path is ~/.oh-my-fish/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# MacOSX specific for now, should add detection
# e.g. check /usr/local/Cellar/autojump/*/ on Mac
switch (uname)
  case Linux
    #echo "Add autojump..."
  case Darwin
    source /usr/local/Cellar/autojump/22.2.4/share/autojump/autojump.fish
end

# Custom plugins and themes may be added to ~/.oh-my-fish/custom
# Plugins and themes can be found at https://github.com/oh-my-fish/
Theme 'robbyrussell'
Plugin 'theme'
Plugin 'fish-bd'
Plugin 'ssh_agent_start'

# SSH-agent from brew on OSX, ssh_agent_start is a custom plugin
switch (uname)
  case Darwin
    ssh_agent_start
end
