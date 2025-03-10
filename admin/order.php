<?php require_once('header.php'); ?>

<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
$error_message = '';
if(isset($_POST['form1'])) {
    $valid = 1;
    if(empty($_POST['subject_text'])) {
        $valid = 0;
        $error_message .= 'Le sujet ne peut pas être vide\n';
    }
    if(empty($_POST['message_text'])) {
        $valid = 0;
        $error_message .= 'Le sujet ne peut pas être vide\n';
    }
    if($valid == 1) {

        $subject_text = strip_tags($_POST['subject_text']);
        $message_text = strip_tags($_POST['message_text']);

        // Getting Customer Email Address
        $statement = $pdo->prepare("SELECT * FROM tbl_customer WHERE cust_id=?");
        $statement->execute(array($_POST['cust_id']));
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
        foreach ($result as $row) {
            $cust_email = $row['cust_email'];
        }

        // Getting Admin Email Address
        $statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
        $statement->execute();
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
        foreach ($result as $row) {
            $admin_email = $row['contact_email'];
        }

        $order_detail = '';
        $statement = $pdo->prepare("SELECT * FROM tbl_payment WHERE payment_id=?");
        $statement->execute(array($_POST['payment_id']));
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
        foreach ($result as $row) {
        	
        	if($row['payment_method'] == 'PayPal'):
        		$payment_details = '
                Identifiant de transaction: '.$row['txnid'].'<br>
        		';
        	elseif($row['payment_method'] == 'Stripe'):
				$payment_details = '
                Identifiant de transaction:'.$row['txnid'].'<br>
                Numéro de carte:'.$row['card_number'].'<br>
                Carte CVV :'.$row['card_cvv'].'<br>
                Mois de la carte :'.$row['card_month'].'<br>
                Année de la carte :'.$row['card_year'].'<br>
        		';
        	elseif($row['payment_method'] == 'Bank Deposit'):
				$payment_details = '
                Détails de la transaction:<br>'.$row['bank_transaction_info'];
        	endif;

            $order_detail .= '
            Nom du client : '.$row['customer_name'].'<br>
            Email client: '.$row['customer_email'].'<br>
            Mode de paiement:'.$row['payment_method'].'<br>
            Date de paiement:'.$row['payment_date'].'<br>
            Détails de paiement:<br>'.$payment_details.'<br>
            Montant payé:'.$row['paid_amount'].'<br>
            Statut de paiement: '.$row['payment_status'].'<br>
Statut d envoi:'.$row['shipping_status'].'<br>
Identifiant de paiement :'.$row['payment_id'].'<br>
            ';
        }

        $i=0;
        $statement = $pdo->prepare("SELECT * FROM tbl_order WHERE payment_id=?");
        $statement->execute(array($_POST['payment_id']));
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
        foreach ($result as $row) {
            $i++;
            $order_detail .= '
<br><b><u>Product Item '.$i.'</u></b><br>
Nom du produit : '.$row['product_name'].'<br>
Taille: '.$row['size'].'<br>
Couleur:'.$row['color'].'<br>
Quantité: '.$row['quantity'].'<br>
Prix ​​unitaire:'.$row['unit_price'].'<br>
            ';
        }

        $statement = $pdo->prepare("INSERT INTO tbl_customer_message (subject,message,order_detail,cust_id) VALUES (?,?,?,?)");
        $statement->execute(array($subject_text,$message_text,$order_detail,$_POST['cust_id']));
// Import des classes PHPMailer dans l'espace de noms global


// Inclusion des fichiers requis de PHPMailer
require 'phpmailer/src/Exception.php';
require 'phpmailer/src/PHPMailer.php';
require 'phpmailer/src/SMTP.php';
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
        $mail->setFrom('', "Asmae");
        $mail->addAddress($cust_email); // Adresse e-mail de l'administrateur
        
        $mail->isHTML(true);
        $mail->Subject = $subject_text;
        $message = '
        <html><body>
        <h3>Message: </h3>
        '.$message_text.'
        <h3>Order Details: </h3>
        '.$order_detail.'
        </body></html>
        ';
        $mail->Body = nl2br($message);

        // Envoi de l'e-mail
        $mail->send();
        $success_message = 'Votre e-mail au client a été envoyé avec succès.';
        // Message de succès
        
    } catch (Exception $e) {
        // En cas d'erreur
        echo "<script>alert('Le message n'a pas pu être envoyé. Erreur de messagerie: {$mail->ErrorInfo}');</script>";
    }
       
        
        
        

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

<section class="content-header">
	<div class="content-header-left">
		<h1>Afficher les commandes</h1>
	</div>
</section>


<section class="content">

  <div class="row">
    <div class="col-md-12">


      <div class="box box-info">
        
        <div class="box-body table-responsive">
          <table id="example1" class="table table-bordered table-hover table-striped">
			<thead>
			    <tr>
			        <th>#</th>
                    <th>Client</th>
			        <th> Détails du produit</th>
                    <th>
                    Informations de paiement
                    </th>
                    <th>
Montant payé</th>
                    <th>Statut de payment</th>
                    <th>
Statut d'envoi</th>
			        <th>Action</th>
			    </tr>
			</thead>
            <tbody>
            	<?php
            	$i=0;
            	$statement = $pdo->prepare("SELECT * FROM tbl_payment ORDER by id DESC");
            	$statement->execute();
            	$result = $statement->fetchAll(PDO::FETCH_ASSOC);							
            	foreach ($result as $row) {
            		$i++;
            		?>
					<tr class="<?php if($row['payment_status']=='Pending'){echo 'bg-r';}else{echo 'bg-g';} ?>">
	                    <td><?php echo $i; ?></td>
	                    <td>
                            <b>Id:</b> <?php echo $row['customer_id']; ?><br>
                            <b>Nom:</b><br> <?php echo $row['customer_name']; ?><br>
                            <b>Email:</b><br> <?php echo $row['customer_email']; ?><br><br>
                            
                            <a href="#" data-toggle="modal" data-target="#model-<?php echo $i; ?>"class="btn btn-warning btn-xs" style="width:100%;margin-bottom:4px;">Envoyer Message</a>
                            <div id="model-<?php echo $i; ?>" class="modal fade" role="dialog">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title" style="font-weight: bold;">Envoyer Message</h4>
										</div>
										<div class="modal-body" style="font-size: 14px">
											<form action="" method="post">
                                                <input type="hidden" name="cust_id" value="<?php echo $row['customer_id']; ?>">
                                                <input type="hidden" name="payment_id" value="<?php echo $row['payment_id']; ?>">
												<table class="table table-bordered">
													<tr>
														<td>Sujet</td>
														<td>
                                                            <input type="text" name="subject_text" class="form-control" style="width: 100%;">
														</td>
													</tr>
                                                    <tr>
                                                        <td>Message</td>
                                                        <td>
                                                            <textarea name="message_text" class="form-control" cols="30" rows="10" style="width:100%;height: 200px;"></textarea>
                                                        </td>
                                                    </tr>
													<tr>
														<td></td>
														<td><input type="submit" value="Envoyer le message" name="form1"></td>
													</tr>
												</table>
											</form>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default" data-dismiss="modal">Fermer</button>
										</div>
									</div>
								</div>
							</div>
                        </td>
                        <td>
                           <?php
                           $statement1 = $pdo->prepare("SELECT * FROM tbl_order WHERE payment_id=?");
                           $statement1->execute(array($row['payment_id']));
                           $result1 = $statement1->fetchAll(PDO::FETCH_ASSOC);
                           foreach ($result1 as $row1) {
                                echo '<b>Product:</b> '.$row1['product_name'];
                                echo '<br>(<b>Size:</b> '.$row1['size'];
                                echo ', <b>Color:</b> '.$row1['color'].')';
                                echo '<br>(<b>Quantity:</b> '.$row1['quantity'];
                                echo ', <b>Unit Price:</b> '.$row1['unit_price'].')';
                                echo '<br><br>';
                           }
                           ?>
                        </td>
                        <td>
                        	<?php if($row['payment_method'] == 'PayPal'): ?>
                        		<b>Mode de paiement:</b> <?php echo '<span style="color:red;"><b>'.$row['payment_method'].'</b></span>'; ?><br>
                        		<b>Identifiant de paiment:</b> <?php echo $row['payment_id']; ?><br>
                        		<b>Date:</b> <?php echo $row['payment_date']; ?><br>
                        		<b>Identifiant de transaction:</b> <?php echo $row['txnid']; ?><br>
                        	<?php elseif($row['payment_method'] == 'Stripe'): ?>
                        		<b>Mode de paiement:</b> <?php echo '<span style="color:red;"><b>'.$row['payment_method'].'</b></span>'; ?><br>
                        		<b>Identifiant de paiment:</b> <?php echo $row['payment_id']; ?><br>
								<b>Date:</b> <?php echo $row['payment_date']; ?><br>
                        		<b>Identifiant de transaction:</b> <?php echo $row['txnid']; ?><br>
                        		<b>Numéro de carte:</b> <?php echo $row['card_number']; ?><br>
                        		<b>Carte CVV :</b> <?php echo $row['card_cvv']; ?><br>
                        		<b>Mois d'expiration :</b> <?php echo $row['card_month']; ?><br>
                        		<b>Année d'expiration</b> <?php echo $row['card_year']; ?><br>
                        	<?php elseif($row['payment_method'] == 'Bank Deposit'): ?>
                        		<b>Mode de paiement:</b> <?php echo '<span style="color:red;"><b>'.$row['payment_method'].'</b></span>'; ?><br>
                        		<b>Identifiant de paiment:</b> <?php echo $row['payment_id']; ?><br>
								<b>Date:</b> <?php echo $row['payment_date']; ?><br>
                        		<!-- <b>Informations sur les transactions:</b> <br><?php echo $row['bank_transaction_info']; ?><br>-->
                        	<?php endif; ?>
                        </td>
                        <td>$<?php echo $row['paid_amount']; ?></td>
                        <td>
                            <?php echo $row['payment_status']; ?>
                            <br><br>
                            <?php
                                if($row['payment_status']=='Pending'){
                                    ?>
                                    <a href="order-change-status.php?id=<?php echo $row['id']; ?>&task=Completed" class="btn btn-success btn-xs" style="width:100%;margin-bottom:4px;">Marquer comme terminé</a>
                                    <?php
                                }
                            ?>
                        </td>
                        <td>
                            <?php echo $row['shipping_status']; ?>
                            <br><br>
                            <?php
                            if($row['payment_status']=='Completed') {
                                if($row['shipping_status']=='Pending'){
                                    ?>
                                    <a href="shipping-change-status.php?id=<?php echo $row['id']; ?>&task=Completed" class="btn btn-warning btn-xs" style="width:100%;margin-bottom:4px;">Marquer comme terminé</a>
                                    <?php
                                }
                            }
                            ?>
                        </td>
	                    <td>
                            <a href="#" class="btn btn-danger btn-xs" data-href="order-delete.php?id=<?php echo $row['id']; ?>" data-toggle="modal" data-target="#confirm-delete" style="width:100%;">Supprimer</a>
	                    </td>
	                </tr>
            		<?php
            	}
            	?>
            </tbody>
          </table>
        </div>
      </div>
  

</section>


<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">Confirmation de suppression</h4>
            </div>
            <div class="modal-body">
                Êtes-vous sûr de vouloir supprimer cet élément ?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Annuler</button>
                <a class="btn btn-danger btn-ok">Supprimer</a>
            </div>
        </div>
    </div>
</div>


<?php require_once('footer.php'); ?>