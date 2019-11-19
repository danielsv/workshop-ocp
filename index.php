<?php                    
  echo "<h1>Openshift Workshop v2.0.1</h1> ";                    
  $host= gethostname();
  $ip = gethostbyname($host);                    
  echo $ip;
    phpinfo();
  ?>
