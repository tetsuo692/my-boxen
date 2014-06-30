# == Class: project::share_link
#
class projects::share_link {

  boxen::project { 'share_link':
    ruby   => '2.0.0',
    dotenv => true,
    nginx  => true,
    source => 'git@bitbucket.org:tetsuo692/share_link.git',}
}
