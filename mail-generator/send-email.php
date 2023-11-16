<!-- sendmaid.php --><?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

require(__DIR__ . '/PHPMailer-master/src/Exception.php');
require(__DIR__ . '/PHPMailer-master/src/SMTP.php');
require(__DIR__ . '/PHPMailer-master/src/PHPMailer.php');

/*  
$phone = $_POST["phone"];
$name = $_POST["name"];
$email = $_POST["email"];
$id = $_POST["id"];
$message = $_POST["message"];

require "vendor/autoload.php"; */ 




$mail = new PHPMailer(true);

// $mail->SMTPDebug = SMTP::DEBUG_SERVER;

$mail->isSMTP();
$mail->SMTPAuth = true;

$mail->Host = "smtp.gmail.com";
$mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
$mail->Port = 587;

$mail->Username = "xu1271669848@gmail.com";
$mail->Password = "qebw ynxd shkh xdsv";

$mail->setFrom("xu1271669848@gmail.com", "ristorante haru");//mittente
$mail->addAddress("xu1271669848@gmail.com", "xu");//riceve

$mail->Subject ="hai un nuovo ordine";/*  $id */
$mail->Body = "http://ristoranteharu.it/admin/invoice-generator/index.php";

$mail->send();
/* 
header("Location: sent.html"); */