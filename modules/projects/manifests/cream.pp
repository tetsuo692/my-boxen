class projects::cream {
  boxen::project{'cream':
    ruby    => '2.0.0',
    dotenv  => true,
    nginx   => true,
    mongodb => true,
    source  => 'git@bitbucket.org:tetsuo692/cream.git',
    }
}