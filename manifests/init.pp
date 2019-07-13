class testrepo {
     $wikimetanamespace = hiera('mediawiki::wikimetanamespace')
     $wikisitename      = hiera('mediawiki::wikisitename')
     $environment = hiera('testrepo::environment')

     if $environment == 'production' {
         notify { 'default-message' :
              message => "this is the productioin environment"
         }
     } else {
          notify { 'default-message' :
               message => "This is not a production environment "
          }
     }

    file { 'LocalSettings.php':
       path    => '/tmp/LocalSettings.php',
       ensure  => 'file',
       content => template('testrepo/LocalSettings.erb'),
    }

}
