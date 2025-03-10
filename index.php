<?php require_once('header.php'); ?>

<?php
$statement = $pdo->prepare("SELECT * FROM tbl_settings WHERE id=1");
$statement->execute();
$result = $statement->fetchAll(PDO::FETCH_ASSOC);
foreach ($result as $row)
{
    $cta_title = $row['cta_title'];
    $cta_content = $row['cta_content'];
    $cta_read_more_text = $row['cta_read_more_text'];
    $cta_read_more_url = $row['cta_read_more_url'];
    $cta_photo = $row['cta_photo'];
    $featured_product_title = $row['featured_product_title'];
    $featured_product_subtitle = $row['featured_product_subtitle'];
    $latest_product_title = $row['latest_product_title'];
    $latest_product_subtitle = $row['latest_product_subtitle'];
    $popular_product_title = $row['popular_product_title'];
    $popular_product_subtitle = $row['popular_product_subtitle'];
    $total_featured_product_home = $row['total_featured_product_home'];
    $total_latest_product_home = $row['total_latest_product_home'];
    $total_popular_product_home = $row['total_popular_product_home'];
    $home_service_on_off = $row['home_service_on_off'];
    $home_welcome_on_off = $row['home_welcome_on_off'];
    $home_featured_product_on_off = $row['home_featured_product_on_off'];
    $home_latest_product_on_off = $row['home_latest_product_on_off'];
    $home_popular_product_on_off = $row['home_popular_product_on_off'];

}


?>

<div id="bootstrap-touch-slider" class="carousel bs-slider fade control-round indicators-line" data-ride="carousel" data-pause="hover" data-interval="false" >

    <!-- Indicators -->
    <ol class="carousel-indicators">
        <?php
        $i=0;
        $statement = $pdo->prepare("SELECT * FROM tbl_slider");
        $statement->execute();
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
        foreach ($result as $row) {            
            ?>
            <li data-target="#bootstrap-touch-slider" data-slide-to="<?php echo $i; ?>" <?php if($i==0) {echo 'class="active"';} ?>></li>
            <?php
            $i++;
        }
        ?>
    </ol>

    <!-- Wrapper For Slides -->
    <div class="carousel-inner" role="listbox">

        <?php
        $i=0;
        $statement = $pdo->prepare("SELECT * FROM tbl_slider");
        $statement->execute();
        $result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
        foreach ($result as $row) {            
            ?>
            <div class="item <?php if($i==0) {echo 'active';} ?>" style="background-image:url(assets/uploads/<?php echo $row['photo']; ?>);">
                <div class="bs-slider-overlay"></div>
                <div class="container">
                    <div class="row">
                        <div class="slide-text <?php if($row['position'] == 'Left') {echo 'slide_style_left';} elseif($row['position'] == 'Center') {echo 'slide_style_center';} elseif($row['position'] == 'Right') {echo 'slide_style_right';} ?>">
                            <h1 data-animation="animated <?php if($row['position'] == 'Left') {echo 'zoomInLeft';} elseif($row['position'] == 'Center') {echo 'flipInX';} elseif($row['position'] == 'Right') {echo 'zoomInRight';} ?>"><?php echo $row['heading']; ?></h1>
                            <p data-animation="animated <?php if($row['position'] == 'Left') {echo 'fadeInLeft';} elseif($row['position'] == 'Center') {echo 'fadeInDown';} elseif($row['position'] == 'Right') {echo 'fadeInRight';} ?>"><?php echo nl2br($row['content']); ?></p>
                            <a href="<?php echo $row['button_url']; ?>" target="_blank"  class="btn btn-primary" data-animation="animated <?php if($row['position'] == 'Left') {echo 'fadeInLeft';} elseif($row['position'] == 'Center') {echo 'fadeInDown';} elseif($row['position'] == 'Right') {echo 'fadeInRight';} ?>"><?php echo $row['button_text']; ?></a>
                        </div>
                    </div>
                </div>
            </div>
            <?php
            $i++;
        }
        ?>
    </div>

    <!-- Slider Left Control -->
    <a class="left carousel-control" href="#bootstrap-touch-slider" role="button" data-slide="prev">
        <span class="fa fa-angle-left" aria-hidden="true"></span>
        <span class="sr-only">Précédent</span>
    </a>

    <!-- Slider Right Control -->
    <a class="right carousel-control" href="#bootstrap-touch-slider" role="button" data-slide="next">
        <span class="fa fa-angle-right" aria-hidden="true"></span>
        <span class="sr-only">Suivant</span>
    </a>

</div>


<?php if($home_service_on_off == 1): ?>
<div class="service bg-gray">
    <div class="container">
        <div class="row">
            <?php
                $statement = $pdo->prepare("SELECT * FROM tbl_service");
                $statement->execute();
                $result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
                foreach ($result as $row) {
                    ?>
                    <div class="col-md-4">
                        <div class="item">
                            <div class="photo"><img src="assets/uploads/<?php echo $row['photo']; ?>" width="150px" alt="<?php echo $row['title']; ?>"></div>
                            <h3><?php echo $row['title']; ?></h3>
                            <p>
                                <?php echo nl2br($row['content']); ?>
                            </p>
                        </div>
                    </div>
                    <?php
                }
            ?>
        </div>
    </div>
</div>
<?php endif; ?>
<?php if(isset($_SESSION['customer'])) { ?>
    <div class="product pt_70 pb_70">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="headline">
                    <h2><?php echo "PRODUITS RECOMMANDÉS" ?></h2>
                    <h3><?php echo "Vous aimerez ces produits" ?></h3>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">

                <div class="product-carousel">
  <?php  $customer_email = $_SESSION['customer']['cust_email'];
    $statement = $pdo->prepare("SELECT tbl_product.p_featured_photo 
                                FROM tbl_product 
                                INNER JOIN tbl_order ON tbl_product.p_id = tbl_order.product_id 
                                INNER JOIN tbl_payment ON tbl_order.payment_id = tbl_payment.payment_id 
                                INNER JOIN tbl_customer ON tbl_payment.customer_id = tbl_customer.cust_id 
                                WHERE tbl_customer.cust_email = :customer_email
                                ORDER BY tbl_order.id DESC
                                LIMIT 1");
    $statement->bindParam(':customer_email', $customer_email);
    $statement->execute();
    $photo = $statement->fetch(PDO::FETCH_ASSOC);
    
    if ($photo) {
        // Construct image path
        $image_path = "./assets/uploads/".$photo['p_featured_photo'];
        
        // Execute Python script to find similar images
        $python_script = "test.py";
        $python_executable = "C:/Users/asmae/AppData/Local/Programs/Python/Python39/python.exe";
        $command = "$python_executable $python_script \"$image_path\" 2>&1";
        $output = shell_exec($command);

        if ($output !== null && !empty($output)) {
            // Extract JSON output
            $jsonStart = strpos($output, '["');
           
            if ($jsonStart !== false) {
                $jsonOutput = substr($output, $jsonStart);
                // Decode JSON
                $similar_images = json_decode($jsonOutput);
               
                if (json_last_error() === JSON_ERROR_NONE) {
                    // Prepare query to fetch similar products
                    $placeholders = rtrim(str_repeat('?, ', count($similar_images)), ', ');
                    $sql = "SELECT * FROM tbl_product WHERE p_featured_photo IN ($placeholders)"; 
                   //var_dump($similar_images);
                    $similar_images_wp = array_map(function($image) {
                        return str_replace('images\\', '', $image); // Remplace 'images\' par une chaîne vide
                    }, $similar_images);
                   //var_dump($similar_images_wp );
                   // echo "SQL Query: $sql<br>";
                    $statement = $pdo->prepare($sql); 
                   
                    
                    // Execute query with correct parameters
                    $executeParams = array_values($similar_images_wp);
                    $statement->execute($executeParams);
                    //var_dump($statement->execute($executeParams););
                    // Fetch similar products
                    $products = $statement->fetchAll(PDO::FETCH_ASSOC);
                    //var_dump($products);
                    
                    // Display similar products
                    foreach ($products as $product) {// Display similar product details?>
                    
    
                    <!-- Your product display code here -->
                    <div class="item">
                            <div class="thumb">
                                <div class="photo" style="background-image:url(assets/uploads/<?php echo $product['p_featured_photo']; ?>);"></div>
                                <div class="overlay"></div>
                            </div>
                            <div class="text">
                                <h3><a href="product.php?id=<?php echo $product['p_id']; ?>"><?php echo $product['p_name']; ?></a></h3>
                                <h4>
                                    <?php echo $product['p_current_price']; ?> DH
                                    <?php if($product['p_old_price'] != ''): ?>
                                    <del>
                                        <?php echo $product['p_old_price']; ?> DH
                                    </del>
                                    <?php endif; ?>
                                </h4>
                                <div class="rating">
    <?php
    $t_rating = 0;
    $statement1 = $pdo->prepare("SELECT * FROM tbl_rating WHERE p_id=?");
    $statement1->execute(array($product['p_id']));
    $tot_rating = $statement1->rowCount();
    if ($tot_rating == 0) {
        $avg_rating = 0;
    } else {
        $result1 = $statement1->fetchAll(PDO::FETCH_ASSOC);
        foreach ($result1 as $row1) {
            $t_rating += $row1['rating'];
        }
        $avg_rating = $t_rating / $tot_rating;
    }

    // Affichage des étoiles
    for ($i = 1; $i <= 5; $i++) {
        if ($i <= $avg_rating) {
            echo '<i class="fa fa-star"></i>'; // Étoile pleine
        } elseif ($i - $avg_rating < 1) {
            echo '<i class="fa fa-star-half-o"></i>'; // Demi-étoile
        } else {
            echo '<i class="fa fa-star-o"></i>'; // Étoile vide
        }
    }
    ?>
</div>

                                <?php if($product['p_qty'] == 0): ?>
                                    <div class="out-of-stock">
                                        <div class="inner">
                                        En rupture de stock
                                        </div>
                                    </div>
                                <?php else: ?>
                                    <p><a href="product.php?id=<?php echo $product['p_id']; ?>"><i class="fa fa-shopping-cart"></i>Ajouter au panier</a></p>
                                <?php endif; ?>
                            </div>
                        </div>
                        <?php
                    }
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>
                <?php  }
                }
            }
        }
}

?>


<?php if($home_featured_product_on_off == 1): ?>
<div class="product pt_70 pb_70">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="headline">
                    <h2><?php echo $featured_product_title; ?></h2>
                    <h3><?php echo $featured_product_subtitle; ?></h3>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">

                <div class="product-carousel">
                    
                    <?php
                    $statement = $pdo->prepare("SELECT * FROM tbl_product WHERE p_is_featured=? AND p_is_active=? LIMIT ".$total_featured_product_home);
                    $statement->execute(array(1,1));
                    $result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
                    foreach ($result as $row) {
                        ?>
                        <div class="item">
                            <div class="thumb">
                                <div class="photo" style="background-image:url(assets/uploads/<?php echo $row['p_featured_photo']; ?>);"></div>
                                <div class="overlay"></div>
                            </div>
                            <div class="text">
                                <h3><a href="product.php?id=<?php echo $row['p_id']; ?>"><?php echo $row['p_name']; ?></a></h3>
                                <h4>
                                    <?php echo $row['p_current_price']; ?> DH
                                    <?php if($row['p_old_price'] != ''): ?>
                                    <del>
                                        <?php echo $row['p_old_price']; ?> DH
                                    </del>
                                    <?php endif; ?>
                                </h4>
                                <div class="rating">
    <?php
    $t_rating = 0;
    $statement1 = $pdo->prepare("SELECT * FROM tbl_rating WHERE p_id=?");
    $statement1->execute(array($row['p_id']));
    $tot_rating = $statement1->rowCount();
    if ($tot_rating == 0) {
        $avg_rating = 0;
    } else {
        $result1 = $statement1->fetchAll(PDO::FETCH_ASSOC);
        foreach ($result1 as $row1) {
            $t_rating += $row1['rating'];
        }
        $avg_rating = $t_rating / $tot_rating;
    }

    // Affichage des étoiles
    for ($i = 1; $i <= 5; $i++) {
        if ($i <= $avg_rating) {
            echo '<i class="fa fa-star"></i>'; // Étoile pleine
        } elseif ($i - $avg_rating < 1) {
            echo '<i class="fa fa-star-half-o"></i>'; // Demi-étoile
        } else {
            echo '<i class="fa fa-star-o"></i>'; // Étoile vide
        }
    }
    ?>
</div>

                                <?php if($row['p_qty'] == 0): ?>
                                    <div class="out-of-stock">
                                        <div class="inner">
                                        En rupture de stock
                                        </div>
                                    </div>
                                <?php else: ?>
                                    <p><a href="product.php?id=<?php echo $row['p_id']; ?>"><i class="fa fa-shopping-cart"></i>Ajouter au panier</a></p>
                                <?php endif; ?>
                            </div>
                        </div>
                        <?php
                    }
                    ?>
                </div>
            </div>
        </div>
    </div>
</div>
<?php endif; ?>





























<?php if($home_latest_product_on_off == 1): ?>
<div class="product bg-gray pt_70 pb_30">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="headline">
                    <h2><?php echo $latest_product_title; ?></h2>
                    <h3><?php echo $latest_product_subtitle; ?></h3>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">

                <div class="product-carousel">

                    <?php
                    $statement = $pdo->prepare("SELECT * FROM tbl_product WHERE p_is_active=? ORDER BY p_id DESC LIMIT ".$total_latest_product_home);
                    $statement->execute(array(1));
                    $result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
                    foreach ($result as $row) {
                        ?>
                        <div class="item">
                            <div class="thumb">
                                <div class="photo" style="background-image:url(assets/uploads/<?php echo $row['p_featured_photo']; ?>);"></div>
                                <div class="overlay"></div>
                            </div>
                            <div class="text">
                                <h3><a href="product.php?id=<?php echo $row['p_id']; ?>"><?php echo $row['p_name']; ?></a></h3>
                                <h4>
                                    <?php echo $row['p_current_price']; ?> DH
                                    <?php if($row['p_old_price'] != ''): ?>
                                    <del>
                                        <?php echo $row['p_old_price']; ?> DH
                                    </del>
                                    <?php endif; ?>
                                </h4>
                                <div class="rating">
    <?php
    $t_rating = 0;
    $statement1 = $pdo->prepare("SELECT * FROM tbl_rating WHERE p_id=?");
    $statement1->execute(array($row['p_id']));
    $tot_rating = $statement1->rowCount();
    if ($tot_rating == 0) {
        $avg_rating = 0;
    } else {
        $result1 = $statement1->fetchAll(PDO::FETCH_ASSOC);
        foreach ($result1 as $row1) {
            $t_rating += $row1['rating'];
        }
        $avg_rating = $t_rating / $tot_rating;
    }

    // Affichage des étoiles
    for ($i = 1; $i <= 5; $i++) {
        if ($i <= $avg_rating) {
            echo '<i class="fa fa-star"></i>'; // Étoile pleine
        } elseif ($i - $avg_rating < 1) {
            echo '<i class="fa fa-star-half-o"></i>'; // Demi-étoile
        } else {
            echo '<i class="fa fa-star-o"></i>'; // Étoile vide
        }
    }
    ?>
</div>

                                <?php if($row['p_qty'] == 0): ?>
                                    <div class="out-of-stock">
                                        <div class="inner">
                                        En rupture de stock
                                        </div>
                                    </div>
                                <?php else: ?>
                                    <p><a href="product.php?id=<?php echo $row['p_id']; ?>"><i class="fa fa-shopping-cart"></i> Ajouter au panier</a></p>
                                <?php endif; ?>
                            </div>
                        </div>
                        <?php
                    }
                    ?>

                </div>


            </div>
        </div>
    </div>
</div>
<?php endif; ?>


<?php if($home_popular_product_on_off == 1): ?>
<div class="product pt_70 pb_70">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="headline">
                    <h2><?php echo $popular_product_title; ?></h2>
                    <h3><?php echo $popular_product_subtitle; ?></h3>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">

                <div class="product-carousel">

                    <?php
                    $statement = $pdo->prepare("SELECT * FROM tbl_product WHERE p_is_active=? ORDER BY p_total_view DESC LIMIT ".$total_popular_product_home);
                    $statement->execute(array(1));
                    $result = $statement->fetchAll(PDO::FETCH_ASSOC);                            
                    foreach ($result as $row) {
                        ?>
                        <div class="item">
                            <div class="thumb">
                                <div class="photo" style="background-image:url(assets/uploads/<?php echo $row['p_featured_photo']; ?>);"></div>
                                <div class="overlay"></div>
                            </div>
                            <div class="text">
                                <h3><a href="product.php?id=<?php echo $row['p_id']; ?>"><?php echo $row['p_name']; ?></a></h3>
                                <h4>
                                    <?php echo $row['p_current_price']; ?> DH
                                    <?php if($row['p_old_price'] != ''): ?>
                                    <del>
                                        <?php echo $row['p_old_price']; ?> DH
                                    </del>
                                    <?php endif; ?>
                                </h4>
                                <div class="rating">
    <?php
    $t_rating = 0;
    $statement1 = $pdo->prepare("SELECT * FROM tbl_rating WHERE p_id=?");
    $statement1->execute(array($row['p_id']));
    $tot_rating = $statement1->rowCount();
    if ($tot_rating == 0) {
        $avg_rating = 0;
    } else {
        $result1 = $statement1->fetchAll(PDO::FETCH_ASSOC);
        foreach ($result1 as $row1) {
            $t_rating += $row1['rating'];
        }
        $avg_rating = $t_rating / $tot_rating;
    }

    // Affichage des étoiles
    for ($i = 1; $i <= 5; $i++) {
        if ($i <= $avg_rating) {
            echo '<i class="fa fa-star"></i>'; // Étoile pleine
        } elseif ($i - $avg_rating < 1) {
            echo '<i class="fa fa-star-half-o"></i>'; // Demi-étoile
        } else {
            echo '<i class="fa fa-star-o"></i>'; // Étoile vide
        }
    }
    ?>
</div>

                                <?php if($row['p_qty'] == 0): ?>
                                    <div class="out-of-stock">
                                        <div class="inner">
                                        En rupture de stock
                                        </div>
                                    </div>
                                <?php else: ?>
                                    <p><a href="product.php?id=<?php echo $row['p_id']; ?>"><i class="fa fa-shopping-cart"></i> Ajouter au panier</a></p>
                                <?php endif; ?>
                            </div>
                        </div>
                        <?php
                    }
                    ?>

                </div>

            </div>
        </div>
    </div>
</div>
<?php endif; ?>
    



<?php require_once('footer.php'); ?>