<?php
$dbhost ='localhost';
$dbuser ='root';
$dbpass ='';
$dbname ='poinsmkah';
$db_dsn = "mysql:dbname=$dbname;host=$dbhost";
try {
  $db = new PDO($db_dsn, $dbuser, $dbpass);
} catch (PDOException $e) {
  echo 'Connection failed: '.$e->getMessage();
}
$con=mysqli_connect($dbhost,$dbuser,$dbpass,$dbname);
/*css.plugin.hancon <?php echo $base; ?>*/
$base='http://localhost/pps/';
/*control(link.redirect) <?php echo $basecon; ?>*/
$basead='http://localhost/pps/admin/';
/*kelas(link.redirect) <?php echo $basekel; ?>*/
$basegu='http://localhost/pps/guru/';
$basewa='http://localhost/pps/walimurid/';
?>
