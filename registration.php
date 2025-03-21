<?php require_once('header.php'); ?>

<?php

// Import des classes PHPMailer dans l'espace de noms global
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

// Inclusion des fichiers requis de PHPMailer
require 'phpmailer/src/Exception.php';
require 'phpmailer/src/PHPMailer.php';
require 'phpmailer/src/SMTP.php';

$statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
foreach ($result as $row) {
    $banner_registration = $row['banner_registration'];
}

if (isset($_POST['form1'])) {

    $valid = 1;


    if (empty($_POST['cust_name'])) {
        $valid = 0;
        $error_message .= LANG_VALUE_123."<br>";
    }

    if (empty($_POST['cust_email'])) {
        $valid = 0;
        $error_message .= LANG_VALUE_131."<br>";
    } else {
        if (filter_var($_POST['cust_email'], FILTER_VALIDATE_EMAIL) === false) {
            $valid = 0;
            $error_message .= LANG_VALUE_134."<br>";
        } else {
            $statement = $pdo->prepare("SELECT * FROM tbl_customer WHERE cust_email=?");
            $statement->execute(array($_POST['cust_email']));
            $total = $statement->rowCount();                            
            if ($total) {
                $valid = 0;
                $error_message .= LANG_VALUE_147."<br>";
            }
        }
    }

    if (empty($_POST['cust_phone'])) {
        $valid = 0;
        $error_message .= LANG_VALUE_124."<br>";
    }

   
    if(empty($_POST['cust_address'])) {
        $valid = 0;
        $error_message .= LANG_VALUE_125."<br>";
    }

    if(empty($_POST['cust_country'])) {
        $valid = 0;
        $error_message .= LANG_VALUE_126."<br>";
    }

    //if(empty($_POST['cust_city'])) {
      //  $valid = 0;
      //  $error_message .= LANG_VALUE_127."<br>";
   // }

   // if(empty($_POST['cust_state'])) {
      //  $valid = 0;
       // $error_message .= LANG_VALUE_128."<br>";
   // }

    if(empty($_POST['cust_zip'])) {
        $valid = 0;
        $error_message .= LANG_VALUE_129."<br>";
    }

    if( empty($_POST['cust_password']) || empty($_POST['cust_re_password']) ) {
        $valid = 0;
        $error_message .= LANG_VALUE_138."<br>";
    }

    if( !empty($_POST['cust_password']) && !empty($_POST['cust_re_password']) ) {
        if($_POST['cust_password'] != $_POST['cust_re_password']) {
            $valid = 0;
            $error_message .= LANG_VALUE_139."<br>";
        }
    }

    if ($valid == 1) {
        $token = md5(time());
        $cust_datetime = date('Y-m-d h:i:s');
        $cust_timestamp = time();

        // Enregistrement dans la base de données...
        $statement = $pdo->prepare("INSERT INTO tbl_customer (
            cust_name,
            cust_cname,
            cust_email,
            cust_phone,
            cust_country,
            cust_address,
            cust_city,
            cust_state,
            cust_zip,
            cust_b_name,
            cust_b_cname,
            cust_b_phone,
            cust_b_country,
            cust_b_address,
            cust_b_city,
            cust_b_state,
            cust_b_zip,
            cust_s_name,
            cust_s_cname,
            cust_s_phone,
            cust_s_country,
            cust_s_address,
            cust_s_city,
            cust_s_state,
            cust_s_zip,
            cust_password,
            cust_token,
            cust_datetime,
            cust_timestamp,
            cust_status
        ) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
$statement->execute(array(
            strip_tags($_POST['cust_name']),
            strip_tags(''),
            strip_tags($_POST['cust_email']),
            strip_tags($_POST['cust_phone']),
            strip_tags($_POST['cust_country']),
            strip_tags($_POST['cust_address']),
            strip_tags(''),
            strip_tags(''),
            strip_tags($_POST['cust_zip']),
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            md5($_POST['cust_password']),
            $token,
            $cust_datetime,
            $cust_timestamp,
            0
        ));

      
        // Initialisation de PHPMailer
        $mail = new PHPMailer(true);

try {
    // Paramètres SMTP
    $mail->isSMTP();
    $mail->Host       = 'smtp.gmail.com'; // Adresse du serveur SMTP
    $mail->SMTPAuth   = true;               // Authentification SMTP activée
    $mail->Username   = ''; // Votre adresse e-mail SMTP
    $mail->Password   = '';     // Mot de passe SMTP
    $mail->SMTPSecure = 'tls';// Encryption TLS, vous pouvez également utiliser `PHPMailer::ENCRYPTION_SMTPS`
    $mail->Port       = 587;                // Port SMTP

    // Destinataire
    $mail->setFrom('asmae.bourbia@um5r.ac.ma', 'ASMAE');
    $mail->addAddress($_POST['cust_email'],  $_POST['cust_name']); // Adresse e-mail du client

    // Contenu de l'e-mail
    $mail->isHTML(true); // Définir le format de l'e-mail sur HTML
    $mail->Subject = LANG_VALUE_150;
    $mail->Body = 'Bonjour, <br> Veuillez cliquer sur le lien suivant pour vérifier votre adresse e-mail : <a href="http://localhost/e_v1/eCommerceSite-PHP/verify.php?email='.$_POST['cust_email'].'&token='.$token.'">Vérifier mon adresse e-mail</a>';



    // Envoyer l'e-mail
    $mail->send();
    $success_message = LANG_VALUE_152;
    echo '$success_message';
} catch (Exception $e) {
    echo "Erreur lors de l'envoi du message : {$mail->ErrorInfo}";
}
    }
}
?>

<div class="page-banner" style="background-color:#444;background-image: url(assets/uploads/<?php echo $banner_registration; ?>);">
    <div class="inner">
        <h1><?php echo LANG_VALUE_16; ?></h1>
    </div>
</div>

<div class="page">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="user-content">

                    

                    <form action="" method="post">
                        <?php $csrf->echoInputField(); ?>
                        <div class="row">
                            <div class="col-md-2"></div>
                            <div class="col-md-8">
                                
                                <?php
                                if($error_message != '') {
                                    echo "<div class='error' style='padding: 10px;background:#f1f1f1;margin-bottom:20px;'>".$error_message."</div>";
                                }
                                if($success_message != '') {
                                    echo "<div class='success' style='padding: 10px;background:#f1f1f1;margin-bottom:20px;'>".$success_message."</div>";
                                }
                                ?>

                                <div class="col-md-6 form-group">
                                    <label for=""><?php echo LANG_VALUE_102; ?> *</label>
                                    <input type="text" class="form-control" name="cust_name" value="<?php if(isset($_POST['cust_name'])){echo $_POST['cust_name'];} ?>">
                                </div>
                               <!-- <div class="col-md-6 form-group">
                                    <label for=""><?/*php echo LANG_VALUE_103; */?></label>
                                    <input type="text" class="form-control" name="cust_cname" value="<?/*php if(isset($_POST['cust_cname'])){echo $_POST['cust_cname'];} */?>">
                                </div>-->
                                <div class="col-md-6 form-group">
                                    <label for=""><?php echo LANG_VALUE_94; ?> *</label>
                                    <input type="email" class="form-control" name="cust_email" value="<?php if(isset($_POST['cust_email'])){echo $_POST['cust_email'];} ?>">
                                </div>
                                <div class="col-md-6 form-group">
                                    <label for=""><?php echo LANG_VALUE_104; ?> *</label>
                                    <input type="text" class="form-control" name="cust_phone" value="<?php if(isset($_POST['cust_phone'])){echo $_POST['cust_phone'];} ?>">
                                </div>
                                <div class="col-md-12 form-group">
                                    <label for=""><?php echo LANG_VALUE_105; ?> *</label>
                                    <textarea name="cust_address" class="form-control" cols="30" rows="10" style="height:70px;"><?php if(isset($_POST['cust_address'])){echo $_POST['cust_address'];} ?></textarea>
                                </div>
                                <div class="col-md-6 form-group">
                                    <label for=""><?php echo "Ville"; ?> *</label>
                                    <select name="cust_country" class="form-control select2">
                                        <option value="">Choisissez le Ville</option>
                                    <?php
                                    $statement = $pdo->prepare("SELECT * FROM tbl_country ORDER BY country_name ASC");
                                    $statement->execute();
                                    $result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
                                    foreach ($result as $row) {
                                        ?>
                                        <option value="<?php echo $row['country_id']; ?>"><?php echo $row['country_name']; ?></option>
                                        <?php
                                    }
                                    ?>    
                                    </select>                                    
                                </div>
                                
                               <!-- <div class="col-md-6 form-group">
                                    <label for=""><?/*php echo LANG_VALUE_107; */?> *</label>
                                    <input type="text" class="form-control" name="cust_city" value="<?/*php if(isset($_POST['cust_city'])){echo $_POST['cust_city'];} */?>">
                                </div>-->
                               <!-- <div class="col-md-6 form-group">
                                    <label for=""><?/*php echo LANG_VALUE_108; */?> *</label>
                                    <input type="text" class="form-control" name="cust_state" value="<?/*php if(isset($_POST['cust_state'])){echo $_POST['cust_state'];} */?>">
                                </div>-->
                                <div class="col-md-6 form-group">
                                    <label for=""><?php echo LANG_VALUE_109; ?> *</label>
                                    <input type="text" class="form-control" name="cust_zip" value="<?php if(isset($_POST['cust_zip'])){echo $_POST['cust_zip'];} ?>">
                                </div>
                                <div class="col-md-6 form-group">
                                    <label for=""><?php echo LANG_VALUE_96; ?> *</label>
                                    <input type="password" class="form-control" name="cust_password">
                                </div>
                                <div class="col-md-6 form-group">
                                    <label for=""><?php echo LANG_VALUE_98; ?> *</label>
                                    <input type="password" class="form-control" name="cust_re_password">
                                </div>
                                <div class="col-md-6 form-group">
                                    <label for=""></label>
                                    <input type="submit" class="btn btn-danger" value="<?php echo LANG_VALUE_15; ?>" name="form1">
                                </div>
                            </div>
                        </div>                        
                    </form>
                </div>                
            </div>
        </div>
    </div>
</div>

<?php require_once('footer.php'); ?>