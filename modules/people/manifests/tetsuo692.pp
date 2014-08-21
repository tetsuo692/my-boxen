class people::tetsuo692 {

    #DropBox
    include dropbox

    #iterm2
    include iterm2::stable
    include iterm2::colors::solarized_dark

    #1passwd
    include onepassword


    include alfred

    #Zsh
    include zsh
    include ohmyzsh

    include chrome

    include virtualbox

    include appcleaner

    include onyx
    include git::config
    include macvim

#    include wireshark

    include projects::dotfiles
    include projects::echotek

    $home = "/Users/${::luser}"
    $projects = "${boxen::config::srcdir}"
    $vimpath = "${home}/.vim"

    $dotfiles = "${projects}/dotfiles"


    file {$vimpath:
      ensure => "link",
      target => "${dotfiles}/vim/",
      require => Repository[$dotfiles],
    }

    file { "${home}/.zshrc":
      ensure => "link",
      target => "${dotfiles}/zshrc",
      require => Repository[$dotfiles],
    }
    file { "${home}/.gitignore":
      ensure => "link",
      target => "${dotfiles}/gitignore",
      require => Repository[$dotfiles],
    }
    file { "${$home}/.vimrc":
      ensure => "link",
      target => "${home}/.vim/vimrc",
      require => Repository[$dotfiles],
    }

    exec { "vundle":
      provider => shell,
      command => "vim +PluginInstall +qall",
      require => Repository[$dotfiles],
    }
    include osx::disable_app_quarantine
}
