<?php                    
  echo "<h1>Openshift Workshop v1.1</h1> ";                    
  $host= gethostname();
  $ip = gethostbyname($host);                    
  echo $ip;
    phpinfo();
  ?>
