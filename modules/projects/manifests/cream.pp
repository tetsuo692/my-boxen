class projects::cream {
  boxen::project{'cream':
    ruby    => '2.1.2',
    dotenv  => true,
    nginx   => true,
    mongodb => true,
    source  => 'git@bitbucket.org:tetsuo692/cream.git',
    }
}
