class people::tetsuo692 {

    #DropBox
    include dropbox

    include iterm2::stable
    include iterm2::colors::solarized_dark

    include onepassword
    include alfred

    #include osx

    include zsh
    include ohmyzsh
    include chrome

    include virtualbox
    
    $home = "/Users/${::luser}"
    $projects = "${home}/Projects"

    file { $projects:
      ensure => directory,
    }

    $dotfiles = "${projects}/dotfiles"

    repository { $dotfiles:
      source => 'tetsuo692/dotfiles',
      require => File[$projects],
    }

    include osx::disable_app_quarantine

}
