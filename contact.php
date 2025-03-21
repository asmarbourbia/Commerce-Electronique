<?php require_once('header.php'); ?>

<?php
$statement = $pdo->prepare("SELECT * FROM tbl_page WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
foreach ($result as $row) {
    $contact_title = $row['contact_title'];
    $contact_banner = $row['contact_banner'];
}
$statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
foreach ($result as $row) {
    $contact_map_iframe = $row['contact_map_iframe'];
    $contact_email = $row['contact_email'];
    $contact_phone = $row['contact_phone'];
    $contact_address = $row['contact_address'];
}





// Import des classes PHPMailer dans l'espace de noms global
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

// Inclusion des fichiers requis de PHPMailer
require 'phpmailer/src/Exception.php';
require 'phpmailer/src/PHPMailer.php';
require 'phpmailer/src/SMTP.php';

// Vérification du formulaire soumis
if(isset($_POST["form_contact"])) {

    // Initialisation de PHPMailer
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
        $mail->setFrom($_POST["visitor_email"], $_POST["visitor_name"]);
        $mail->addAddress(''); // Adresse e-mail de l'administrateur
        $mail->addReplyTo($_POST["visitor_email"], $_POST["visitor_name"]);
        $mail->isHTML(true);
        $mail->Subject = $_POST["visitor_email"];
        $mail->Body = nl2br($_POST["visitor_message"]);

        // Envoi de l'e-mail
        $mail->send();

        // Message de succès
        echo "<script>alert('Message was sent successfully!');</script>";
        echo "<script>window.location.href = 'index.php';</script>";
    } catch (Exception $e) {
        // En cas d'erreur
        echo "<script>alert('Message could not be sent. Mailer Error: {$mail->ErrorInfo}');</script>";
    }
}

?>

<div class="page-banner" style="background-image: url(assets/uploads/<?php echo $contact_banner; ?>);">
    <div class="inner">
        <h1><?php echo $contact_title; ?></h1>
    </div>
</div>

<div class="page">
    <div class="container">
        <div class="row">            
            <div class="col-md-12">
                <h3>Formulaire de contact</h3>
                <div class="row cform">
                    <div class="col-md-8">
                        <div class="well well-sm">
                            
                            <?php
// After form submit checking everything for email sending
if(isset($_POST['form_contact']))
{
    $error_message = '';
    $success_message = '';
    $statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
    $statement->execute();
    $result = $statement->fetchAll(PDO::FETCH_ASSOC);                           
    foreach ($result as $row) 
    {
        $receive_email = $row['receive_email'];
        $receive_email_subject = $row['receive_email_subject'];
        $receive_email_thank_you_message = $row['receive_email_thank_you_message'];
    }

    $valid = 1;

    if(empty($_POST['visitor_name']))
    {
        $valid = 0;
        $error_message .= 'S il vous plaît entrez votre nom.\n';
    }

    if(empty($_POST['visitor_phone']))
    {
        $valid = 0;
        $error_message .= 'Veuillez entrer votre numéro de téléphone.\n';
    }


    if(empty($_POST['visitor_email']))
    {
        $valid = 0;
        $error_message .= 'Veuillez entrer votre adresse e-mail.\n';
    }
    else
    {
        // Email validation check
        if(!filter_var($_POST['visitor_email'], FILTER_VALIDATE_EMAIL))
        {
            $valid = 0;
            $error_message .= 'S il vous plaît, mettez une adresse email valide.\n';
        }
    }

    if(empty($_POST['visitor_message']))
    {
        $valid = 0;
        $error_message .= 'Veuillez saisir votre message.\n';
    }

    if($valid == 1)
    {
        
        $visitor_name = strip_tags($_POST['visitor_name']);
        $visitor_email = strip_tags($_POST['visitor_email']);
        $visitor_phone = strip_tags($_POST['visitor_phone']);
        $visitor_message = strip_tags($_POST['visitor_message']);

        // sending email
        $to_admin = $receive_email;
        $subject = $receive_email_subject;
        $message = '
<html><body>
<table>
<tr>
<td>Nom</td>
<td>'.$visitor_name.'</td>
</tr>
<tr>
<td>Email</td>
<td>'.$visitor_email.'</td>
</tr>
<tr>
<td>Téléphone</td>
<td>'.$visitor_phone.'</td>
</tr>
<tr>
<td>Commentaire</td>
<td>'.nl2br($visitor_message).'</td>
</tr>
</table>
</body></html>
';
        $headers = 'From: ' . $visitor_email . "\r\n" .
                   'Reply-To: ' . $visitor_email . "\r\n" .
                   'X-Mailer: PHP/' . phpversion() . "\r\n" . 
                   "MIME-Version: 1.0\r\n" . 
                   "Content-Type: text/html; charset=ISO-8859-1\r\n";

        // Sending email to admin                  
        mail($to_admin, $subject, $message, $headers); 
        
        $success_message = $receive_email_thank_you_message;

    }
}
?>
                
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
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="name">Nom</label>
                                        <input type="text" class="form-control" name="visitor_name" placeholder="Enter name">
                                    </div>
                                    <div class="form-group">
                                        <label for="email">Adresse e-mail</label>
                                        <input type="email" class="form-control" name="visitor_email" placeholder="Enter email address">
                                    </div>
                                    <div class="form-group">
                                        <label for="email">Numéro de téléphone</label>
                                        <input type="text" class="form-control" name="visitor_phone" placeholder="Enter phone number">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="name">Message</label>
                                        <textarea name="visitor_message" class="form-control" rows="9" cols="25" placeholder="Enter message"></textarea>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <input type="submit" value="Envoyer le message" class="btn btn-primary pull-right" name="form_contact">
                                </div>
                            </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <legend><span class="glyphicon glyphicon-globe"></span> Notre bureau</legend>
                        <address>
                            <?php echo nl2br($contact_address); ?>
                        </address>
                        <address>
                            <strong>Téléphone:</strong><br>
                            <span><?php echo $contact_phone; ?></span>
                        </address>
                        <address>
                            <strong>Email:</strong><br>
                            <a href="mailto:<?php echo $contact_email; ?>"><span><?php echo $contact_email; ?></span></a>
                        </address>
                    </div>
                </div>

                <h3>Trouvez-nous sur Map</h3>
                <?php echo $contact_map_iframe; ?>
                
            </div>
        </div>
    </div>
</div>

<?php require_once('footer.php'); ?>