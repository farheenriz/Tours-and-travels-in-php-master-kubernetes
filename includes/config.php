<?php 
// DB credentials.
define('DB_HOST', getenv('DB_HOST') ?: 'db');
define('DB_USER', getenv('DB_USER') ?: 'tmsuser');
define('DB_PASS', getenv('DB_PASSWORD') ?: 'tmspassword');
define('DB_NAME', getenv('DB_NAME') ?: 'tms');
// Establish database connection.
try
{
$dbh = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME,DB_USER, DB_PASS,array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
}
catch (PDOException $e)
{
exit("Error: " . $e->getMessage());
}
?>