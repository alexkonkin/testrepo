class testrepo {
     if $environment == 'production' {
          message => "this is the productioin environment"
     } else {
          notify { 'default-message' :
               message => "This is not a production environment "
          }
     }
}