<?php
session_start();
if(!isset($_SESSION['siswa']) || !isset($_GET['id'])) {
   header('location:./');
}

define('BASEPATH', dirname(__FILE__));

require('./include/connection.php');

$thn     = date('Y');
$dpn     = date('Y') + 1;
$periode = $thn.'/'.$dpn;
$suara   = $_GET['s'] + 1;

//update suara
$update  = $con->prepare("UPDATE t_kandidat SET suara = ? WHERE id_kandidat = ?") or die($con->error);
$update->bind_param('is', $suara, $_GET['id']);
$update->execute();

//update status
	$aisyah = 1;
   $cek = $con->prepare("UPDATE t_user SET status = ? WHERE id_user = ?") or die($con->error);
   $cek->bind_param('ss', $aisyah, $_SESSION['siswa']);
   $cek->execute();

//simpan data pemilih
$cok = 1;
$save = $con->prepare("INSERT INTO t_pemilih(nis, periode,status) VALUES(?,?,?)") or die($con->error);
$save->bind_param('sss', $_SESSION['siswa'], $periode,$cok);
$save->execute();

unset($_SESSION['siswa']);

header('location:./index.php?page=thanks');
?>
