<?php require_once('header.php'); ?>

<?php
if(isset($_POST['form1'])) {
	$valid = 1;

    if(empty($_POST['tcat_id'])) {
        $valid = 0;
        $error_message .= "Vous devez sélectionner une catégorie de niveau supérieur<br>";
    }

    if(empty($_POST['mcat_id'])) {
        $valid = 0;
        $error_message .= "Vous devez sélectionner une catégorie de niveau intermédiaire<br>";
    }

    if(empty($_POST['ecat_id'])) {
        $valid = 0;
        $error_message .= "Vous devez obligatoirement sélectionner une catégorie de niveau final<br>";
    }

    if(empty($_POST['p_name'])) {
        $valid = 0;
        $error_message .= "Le nom du produit ne peut pas être vide<br>";
    }

    if(empty($_POST['p_current_price'])) {
        $valid = 0;
        $error_message .= "Le prix actuel ne peut pas être vide<br>";
    }

    if(empty($_POST['p_qty'])) {
        $valid = 0;
        $error_message .= "La quantité ne peut pas être vide<br>";
    }

    $path = $_FILES['p_featured_photo']['name'];
    $path_tmp = $_FILES['p_featured_photo']['tmp_name'];

    if($path!='') {
        $ext = pathinfo( $path, PATHINFO_EXTENSION );
        $file_name = basename( $path, '.' . $ext );
        if( $ext!='jpg' && $ext!='png' && $ext!='jpeg' && $ext!='gif' ) {
            $valid = 0;
            $error_message .= 'Vous devez télécharger un fichier jpg, jpeg, gif ou png<br>';
        }
    } else {
    	$valid = 0;
        $error_message .= 'Vous devez sélectionner une photo en vedette<br>';
    }

	if ($valid == 1) {
		try {
			$pdo->beginTransaction();
	
			// Insérer les données principales du produit
			$statement = $pdo->prepare("INSERT INTO tbl_product(
										p_name, p_old_price, p_current_price, p_qty, p_description,
										p_short_description, p_feature, p_condition, p_return_policy,
										p_total_view, p_is_featured, p_is_active, ecat_id
									) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)");
			$statement->execute(array(
				$_POST['p_name'], $_POST['p_old_price'], $_POST['p_current_price'], $_POST['p_qty'],
				$_POST['p_description'], $_POST['p_short_description'], $_POST['p_feature'],
				$_POST['p_condition'], $_POST['p_return_policy'], 0, $_POST['p_is_featured'],
				$_POST['p_is_active'], $_POST['ecat_id']
			));
			$ai_id = $pdo->lastInsertId();
	
			// Insérer les photos supplémentaires
			if (isset($_FILES['photo']["name"]) && isset($_FILES['photo']["tmp_name"])) {
				// Code pour télécharger et insérer les photos
				$photo = array_values(array_filter($_FILES['photo']["name"]));
				$photo_temp = array_values(array_filter($_FILES['photo']["tmp_name"]));
	
				$statement = $pdo->prepare("SHOW TABLE STATUS LIKE 'tbl_product_photo'");
				$statement->execute();
				$result = $statement->fetchAll();
				$next_id1 = $result[0][10];
	
				$final_name1 = array();
	
				foreach ($photo as $index => $filename) {
					$my_ext1 = pathinfo($filename, PATHINFO_EXTENSION);
					if (in_array($my_ext1, ['jpg', 'png', 'jpeg', 'gif'])) {
						$final_name1[$index] = $next_id1 . '.' . $my_ext1;
						move_uploaded_file($photo_temp[$index], "../assets/uploads/product_photos/" . $final_name1[$index]);
						$statement = $pdo->prepare("INSERT INTO tbl_product_photo (photo,p_id) VALUES (?,?)");
						$statement->execute(array($final_name1[$index], $ai_id));
						$next_id1++;
					}
				}
			}
	
			// Générer le nom de fichier pour la photo principale
			$final_name = $ai_id. '.' . $ext;
			move_uploaded_file($path_tmp, '../assets/uploads/' . $final_name);
	
			// Mettre à jour le nom de fichier dans la table tbl_product
			$statement = $pdo->prepare("UPDATE tbl_product SET p_featured_photo = ? WHERE p_id = ?");
			$statement->execute(array($final_name, $ai_id));
	
			$pdo->commit();
		} catch (PDOException $e) {
			$pdo->rollBack();
			echo "Erreur lors du téléchargement des photos ou de l'insertion des données dans la table tbl_product: " . $e->getMessage();
		}
	}
	


		

        if(isset($_POST['size'])) {
			foreach($_POST['size'] as $value) {
				$statement = $pdo->prepare("INSERT INTO tbl_product_size (size_id,p_id) VALUES (?,?)");
				$statement->execute(array($value,$ai_id));
			}
		}

		if(isset($_POST['color'])) {
			foreach($_POST['color'] as $value) {
				$statement = $pdo->prepare("INSERT INTO tbl_product_color (color_id,p_id) VALUES (?,?)");
				$statement->execute(array($value,$ai_id));
			}
		}
	
    	$success_message = 'Le produit a été ajouté avec succès.';
    }

?>

<section class="content-header">
	<div class="content-header-left">
		<h1>Ajouter produit</h1>
	</div>
	<div class="content-header-right">
		<a href="product.php" class="btn btn-primary btn-sm">Voir tout</a>
	</div>
</section>


<section class="content">

	<div class="row">
		<div class="col-md-12">

			<?php if($error_message): ?>
			<div class="callout callout-danger">
			
			<p>
			<?php echo $error_message; ?>
			</p>
			</div>
			<?php endif; ?>

			<?php if($success_message): ?>
			<div class="callout callout-success">
			
			<p><?php echo $success_message; ?></p>
			</div>
			<?php endif; ?>

			<form class="form-horizontal" action="" method="post" enctype="multipart/form-data">

				<div class="box box-info">
					<div class="box-body">
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Nom de la catégorie de niveau supérieur <span>*</span></label>
							<div class="col-sm-4">
								<select name="tcat_id" class="form-control select2 top-cat">
									<option value="">Sélectionnez la catégorie de niveau supérieur</option>
									<?php
									$statement = $pdo->prepare("SELECT * FROM tbl_top_category ORDER BY tcat_name ASC");
									$statement->execute();
									$result = $statement->fetchAll(PDO::FETCH_ASSOC);	
									foreach ($result as $row) {
										?>
										<option value="<?php echo $row['tcat_id']; ?>"><?php echo $row['tcat_name']; ?></option>
										<?php
									}
									?>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Nom de la catégorie de niveau intermédiaire <span>*</span></label>
							<div class="col-sm-4">
								<select name="mcat_id" class="form-control select2 mid-cat">
									<option value="">Sélectionnez la catégorie de niveau intermédiaire</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Nom de la catégorie de niveau final <span>*</span></label>
							<div class="col-sm-4">
								<select name="ecat_id" class="form-control select2 end-cat">
									<option value="">Sélectionnez la catégorie de niveau final</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Nom de produit <span>*</span></label>
							<div class="col-sm-4">
								<input type="text" name="p_name" class="form-control">
							</div>
						</div>	
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">
Ancien prix <br><span style="font-size:10px;font-weight:normal;">(In DH)</span></label>
							<div class="col-sm-4">
								<input type="text" name="p_old_price" class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Prix ​​actuel<span>*</span><br><span style="font-size:10px;font-weight:normal;">(In DH)</span></label>
							<div class="col-sm-4">
								<input type="text" name="p_current_price" class="form-control">
							</div>
						</div>	
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Quantité <span>*</span></label>
							<div class="col-sm-4">
								<input type="text" name="p_qty" class="form-control">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Sélectionnez la taille</label>
							<div class="col-sm-4">
								<select name="size[]" class="form-control select2" multiple="multiple">
									<?php
									$statement = $pdo->prepare("SELECT * FROM tbl_size ORDER BY size_id ASC");
									$statement->execute();
									$result = $statement->fetchAll(PDO::FETCH_ASSOC);			
									foreach ($result as $row) {
										?>
										<option value="<?php echo $row['size_id']; ?>"><?php echo $row['size_name']; ?></option>
										<?php
									}
									?>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Sélectionnez Couleur</label>
							<div class="col-sm-4">
								<select name="color[]" class="form-control select2" multiple="multiple">
									<?php
									$statement = $pdo->prepare("SELECT * FROM tbl_color ORDER BY color_id ASC");
									$statement->execute();
									$result = $statement->fetchAll(PDO::FETCH_ASSOC);			
									foreach ($result as $row) {
										?>
										<option value="<?php echo $row['color_id']; ?>"><?php echo $row['color_name']; ?></option>
										<?php
									}
									?>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Photo en vedette <span>*</span></label>
							<div class="col-sm-4" style="padding-top:4px;">
								<input type="file" name="p_featured_photo">
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">D'autres photos</label>
							<div class="col-sm-4" style="padding-top:4px;">
								<table id="ProductTable" style="width:100%;">
			                        <tbody>
			                            <tr>
			                                <td>
			                                    <div class="upload-btn">
			                                        <input type="file" name="photo[]" style="margin-bottom:5px;">
			                                    </div>
			                                </td>
			                                <td style="width:28px;"><a href="javascript:void()" class="Delete btn btn-danger btn-xs">X</a></td>
			                            </tr>
			                        </tbody>
			                    </table>
							</div>
							<div class="col-sm-2">
			                    <input type="button" id="btnAddNew" value="Add Item" style="margin-top: 5px;margin-bottom:10px;border:0;color: #fff;font-size: 14px;border-radius:3px;" class="btn btn-warning btn-xs">
			                </div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Description</label>
							<div class="col-sm-8">
								<textarea name="p_description" class="form-control" cols="30" rows="10" id="editor1"></textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">brève description</label>
							<div class="col-sm-8">
								<textarea name="p_short_description" class="form-control" cols="30" rows="10" id="editor2"></textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Caractéristiques</label>
							<div class="col-sm-8">
								<textarea name="p_feature" class="form-control" cols="30" rows="10" id="editor3"></textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Conditions</label>
							<div class="col-sm-8">
								<textarea name="p_condition" class="form-control" cols="30" rows="10" id="editor4"></textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">Politique de retour</label>
							<div class="col-sm-8">
								<textarea name="p_return_policy" class="form-control" cols="30" rows="10" id="editor5"></textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">est en vedette ?</label>
							<div class="col-sm-8">
								<select name="p_is_featured" class="form-control" style="width:auto;">
									<option value="0">Non</option>
									<option value="1">Oui</option>
								</select> 
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-3 control-label">C'est actif?</label>
							<div class="col-sm-8">
								<select name="p_is_active" class="form-control" style="width:auto;">
									<option value="0">Non</option>
									<option value="1">Oui</option>
								</select> 
							</div>
						</div>
						<div class="form-group">
							<label for="" class="col-sm-3 control-label"></label>
							<div class="col-sm-6">
								<button type="submit" class="btn btn-success pull-left" name="form1">Ajouter produit</button>
							</div>
						</div>
					</div>
				</div>

			</form>


		</div>
	</div>

</section>

<?php require_once('footer.php'); ?>