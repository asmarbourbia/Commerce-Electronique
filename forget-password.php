<?php require_once('header.php'); ?>

<?php

use PHPMailer\PHPMailer\Exception; 
use PHPMailer\PHPMailer\PHPMailer;
require 'phpmailer/src/Exception.php';
require 'phpmailer/src/PHPMailer.php';
require 'phpmailer/src/SMTP.php';

$statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
foreach ($result as $row) {
    $banner_forget_password = $row['banner_forget_password'];
}
?>

<?php
if(isset($_POST['form1'])) {

    $valid = 1;
        
    if(empty($_POST['cust_email'])) {
        $valid = 0;
        $error_message .= LANG_VALUE_131."\\n";
    } else {
        if (filter_var($_POST['cust_email'], FILTER_VALIDATE_EMAIL) === false) {
            $valid = 0;
            $error_message .= LANG_VALUE_134."\\n";
        } else {
            $statement = $pdo->prepare("SELECT * FROM tbl_customer WHERE cust_email=?");
            $statement->execute(array($_POST['cust_email']));
            $total = $statement->rowCount();                        
            if(!$total) {
                $valid = 0;
                $error_message .= LANG_VALUE_135."\\n";
            }
        }
    }

    if($valid == 1) {

        $statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
        $statement->execute();
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);                           
        foreach ($result as $row) {
            $forget_password_message = $row['forget_password_message'];
        }

        $token = md5(rand());
        $now = time();

        $statement = $pdo->prepare("UPDATE tbl_customer SET cust_token=?,cust_timestamp=? WHERE cust_email=?");
        $statement->execute(array($token,$now,strip_tags($_POST['cust_email'])));
 // Import des classes PHPMailer dans l'espace de noms global


// Inclusion des fichiers requis de PHPMailer

$mail = new PHPMailer(true);

        try {
            // Paramètres du serveur SMTP (Gmail)
            $mail->isSMTP();
            $mail->Host = 'smtp.gmail.com';
            $mail->SMTPAuth = true;
            $mail->Username = ''; // Votre adresse e-mail Gmail
            $mail->Password = ''; // Votre mot de passe Gmail
            $mail->SMTPSecure = 'tls';
            $mail->Port = 587;
    
            // Paramètres de l'e-mail
            $mail->setFrom('',' ASMAE');
            $mail->addAddress($_POST['cust_email']); // Adresse e-mail de l'administrateur
            
            $mail->isHTML(true);
            $mail->Subject =LANG_VALUE_143;
            $mail->Body = nl2br( $message = '<p>'.LANG_VALUE_142.'<br> <a href="http://localhost/e_v1/eCommerceSite-PHP/reset-password.php?email='.$_POST['cust_email'].'&token='.$token.'">Cliquez ici</a>');
    
            // Envoi de l'e-mail
            $mail->send();
    
            // Message de succès
            $success_message = $forget_password_message;
        } catch (Exception $e) {
            // En cas d'erreur
            echo "<script>alert('Message could not be sent. Mailer Error: {$mail->ErrorInfo}');</script>";
        }
    }
}
?>

<div class="page-banner" style="background-color:#444;background-image: url(assets/uploads/<?php echo $banner_forget_password; ?>);">
    <div class="inner">
        <h1><?php echo LANG_VALUE_97; ?></h1>
    </div>
</div>

<div class="page">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="user-content">
                    <?php
                    if($error_message != '') {
                        echo "<script>alert('".$error_message."')</script>";
                    }
                    if($success_message != '') {
                        echo "<script>alert('".$success_message."')</script>";
                    }
                    ?>
                    <form action="" method="post">
                        <?php $csrf->echoInputField(); ?>
                        <div class="row">
                            <div class="col-md-4"></div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for=""><?php echo LANG_VALUE_94; ?> *</label>
                                    <input type="email" class="form-control" name="cust_email">
                                </div>
                                <div class="form-group">
                                    <label for=""></label>
                                    <input type="submit" class="btn btn-primary" value="<?php echo LANG_VALUE_4; ?>" name="form1">
                                </div>
                                <a href="login.php" style="color:#e4144d;"><?php echo LANG_VALUE_12; ?></a>
                            </div>
                        </div>                        
                    </form>
                </div>                
            </div>
        </div>
    </div>
</div>

<?php require_once('footer.php'); ?>