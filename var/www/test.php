<?php
ini_set('display_errors', 1);
session_start();
$show = NULL;
if (isset($_SESSION['val'])) {
  $show = implode('<br>', $_SESSION['val']);
}
echo $show ?? 'Nothing';
$val = date('Y-m-d H:i:s') . microtime();
$_SESSION['val'][] = $val;
