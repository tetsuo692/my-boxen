class projects::cream {
  boxen::project{
    ruby => '2.0.0',
    dotenv => true,
    nginx => true,
    source => 'git@bitbucket.org:tetsuo692/cream.git',
    }
}
