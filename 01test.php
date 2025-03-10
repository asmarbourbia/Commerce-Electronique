<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>AdminLTE 2 | Tableau de bord</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta
      content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
      name="viewport"
    />
    <!-- Bootstrap 3.3.7 -->
    <link
      rel="stylesheet"
      href="bower_components/bootstrap/dist/css/bootstrap.min.css"
    />
    <!-- Font Awesome -->
    <link
      rel="stylesheet"
      href="bower_components/font-awesome/css/font-awesome.min.css"
    />
    <!-- Ionicons -->
    <link
      rel="stylesheet"
      href="bower_components/Ionicons/css/ionicons.min.css"
    />
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css" />
    <!-- Morris chart -->
    <link rel="stylesheet" href="bower_components/morris.js/morris.css" />
    <!-- jvectormap -->
    <link
      rel="stylesheet"
      href="bower_components/jvectormap/jquery-jvectormap.css"
    />
    <!-- Date Picker -->
    <link
      rel="stylesheet"
      href="bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css"
    />
    <!-- Daterange picker -->
    <link
      rel="stylesheet"
      href="bower_components/bootstrap-daterangepicker/daterangepicker.css"
    />
    <!-- bootstrap wysihtml5 - text editor -->
    <link
      rel="stylesheet"
      href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css"
    />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Google Font -->
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic"
    />
  </head>
  <body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">
      <header class="main-header">
        <!-- Logo -->
        <a href="index2.html" class="logo">
          <!-- mini logo for sidebar mini 50x50 pixels -->
          <span class="logo-mini"><b>A</b>LT</span>
          <!-- logo for regular state and mobile devices -->
          <span class="logo-lg"><b>Admin</b>LTE</span>
        </a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top">
          <!-- Sidebar toggle button-->
          <a
            href="#"
            class="sidebar-toggle"
            data-toggle="push-menu"
            role="button"
          ><!--hadi ma3raftch ntarjamha -->
            <span class="sr-only">Toggle navigation</span>
          </a>

          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              <!-- Messages: style can be found in dropdown.less-->
              <li class="dropdown messages-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-envelope-o"></i>
                  <span class="label label-success">4</span>
                </a>
                <ul class="dropdown-menu">
                  <li class="header">Vous avez 4 messages</li>
                  <li>
                    <!-- inner menu: contains the actual data -->
                    <ul class="menu">
                      <li>
                        <!-- start message -->
                        <a href="#">
                          <div class="pull-left">
                            <img
                              src="dist/img/user2-160x160.jpg"
                              class="img-circle"
                              alt="User Image"
                            />
                          </div>
                          <h4>
                            Support Team
                            <small><i class="fa fa-clock-o"></i> 5 mins</small>
                          </h4>
                          <p>Pourquoi ne pas acheter un nouveau thème génial ?</p>
                        </a>
                      </li>
                      <!-- end message -->
                      <li>
                        <a href="#">
                          <div class="pull-left">
                            <img
                              src="dist/img/user3-128x128.jpg"
                              class="img-circle"
                              alt="User Image"
                            />
                          </div>
                          <h4>
                            AdminLTE Design Team
                            <small><i class="fa fa-clock-o"></i> 2 heures</small>
                          </h4>
                          <p>Pourquoi ne pas acheter un nouveau thème génial ?</p>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <div class="pull-left">
                            <img
                              src="dist/img/user4-128x128.jpg"
                              class="img-circle"
                              alt="User Image"
                            />
                          </div>
                          <h4>
                          Développeurs
                            <small><i class="fa fa-clock-o"></i>Aujourd'hui</small>
                          </h4>
                          <p>Pourquoi ne pas acheter un nouveau thème génial ?</p>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <div class="pull-left">
                            <img
                              src="dist/img/user3-128x128.jpg"
                              class="img-circle"
                              alt="User Image"
                            />
                          </div>
                          <h4>
                          Département des ventes
                            <small
                              ><i class="fa fa-clock-o"></i> Hier</small
                            >
                          </h4>
                          <p>Pourquoi ne pas acheter un nouveau thème génial ?</p>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <div class="pull-left">
                            <img
                              src="dist/img/user4-128x128.jpg"
                              class="img-circle"
                              alt="User Image"
                            />
                          </div>
                          <h4>
                          Réviseurs
                            <small><i class="fa fa-clock-o"></i> 2 jours</small>
                          </h4>
                          <p>Pourquoi ne pas acheter un nouveau thème génial ?</p>
                        </a>
                      </li>
                    </ul>
                  </li>
                  <li class="footer"><a href="#">Voir tous les messages</a></li>
                </ul>
              </li>
              <!-- Notifications: style can be found in dropdown.less -->
              <li class="dropdown notifications-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-bell-o"></i>
                  <span class="label label-warning">10</span>
                </a>
                <ul class="dropdown-menu">
                  <li class="header">Vous avez 10 notifications</li>
                  <li>
                    <!-- inner menu: contains the actual data -->
                    <ul class="menu">
                      <li>
                        <a href="#">
                          <i class="fa fa-users text-aqua"></i> 5 nouveaux membres
                          rejoint aujourd'hui
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="fa fa-warning text-yellow"></i> Très long
                          description ici qui peut ne pas rentrer dans la page et
                          peut causer des problèmes de conception.
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="fa fa-users text-red"></i> 5 nouveaux membres
                          rejoint aujourd'hui
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="fa fa-shopping-cart text-green"></i> 25
                          ventes réalisées
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="fa fa-user text-red"></i> Vous avez changé votre
                          nom d'utilisateur
                        </a>
                      </li>
                    </ul>
                  </li>
                  <li class="footer"><a href="#">Voir tout</a></li>
                </ul>
              </li>
              <!-- Tasks: style can be found in dropdown.less -->
              <li class="dropdown tasks-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-flag-o"></i>
                  <span class="label label-danger">9</span>
                </a>
                <ul class="dropdown-menu">
                  <li class="header">Vous avez 9 tâches</li>
                  <li>
                    <!-- inner menu: contains the actual data -->
                    <ul class="menu">
                      <li>
                        <!-- Task item -->
                        <a href="#">
                          <h3>
                          Concevoir des boutons
                            <small class="pull-right">20%</small>
                          </h3>
                          <div class="progress xs">
                            <div
                              class="progress-bar progress-bar-aqua"
                              style="width: 20%"
                              role="progressbar"
                              aria-valuenow="20"
                              aria-valuemin="0"
                              aria-valuemax="100"
                            >
                              <span class="sr-only">20 % terminé</span>
                            </div>
                          </div>
                        </a>
                      </li>
                      <!-- end task item -->
                      <li>
                        <!-- Task item -->
                        <a href="#">
                          <h3>
                          Créez un joli thème
                            <small class="pull-right">40%</small>
                          </h3>
                          <div class="progress xs">
                            <div
                              class="progress-bar progress-bar-green"
                              style="width: 40%"
                              role="progressbar"
                              aria-valuenow="20"
                              aria-valuemin="0"
                              aria-valuemax="100"
                            >
                              <span class="sr-only">40% teminé</span>
                            </div>
                          </div>
                        </a>
                      </li>
                      <!-- end task item -->
                      <li>
                        <!-- Task item -->
                        <a href="#">
                          <h3>
                          Une tâche que je dois faire
                            <small class="pull-right">60%</small>
                          </h3>
                          <div class="progress xs">
                            <div
                              class="progress-bar progress-bar-red"
                              style="width: 60%"
                              role="progressbar"
                              aria-valuenow="20"
                              aria-valuemin="0"
                              aria-valuemax="100"
                            >
                              <span class="sr-only">60% terminé</span>
                            </div>
                          </div>
                        </a>
                      </li>
                      <!-- end task item -->
                      <li>
                        <!-- Task item -->
                        <a href="#">
                          <h3>
                          Faites de belles transitions
                            <small class="pull-right">80%</small>
                          </h3>
                          <div class="progress xs">
                            <div
                              class="progress-bar progress-bar-yellow"
                              style="width: 80%"
                              role="progressbar"
                              aria-valuenow="20"
                              aria-valuemin="0"
                              aria-valuemax="100"
                            >
                              <span class="sr-only">80% terminé</span>
                            </div>
                          </div>
                        </a>
                      </li>
                      <!-- end task item -->
                    </ul>
                  </li>
                  <li class="footer">
                    <a href="#">Afficher toutes les tâches</a>
                  </li>
                </ul>
              </li>
              <!-- User Account: style can be found in dropdown.less -->
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <img
                    src="dist/img/user2-160x160.jpg"
                    class="user-image"
                    alt="User Image"
                  />
                  <span class="hidden-xs">Alexander Pierce</span>
                </a>
                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header">
                    <img
                      src="dist/img/user2-160x160.jpg"
                      class="img-circle"
                      alt="User Image"
                    />

                    <p>
                      Alexander Pierce - Web Developer
                      <small>Membre depuis Nov. 2012</small>
                    </p>
                  </li>
                  <!-- Menu Body -->
                  <li class="user-body">
                    <div class="row">
                      <div class="col-xs-4 text-center">
                        <a href="#">Followers</a>
                      </div>
                      <div class="col-xs-4 text-center">
                        <a href="#">Ventes</a>
                      </div>
                      <div class="col-xs-4 text-center">
                        <a href="#">Amis</a>
                      </div>
                    </div>
                    <!-- /.row -->
                  </li>
                  <!-- Menu Footer-->
                  <li class="user-footer">
                    <div class="pull-left">
                      <a href="#" class="btn btn-default btn-flat">Profile</a>
                    </div>
                    <div class="pull-right">
                      <a href="#" class="btn btn-default btn-flat">se déconnecter</a>
                    </div>
                  </li>
                </ul>
              </li>
              <!-- Control Sidebar Toggle Button -->
              <li>
                <a href="#" data-toggle="control-sidebar"
                  ><i class="fa fa-gears"></i
                ></a>
              </li>
            </ul>
          </div>
        </nav>
      </header>
      <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              <img
                src="dist/img/user2-160x160.jpg"
                class="img-circle"
                alt="User Image"
              />
            </div>
            <div class="pull-left info">
              <p>Alexander Pierce</p>
              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>
          <!-- search form -->
          <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
              <input
                type="text"
                name="q"
                class="form-control"
                placeholder="Search..."
              />
              <span class="input-group-btn">
                <button
                  type="submit"
                  name="search"
                  id="search-btn"
                  class="btn btn-flat"
                >
                  <i class="fa fa-search"></i>
                </button>
              </span>
            </div>
          </form>
          <!-- /.search form -->
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu" data-widget="tree">
            <li class="header">NAVIGATION PRINCIPALE</li>
            <li class="active treeview">
              <a href="#">
                <i class="fa fa-dashboard"></i> <span>Tableau de bord</span>
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
              </a>
              <ul class="treeview-menu">
                <li class="active">
                  <a href="index.html"
                    ><i class="fa fa-circle-o"></i> Tableau de bord v1</a
                  >
                </li>
                <li>
                  <a href="index2.html"
                    ><i class="fa fa-circle-o"></i> Tableau de bord v2</a
                  >
                </li>
              </ul>
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-files-o"></i>
                <span>Options de mise en page</span>
                <span class="pull-right-container">
                  <span class="label label-primary pull-right">4</span>
                </span>
              </a>
              <ul class="treeview-menu">
                <li>
                  <a href="pages/layout/top-nav.html"
                    ><i class="fa fa-circle-o"></i> Navigation supérieure</a
                  >
                </li>
                <li>
                  <a href="pages/layout/boxed.html"
                    ><i class="fa fa-circle-o"></i> En boîte</a
                  >
                </li>
                <li>
                  <a href="pages/layout/fixed.html"
                    ><i class="fa fa-circle-o"></i> Fixé</a
                  >
                </li>
                <li>
                  <a href="pages/layout/collapsed-sidebar.html"
                    ><i class="fa fa-circle-o"></i> Barre latérale réduite</a
                  >
                </li>
              </ul>
            </li>
            <li>
              <a href="pages/widgets.html">
                <i class="fa fa-th"></i> <span>Widgets</span>
                <span class="pull-right-container">
                  <small class="label pull-right bg-green">Nouveau
</small>
                </span>
              </a>
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-pie-chart"></i>
                <span>Graphiques</span>
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
              </a>
              <ul class="treeview-menu">
                <li>
                  <a href="pages/charts/chartjs.html"
                    ><i class="fa fa-circle-o"></i> ChartJS</a
                  >
                </li>
                <li>
                  <a href="pages/charts/morris.html"
                    ><i class="fa fa-circle-o"></i> Morris</a
                  >
                </li>
                <li>
                  <a href="pages/charts/flot.html"
                    ><i class="fa fa-circle-o"></i> Flot</a
                  >
                </li>
                <li>
                  <a href="pages/charts/inline.html"
                    ><i class="fa fa-circle-o"></i> Graphiques en ligne</a
                  >
                </li>
              </ul>
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-laptop"></i>
                <span>UI Elements</span>
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
              </a>
              <ul class="treeview-menu">
                <li>
                  <a href="pages/UI/general.html"
                    ><i class="fa fa-circle-o"></i> General</a
                  >
                </li>
                <li>
                  <a href="pages/UI/icons.html"
                    ><i class="fa fa-circle-o"></i> Icônes</a
                  >
                </li>
                <li>
                  <a href="pages/UI/buttons.html"
                    ><i class="fa fa-circle-o"></i> Boutons</a
                  >
                </li>
                <li>
                  <a href="pages/UI/sliders.html"
                    ><i class="fa fa-circle-o"></i> Sliders</a
                  >
                </li>
                <li>
                  <a href="pages/UI/timeline.html"
                    ><i class="fa fa-circle-o"></i> Chronologie</a
                  >
                </li>
                <li>
                  <a href="pages/UI/modals.html"
                    ><i class="fa fa-circle-o"></i> Modaux</a
                  >
                </li>
              </ul>
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-edit"></i> <span>
Formes</span>
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
              </a>
              <ul class="treeview-menu">
                <li>
                  <a href="pages/forms/general.html"
                    ><i class="fa fa-circle-o"></i>
Éléments généraux</a
                  >
                </li>
                <li>
                  <a href="pages/forms/advanced.html"
                    ><i class="fa fa-circle-o"></i> Éléments avancés</a
                  >
                </li>
                <li>
                  <a href="pages/forms/editors.html"
                    ><i class="fa fa-circle-o"></i> Éditeurs</a
                  >
                </li>
              </ul>
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-table"></i> <span>Tables</span>
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
              </a>
              <ul class="treeview-menu">
                <li>
                  <a href="pages/tables/simple.html"
                    ><i class="fa fa-circle-o"></i> Simple tables</a
                  >
                </li>
                <li>
                  <a href="pages/tables/data.html"
                    ><i class="fa fa-circle-o"></i> Tableaux de données</a
                  >
                </li>
              </ul>
            </li>
            <li>
              <a href="pages/calendar.html">
                <i class="fa fa-calendar"></i> <span>
Calendrier</span>
                <span class="pull-right-container">
                  <small class="label pull-right bg-red">3</small>
                  <small class="label pull-right bg-blue">17</small>
                </span>
              </a>
            </li>
            <li>
              <a href="pages/mailbox/mailbox.html">
                <i class="fa fa-envelope"></i> <span>
Boites aux lettres</span>
                <span class="pull-right-container">
                  <small class="label pull-right bg-yellow">12</small>
                  <small class="label pull-right bg-green">16</small>
                  <small class="label pull-right bg-red">5</small>
                </span>
              </a>
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-folder"></i> <span>Exemples</span>
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
              </a>
              <ul class="treeview-menu">
                <li>
                  <a href="pages/examples/invoice.html"
                    ><i class="fa fa-circle-o"></i> 
Facture</a
                  >
                </li>
                <li>
                  <a href="pages/examples/profile.html"
                    ><i class="fa fa-circle-o"></i> Profile</a
                  >
                </li>
                <li>
                  <a href="pages/examples/login.html"
                    ><i class="fa fa-circle-o"></i> 
Se connecter</a
                  >
                </li>
                <li>
                  <a href="pages/examples/register.html"
                    ><i class="fa fa-circle-o"></i> Register</a
                  >
                </li>
                <li>
                  <a href="pages/examples/lockscreen.html"
                    ><i class="fa fa-circle-o"></i>
Écran verrouillé</a
                  >
                </li>
                <li>
                  <a href="pages/examples/404.html"
                    ><i class="fa fa-circle-o"></i> 404 Error</a
                  >
                </li>
                <li>
                  <a href="pages/examples/500.html"
                    ><i class="fa fa-circle-o"></i> 500 Error</a
                  >
                </li>
                <li>
                  <a href="pages/examples/blank.html"
                    ><i class="fa fa-circle-o"></i> 
Page blanche</a
                  >
                </li>
                <li>
                  <a href="pages/examples/pace.html"
                    ><i class="fa fa-circle-o"></i> 
Page Rythme</a
                  >
                </li>
              </ul>
            </li>
            <li class="treeview">
              <a href="#">
                <i class="fa fa-share"></i> <span>
Multiniveau</span>
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
              </a>
              <ul class="treeview-menu">
                <li>
                  <a href="#"><i class="fa fa-circle-o"></i>
Premier niveau</a>
                </li>
                <li class="treeview">
                  <a href="#"
                    ><i class="fa fa-circle-o"></i>
Premier niveau
                    <span class="pull-right-container">
                      <i class="fa fa-angle-left pull-right"></i>
                    </span>
                  </a>
                  <ul class="treeview-menu">
                    <li>
                      <a href="#"><i class="fa fa-circle-o"></i> 
Niveau deux</a>
                    </li>
                    <li class="treeview">
                      <a href="#"
                        ><i class="fa fa-circle-o"></i> 
Niveau deux
                        <span class="pull-right-container">
                          <i class="fa fa-angle-left pull-right"></i>
                        </span>
                      </a>
                      <ul class="treeview-menu">
                        <li>
                          <a href="#"
                            ><i class="fa fa-circle-o"></i> 
Niveau trois</a
                          >
                        </li>
                        <li>
                          <a href="#"
                            ><i class="fa fa-circle-o"></i> 
Niveau trois</a
                          >
                        </li>
                      </ul>
                    </li>
                  </ul>
                </li>
                <li>
                  <a href="#"><i class="fa fa-circle-o"></i>Premier niveau</a>
                </li>
              </ul>
            </li>
            <li>
              <a href="https://adminlte.io/docs"
                ><i class="fa fa-book"></i> <span>Documentation</span></a
              >
            </li>
            <li class="header">
ÉTIQUETTES</li>
            <li>
              <a href="#"
                ><i class="fa fa-circle-o text-red"></i>
                <span>Important</span></a
              >
            </li>
            <li>
              <a href="#"
                ><i class="fa fa-circle-o text-yellow"></i>
                <span>
Avertissement</span></a
              >
            </li>
            <li>
              <a href="#"
                ><i class="fa fa-circle-o text-aqua"></i>
                <span>Information</span></a
              >
            </li>
          </ul>
        </section>
        <!-- /.sidebar -->
      </aside>

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
          Tableau de bord
            <small>Panneau de contrôle</small>
          </h1>
          <ol class="breadcrumb">
            <li>
              <a href="#"><i class="fa fa-dashboard"></i> Home</a>
            </li>
            <li class="active">Tableau de bord</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
          <!-- Small boxes (Stat box) -->
          <div class="row">
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-aqua">
                <div class="inner">
                  <h3>150</h3>

                  <p>Nouvelles commandes</p>
                </div>
                <div class="icon">
                  <i class="ion ion-bag"></i>
                </div>
                <a href="#" class="small-box-footer"
                  >Plus d'informations <i class="fa fa-arrow-circle-right"></i
                ></a>
              </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-green">
                <div class="inner">
                  <h3>53<sup style="font-size: 20px">%</sup></h3>

                  <p>Taux de rebond</p>
                </div>
                <div class="icon">
                  <i class="ion ion-stats-bars"></i>
                </div>
                <a href="#" class="small-box-footer"
                  >Plus d'informations<i class="fa fa-arrow-circle-right"></i
                ></a>
              </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-yellow">
                <div class="inner">
                  <h3>44</h3>

                  <p>Inscriptions des utilisateurs</p>
                </div>
                <div class="icon">
                  <i class="ion ion-person-add"></i>
                </div>
                <a href="#" class="small-box-footer"
                  >Plus d'informations <i class="fa fa-arrow-circle-right"></i
                ></a>
              </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-red">
                <div class="inner">
                  <h3>65</h3>

                  <p>visiteurs uniques</p>
                </div>
                <div class="icon">
                  <i class="ion ion-pie-graph"></i>
                </div>
                <a href="#" class="small-box-footer"
                  >Plus d'informations <i class="fa fa-arrow-circle-right"></i
                ></a>
              </div>
            </div>
            <!-- ./col -->
          </div>
          <!-- /.row -->
          <!-- Main row -->
          <div class="row">
            <!-- Left col -->
            <section class="col-lg-7 connectedSortable">
              <!-- Custom tabs (Charts with tabs)-->
              <div class="nav-tabs-custom">
                <!-- Tabs within a box -->
                <ul class="nav nav-tabs pull-right">
                  <li class="active">
                    <a href="#revenue-chart" data-toggle="tab">Zone</a>
                  </li>
                  <li><a href="#sales-chart" data-toggle="tab">Donut</a></li>
                  <li class="pull-left header">
                    <i class="fa fa-inbox"></i>
Ventes
                  </li>
                </ul>
                <div class="tab-content no-padding">
                  <!-- Morris chart - Sales -->
                  <div
                    class="chart tab-pane active"
                    id="revenue-chart"
                    style="position: relative; height: 300px"
                  ></div>
                  <div
                    class="chart tab-pane"
                    id="sales-chart"
                    style="position: relative; height: 300px"
                  ></div>
                </div>
              </div>
              <!-- /.nav-tabs-custom -->

              <!-- Chat box -->
              <div class="box box-success">
                <div class="box-header">
                  <i class="fa fa-comments-o"></i>

                  <h3 class="box-title">Chat</h3>

                  <div
                    class="box-tools pull-right"
                    data-toggle="tooltip"
                    title="Status"
                  >
                    <div class="btn-group" data-toggle="btn-toggle">
                      <button
                        type="button"
                        class="btn btn-default btn-sm active"
                      >
                        <i class="fa fa-square text-green"></i>
                      </button>
                      <button type="button" class="btn btn-default btn-sm">
                        <i class="fa fa-square text-red"></i>
                      </button>
                    </div>
                  </div>
                </div>
                <div class="box-body chat" id="chat-box">
                  <!-- chat item -->
                  <div class="item">
                    <img
                      src="dist/img/user4-128x128.jpg"
                      alt="user image"
                      class="online"
                    />

                    <p class="message">
                      <a href="#" class="name">
                        <small class="text-muted pull-right"
                          ><i class="fa fa-clock-o"></i> 2:15</small
                        >
                        Mike Doe
                      </a>
                      J'aimerais vous rencontrer pour discuter des dernières actualités concernant
                      l'arrivée du nouveau thème. Ils disent que ça va être
                      l'un des meilleurs thèmes du marché.
                    </p>
                    <div class="attachment">
                      <h4>Attachments:</h4>

                      <p class="filename">Theme-thumbnail-image.jpg</p>

                      <div class="pull-right">
                        <button
                          type="button"
                          class="btn btn-primary btn-sm btn-flat"
                        >
                          Ouvrir
                        </button>
                      </div>
                    </div>
                    <!-- /.attachment -->
                  </div>
                  <!-- /.item -->
                  <!-- chat item -->
                  <div class="item">
                    <img
                      src="dist/img/user3-128x128.jpg"
                      alt="user image"
                      class="offline"
                    />

                    <p class="message">
                      <a href="#" class="name">
                        <small class="text-muted pull-right"
                          ><i class="fa fa-clock-o"></i> 5:15</small
                        >
                        Alexander Pierce
                      </a>
                      J'aimerais vous rencontrer pour discuter des dernières actualités concernant
                      l'arrivée du nouveau thème. Ils disent que ça va être
                      l'un des meilleurs thèmes du marché
                    </p>
                  </div>
                  <!-- /.item -->
                  <!-- chat item -->
                  <div class="item">
                    <img
                      src="dist/img/user2-160x160.jpg"
                      alt="user image"
                      class="offline"
                    />

                    <p class="message">
                      <a href="#" class="name">
                        <small class="text-muted pull-right"
                          ><i class="fa fa-clock-o"></i> 5:30</small
                        >
                        Susan Doe
                      </a>
                      J'aimerais vous rencontrer pour discuter des dernières actualités concernant
                      l'arrivée du nouveau thème. Ils disent que ça va être
                      l'un des meilleurs thèmes du marché
                    </p>
                  </div>
                  <!-- /.item -->
                </div>
                <!-- /.chat -->
                <div class="box-footer">
                  <div class="input-group">
                    <input class="form-control" placeholder="Type message..." />

                    <div class="input-group-btn">
                      <button type="button" class="btn btn-success">
                        <i class="fa fa-plus"></i>
                      </button>
                    </div>
                  </div>
                </div>
              </div>
              <!-- /.box (chat box) -->

              <!-- TO DO List -->
              <div class="box box-primary">
                <div class="box-header">
                  <i class="ion ion-clipboard"></i>

                  <h3 class="box-title">To Do List</h3>

                  <div class="box-tools pull-right">
                    <ul class="pagination pagination-sm inline">
                      <li><a href="#">&laquo;</a></li>
                      <li><a href="#">1</a></li>
                      <li><a href="#">2</a></li>
                      <li><a href="#">3</a></li>
                      <li><a href="#">&raquo;</a></li>
                    </ul>
                  </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                  <!-- See dist/js/pages/dashboard.js to activate the todoList plugin -->
                  <ul class="todo-list">
                    <li>
                      <!-- drag handle -->
                      <span class="handle">
                        <i class="fa fa-ellipsis-v"></i>
                        <i class="fa fa-ellipsis-v"></i>
                      </span>
                      <!-- checkbox -->
                      <input type="checkbox" value="" />
                      <!-- todo text -->
                      <span class="text">Concevoir un joli thème</span>
                      <!-- Emphasis label -->
                      <small class="label label-danger"
                        ><i class="fa fa-clock-o"></i> 2 mins</small
                      >
                      <!-- General tools such as edit or delete-->
                      <div class="tools">
                        <i class="fa fa-edit"></i>
                        <i class="fa fa-trash-o"></i>
                      </div>
                    </li>
                    <li>
                      <span class="handle">
                        <i class="fa fa-ellipsis-v"></i>
                        <i class="fa fa-ellipsis-v"></i>
                      </span>
                      <input type="checkbox" value="" />
                      <span class="text">Rendre le thème réactif</span>
                      <small class="label label-info"
                        ><i class="fa fa-clock-o"></i> 4 heures</small
                      >
                      <div class="tools">
                        <i class="fa fa-edit"></i>
                        <i class="fa fa-trash-o"></i>
                      </div>
                    </li>
                    <li>
                      <span class="handle">
                        <i class="fa fa-ellipsis-v"></i>
                        <i class="fa fa-ellipsis-v"></i>
                      </span>
                      <input type="checkbox" value="" />
                      <span class="text">Laissez le thème briller comme une étoile</span>
                      <small class="label label-warning"
                        ><i class="fa fa-clock-o"></i> 1 jour</small
                      >
                      <div class="tools">
                        <i class="fa fa-edit"></i>
                        <i class="fa fa-trash-o"></i>
                      </div>
                    </li>
                    <li>
                      <span class="handle">
                        <i class="fa fa-ellipsis-v"></i>
                        <i class="fa fa-ellipsis-v"></i>
                      </span>
                      <input type="checkbox" value="" />
                      <span class="text">Laissez le thème briller comme une étoile</span>
                      <small class="label label-success"
                        ><i class="fa fa-clock-o"></i> 3 jours</small
                      >
                      <div class="tools">
                        <i class="fa fa-edit"></i>
                        <i class="fa fa-trash-o"></i>
                      </div>
                    </li>
                    <li>
                      <span class="handle">
                        <i class="fa fa-ellipsis-v"></i>
                        <i class="fa fa-ellipsis-v"></i>
                      </span>
                      <input type="checkbox" value="" />
                      <span class="text"
                        >Vérifiez vos messages et notifications</span
                      >
                      <small class="label label-primary"
                        ><i class="fa fa-clock-o"></i> 1 semaine</small
                      >
                      <div class="tools">
                        <i class="fa fa-edit"></i>
                        <i class="fa fa-trash-o"></i>
                      </div>
                    </li>
                    <li>
                      <span class="handle">
                        <i class="fa fa-ellipsis-v"></i>
                        <i class="fa fa-ellipsis-v"></i>
                      </span>
                      <input type="checkbox" value="" />
                      <span class="text">Laissez le thème briller comme une étoile</span>
                      <small class="label label-default"
                        ><i class="fa fa-clock-o"></i> 1 mois</small
                      >
                      <div class="tools">
                        <i class="fa fa-edit"></i>
                        <i class="fa fa-trash-o"></i>
                      </div>
                    </li>
                  </ul>
                </div>
                <!-- /.box-body -->
                <div class="box-footer clearfix no-border">
                  <button type="button" class="btn btn-default pull-right">
                    <i class="fa fa-plus"></i> Ajouter un item
                  </button>
                </div>
              </div>
              <!-- /.box -->

              <!-- quick email widget -->
              <div class="box box-info">
                <div class="box-header">
                  <i class="fa fa-envelope"></i>

                  <h3 class="box-title">E-mail rapide</h3>
                  <!-- tools box -->
                  <div class="pull-right box-tools">
                    <button
                      type="button"
                      class="btn btn-info btn-sm"
                      data-widget="remove"
                      data-toggle="tooltip"
                      title="Remove"
                    >
                      <i class="fa fa-times"></i>
                    </button>
                  </div>
                  <!-- /. tools -->
                </div>
                <div class="box-body">
                  <form action="#" method="post">
                    <div class="form-group">
                      <input
                        type="email"
                        class="form-control"
                        name="emailto"
                        placeholder="Email to:"
                      />
                    </div>
                    <div class="form-group">
                      <input
                        type="text"
                        class="form-control"
                        name="subject"
                        placeholder="Subject"
                      />
                    </div>
                    <div>
                      <textarea
                        class="textarea"
                        placeholder="Message"
                        style="
                          width: 100%;
                          height: 125px;
                          font-size: 14px;
                          line-height: 18px;
                          border: 1px solid #dddddd;
                          padding: 10px;
                        "
                      ></textarea>
                    </div>
                  </form>
                </div>
                <div class="box-footer clearfix">
                  <button
                    type="button"
                    class="pull-right btn btn-default"
                    id="sendEmail"
                  >
                    Send <i class="fa fa-arrow-circle-right"></i>
                  </button>
                </div>
              </div>
            </section>
            <!-- /.Left col -->
            <!-- right col (We are only adding the ID to make the widgets sortable)-->
            <section class="col-lg-5 connectedSortable">
              <!-- Map box -->
              <div class="box box-solid bg-light-blue-gradient">
                <div class="box-header">
                  <!-- tools box -->
                  <div class="pull-right box-tools">
                    <button
                      type="button"
                      class="btn btn-primary btn-sm daterange pull-right"
                      data-toggle="tooltip"
                      title="Date range"
                    >
                      <i class="fa fa-calendar"></i>
                    </button>
                    <button
                      type="button"
                      class="btn btn-primary btn-sm pull-right"
                      data-widget="collapse"
                      data-toggle="tooltip"
                      title="Collapse"
                      style="margin-right: 5px"
                    >
                      <i class="fa fa-minus"></i>
                    </button>
                  </div>
                  <!-- /. tools -->

                  <i class="fa fa-map-marker"></i>

                  <h3 class="box-title">Visitors</h3>
                </div>
                <div class="box-body">
                  <div id="world-map" style="height: 250px; width: 100%"></div>
                </div>
                <!-- /.box-body-->
                <div class="box-footer no-border">
                  <div class="row">
                    <div
                      class="col-xs-4 text-center"
                      style="border-right: 1px solid #f4f4f4"
                    >
                      <div id="sparkline-1"></div>
                      <div class="knob-label">Visiteurs</div>
                    </div>
                    <!-- ./col -->
                    <div
                      class="col-xs-4 text-center"
                      style="border-right: 1px solid #f4f4f4"
                    >
                      <div id="sparkline-2"></div>
                      <div class="knob-label">Enligne</div>
                    </div>
                    <!-- ./col -->
                    <div class="col-xs-4 text-center">
                      <div id="sparkline-3"></div>
                      <div class="knob-label">Exists</div>
                    </div>
                    <!-- ./col -->
                  </div>
                  <!-- /.row -->
                </div>
              </div>
              <!-- /.box -->

              <!-- solid sales graph -->
              <div class="box box-solid bg-teal-gradient">
                <div class="box-header">
                  <i class="fa fa-th"></i>

                  <h3 class="box-title">Graphique des ventes</h3>

                  <div class="box-tools pull-right">
                    <button
                      type="button"
                      class="btn bg-teal btn-sm"
                      data-widget="collapse"
                    >
                      <i class="fa fa-minus"></i>
                    </button>
                    <button
                      type="button"
                      class="btn bg-teal btn-sm"
                      data-widget="remove"
                    >
                      <i class="fa fa-times"></i>
                    </button>
                  </div>
                </div>
                <div class="box-body border-radius-none">
                  <div
                    class="chart"
                    id="line-chart"
                    style="height: 250px"
                  ></div>
                </div>
                <!-- /.box-body -->
                <div class="box-footer no-border">
                  <div class="row">
                    <div
                      class="col-xs-4 text-center"
                      style="border-right: 1px solid #f4f4f4"
                    >
                      <input
                        type="text"
                        class="knob"
                        data-readonly="true"
                        value="20"
                        data-width="60"
                        data-height="60"
                        data-fgColor="#39CCCC"
                      />

                      <div class="knob-label">Mail-Orders</div>
                    </div>
                    <!-- ./col -->
                    <div
                      class="col-xs-4 text-center"
                      style="border-right: 1px solid #f4f4f4"
                    >
                      <input
                        type="text"
                        class="knob"
                        data-readonly="true"
                        value="50"
                        data-width="60"
                        data-height="60"
                        data-fgColor="#39CCCC"
                      />

                      <div class="knob-label">Enligne</div>
                    </div>
                    <!-- ./col -->
                    <div class="col-xs-4 text-center">
                      <input
                        type="text"
                        class="knob"
                        data-readonly="true"
                        value="30"
                        data-width="60"
                        data-height="60"
                        data-fgColor="#39CCCC"
                      />

                      <div class="knob-label">En magasin</div>
                    </div>
                    <!-- ./col -->
                  </div>
                  <!-- /.row -->
                </div>
                <!-- /.box-footer -->
              </div>
              <!-- /.box -->

              <!-- Calendar -->
              <div class="box box-solid bg-green-gradient">
                <div class="box-header">
                  <i class="fa fa-calendar"></i>

                  <h3 class="box-title">Calendrier</h3>
                  <!-- tools box -->
                  <div class="pull-right box-tools">
                    <!-- button with a dropdown -->
                    <div class="btn-group">
                      <button
                        type="button"
                        class="btn btn-success btn-sm dropdown-toggle"
                        data-toggle="dropdown"
                      >
                        <i class="fa fa-bars"></i>
                      </button>
                      <ul class="dropdown-menu pull-right" role="menu">
                        <li><a href="#">Ajouter un nouvel événement</a></li>
                        <li><a href="#">Effacer les événements</a></li>
                        <li class="divider"></li>
                        <li><a href="#">Afficher le calendrier</a></li>
                      </ul>
                    </div>
                    <button
                      type="button"
                      class="btn btn-success btn-sm"
                      data-widget="collapse"
                    >
                      <i class="fa fa-minus"></i>
                    </button>
                    <button
                      type="button"
                      class="btn btn-success btn-sm"
                      data-widget="remove"
                    >
                      <i class="fa fa-times"></i>
                    </button>
                  </div>
                  <!-- /. tools -->
                </div>
                <!-- /.box-header -->
                <div class="box-body no-padding">
                  <!--The calendar -->
                  <div id="calendar" style="width: 100%"></div>
                </div>
                <!-- /.box-body -->
                <div class="box-footer text-black">
                  <div class="row">
                    <div class="col-sm-6">
                      <!-- Progress bars -->
                      <div class="clearfix">
                        <span class="pull-left">Tâche #1</span>
                        <small class="pull-right">90%</small>
                      </div>
                      <div class="progress xs">
                        <div
                          class="progress-bar progress-bar-green"
                          style="width: 90%"
                        ></div>
                      </div>

                      <div class="clearfix">
                        <span class="pull-left">Tâche #2</span>
                        <small class="pull-right">70%</small>
                      </div>
                      <div class="progress xs">
                        <div
                          class="progress-bar progress-bar-green"
                          style="width: 70%"
                        ></div>
                      </div>
                    </div>
                    <!-- /.col -->
                    <div class="col-sm-6">
                      <div class="clearfix">
                        <span class="pull-left">Tâche #3</span>
                        <small class="pull-right">60%</small>
                      </div>
                      <div class="progress xs">
                        <div
                          class="progress-bar progress-bar-green"
                          style="width: 60%"
                        ></div>
                      </div>

                      <div class="clearfix">
                        <span class="pull-left">Tâche #4</span>
                        <small class="pull-right">40%</small>
                      </div>
                      <div class="progress xs">
                        <div
                          class="progress-bar progress-bar-green"
                          style="width: 40%"
                        ></div>
                      </div>
                    </div>
                    <!-- /.col -->
                  </div>
                  <!-- /.row -->
                </div>
              </div>
              <!-- /.box -->
            </section>
            <!-- right col -->
          </div>
          <!-- /.row (main row) -->
        </section>
        <!-- /.content -->
      </div>
      <!-- /.content-wrapper -->
      <footer class="main-footer">
        <div class="pull-right hidden-xs"><b>Version</b> 2.4.18</div>
        <strong
          >Copyright &copy; 2024
          <a href="https://adminlte.io">AdminLTE</a>.</strong
        >
        Tous droits réservés.
      </footer>

      <!-- Control Sidebar -->
      <aside class="control-sidebar control-sidebar-dark" style="display: none">
        <!-- Create the tabs -->
        <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
          <li>
            <a href="#control-sidebar-home-tab" data-toggle="tab"
              ><i class="fa fa-home"></i
            ></a>
          </li>
          <li>
            <a href="#control-sidebar-settings-tab" data-toggle="tab"
              ><i class="fa fa-gears"></i
            ></a>
          </li>
        </ul>
        <!-- Tab panes -->
        <div class="tab-content">
          <!-- Home tab content -->
          <div class="tab-pane" id="control-sidebar-home-tab">
            <h3 class="control-sidebar-heading">Activité récente</h3>
            <ul class="control-sidebar-menu">
              <li>
                <a href="javascript:void(0)">
                  <i class="menu-icon fa fa-birthday-cake bg-red"></i>

                  <div class="menu-info">
                    <h4 class="control-sidebar-subheading">
                      Langdon's Birthday
                    </h4>

                    <p>Aura 23 ans le 22 mai</p>
                  </div>
                </a>
              </li>
              <li>
                <a href="javascript:void(0)">
                  <i class="menu-icon fa fa-user bg-yellow"></i>

                  <div class="menu-info">
                    <h4 class="control-sidebar-subheading">
                    Frodon a mis à jour son profil
                    </h4>

                    <p>Nouveau téléphone +212619442836</p>
                  </div>
                </a>
              </li>
              <li>
                <a href="javascript:void(0)">
                  <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

                  <div class="menu-info">
                    <h4 class="control-sidebar-subheading">
                    Nora a rejoint la liste de diffusion
                    </h4>

                    <p>nora@example.com</p>
                  </div>
                </a>
              </li>
              <li>
                <a href="javascript:void(0)">
                  <i class="menu-icon fa fa-file-code-o bg-green"></i>

                  <div class="menu-info">
                    <h4 class="control-sidebar-subheading">
                    Travail Cron 254 exécuté
                    </h4>

                    <p>Temps d'exécution 5 secondes</p>
                  </div>
                </a>
              </li>
            </ul>
            <!-- /.control-sidebar-menu -->

            <h3 class="control-sidebar-heading">Progression des tâches</h3>
            <ul class="control-sidebar-menu">
              <li>
                <a href="javascript:void(0)">
                  <h4 class="control-sidebar-subheading">
                  Conception de modèle personnalisé
                    <span class="label label-danger pull-right">70%</span>
                  </h4>

                  <div class="progress progress-xxs">
                    <div
                      class="progress-bar progress-bar-danger"
                      style="width: 70%"
                    ></div>
                  </div>
                </a>
              </li>
              <li>
                <a href="javascript:void(0)">
                  <h4 class="control-sidebar-subheading">
                    Update Resume
                    <span class="label label-success pull-right">95%</span>
                  </h4>

                  <div class="progress progress-xxs">
                    <div
                      class="progress-bar progress-bar-success"
                      style="width: 95%"
                    ></div>
                  </div>
                </a>
              </li>
              <li>
                <a href="javascript:void(0)">
                  <h4 class="control-sidebar-subheading">
                  Intégration Laravel
                    <span class="label label-warning pull-right">50%</span>
                  </h4>

                  <div class="progress progress-xxs">
                    <div
                      class="progress-bar progress-bar-warning"
                      style="width: 50%"
                    ></div>
                  </div>
                </a>
              </li>
              <li>
                <a href="javascript:void(0)">
                  <h4 class="control-sidebar-subheading">
                    Back End Framework
                    <span class="label label-primary pull-right">68%</span>
                  </h4>

                  <div class="progress progress-xxs">
                    <div
                      class="progress-bar progress-bar-primary"
                      style="width: 68%"
                    ></div>
                  </div>
                </a>
              </li>
            </ul>
            <!-- /.control-sidebar-menu -->
          </div>
          <!-- /.tab-pane -->
          <!-- Stats tab content -->
          <div class="tab-pane" id="control-sidebar-stats-tab">
          Contenu de l'onglet Statistiques
          </div>
          <!-- /.tab-pane -->
          <!-- Settings tab content -->
          <div class="tab-pane" id="control-sidebar-settings-tab">
            <form method="post">
              <h3 class="control-sidebar-heading">réglages généraux</h3>

              <div class="form-group">
                <label class="control-sidebar-subheading">
                Utilisation du panneau de rapport
                  <input type="checkbox" class="pull-right" checked />
                </label>

                <p>Quelques informations sur cette option de paramètres généraux</p>
              </div>
              <!-- /.form-group -->

              <div class="form-group">
                <label class="control-sidebar-subheading">
                Autoriser la redirection du courrier
                  <input type="checkbox" class="pull-right" checked />
                </label>

                <p>D'autres ensembles d'options sont disponibles</p>
              </div>
              <!-- /.form-group -->

              <div class="form-group">
                <label class="control-sidebar-subheading">
                Exposer le nom de l'auteur dans les messages
                  <input type="checkbox" class="pull-right" checked />
                </label>

                <p>Autoriser l'utilisateur à afficher son nom dans les articles de blog</p>
              </div>
              <!-- /.form-group -->

              <h3 class="control-sidebar-heading">paramètres de discussion</h3>

              <div class="form-group">
                <label class="control-sidebar-subheading">
                Montre-moi comme en ligne
                  <input type="checkbox" class="pull-right" checked />
                </label>
              </div>
              <!-- /.form-group -->

              <div class="form-group">
                <label class="control-sidebar-subheading">
                Désactiver les notifications
                  <input type="checkbox" class="pull-right" />
                </label>
              </div>
              <!-- /.form-group -->

              <div class="form-group">
                <label class="control-sidebar-subheading">
                Supprimer l'historique des discussions
                  <a href="javascript:void(0)" class="text-red pull-right"
                    ><i class="fa fa-trash-o"></i
                  ></a>
                </label>
              </div>
              <!-- /.form-group -->
            </form>
          </div>
          <!-- /.tab-pane -->
        </div>
      </aside>
      <!-- /.control-sidebar -->
      <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
      <div class="control-sidebar-bg"></div>
    </div>
    <!-- ./wrapper -->

    <!-- jQuery 3 -->
    <script src="bower_components/jquery/dist/jquery.min.js"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="bower_components/jquery-ui/jquery-ui.min.js"></script>
    <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
    <script>
      $.widget.bridge("uibutton", $.ui.button);
    </script>
    <!-- Bootstrap 3.3.7 -->
    <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- Morris.js charts -->
    <script src="bower_components/raphael/raphael.min.js"></script>
    <script src="bower_components/morris.js/morris.min.js"></script>
    <!-- Sparkline -->
    <script src="bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
    <!-- jvectormap -->
    <script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
    <!-- jQuery Knob Chart -->
    <script src="bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
    <!-- daterangepicker -->
    <script src="bower_components/moment/min/moment.min.js"></script>
    <script src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
    <!-- datepicker -->
    <script src="bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
    <!-- Bootstrap WYSIHTML5 -->
    <script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
    <!-- Slimscroll -->
    <script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="bower_components/fastclick/lib/fastclick.js"></script>
    <!-- AdminLTE App -->
    <script src="dist/js/adminlte.min.js"></script>
    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src="dist/js/pages/dashboard.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="dist/js/demo.js"></script>
  </body>
</html>
