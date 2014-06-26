class projects::share_links {
  boxen::project { 'share_links':
    ruby    => 2.0.0,
    nginx   => true,
    source  => 'git@bitbucket.org:tetsuo692/share_link.git',
  }
}
